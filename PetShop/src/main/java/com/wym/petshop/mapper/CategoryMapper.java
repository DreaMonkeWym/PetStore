package com.wym.petshop.mapper;

import java.util.List;

import com.wym.petshop.model.Category;
import com.wym.petshop.model.CategoryExample;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.DeleteProvider;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.type.JdbcType;

public interface CategoryMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table category
     *
     * @mbg.generated Mon Jun 25 22:12:14 CST 2018
     */
    @SelectProvider(type=CategorySqlProvider.class, method="countByExample")
    long countByExample(CategoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table category
     *
     * @mbg.generated Mon Jun 25 22:12:14 CST 2018
     */
    @DeleteProvider(type=CategorySqlProvider.class, method="deleteByExample")
    int deleteByExample(CategoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table category
     *
     * @mbg.generated Mon Jun 25 22:12:14 CST 2018
     */
    @Delete({
        "delete from category",
        "where catid = #{catid,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String catid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table category
     *
     * @mbg.generated Mon Jun 25 22:12:14 CST 2018
     */
    @Insert({
        "insert into category (catid, name, ",
        "descn)",
        "values (#{catid,jdbcType=VARCHAR}, #{name,jdbcType=VARCHAR}, ",
        "#{descn,jdbcType=VARCHAR})"
    })
    int insert(Category record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table category
     *
     * @mbg.generated Mon Jun 25 22:12:14 CST 2018
     */
    @InsertProvider(type=CategorySqlProvider.class, method="insertSelective")
    int insertSelective(Category record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table category
     *
     * @mbg.generated Mon Jun 25 22:12:14 CST 2018
     */
    @SelectProvider(type=CategorySqlProvider.class, method="selectByExample")
    @Results({
        @Result(column="catid", property="catid", jdbcType=JdbcType.VARCHAR, id=true),
        @Result(column="name", property="name", jdbcType=JdbcType.VARCHAR),
        @Result(column="descn", property="descn", jdbcType=JdbcType.VARCHAR)
    })
    List<Category> selectByExample(CategoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table category
     *
     * @mbg.generated Mon Jun 25 22:12:14 CST 2018
     */
    @Select({
        "select",
        "catid, name, descn",
        "from category",
        "where catid = #{catid,jdbcType=VARCHAR}"
    })
    @Results({
        @Result(column="catid", property="catid", jdbcType=JdbcType.VARCHAR, id=true),
        @Result(column="name", property="name", jdbcType=JdbcType.VARCHAR),
        @Result(column="descn", property="descn", jdbcType=JdbcType.VARCHAR)
    })
    Category selectByPrimaryKey(String catid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table category
     *
     * @mbg.generated Mon Jun 25 22:12:14 CST 2018
     */
    @UpdateProvider(type=CategorySqlProvider.class, method="updateByExampleSelective")
    int updateByExampleSelective(@Param("record") Category record, @Param("example") CategoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table category
     *
     * @mbg.generated Mon Jun 25 22:12:14 CST 2018
     */
    @UpdateProvider(type=CategorySqlProvider.class, method="updateByExample")
    int updateByExample(@Param("record") Category record, @Param("example") CategoryExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table category
     *
     * @mbg.generated Mon Jun 25 22:12:14 CST 2018
     */
    @UpdateProvider(type=CategorySqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(Category record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table category
     *
     * @mbg.generated Mon Jun 25 22:12:14 CST 2018
     */
    @Update({
        "update category",
        "set name = #{name,jdbcType=VARCHAR},",
          "descn = #{descn,jdbcType=VARCHAR}",
        "where catid = #{catid,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(Category record);
}