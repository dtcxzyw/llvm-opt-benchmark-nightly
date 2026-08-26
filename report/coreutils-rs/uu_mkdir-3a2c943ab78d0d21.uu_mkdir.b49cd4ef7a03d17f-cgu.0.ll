Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_mkdir-3a2c943ab78d0d21.uu_mkdir.b49cd4ef7a03d17f-cgu.0?download=true
inline.NumInlined: 330
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvCsfvoB946XvKl_8uu_mkdir17create_single_dir:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 31, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.jj = icmp eq i64 %.sroa.0193.0.copyload194, 0
  br i1 %i.jj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfvoB946XvKl_8uu_mkdir.exit154, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5195.0.copyload197, i64 noundef %.sroa.0193.0.copyload194, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !213
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfvoB946XvKl_8uu_mkdir.exit154

bb.bl:                                            ; preds = %.loopexit242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.sroa.0193.0.copyload194, ptr %i.k, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.5195.0.copyload197, ptr %.sroa.5195.0..sroa_idx, align 8
  %.sroa.8199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.8199.0.copyload201, ptr %.sroa.8199.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsfvoB946XvKl_8uu_mkdir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 31, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfvoB946XvKl_8uu_mkdir.exit154

bb.bm:                                            ; preds = %.loopexit242
  %i.jk = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.jl = load double, ptr %i.jk, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsfvoB946XvKl_8uu_mkdir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4, double noundef %i.jl) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bj

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfvoB946XvKl_8uu_mkdir.exit154: ; preds = %bb.bk, %bb.bj, %bb.bl
  br i1 %.sroa.022.0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfvoB946XvKl_8uu_mkdir.exit157, label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfvoB946XvKl_8uu_mkdir.exit157, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfvoB946XvKl_8uu_mkdir.exit154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.q, ptr %i.i, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.449.0..sroa_idx, align 8
  %i.jm = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @23, ptr noundef nonnull %i.i) #22 ; 2 uses
  %.not = icmp eq ptr %i.jm, null
  br i1 %.not, label %bb.bq, label %bb.bo

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfvoB946XvKl_8uu_mkdir.exit157: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfvoB946XvKl_8uu_mkdir.exit154
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fv, i64 noundef 5, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !216
  br label %bb.bn

bb.bo:                                            ; preds = %bb.bn
  %i.jn = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.jm) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %.val.i158 = load i64, ptr %i.q, align 8, !range !40, !alias.scope !219, !noundef !4 ; 2 uses
  %i.jo = icmp eq i64 %.val.i158, 0
  br i1 %i.jo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfvoB946XvKl_8uu_mkdir.exit160, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i159 = load ptr, ptr %i.jp, align 8, !alias.scope !219, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i159, i64 noundef %.val.i158, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !219
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfvoB946XvKl_8uu_mkdir.exit160

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfvoB946XvKl_8uu_mkdir.exit160: ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ak

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %.val.i161 = load i64, ptr %i.q, align 8, !range !40, !alias.scope !222, !noundef !4 ; 2 uses
  %i.jq = icmp eq i64 %.val.i161, 0
  br i1 %i.jq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfvoB946XvKl_8uu_mkdir.exit163, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jr = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i162 = load ptr, ptr %i.jr, align 8, !alias.scope !222, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i162, i64 noundef %.val.i161, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !222
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfvoB946XvKl_8uu_mkdir.exit163

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfvoB946XvKl_8uu_mkdir.exit163: ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.aj

.thread:                                          ; preds = %bb.ao, %bb.an, %bb.ap, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  %i.js = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.jt = and i64 %i.js, 3
  switch i64 %i.jt, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit
    i64 3, label %bb.bs
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit
    i64 1, label %bb.bt
  ], !prof !126

default.unreachable:                              ; preds = %bb.bv, %.thread
  unreachable

bb.bs:                                            ; preds = %.thread
  %i.ju = icmp ult ptr %i.ay, inttoptr (i64 188978561024 to ptr)
  %i.jv = and i64 %i.js, 1095216660480
  %i.jw = icmp ne i64 %i.jv, 1095216660480
  call void @llvm.assume(i1 %i.ju)
  call void @llvm.assume(i1 %i.jw)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit

bb.bt:                                            ; preds = %.thread
  %i.jx = getelementptr i8, ptr %i.ay, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jx) ]
  %i.jy = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.jx, ptr %i.jy, align 8, !alias.scope !225
  store i8 3, ptr %i.c, align 8, !alias.scope !225
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jy) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit: ; preds = %.thread, %.thread, %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.thread223

bb.bu:                                            ; preds = %bb.ak, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit165, %.thread223
  %.merged = phi { ptr, ptr } [ %i.fm, %.thread223 ], [ %.pn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit165 ], [ %.pn, %bb.ak ]
  ret { ptr, ptr } %.merged

bb.bv:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.jz = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ka = and i64 %i.jz, 3
  switch i64 %i.ka, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit165
    i64 3, label %bb.bw
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit165
    i64 1, label %bb.bx
  ], !prof !126

bb.bw:                                            ; preds = %bb.bv
  %i.kb = icmp ult ptr %i.ay, inttoptr (i64 188978561024 to ptr)
  %i.kc = and i64 %i.jz, 1095216660480
  %i.kd = icmp ne i64 %i.kc, 1095216660480
  call void @llvm.assume(i1 %i.kb)
  call void @llvm.assume(i1 %i.kd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit165

bb.bx:                                            ; preds = %bb.bv
  %i.ke = getelementptr i8, ptr %i.ay, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ke) ]
  %i.kf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ke, ptr %i.kf, align 8, !alias.scope !228
  store i8 3, ptr %i.b, align 8, !alias.scope !228
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kf) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit165

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit165: ; preds = %bb.bv, %bb.bv, %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bu
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsfvoB946XvKl_8uu_mkdir4exec(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit.backedge, %bb.a
  %.sroa.12.0 = phi ptr [ %.sroa.12.0.copyload, %bb.a ], [ %.sroa.12.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit.backedge ] ; 5 uses
  %.sroa.10.0 = phi ptr [ %.sroa.10.0.copyload, %bb.a ], [ %.sroa.10.181, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit.backedge ] ; 3 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload, %bb.a ], [ %.sroa.7.2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit.backedge ] ; 3 uses
  %.sroa.4.0 = phi ptr [ %.sroa.4.0.copyload, %bb.a ], [ %.sroa.4.178, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit.backedge ] ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %.sroa.7.0, null
  %i.o = icmp eq ptr %.sroa.7.0, %.sroa.10.0
  %or.cond83 = select i1 %.not.i.i.i82, i1 true, i1 %i.o
  br i1 %or.cond83, label %select.unfold.i.i, label %.loopexit

select.unfold.i.i:                                ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit, %bb.b
  %.sroa.4.185 = phi ptr [ %i.q, %bb.b ], [ %.sroa.4.0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit ] ; 6 uses
  %.sroa.10.184 = phi ptr [ %i.t, %bb.b ], [ %.sroa.10.0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit ]
  %.not.i5.i.i = icmp eq ptr %.sroa.4.185, null
  %i.p = icmp eq ptr %.sroa.4.185, %.sroa.6.0.copyload
  %or.cond.i.i.i = select i1 %.not.i5.i.i, i1 true, i1 %i.p
  br i1 %or.cond.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %select.unfold.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.4.185, i64 24 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.4.185, i64 8
  %.val.i.i = load ptr, ptr %i.r, align 8, !noalias !231, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.4.185, i64 16
  %.val4.i.i = load i64, ptr %i.s, align 8, !noalias !231, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %.val4.i.i, 5
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx ; 2 uses
  %i.u = icmp eq i64 %.val4.i.i, 0
  br i1 %i.u, label %select.unfold.i.i, label %.loopexit

bb.c:                                             ; preds = %select.unfold.i.i
  %.not.i7.i.i = icmp eq ptr %.sroa.12.0, null
  br i1 %.not.i7.i.i, label %bb.f, label %.sink.split.i8.i.i

.sink.split.i8.i.i:                               ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.v = icmp eq ptr %.sroa.12.0, %.sroa.14.0.copyload
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.12.0, i64 32
  br i1 %i.v, label %bb.f, label %bb.d

.loopexit:                                        ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit
  %.sroa.10.1.lcssa = phi ptr [ %.sroa.10.0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit ], [ %i.t, %bb.b ]
  %.sroa.7.1.lcssa = phi ptr [ %.sroa.7.0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit ], [ %.val.i.i, %bb.b ] ; 2 uses
  %.sroa.4.1.lcssa = phi ptr [ %.sroa.4.0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit ], [ %i.q, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.1.lcssa, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %.sink.split.i8.i.i
  %.sroa.10.181 = phi ptr [ %.sroa.10.184, %.sink.split.i8.i.i ], [ %.sroa.10.1.lcssa, %.loopexit ]
  %.sroa.4.178 = phi ptr [ %.sroa.4.185, %.sink.split.i8.i.i ], [ %.sroa.4.1.lcssa, %.loopexit ]
  %.sroa.12.1 = phi ptr [ %i.w, %.sink.split.i8.i.i ], [ %.sroa.12.0, %.loopexit ]
  %.sroa.7.2 = phi ptr [ null, %.sink.split.i8.i.i ], [ %i.x, %.loopexit ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.12.0, %.sink.split.i8.i.i ], [ %.sroa.7.1.lcssa, %.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.y = call noundef nonnull align 8 ptr %.sroa.0.0.copyload(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i) #22, !noalias !236, !inline_history !237 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4 ; 7 uses
  %.not.i = icmp slt i64 %i.ac, 0
  br i1 %.not.i, label %bb.g, label %bb.e, !prof !238

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq i64 %i.ac, 0                    ; 2 uses
  br i1 %i.ad, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfvoB946XvKl_8uu_mkdir.exit.thread48, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.e
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !239
  %i.ae = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 9) 1) #22, !noalias !239 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c, %.sink.split.i8.i.i
  ret void

bb.g:                                             ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.435.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.d ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.435.0.ph, i64 %i.ac) #25
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfvoB946XvKl_8uu_mkdir.exit.thread48: ; preds = %bb.e, %bb.h
  %i.ag = phi ptr [ %i.ae, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.e ] ; 2 uses
  %i.ah = call { ptr, ptr } @_RNvCsfvoB946XvKl_8uu_mkdir5mkdir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #22 ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.ah, 0      ; 3 uses
  %.not21 = icmp eq ptr %i.ai, null
  br i1 %.not21, label %bb.w, label %bb.i

bb.h:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfvoB946XvKl_8uu_mkdir.exit.thread48

bb.i:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfvoB946XvKl_8uu_mkdir.exit.thread48
  %i.aj = extractvalue { ptr, ptr } %i.ah, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ai, ptr %i.h, align 8
  store ptr %i.aj, ptr %i.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !invariant.load !4, !nonnull !4
  %i.am = call noundef i32 %i.al(ptr noundef nonnull %i.ai) #24
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef %i.am) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.f, align 8
  %i.an = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #22
  store ptr %i.an, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ao = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #22 ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0
  %i.aq = extractvalue { ptr, i64 } %i.ao, 1
  store ptr %i.ap, ptr %i.e, align 8
  store i64 %i.aq, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsfvoB946XvKl_8uu_mkdir, ptr %.sroa.415.0..sroa_idx, align 8
  store ptr %i.h, ptr %i.k, align 8
  store ptr @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsfvoB946XvKl_8uu_mkdir, ptr %.sroa.419.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !242
  store ptr %i.g, ptr %i.c, align 8, !noalias !242
  store ptr null, ptr %i.l, align 8, !noalias !242
  %i.ar = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @12, ptr noundef nonnull @24, ptr noundef nonnull %i.d) #22
  %i.as = load ptr, ptr %i.l, align 8, !noalias !242, !noundef !4 ; 7 uses
  %.not.i5.i = icmp eq ptr %i.as, null            ; 2 uses
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i5.i, label %bb.o, label %bb.p, !prof !174

bb.k:                                             ; preds = %bb.i
  br i1 %.not.i5.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfvoB946XvKl_8uu_mkdir.exit.i.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !242
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = and i64 %i.at, 3
  switch i64 %i.au, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit.i.i.i
    i64 3, label %bb.m
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit.i.i.i
    i64 1, label %bb.n
  ], !prof !126

default.unreachable:                              ; preds = %bb.p, %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.av = icmp ult ptr %i.as, inttoptr (i64 188978561024 to ptr)
  %i.aw = and i64 %i.at, 1095216660480
  %i.ax = icmp ne i64 %i.aw, 1095216660480
  call void @llvm.assume(i1 %i.av)
  call void @llvm.assume(i1 %i.ax)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %i.as, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  store ptr %i.ay, ptr %i.m, align 8, !alias.scope !247, !noalias !242
  store i8 3, ptr %i.b, align 8, !alias.scope !247, !noalias !242
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !242
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfvoB946XvKl_8uu_mkdir.exit.i.thread

bb.o:                                             ; preds = %bb.j
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #23
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfvoB946XvKl_8uu_mkdir.exit.i.thread: ; preds = %bb.k, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !242
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfvoB946XvKl_8uu_mkdir.exit

bb.p:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.az = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.ba = and i64 %i.az, 3
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit.i
    i64 3, label %bb.q
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit.i
    i64 1, label %bb.r
  ], !prof !126

bb.q:                                             ; preds = %bb.p
  %i.bb = icmp ult ptr %i.as, inttoptr (i64 188978561024 to ptr)
  %i.bc = and i64 %i.az, 1095216660480
  %i.bd = icmp ne i64 %i.bc, 1095216660480
  call void @llvm.assume(i1 %i.bb)
  call void @llvm.assume(i1 %i.bd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit.i

bb.r:                                             ; preds = %bb.p
  %i.be = getelementptr i8, ptr %i.as, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  store ptr %i.be, ptr %i.n, align 8, !alias.scope !250
  store i8 3, ptr %i.a, align 8, !alias.scope !250
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfvoB946XvKl_8uu_mkdir.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfvoB946XvKl_8uu_mkdir.exit: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfvoB946XvKl_8uu_mkdir.exit.i.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfvoB946XvKl_8uu_mkdir.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val24 = load ptr, ptr %i.g, align 8, !nonnull !4, !align !147, !noundef !4 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val24, i64 12 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  %i.bh = add i32 %i.bg, -1                       ; 2 uses
  store i32 %i.bh, ptr %i.bf, align 4
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.s, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfvoB946XvKl_8uu_mkdir.exit

bb.s:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfvoB946XvKl_8uu_mkdir.exit
  store atomic i64 0, ptr %.val24 monotonic, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.val24, i64 8 ; 2 uses
  %i.bk = atomicrmw xchg ptr %i.bj, i32 0 release, align 4
  %i.bl = icmp eq i32 %i.bk, 2
  br i1 %i.bl, label %bb.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfvoB946XvKl_8uu_mkdir.exit, !prof !174

bb.t:                                             ; preds = %bb.s
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bj) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfvoB946XvKl_8uu_mkdir.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfvoB946XvKl_8uu_mkdir.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfvoB946XvKl_8uu_mkdir.exit, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val25 = load ptr, ptr %i.h, align 8           ; 4 uses
  %.val26 = load ptr, ptr %i.i, align 8, !nonnull !4, !align !147, !noundef !4 ; 3 uses
  %i.bm = load ptr, ptr %.val26, align 8, !invariant.load !4 ; 2 uses
  %.not.i29 = icmp eq ptr %i.bm, null
  br i1 %.not.i29, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfvoB946XvKl_8uu_mkdir.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  call void %i.bm(ptr noundef nonnull %.val25) #24, !inline_history !253
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfvoB946XvKl_8uu_mkdir.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !40, !invariant.load !4 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsfvoB946XvKl_8uu_mkdir.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !149, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) %i.br) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsfvoB946XvKl_8uu_mkdir.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsfvoB946XvKl_8uu_mkdir.exit: ; preds = %bb.v, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.w

bb.w:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfvoB946XvKl_8uu_mkdir.exit.thread48, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsfvoB946XvKl_8uu_mkdir.exit
  br i1 %i.ad, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit.backedge, label %bb.x

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit.backedge: ; preds = %bb.w, %bb.x
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit

bb.x:                                             ; preds = %bb.w
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsfvoB946XvKl_8uu_mkdir.exit.backedge
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvCsfvoB946XvKl_8uu_mkdir5mkdir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [176 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [176 x i8], align 8               ; 6 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
end_hunk_0
