inline.NumInlined: 158
inline.NumDeleted: 36
begin_hunk_0_@tdefl_write_image_to_png_file_in_memory_ex:bb.a
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = xor i32 %i.di, %i.do                    ; 2 uses
  %8 = lshr i32 %i.dp, 4
  %i.dq = xor i32 %i.dp, %1
  %i.dr = and i32 %i.dq, 15
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = xor i32 %i.du, %8                       ; 2 uses
  %9 = lshr i32 %i.dv, 4
  %i.dw = lshr i32 %1, 4
  %i.dx = xor i32 %i.dv, %i.dw
  %i.dy = and i32 %i.dx, 15
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3
  %i.ec = xor i32 %9, %i.eb                       ; 2 uses
  %i.ed = lshr i32 %i.ec, 4
  %i.ee = and i32 %i.ec, 15
  %i.ef = zext nneg i32 %i.ee to i64
end_hunk_0
begin_hunk_1_@tdefl_write_image_to_png_file_in_memory_ex:bb.a
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fp = xor i32 %i.fi, %i.fo                    ; 2 uses
  %10 = lshr i32 %i.fp, 4
  %i.fq = xor i32 %i.fp, %2
  %i.fr = and i32 %i.fq, 15
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3
  %i.fv = xor i32 %i.fu, %10                      ; 2 uses
  %11 = lshr i32 %i.fv, 4
  %i.fw = lshr i32 %2, 4
  %i.fx = xor i32 %i.fv, %i.fw
  %i.fy = and i32 %i.fx, 15
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !3
  %i.gc = xor i32 %11, %i.gb                      ; 2 uses
  %i.gd = lshr i32 %i.gc, 4
  %i.ge = and i32 %i.gc, 15
  %i.gf = xor i32 %i.ge, 8
end_hunk_1
