Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/uops_backend?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 236
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 242
begin_hunk_0
@uop_u32_permute_xzwy = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 13, i32 3, i8 0, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\00\02\03\01" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_permute_xzwy_c, ptr null, ptr null }, align 8
@uop_u32_permute_xwzy = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 13, i32 3, i8 0, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\00\03\02\01" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_permute_xwzy_c, ptr null, ptr null }, align 8
@uop_u32_permute_yxzw = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 13, i32 3, i8 0, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\01\00\02\03" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_permute_yxzw_c, ptr null, ptr null }, align 8
@uop_u32_permute_yzxw = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 13, i32 3, i8 0, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\01\02\00\03" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_permute_yzxw_c, ptr null, ptr null }, align 8
@uop_u32_permute_yzwx = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 13, i32 3, i8 0, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\01\02\03\00" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_permute_yzwx_c, ptr null, ptr null }, align 8
@uop_u32_permute_zxyw = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 13, i32 3, i8 0, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\02\00\01\03" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_permute_zxyw_c, ptr null, ptr null }, align 8
@uop_u32_permute_zyxw = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 13, i32 3, i8 0, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\02\01\00\03" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_permute_zyxw_c, ptr null, ptr null }, align 8
@uop_u32_permute_zywx = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 13, i32 3, i8 0, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\02\01\03\00" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_permute_zywx_c, ptr null, ptr null }, align 8
@uop_u32_permute_zwyx = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 13, i32 3, i8 0, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\02\03\01\00" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_permute_zwyx_c, ptr null, ptr null }, align 8
@uop_u32_permute_wxyz = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 13, i32 3, i8 0, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\03\00\01\02" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_permute_wxyz_c, ptr null, ptr null }, align 8
@uop_u32_permute_wxzy = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 13, i32 3, i8 0, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\03\00\02\01" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_permute_wxzy_c, ptr null, ptr null }, align 8
@uop_u32_permute_wyxz = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 13, i32 3, i8 0, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\03\01\00\02" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_permute_wyxz_c, ptr null, ptr null }, align 8
@uop_u32_permute_wyzx = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 13, i32 3, i8 0, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\03\01\02\00" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_permute_wyzx_c, ptr null, ptr null }, align 8
@uop_u32_permute_wzxy = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 13, i32 3, i8 0, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\03\02\00\01" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_permute_wzxy_c, ptr null, ptr null }, align 8
@uop_u32_permute_wzyx = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 13, i32 3, i8 0, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\03\02\01\00" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_permute_wzyx_c, ptr null, ptr null }, align 8
@uop_u32_copy_yz_xx = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 14, i32 3, i8 6, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\00\00\00\03" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_copy_yz_xx_c, ptr null, ptr null }, align 8
@uop_u32_copy_yzw_xxx = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 14, i32 3, i8 14, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_copy_yzw_xxx_c, ptr null, ptr null }, align 8
@uop_u32_copy_yzw_xxy = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsSwizzleUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 14, i32 3, i8 14, [3 x i8] zeroinitializer, { %struct.SwsSwizzleUOp, [12 x i8] } { %struct.SwsSwizzleUOp { [4 x i8] c"\00\00\00\01" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_copy_yzw_xxy_c, ptr null, ptr null }, align 8
@uop_u32_write_planar_x = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 9, i32 3, i8 1, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_write_planar_x_c, ptr null, ptr null }, align 8
@uop_u32_write_planar_xy = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 9, i32 3, i8 3, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_write_planar_xy_c, ptr null, ptr null }, align 8
@uop_u32_write_planar_xyz = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 9, i32 3, i8 7, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_write_planar_xyz_c, ptr null, ptr null }, align 8
@uop_u32_write_planar_xyzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 9, i32 3, i8 15, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_write_planar_xyzw_c, ptr null, ptr null }, align 8
@uop_u32_write_packed_xy = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 10, i32 3, i8 3, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_write_packed_xy_c, ptr null, ptr null }, align 8
@uop_u32_write_packed_xyz = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 10, i32 3, i8 7, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_write_packed_xyz_c, ptr null, ptr null }, align 8
@uop_u32_write_packed_xyzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 10, i32 3, i8 15, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_write_packed_xyzw_c, ptr null, ptr null }, align 8
@uop_u32_swap_bytes_x = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 16, i32 3, i8 1, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_swap_bytes_x_c, ptr null, ptr null }, align 8
@uop_u32_swap_bytes_xy = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 16, i32 3, i8 3, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_swap_bytes_xy_c, ptr null, ptr null }, align 8
@uop_u32_swap_bytes_xyz = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 16, i32 3, i8 7, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_swap_bytes_xyz_c, ptr null, ptr null }, align 8
@uop_u32_swap_bytes_xw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 16, i32 3, i8 9, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_swap_bytes_xw_c, ptr null, ptr null }, align 8
@uop_u32_swap_bytes_yzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 16, i32 3, i8 14, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_swap_bytes_yzw_c, ptr null, ptr null }, align 8
@uop_u32_swap_bytes_xyzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 16, i32 3, i8 15, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_swap_bytes_xyzw_c, ptr null, ptr null }, align 8
@uop_u32_to_u16_y = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 21, i32 3, i8 2, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_to_u16_y_c, ptr null, ptr null }, align 8
@uop_u32_to_u16_z = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 21, i32 3, i8 4, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_to_u16_z_c, ptr null, ptr null }, align 8
@uop_u32_to_u16_xyz = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 21, i32 3, i8 7, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_to_u16_xyz_c, ptr null, ptr null }, align 8
@uop_u32_to_u16_yzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 21, i32 3, i8 14, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_to_u16_yzw_c, ptr null, ptr null }, align 8
@uop_u32_to_f32_y = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 23, i32 3, i8 2, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_to_f32_y_c, ptr null, ptr null }, align 8
@uop_u32_to_f32_z = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 23, i32 3, i8 4, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_to_f32_z_c, ptr null, ptr null }, align 8
@uop_u32_to_f32_xyz = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 23, i32 3, i8 7, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_to_f32_xyz_c, ptr null, ptr null }, align 8
@uop_u32_to_f32_yzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 23, i32 3, i8 14, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_to_f32_yzw_c, ptr null, ptr null }, align 8
@uop_u32_scale_x = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 24, i32 3, i8 1, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_scale_x_c, ptr @ff_sws_setup_scalar, ptr null }, align 8
@uop_u32_scale_xyz = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 24, i32 3, i8 7, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_scale_xyz_c, ptr @ff_sws_setup_scalar, ptr null }, align 8
@uop_u32_unpack_xyzw_2aaa = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsPackUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 28, i32 3, i8 15, [3 x i8] zeroinitializer, { %struct.SwsPackUOp, [12 x i8] } { %struct.SwsPackUOp { [4 x i8] c"\02\0A\0A\0A" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_unpack_xyzw_2aaa_c, ptr null, ptr null }, align 8
@uop_u32_unpack_xyzw_aaa2 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsPackUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 28, i32 3, i8 15, [3 x i8] zeroinitializer, { %struct.SwsPackUOp, [12 x i8] } { %struct.SwsPackUOp { [4 x i8] c"\0A\0A\0A\02" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_unpack_xyzw_aaa2_c, ptr null, ptr null }, align 8
@uop_u32_pack_xyzw_2aaa = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsPackUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 29, i32 3, i8 15, [3 x i8] zeroinitializer, { %struct.SwsPackUOp, [12 x i8] } { %struct.SwsPackUOp { [4 x i8] c"\02\0A\0A\0A" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_pack_xyzw_2aaa_c, ptr null, ptr null }, align 8
@uop_u32_pack_xyzw_aaa2 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsPackUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 29, i32 3, i8 15, [3 x i8] zeroinitializer, { %struct.SwsPackUOp, [12 x i8] } { %struct.SwsPackUOp { [4 x i8] c"\0A\0A\0A\02" }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_pack_xyzw_aaa2_c, ptr null, ptr null }, align 8
@uop_u32_lshift_xyz_2 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsShiftUOp, [15 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 30, i32 3, i8 7, [3 x i8] zeroinitializer, { %struct.SwsShiftUOp, [15 x i8] } { %struct.SwsShiftUOp { i8 2 }, [15 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @u32_lshift_xyz_2_c, ptr null, ptr null }, align 8
@uop_u32_clear_x_x = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsClearUOp, [14 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 32, i32 3, i8 1, [3 x i8] zeroinitializer, { %struct.SwsClearUOp, [14 x i8] } zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_clear_x_x_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_u32_clear_y_x = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsClearUOp, [14 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 32, i32 3, i8 2, [3 x i8] zeroinitializer, { %struct.SwsClearUOp, [14 x i8] } zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_clear_y_x_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_u32_clear_xz_xx = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsClearUOp, [14 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 32, i32 3, i8 5, [3 x i8] zeroinitializer, { %struct.SwsClearUOp, [14 x i8] } zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_clear_xz_xx_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_u32_clear_w_x = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsClearUOp, [14 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 32, i32 3, i8 8, [3 x i8] zeroinitializer, { %struct.SwsClearUOp, [14 x i8] } zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_clear_w_x_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_u32_clear_yw_xx = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsClearUOp, [14 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 32, i32 3, i8 10, [3 x i8] zeroinitializer, { %struct.SwsClearUOp, [14 x i8] } zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_clear_yw_xx_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_u32_clear_xyw_xxx = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsClearUOp, [14 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 32, i32 3, i8 11, [3 x i8] zeroinitializer, { %struct.SwsClearUOp, [14 x i8] } zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_clear_xyw_xxx_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_u32_clear_xzw_xxx = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsClearUOp, [14 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 32, i32 3, i8 13, [3 x i8] zeroinitializer, { %struct.SwsClearUOp, [14 x i8] } zeroinitializer, [4 x i8] zeroinitializer, ptr @u32_clear_xzw_xxx_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_read_planar_fv_x_f32 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsFilterUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 3, i32 4, i8 1, [3 x i8] zeroinitializer, { %struct.SwsFilterUOp, [12 x i8] } { %struct.SwsFilterUOp { i32 4 }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_read_planar_fv_x_f32_c, ptr @setup_filter_v_F32, ptr null }, align 8
@uop_f32_read_planar_fv_xy_f32 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsFilterUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 3, i32 4, i8 3, [3 x i8] zeroinitializer, { %struct.SwsFilterUOp, [12 x i8] } { %struct.SwsFilterUOp { i32 4 }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_read_planar_fv_xy_f32_c, ptr @setup_filter_v_F32, ptr null }, align 8
@uop_f32_read_planar_fv_xyz_f32 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsFilterUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 3, i32 4, i8 7, [3 x i8] zeroinitializer, { %struct.SwsFilterUOp, [12 x i8] } { %struct.SwsFilterUOp { i32 4 }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_read_planar_fv_xyz_f32_c, ptr @setup_filter_v_F32, ptr null }, align 8
@uop_f32_read_planar_fv_xyzw_f32 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsFilterUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 3, i32 4, i8 15, [3 x i8] zeroinitializer, { %struct.SwsFilterUOp, [12 x i8] } { %struct.SwsFilterUOp { i32 4 }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_read_planar_fv_xyzw_f32_c, ptr @setup_filter_v_F32, ptr null }, align 8
@uop_f32_read_planar_fh_x_f32 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsFilterUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 2, i32 4, i8 1, [3 x i8] zeroinitializer, { %struct.SwsFilterUOp, [12 x i8] } { %struct.SwsFilterUOp { i32 4 }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_read_planar_fh_x_f32_c, ptr @setup_filter_h_F32, ptr null }, align 8
@uop_f32_read_planar_fh_xy_f32 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsFilterUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 2, i32 4, i8 3, [3 x i8] zeroinitializer, { %struct.SwsFilterUOp, [12 x i8] } { %struct.SwsFilterUOp { i32 4 }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_read_planar_fh_xy_f32_c, ptr @setup_filter_h_F32, ptr null }, align 8
@uop_f32_read_planar_fh_xyz_f32 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsFilterUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 2, i32 4, i8 7, [3 x i8] zeroinitializer, { %struct.SwsFilterUOp, [12 x i8] } { %struct.SwsFilterUOp { i32 4 }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_read_planar_fh_xyz_f32_c, ptr @setup_filter_h_F32, ptr null }, align 8
@uop_f32_read_planar_fh_xyzw_f32 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsFilterUOp, [12 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 2, i32 4, i8 15, [3 x i8] zeroinitializer, { %struct.SwsFilterUOp, [12 x i8] } { %struct.SwsFilterUOp { i32 4 }, [12 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_read_planar_fh_xyzw_f32_c, ptr @setup_filter_h_F32, ptr null }, align 8
@uop_f32_to_u8_x = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 20, i32 4, i8 1, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u8_x_c, ptr null, ptr null }, align 8
@uop_f32_to_u8_xy = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 20, i32 4, i8 3, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u8_xy_c, ptr null, ptr null }, align 8
@uop_f32_to_u8_xyz = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 20, i32 4, i8 7, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u8_xyz_c, ptr null, ptr null }, align 8
@uop_f32_to_u8_xw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 20, i32 4, i8 9, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u8_xw_c, ptr null, ptr null }, align 8
@uop_f32_to_u8_yzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 20, i32 4, i8 14, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u8_yzw_c, ptr null, ptr null }, align 8
@uop_f32_to_u8_xyzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 20, i32 4, i8 15, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u8_xyzw_c, ptr null, ptr null }, align 8
@uop_f32_to_u16_x = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 21, i32 4, i8 1, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u16_x_c, ptr null, ptr null }, align 8
@uop_f32_to_u16_xy = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 21, i32 4, i8 3, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u16_xy_c, ptr null, ptr null }, align 8
@uop_f32_to_u16_xyz = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 21, i32 4, i8 7, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u16_xyz_c, ptr null, ptr null }, align 8
@uop_f32_to_u16_xw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 21, i32 4, i8 9, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u16_xw_c, ptr null, ptr null }, align 8
@uop_f32_to_u16_yzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 21, i32 4, i8 14, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u16_yzw_c, ptr null, ptr null }, align 8
@uop_f32_to_u16_xyzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 21, i32 4, i8 15, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u16_xyzw_c, ptr null, ptr null }, align 8
@uop_f32_to_u32_x = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 22, i32 4, i8 1, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u32_x_c, ptr null, ptr null }, align 8
@uop_f32_to_u32_xyz = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 22, i32 4, i8 7, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u32_xyz_c, ptr null, ptr null }, align 8
@uop_f32_to_u32_xw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 22, i32 4, i8 9, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u32_xw_c, ptr null, ptr null }, align 8
@uop_f32_to_u32_yzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 22, i32 4, i8 14, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u32_yzw_c, ptr null, ptr null }, align 8
@uop_f32_to_u32_xyzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 22, i32 4, i8 15, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_to_u32_xyzw_c, ptr null, ptr null }, align 8
@uop_f32_scale_x = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 24, i32 4, i8 1, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_scale_x_c, ptr @ff_sws_setup_scalar, ptr null }, align 8
@uop_f32_scale_xy = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 24, i32 4, i8 3, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_scale_xy_c, ptr @ff_sws_setup_scalar, ptr null }, align 8
@uop_f32_scale_xyz = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 24, i32 4, i8 7, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_scale_xyz_c, ptr @ff_sws_setup_scalar, ptr null }, align 8
@uop_f32_scale_yzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 24, i32 4, i8 14, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_scale_yzw_c, ptr @ff_sws_setup_scalar, ptr null }, align 8
@uop_f32_scale_xyzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 24, i32 4, i8 15, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_scale_xyzw_c, ptr @ff_sws_setup_scalar, ptr null }, align 8
@uop_f32_add_x = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 25, i32 4, i8 1, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_add_x_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_add_xy = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 25, i32 4, i8 3, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_add_xy_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_add_xz = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 25, i32 4, i8 5, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_add_xz_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_add_xyz = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 25, i32 4, i8 7, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_add_xyz_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_add_w = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 25, i32 4, i8 8, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_add_w_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_add_xw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 25, i32 4, i8 9, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_add_xw_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_add_yzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 25, i32 4, i8 14, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_add_yzw_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_add_xyzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 25, i32 4, i8 15, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_add_xyzw_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_min_x = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 26, i32 4, i8 1, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_min_x_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_min_xy = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 26, i32 4, i8 3, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_min_xy_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_min_xyz = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 26, i32 4, i8 7, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_min_xyz_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_min_xw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 26, i32 4, i8 9, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_min_xw_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_min_yzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 26, i32 4, i8 14, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_min_yzw_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_min_xyzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 26, i32 4, i8 15, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_min_xyzw_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_max_x = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 27, i32 4, i8 1, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_max_x_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_max_xy = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 27, i32 4, i8 3, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_max_xy_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_max_xyz = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 27, i32 4, i8 7, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_max_xyz_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_max_xw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 27, i32 4, i8 9, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_max_xw_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_max_xyzw = internal constant { i32, i32, i8, [3 x i8], %union.SwsUOpParams, [4 x i8], ptr, ptr, ptr } { i32 27, i32 4, i8 15, [3 x i8] zeroinitializer, %union.SwsUOpParams zeroinitializer, [4 x i8] zeroinitializer, ptr @f32_max_xyzw_c, ptr @ff_sws_setup_vec4, ptr null }, align 8
@uop_f32_linear_x_xxx0x = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsLinearUOp, [4 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 33, i32 4, i8 1, [3 x i8] zeroinitializer, { %struct.SwsLinearUOp, [4 x i8] } { %struct.SwsLinearUOp { i32 266304, i32 782248, i32 0 }, [4 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_linear_x_xxx0x_c, ptr @setup_linear_F32, ptr null }, align 8
@uop_f32_linear_x_x000x = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsLinearUOp, [4 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 33, i32 4, i8 1, [3 x i8] zeroinitializer, { %struct.SwsLinearUOp, [4 x i8] } { %struct.SwsLinearUOp { i32 266304, i32 782254, i32 0 }, [4 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_linear_x_x000x_c, ptr @setup_linear_F32, ptr null }, align 8
@uop_f32_linear_x_xxx00 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsLinearUOp, [4 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 33, i32 4, i8 1, [3 x i8] zeroinitializer, { %struct.SwsLinearUOp, [4 x i8] } { %struct.SwsLinearUOp { i32 266304, i32 782264, i32 0 }, [4 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_linear_x_xxx00_c, ptr @setup_linear_F32, ptr null }, align 8
@uop_f32_linear_y_0x000 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsLinearUOp, [4 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 33, i32 4, i8 2, [3 x i8] zeroinitializer, { %struct.SwsLinearUOp, [4 x i8] } { %struct.SwsLinearUOp { i32 266241, i32 782270, i32 0 }, [4 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_linear_y_0x000_c, ptr @setup_linear_F32, ptr null }, align 8
@uop_f32_linear_xyz_xxx0x_xxx0x_xxx0x = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsLinearUOp, [4 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 33, i32 4, i8 7, [3 x i8] zeroinitializer, { %struct.SwsLinearUOp, [4 x i8] } { %struct.SwsLinearUOp { i32 262144, i32 762120, i32 0 }, [4 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_linear_xyz_xxx0x_xxx0x_xxx0x_c, ptr @setup_linear_F32, ptr null }, align 8
@uop_f32_linear_xyz_x0x0x_xxx0x_xx00x = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsLinearUOp, [4 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 33, i32 4, i8 7, [3 x i8] zeroinitializer, { %struct.SwsLinearUOp, [4 x i8] } { %struct.SwsLinearUOp { i32 262144, i32 766218, i32 0 }, [4 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_linear_xyz_x0x0x_xxx0x_xx00x_c, ptr @setup_linear_F32, ptr null }, align 8
@uop_f32_linear_xyz_xxx00_xxx0x_xxx0x = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsLinearUOp, [4 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 33, i32 4, i8 7, [3 x i8] zeroinitializer, { %struct.SwsLinearUOp, [4 x i8] } { %struct.SwsLinearUOp { i32 262144, i32 762136, i32 0 }, [4 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_linear_xyz_xxx00_xxx0x_xxx0x_c, ptr @setup_linear_F32, ptr null }, align 8
@uop_f32_linear_xyz_x000x_0x00x_00x0x = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsLinearUOp, [4 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 33, i32 4, i8 7, [3 x i8] zeroinitializer, { %struct.SwsLinearUOp, [4 x i8] } { %struct.SwsLinearUOp { i32 262144, i32 765358, i32 0 }, [4 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_linear_xyz_x000x_0x00x_00x0x_c, ptr @setup_linear_F32, ptr null }, align 8
@uop_f32_linear_xyz_x0000_0x000_00x00 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsLinearUOp, [4 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 33, i32 4, i8 7, [3 x i8] zeroinitializer, { %struct.SwsLinearUOp, [4 x i8] } { %struct.SwsLinearUOp { i32 262144, i32 782270, i32 0 }, [4 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_linear_xyz_x0000_0x000_00x00_c, ptr @setup_linear_F32, ptr null }, align 8
@uop_f32_linear_xyz_10x0x_1xx0x_1x00x = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsLinearUOp, [4 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 33, i32 4, i8 7, [3 x i8] zeroinitializer, { %struct.SwsLinearUOp, [4 x i8] } { %struct.SwsLinearUOp { i32 263201, i32 766218, i32 0 }, [4 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_linear_xyz_10x0x_1xx0x_1x00x_c, ptr @setup_linear_F32, ptr null }, align 8
@uop_f32_linear_w_000x0 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsLinearUOp, [4 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 33, i32 4, i8 8, [3 x i8] zeroinitializer, { %struct.SwsLinearUOp, [4 x i8] } { %struct.SwsLinearUOp { i32 4161, i32 782270, i32 0 }, [4 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_linear_w_000x0_c, ptr @setup_linear_F32, ptr null }, align 8
@uop_f32_linear_xw_x000x_000x0 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsLinearUOp, [4 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 33, i32 4, i8 9, [3 x i8] zeroinitializer, { %struct.SwsLinearUOp, [4 x i8] } { %struct.SwsLinearUOp { i32 4160, i32 782254, i32 0 }, [4 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_linear_xw_x000x_000x0_c, ptr @setup_linear_F32, ptr null }, align 8
@uop_f32_linear_xw_xxx00_000x0 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsLinearUOp, [4 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 33, i32 4, i8 9, [3 x i8] zeroinitializer, { %struct.SwsLinearUOp, [4 x i8] } { %struct.SwsLinearUOp { i32 4160, i32 782264, i32 0 }, [4 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_linear_xw_xxx00_000x0_c, ptr @setup_linear_F32, ptr null }, align 8
@uop_f32_linear_xyzw_xxx0x_xxx0x_xxx0x_000x0 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsLinearUOp, [4 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 33, i32 4, i8 15, [3 x i8] zeroinitializer, { %struct.SwsLinearUOp, [4 x i8] } { %struct.SwsLinearUOp { i32 0, i32 762120, i32 0 }, [4 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_linear_xyzw_xxx0x_xxx0x_xxx0x_000x0_c, ptr @setup_linear_F32, ptr null }, align 8
@uop_f32_linear_xyzw_x0x0x_xxx0x_xx00x_000x0 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsLinearUOp, [4 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 33, i32 4, i8 15, [3 x i8] zeroinitializer, { %struct.SwsLinearUOp, [4 x i8] } { %struct.SwsLinearUOp { i32 0, i32 766218, i32 0 }, [4 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_linear_xyzw_x0x0x_xxx0x_xx00x_000x0_c, ptr @setup_linear_F32, ptr null }, align 8
@uop_f32_linear_xyzw_x0000_0x000_00x00_000x0 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsLinearUOp, [4 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 33, i32 4, i8 15, [3 x i8] zeroinitializer, { %struct.SwsLinearUOp, [4 x i8] } { %struct.SwsLinearUOp { i32 0, i32 782270, i32 0 }, [4 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_linear_xyzw_x0000_0x000_00x00_000x0_c, ptr @setup_linear_F32, ptr null }, align 8
@uop_f32_dither_x_0_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 1, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] zeroinitializer, i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_x_0_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_y_3_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 2, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\00\03\00\00", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_y_3_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xy_0_3_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 3, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\00\03\00\00", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xy_0_3_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_z_2_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 4, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\00\00\02\00", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_z_2_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xz_0_2_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 5, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\00\00\02\00", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xz_0_2_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xyz_0_0_0_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 7, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] zeroinitializer, i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xyz_0_0_0_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xyz_0_3_2_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 7, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\00\03\02\00", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xyz_0_3_2_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xyz_2_0_3_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 7, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\02\00\03\00", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xyz_2_0_3_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xyz_2_3_0_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 7, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\02\03\00\00", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xyz_2_3_0_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xyz_3_0_2_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 7, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\03\00\02\00", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xyz_3_0_2_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xyz_3_2_0_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 7, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\03\02\00\00", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xyz_3_2_0_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_w_5_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 8, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\00\00\00\05", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_w_5_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xw_0_3_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 9, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\00\00\00\03", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xw_0_3_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xw_0_5_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 9, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\00\00\00\05", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xw_0_5_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_yzw_0_3_2_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 14, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\00\00\03\02", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_yzw_0_3_2_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_yzw_2_0_3_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 14, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\00\02\00\03", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_yzw_2_0_3_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_yzw_2_3_0_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 14, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\00\02\03\00", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_yzw_2_3_0_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xyzw_0_0_0_3_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 15, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\00\00\00\03", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xyzw_0_0_0_3_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xyzw_0_3_2_5_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 15, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\00\03\02\05", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xyzw_0_3_2_5_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xyzw_2_3_0_5_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 15, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\02\03\00\05", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xyzw_2_3_0_5_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xyzw_3_0_2_5_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 15, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\03\00\02\05", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xyzw_3_0_2_5_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xyzw_3_2_0_5_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 15, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\03\02\00\05", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xyzw_3_2_0_5_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xyzw_5_0_3_2_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 15, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\05\00\03\02", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xyzw_5_0_3_2_16x16_c, ptr @setup_dither_F32, ptr null }, align 8
@uop_f32_dither_xyzw_5_2_3_0_16x16 = internal constant { i32, i32, i8, [3 x i8], { %struct.SwsDitherUOp, [11 x i8] }, [4 x i8], ptr, ptr, ptr } { i32 35, i32 4, i8 15, [3 x i8] zeroinitializer, { %struct.SwsDitherUOp, [11 x i8] } { %struct.SwsDitherUOp { [4 x i8] c"\05\02\03\00", i8 4 }, [11 x i8] zeroinitializer }, [4 x i8] zeroinitializer, ptr @f32_dither_xyzw_5_2_3_0_16x16_c, ptr @setup_dither_F32, ptr null }, align 8

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @compile(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  %i.d = tail call ptr @ff_sws_op_chain_alloc() #12 ; 7 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.e = tail call ptr @ff_sws_uop_list_alloc() #12 ; 5 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !9
  %.not36 = icmp eq ptr %i.e, null
  br i1 %.not36, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @ff_sws_ops_translate(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %i.e) #12 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !12
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 156) #12
  tail call void @abort() #13
  unreachable

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !12
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.p = phi ptr [ %i.k, %bb.f ], [ %i.e, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr @uop_table, ptr %i.b, align 8, !tbaa !17
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = call i32 @ff_sws_uop_lookup(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef %i.r, i32 noundef 32, ptr noundef nonnull %i.d) #12 ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %i.t, label %bb.f, label %.loopexit

.thread:                                          ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 684
  %i.v = load i32, ptr %i.u, align 4, !tbaa !20
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.0..sroa_idx, i8 0, i64 32, i1 false)
  store ptr @process, ptr %2, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.v, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !23
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !23
  %.sroa.8.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 0, ptr %.sroa.8.0..sroa_idx.a, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.d, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !24
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr @ff_sws_op_chain_free_cb, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %i.w, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %i.x, i64 16, i1 false)
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.4) #12
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !12
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph41, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph41, %.thread
  call void @ff_sws_uop_list_free(ptr noundef nonnull %i.a) #12
  br label %bb.g

.lr.ph41:                                         ; preds = %.thread, %.lr.ph41
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.lr.ph41 ], [ 0, %.thread ] ; 2 uses
  %i.ac = phi ptr [ %i.af, %.lr.ph41 ], [ %i.y, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw [112 x i8], ptr %i.ad, i64 %indvars.iv44
  call void @ff_sws_uop_name(ptr noundef %i.ae, ptr noundef nonnull %i.c) #12
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !12
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next45, %i.ai
  br i1 %i.aj, label %.lr.ph41, label %._crit_edge, !llvm.loop !25

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.c
  %.2 = phi i32 [ %i.f, %bb.c ], [ -12, %bb.b ], [ %i.s, %.lr.ph ]
  call void @ff_sws_uop_list_free(ptr noundef nonnull %i.a) #12
  call void @ff_sws_op_chain_free_cb(ptr noundef nonnull %i.d) #12
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %._crit_edge
  %.026 = phi i32 [ %.2, %.loopexit ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.1 = phi i32 [ %.026, %bb.g ], [ -12, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @ff_sws_op_chain_alloc() local_unnamed_addr #2

declare ptr @ff_sws_uop_list_alloc() local_unnamed_addr #2

declare i32 @ff_sws_ops_translate(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare i32 @ff_sws_uop_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @process(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
bb.a:
  %6 = alloca %union.block_t, align 4             ; 3 uses
  %7 = alloca %union.block_t, align 4             ; 3 uses
  %8 = alloca %union.block_t, align 4             ; 3 uses
  %9 = alloca %union.block_t, align 4             ; 3 uses
  %10 = alloca %struct.SwsOpIter, align 16        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 72
  store ptr %0, ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.d = load <2 x ptr>, ptr %0, align 8, !tbaa !29
  %i.e = ptrtoint <2 x ptr> %i.d to <2 x i64>
  store <2 x i64> %i.e, ptr %10, align 16, !tbaa !31
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !29
  %i.g = ptrtoint <2 x ptr> %i.f to <2 x i64>
  store <2 x i64> %i.g, ptr %i.c, align 16, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  %i.l = load <2 x ptr>, ptr %i.h, align 8, !tbaa !29
  %i.m = ptrtoint <2 x ptr> %i.l to <2 x i64>
  store <2 x i64> %i.m, ptr %i.i, align 16, !tbaa !31
  %i.n = load <2 x ptr>, ptr %i.j, align 8, !tbaa !29
  %i.o = ptrtoint <2 x ptr> %i.n to <2 x i64>
  store <2 x i64> %i.o, ptr %i.k, align 16, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 68 ; 3 uses
  store i32 %3, ptr %i.p, align 4, !tbaa !33
  %i.q = icmp slt i32 %3, %5
  br i1 %i.q, label %.preheader.lr.ph, label %._crit_edge49

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.r = icmp slt i32 %2, %4
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  br i1 %i.r, label %.preheader.us.preheader, label %._crit_edge49

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.backedge, %.preheader.us.preheader
  %.04447.us = phi i32 [ %2, %.preheader.us.preheader ], [ %.04447.us.be, %.preheader.us.backedge ] ; 2 uses
  %i.ad = shl nsw i32 %.04447.us, 5
  store i32 %i.ad, ptr %i.s, align 16, !tbaa !34
  %i.ae = load ptr, ptr %1, align 16, !tbaa !35
  call void %i.ae(ptr noundef nonnull %10, ptr noundef nonnull %i.t, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %i.af = add i32 %.04447.us, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, %4
  br i1 %exitcond.not, label %._crit_edge.us, label %.preheader.us.backedge

.preheader.us.backedge:                           ; preds = %.preheader.us, %bb.c
  %.04447.us.be = phi i32 [ %i.af, %.preheader.us ], [ %2, %bb.c ]
  br label %.preheader.us, !llvm.loop !37

bb.b:                                             ; preds = %._crit_edge.us
  %i.ag = sext i32 %.pre96 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !23
  %i.aj = sext i32 %i.ai to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.us
  %i.ak = phi i64 [ %i.aj, %bb.b ], [ 0, %._crit_edge.us ] ; 4 uses
  %i.al = load <2 x i64>, ptr %i.v, align 8, !tbaa !31
  %i.am = load i64, ptr %i.y, align 8, !tbaa !31
  %i.an = load i64, ptr %i.w, align 8, !tbaa !31
  %i.ao = mul nsw i64 %i.am, %i.ak
  %i.ap = mul nsw i64 %i.an, %i.ak
  %i.aq = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %i.ar = insertelement <2 x i64> %i.aq, i64 %i.ao, i64 1
  %i.as = add nsw <2 x i64> %i.ar, %i.al
  %i.at = load <2 x i64>, ptr %10, align 16, !tbaa !31
  %i.au = add <2 x i64> %i.as, %i.at
  store <2 x i64> %i.au, ptr %10, align 16, !tbaa !31
  %i.av = load <2 x i64>, ptr %i.x, align 8, !tbaa !31
  %i.aw = load <2 x i64>, ptr %i.c, align 16, !tbaa !31
  %i.ax = add <2 x i64> %i.aw, %i.av
  store <2 x i64> %i.ax, ptr %i.c, align 16, !tbaa !31
  %i.ay = load <2 x i64>, ptr %i.z, align 8, !tbaa !31
  %i.az = load i64, ptr %i.ac, align 8, !tbaa !31
  %i.ba = load i64, ptr %i.aa, align 8, !tbaa !31
  %i.bb = mul nsw i64 %i.az, %i.ak
  %i.bc = mul nsw i64 %i.ba, %i.ak
  %i.bd = insertelement <2 x i64> poison, i64 %i.bc, i64 0
  %i.be = insertelement <2 x i64> %i.bd, i64 %i.bb, i64 1
  %i.bf = add nsw <2 x i64> %i.be, %i.ay
  %i.bg = load <2 x i64>, ptr %i.i, align 16, !tbaa !31
  %i.bh = add <2 x i64> %i.bf, %i.bg
  store <2 x i64> %i.bh, ptr %i.i, align 16, !tbaa !31
  %i.bi = load <2 x i64>, ptr %i.ab, align 8, !tbaa !31
  %i.bj = load <2 x i64>, ptr %i.k, align 16, !tbaa !31
  %i.bk = add <2 x i64> %i.bj, %i.bi
  store <2 x i64> %i.bk, ptr %i.k, align 16, !tbaa !31
  %i.bl = add nsw i32 %.pre96, 1                  ; 2 uses
  store i32 %i.bl, ptr %i.p, align 4, !tbaa !33
  %i.bm = icmp slt i32 %i.bl, %5
  br i1 %i.bm, label %.preheader.us.backedge, label %._crit_edge49

._crit_edge.us:                                   ; preds = %.preheader.us
  %i.bn = load ptr, ptr %i.u, align 8, !tbaa !38  ; 2 uses
  %.not.us = icmp eq ptr %i.bn, null
  %.pre96 = load i32, ptr %i.p, align 4, !tbaa !33 ; 2 uses
  br i1 %.not.us, label %bb.c, label %bb.b

._crit_edge49:                                    ; preds = %bb.c, %.preheader.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @ff_sws_op_chain_free_cb(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_0
