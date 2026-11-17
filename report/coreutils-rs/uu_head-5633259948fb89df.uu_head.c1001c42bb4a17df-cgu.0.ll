Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_head-5633259948fb89df.uu_head.c1001c42bb4a17df-cgu.0?download=true
inline.NumInlined: 820
inline.NumDeleted: 501
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvCsgzkSwV7OBv7_7uu_head7uu_head:bb.a
bb.ei:                                            ; preds = %bb.ed
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #25
  unreachable

bb.ej:                                            ; preds = %bb.eb
  %i.ve = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.uv) #22 ; 2 uses
  %i.vf = extractvalue { ptr, ptr } %i.ve, 0
  %i.vg = extractvalue { ptr, ptr } %i.ve, 1
  br label %bb.dw

bb.ek:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !658
  %i.vh = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.ux) #22 ; 2 uses
  %i.vi = extractvalue { ptr, ptr } %i.vh, 0
  %i.vj = extractvalue { ptr, ptr } %i.vh, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %.val.i232 = load i64, ptr %i.bp, align 8, !range !10, !alias.scope !662, !noundef !8 ; 2 uses
  %i.vk = icmp eq i64 %.val.i232, 0
  br i1 %i.vk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head.exit234, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %.val1.i233 = load ptr, ptr %i.dx, align 8, !alias.scope !662, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i233, i64 noundef %.val.i232, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !662
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head.exit234

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head.exit234: ; preds = %bb.ek, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.dw

bb.em:                                            ; preds = %bb.ee, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %.val.i235 = load i64, ptr %i.bp, align 8, !range !10, !alias.scope !663, !noundef !8 ; 2 uses
  %i.vl = icmp eq i64 %.val.i235, 0
  br i1 %i.vl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head.exit237, label %bb.en

bb.en:                                            ; preds = %bb.em
  %.val1.i236 = load ptr, ptr %i.dx, align 8, !alias.scope !663, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i236, i64 noundef %.val.i235, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !663
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head.exit237

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head.exit237: ; preds = %bb.em, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.ea

bb.eo:                                            ; preds = %bb.ea
  %i.vm = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.vn = load ptr, ptr %i.vm, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.vo = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.vn) #22 ; 2 uses
  %i.vp = extractvalue { ptr, ptr } %i.vo, 0
  %i.vq = extractvalue { ptr, ptr } %i.vo, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.dw

bb.ep:                                            ; preds = %bb.ea
  %i.vr = load i32, ptr %i.dy, align 4, !range !22, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store i32 %i.vr, ptr %i.bl, align 4
  %i.vs = call { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek15stream_position(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.bl) #22 ; 2 uses
  %i.vt = extractvalue { i64, ptr } %i.vs, 0
  %i.vu = extractvalue { i64, ptr } %i.vs, 1      ; 7 uses
  %i.vv = ptrtoint ptr %i.vu to i64               ; 5 uses
  %i.vw = trunc nuw i64 %i.vt to i1
  %i.vx = call fastcc { i64, ptr } @_RNvCsgzkSwV7OBv7_7uu_head9head_file(ptr noalias nofree noundef align 4 dereferenceable(4) %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) #22 ; 3 uses
  %i.vy = extractvalue { i64, ptr } %i.vx, 0      ; 2 uses
  br i1 %i.vw, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.vz = trunc nuw i64 %i.vy to i1
  br i1 %i.vz, label %bb.ey, label %bb.ev

bb.er:                                            ; preds = %bb.ep
  %i.wa = extractvalue { i64, ptr } %i.vx, 1      ; 2 uses
  %i.wb = trunc nuw i64 %i.vy to i1
  br i1 %i.wb, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.wc = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.wa) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECsgzkSwV7OBv7_7uu_head.exit242

bb.et:                                            ; preds = %bb.er
  %i.wd = ptrtoint ptr %i.wa to i64
  %i.we = add i64 %i.wd, %i.vv
  %i.wf = call { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.bl, i64 noundef 0, i64 noundef %i.we) #22 ; 2 uses
  %i.wg = extractvalue { i64, ptr } %i.wf, 0
  %i.wh = trunc nuw i64 %i.wg to i1
  br i1 %i.wh, label %bb.eu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECsgzkSwV7OBv7_7uu_head.exit

bb.eu:                                            ; preds = %bb.et
  %i.wi = extractvalue { i64, ptr } %i.wf, 1
  %i.wj = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.wi) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECsgzkSwV7OBv7_7uu_head.exit242

bb.ev:                                            ; preds = %bb.eq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vu) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !664
  %i.wk = and i64 %i.vv, 3
  switch i64 %i.wk, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i238
    i64 3, label %bb.ew
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i238
    i64 1, label %bb.ex
  ], !prof !13

bb.ew:                                            ; preds = %bb.ev
  %i.wl = icmp ult ptr %i.vu, inttoptr (i64 188978561024 to ptr)
  %i.wm = and i64 %i.vv, 1095216660480
  %i.wn = icmp ne i64 %i.wm, 1095216660480
  call void @llvm.assume(i1 %i.wl)
  call void @llvm.assume(i1 %i.wn)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i238

bb.ex:                                            ; preds = %bb.ev
  %i.wo = getelementptr i8, ptr %i.vu, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wo) ]
  store ptr %i.wo, ptr %i.dz, align 8, !alias.scope !665, !noalias !664
  store i8 3, ptr %i.c, align 8, !alias.scope !665, !noalias !664
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dz) #22, !noalias !664
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i238

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i238: ; preds = %bb.ex, %bb.ew, %bb.ev, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !664
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECsgzkSwV7OBv7_7uu_head.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECsgzkSwV7OBv7_7uu_head.exit: ; preds = %bb.et, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i238
  %.val100 = load i32, ptr %i.bl, align 4, !range !22, !noundef !8
  %i.wp = call noundef i32 @close(i32 noundef %.val100) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %.backedge

bb.ey:                                            ; preds = %bb.eq
  %i.wq = extractvalue { i64, ptr } %i.vx, 1
  %i.wr = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.wq) #22
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vu) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !666
  %i.ws = and i64 %i.vv, 3
  switch i64 %i.ws, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i240
    i64 3, label %bb.ez
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i240
    i64 1, label %bb.fa
  ], !prof !13

bb.ez:                                            ; preds = %bb.ey
  %i.wt = icmp ult ptr %i.vu, inttoptr (i64 188978561024 to ptr)
  %i.wu = and i64 %i.vv, 1095216660480
  %i.wv = icmp ne i64 %i.wu, 1095216660480
  call void @llvm.assume(i1 %i.wt)
  call void @llvm.assume(i1 %i.wv)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i240

bb.fa:                                            ; preds = %bb.ey
  %i.ww = getelementptr i8, ptr %i.vu, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ww) ]
  %i.wx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ww, ptr %i.wx, align 8, !alias.scope !667, !noalias !666
  store i8 3, ptr %i.b, align 8, !alias.scope !667, !noalias !666
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.wx) #22, !noalias !666
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i240

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i240: ; preds = %bb.fa, %bb.ez, %bb.ey, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !666
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECsgzkSwV7OBv7_7uu_head.exit242

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECsgzkSwV7OBv7_7uu_head.exit242: ; preds = %bb.eu, %bb.es, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i240
  %.pn.ph.pn = phi { ptr, ptr } [ %i.wr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i240 ], [ %i.wj, %bb.eu ], [ %i.wc, %bb.es ] ; 2 uses
  %.sroa.0.2301 = extractvalue { ptr, ptr } %.pn.ph.pn, 0
  %.sroa.10.2302 = extractvalue { ptr, ptr } %.pn.ph.pn, 1
  %.val99 = load i32, ptr %i.bl, align 4, !range !22, !noundef !8
  %i.wy = call noundef i32 @close(i32 noundef %.val99) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.dw

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.sink.split: ; preds = %bb.dx, %bb.c
  %.sink523 = phi ptr [ %i.ei, %bb.c ], [ %i.uo, %bb.dx ]
  %.sroa.10.3.ph = phi ptr [ undef, %bb.c ], [ %.sroa.10.1, %bb.dx ]
  %.sroa.0.3.ph = phi ptr [ null, %bb.c ], [ %.sroa.0.1, %bb.dx ]
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.sink523) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.sink.split, %bb.dx, %bb.dw, %bb.c, %._crit_edge
  %.sroa.10.3 = phi ptr [ %.sroa.10.1, %bb.dx ], [ undef, %._crit_edge ], [ undef, %bb.c ], [ %.sroa.10.1, %bb.dw ], [ %.sroa.10.3.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.sink.split ]
  %.sroa.0.3 = phi ptr [ %.sroa.0.1, %bb.dx ], [ null, %._crit_edge ], [ null, %bb.c ], [ %.sroa.0.1, %bb.dw ], [ %.sroa.0.3.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %i.wz = insertvalue { ptr, ptr } poison, ptr %.sroa.0.3, 0
  %i.xa = insertvalue { ptr, ptr } %i.wz, ptr %.sroa.10.3, 1
  ret { ptr, ptr } %i.xa
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvCsgzkSwV7OBv7_7uu_head9head_file(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  %i.e = alloca [65536 x i8], align 1             ; 12 uses
  %i.f = alloca [176 x i8], align 8               ; 7 uses
  %.sroa.4.i.i2.i.i = alloca [24 x i8], align 8   ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 10 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.4.i.i.i.i = alloca [40 x i8], align 8    ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 14 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  %i.p = alloca [32 x i8], align 8                ; 11 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 10 uses
  %i.s = alloca [8192 x i8], align 1              ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [184 x i8], align 8               ; 9 uses
  %i.x = alloca [184 x i8], align 8               ; 10 uses
  %i.y = alloca [8 x i8], align 8                 ; 12 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 4 uses
  %i.ad = alloca [176 x i8], align 8              ; 8 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [40 x i8], align 8               ; 12 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = load i64, ptr %1, align 8, !range !23, !noundef !8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  switch i64 %i.ah, label %default.unreachable563 [
    i64 0, label %bb.b
    i64 1, label %bb.aj
    i64 2, label %bb.ha
    i64 3, label %bb.aj
  ]

default.unreachable563:                           ; preds = %bb.gf, %.lr.ph.i.i.i.i.i.i.i, %bb.y, %bb.bw, %bb.bl, %bb.bd, %bb.at, %bb.aq, %bb.am, %bb.ad, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !8
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !908
  %i.ak = tail call noundef dereferenceable_or_null(65536) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 65536, i64 noundef range(i64 1, 9) 1) #22, !noalias !908 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.c, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileE13with_capacityCsgzkSwV7OBv7_7uu_head.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 65536) #24, !noalias !909
  unreachable

_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileE13with_capacityCsgzkSwV7OBv7_7uu_head.exit: ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 43
  %i.an = load i8, ptr %i.am, align 1, !range !910, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !911
  %i.ao = tail call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #22
  store ptr %i.ao, ptr %i.ag, align 8, !noalias !911
  %i.ap = call noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !911
  call void @llvm.experimental.noalias.scope.decl(metadata !912)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !913
  %i.aq = call noundef dereferenceable_or_null(65536) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 65536, i64 noundef range(i64 1, 9) 1) #22, !noalias !913 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.d, label %.preheader.i.i.i.i

bb.d:                                             ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileE13with_capacityCsgzkSwV7OBv7_7uu_head.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 65536) #24, !noalias !912
  unreachable

.preheader.i.i.i.i:                               ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileE13with_capacityCsgzkSwV7OBv7_7uu_head.exit
  store i64 65536, ptr %i.af, align 8, !alias.scope !912, !noalias !911
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !912, !noalias !911
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !912, !noalias !911
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  store i8 0, ptr %i.as, align 8, !alias.scope !912, !noalias !911
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 3 uses
  store ptr %i.ap, ptr %i.at, align 8, !alias.scope !912, !noalias !911
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.x, %.preheader.i.i.i.i
  %.sroa.13.0 = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.13.1, %bb.x ] ; 4 uses
  %.sroa.8.023 = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.8.1, %bb.x ] ; 4 uses
  %.sroa.15.0 = phi i8 [ 0, %.preheader.i.i.i.i ], [ %.sroa.15.1, %bb.x ] ; 4 uses
  %.sroa.4.0 = phi i64 [ %i.aj, %.preheader.i.i.i.i ], [ %.sroa.4.1, %bb.x ] ; 4 uses
  %i.ay = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.pre29.i, %bb.x ] ; 2 uses
  %i.az = phi ptr [ %i.aq, %.preheader.i.i.i.i ], [ %.pre.i, %bb.x ] ; 2 uses
  %i.ba = phi i64 [ 65536, %.preheader.i.i.i.i ], [ %.pre.i.i.i.i, %bb.x ]
  %.sroa.03.0.i.i.i.i = phi i1 [ false, %.preheader.i.i.i.i ], [ %.sroa.03.1.i.i.i.i, %bb.x ] ; 3 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.1.i.i.i.i, %bb.x ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay ; 7 uses
  %i.bc = sub i64 %i.ba, %i.ay                    ; 8 uses
  %i.bd = icmp ugt i64 %i.bc, 8191
  br i1 %i.bd, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE9flush_bufCsgzkSwV7OBv7_7uu_head(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.af) #22, !noalias !917 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %bb.x, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsgzkSwV7OBv7_7uu_head.exit.thread.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  br i1 %.sroa.03.0.i.i.i.i, label %_RNvMs6_NtNtCs6JMX4GRUq9U_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_init.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bb, i8 0, i64 %i.bc, i1 false), !noalias !918
  br label %_RNvMs6_NtNtCs6JMX4GRUq9U_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_init.exit.i.i

_RNvMs6_NtNtCs6JMX4GRUq9U_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_init.exit.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %i.bf = icmp eq i64 %.sroa.4.0, 0
  br i1 %i.bf, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4copy4copyINtNtCsgzkSwV7OBv7_7uu_head4take9TakeLinesQINtNtNtB4_8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEEINtNtB1p_9bufwriter9BufWriterNtNtNtB22_2io5stdio10StdoutLockEEBI_.exit.i, label %bb.i

bb.i:                                             ; preds = %_RNvMs6_NtNtCs6JMX4GRUq9U_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_init.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.bg = icmp ne i64 %.sroa.8.023, %.sroa.13.0
  %.not.i.i.i.i.i.i12 = icmp ult i64 %i.bc, 65536
  %or.cond.i.i.i.i.i.i = or i1 %i.bg, %.not.i.i.i.i.i.i12
  br i1 %or.cond.i.i.i.i.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i.i.i.i16 = icmp ult i64 %.sroa.8.023, %.sroa.13.0
  br i1 %.not.i.i.i.i.i.i.i16, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !923
  store ptr %i.ak, ptr %i.a, align 8, !noalias !923
  store i64 65536, ptr %i.av, align 8, !noalias !923
  store i64 0, ptr %i.aw, align 8, !noalias !923
  store i8 %.sroa.15.0, ptr %i.ax, align 8, !noalias !923
  %i.bh = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #22, !noalias !923 ; 2 uses
  %i.bi = load i64, ptr %i.aw, align 8, !noalias !923, !noundef !8 ; 2 uses
  %i.bj = load i8, ptr %i.ax, align 8, !range !12, !noalias !923, !noundef !8 ; 2 uses
  %.not3.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !923
  br i1 %.not3.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.bk = call { i64, ptr } @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull %i.bb, i64 noundef range(i64 0, -9223372036854775808) %i.bc) #22, !noalias !924
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtNtB4_8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB4_4read4Read4readCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bl = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.bh, 1
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtNtB4_8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB4_4read4Read4readCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i

bb.n:                                             ; preds = %bb.k, %bb.j
  %.sroa.13.5 = phi i64 [ %.sroa.13.0, %bb.j ], [ %i.bi, %bb.k ] ; 3 uses
  %.sroa.8.5 = phi i64 [ %.sroa.8.023, %bb.j ], [ 0, %bb.k ] ; 3 uses
  %.sroa.15.5 = phi i8 [ %.sroa.15.0, %bb.j ], [ %i.bj, %bb.k ]
  %i.bm = sub nuw i64 %.sroa.13.5, %.sroa.8.5     ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.8.5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %..i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 range(i64 0, -9223372036854775808) %i.bc) ; 3 uses
  %i.bo = icmp eq i64 %i.bm, 1
  br i1 %i.bo, label %bb.o, label %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bp = load i8, ptr %i.bn, align 1, !noalias !926, !noundef !8
  store i8 %i.bp, ptr %i.bb, align 1, !alias.scope !927, !noalias !918
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull readonly align 1 %i.bn, i64 range(i64 0, -9223372036854775808) %..i.i.i.i.i.i.i.i, i1 false), !alias.scope !928, !noalias !929
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i.i.i.i.i

_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i.i.i, %bb.o
  %i.bq = inttoptr i64 %..i.i.i.i.i.i.i.i to ptr
  %i.br = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bq, 1
  %i.bs = add i64 %..i.i.i.i.i.i.i.i, %.sroa.8.5
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.13.5, i64 %i.bs)
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtNtB4_8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB4_4read4Read4readCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i

_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtNtB4_8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB4_4read4Read4readCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i: ; preds = %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i.i.i.i.i, %bb.m, %bb.l
  %.sroa.13.2 = phi i64 [ %i.bi, %bb.m ], [ %.sroa.13.5, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i.i.i.i.i ], [ 0, %bb.l ] ; 2 uses
  %.sroa.8.2 = phi i64 [ 0, %bb.m ], [ %..i.i.i.i.i.i.i, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i.i.i.i.i ], [ 0, %bb.l ] ; 2 uses
  %.sroa.15.2 = phi i8 [ %i.bj, %bb.m ], [ %.sroa.15.5, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i.i.i.i.i ], [ %.sroa.15.0, %bb.l ] ; 2 uses
  %.merged.i.i.i.i.i.i = phi { i64, ptr } [ %i.bl, %bb.m ], [ %i.br, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i.i.i.i.i ], [ %i.bk, %bb.l ] ; 2 uses
  %i.bt = extractvalue { i64, ptr } %.merged.i.i.i.i.i.i, 0
  %i.bu = extractvalue { i64, ptr } %.merged.i.i.i.i.i.i, 1 ; 10 uses
  %i.bv = ptrtoint ptr %i.bu to i64               ; 8 uses
  %i.bw = trunc nuw i64 %i.bt to i1
  %.not7.i.i.i.i = icmp eq ptr %i.bu, null        ; 2 uses
  br i1 %i.bw, label %_RNvYINtNtCsgzkSwV7OBv7_7uu_head4take9TakeLinesQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtBQ_4read4Read8read_bufB7_.exit, label %bb.p

bb.p:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc2io5implsQINtNtNtB4_8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB4_4read4Read4readCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i
  br i1 %.not7.i.i.i.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4copy4copyINtNtCsgzkSwV7OBv7_7uu_head4take9TakeLinesQINtNtNtB4_8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEEINtNtB1p_9bufwriter9BufWriterNtNtNtB22_2io5stdio10StdoutLockEEBI_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_0
begin_hunk_1_@_RNvCsgzkSwV7OBv7_7uu_head9head_file:bb.a
bb.fp:                                            ; preds = %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferE9pop_frontB19_.exit.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #25, !noalias !959
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i.i: ; preds = %_RINvMNtCsgzkSwV7OBv7_7uu_head4takeNtB3_13TakeAllBuffer17write_bytes_limitNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB5_.exit.thread.i.i.i.i, %bb.ex, %bb.ew
  %.val1.i49.i.i.i.i = phi i64 [ %i.ti, %_RINvMNtCsgzkSwV7OBv7_7uu_head4takeNtB3_13TakeAllBuffer17write_bytes_limitNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB5_.exit.thread.i.i.i.i ], [ %i.sh, %bb.ew ], [ %i.sh, %bb.ex ] ; 2 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ %i.ty, %_RINvMNtCsgzkSwV7OBv7_7uu_head4takeNtB3_13TakeAllBuffer17write_bytes_limitNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB5_.exit.thread.i.i.i.i ], [ %i.sl, %bb.ew ], [ %i.sl, %bb.ex ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %.val.i48.i.i.i.i = load ptr, ptr %i.rg, align 8, !alias.scope !1044, !noalias !1019, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  %i.up = icmp eq i64 %.val1.i49.i.i.i.i, 0
  br i1 %i.up, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i55.i.i.i.i, label %.lr.ph.i.i.i50.i.i.i.i

.lr.ph.i.i.i50.i.i.i.i:                           ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i54.i.i.i.i
  %.sroa.0.04.i.i.i51.i.i.i.i = phi i64 [ %i.ur, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i54.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i.i ] ; 2 uses
  %i.uq = getelementptr inbounds nuw [32 x i8], ptr %.val.i48.i.i.i.i, i64 %.sroa.0.04.i.i.i51.i.i.i.i ; 2 uses
  %i.ur = add nuw nsw i64 %.sroa.0.04.i.i.i51.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i52.i.i.i.i = load i64, ptr %i.uq, align 8, !range !10, !alias.scope !1045, !noalias !1046, !noundef !8 ; 2 uses
  %i.us = icmp eq i64 %.val.i.i.i52.i.i.i.i, 0
  br i1 %i.us, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i54.i.i.i.i, label %bb.fq

bb.fq:                                            ; preds = %.lr.ph.i.i.i50.i.i.i.i
  %i.ut = getelementptr i8, ptr %i.uq, i64 8
  %.val3.i.i.i53.i.i.i.i = load ptr, ptr %i.ut, align 8, !alias.scope !1045, !noalias !1046, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i53.i.i.i.i, i64 noundef %.val.i.i.i52.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1047
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i54.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i54.i.i.i.i: ; preds = %bb.fq, %.lr.ph.i.i.i50.i.i.i.i
  %i.uu = icmp eq i64 %i.ur, %.val1.i49.i.i.i.i
  br i1 %i.uu, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i55.i.i.i.i, label %.lr.ph.i.i.i50.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i55.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i54.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i.i
  %i.uv = icmp eq i64 %.ph1188, 0
  br i1 %i.uv, label %_RINvNtCsgzkSwV7OBv7_7uu_head4take20copy_all_but_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtBW_2io5stdio10StdoutLockEB4_.exit.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEEB1c_.exit.sink.split.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEEB1c_.exit.sink.split.i.i.i.i: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i55.i.i.i.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i.i
  %.val.i48.sink.i.i.i.i = phi ptr [ %.val.i.i.i5.i.i.ph, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i.i ], [ %.val.i48.i.i.i.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i55.i.i.i.i ]
  %.sroa.4.1.ph.i.i.i.i = phi i64 [ %.sroa.06.0.ph.i.i.i.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i55.i.i.i.i ]
  %.sroa.0.1.ph.i.i.i.i = phi i1 [ false, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i.i ], [ true, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i55.i.i.i.i ]
  %i.uw = shl nuw i64 %.ph1188, 5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i48.sink.i.i.i.i, i64 noundef %i.uw, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !959
  br label %_RINvNtCsgzkSwV7OBv7_7uu_head4take20copy_all_but_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtBW_2io5stdio10StdoutLockEB4_.exit.i.i.i

_RINvNtCsgzkSwV7OBv7_7uu_head4take20copy_all_but_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtBW_2io5stdio10StdoutLockEB4_.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEEB1c_.exit.sink.split.i.i.i.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i55.i.i.i.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i.i
  %.sroa.4.1.i.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i55.i.i.i.i ], [ %.sroa.06.0.ph.i.i.i.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i.i ], [ %.sroa.4.1.ph.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEEB1c_.exit.sink.split.i.i.i.i ]
  %.sroa.0.1.i.i.i.i = phi i1 [ true, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i55.i.i.i.i ], [ false, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i.i ], [ %.sroa.0.1.ph.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEEB1c_.exit.sink.split.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1019
  call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  %i.ux = load i64, ptr %i.re, align 8, !alias.scope !1050, !noalias !1017, !noundef !8 ; 4 uses
  %i.uy = icmp eq i64 %i.ux, 0
  %.val.pre.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !1048, !noalias !1017 ; 6 uses
  br i1 %i.uy, label %_RNvXs0_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB19_.exit.i.i.i.i, label %_RINvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferE12slice_rangesNtNtNtCs6JMX4GRUq9U_4core3ops5range9RangeFullEB1a_.exit.i.i.i.i.i

_RINvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferE12slice_rangesNtNtNtCs6JMX4GRUq9U_4core3ops5range9RangeFullEB1a_.exit.i.i.i.i.i: ; preds = %_RINvNtCsgzkSwV7OBv7_7uu_head4take20copy_all_but_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtBW_2io5stdio10StdoutLockEB4_.exit.i.i.i
  %.val1.i.i16.i.i.i = load i64, ptr %i.rd, align 8, !alias.scope !1050, !noalias !1017 ; 2 uses
  %.not.i.i.i.i17.i.i = icmp ult i64 %.val1.i.i16.i.i.i, %.val.pre.i.i.i.i
  %i.uz = select i1 %.not.i.i.i.i17.i.i, i64 0, i64 %.val.pre.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i = sub nuw i64 %.val1.i.i16.i.i.i, %i.uz ; 5 uses
  %i.va = sub i64 %.val.pre.i.i.i.i, %.sroa.04.0.i.i.i.i.i.i ; 2 uses
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.va, %i.ux ; 2 uses
  %i.vb = add i64 %.sroa.04.0.i.i.i.i.i.i, %i.ux
  %.sroa.5.0.i.i.i.i.i = select i1 %.not11.i.i.i.i.i.i, i64 %.val.pre.i.i.i.i, i64 %i.vb ; 2 uses
  %.sroa.11.0.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.ux, i64 %i.va)
  %i.vc = load ptr, ptr %i.rf, align 8, !alias.scope !1050, !noalias !1017, !nonnull !8, !noundef !8 ; 2 uses
  %i.vd = getelementptr inbounds nuw [32 x i8], ptr %i.vc, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.ve = sub i64 %.sroa.5.0.i.i.i.i.i, %.sroa.04.0.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  %i.vf = icmp eq i64 %.sroa.5.0.i.i.i.i.i, %.sroa.04.0.i.i.i.i.i.i
  br i1 %i.vf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBG_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferE12slice_rangesNtNtNtCs6JMX4GRUq9U_4core3ops5range9RangeFullEB1a_.exit.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i = phi i64 [ %i.vh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i.i.i.i ], [ 0, %_RINvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferE12slice_rangesNtNtNtCs6JMX4GRUq9U_4core3ops5range9RangeFullEB1a_.exit.i.i.i.i.i ] ; 2 uses
  %i.vg = getelementptr inbounds nuw [32 x i8], ptr %i.vd, i64 %.sroa.0.04.i.i.i.i.i.i ; 2 uses
  %i.vh = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.vg, align 8, !range !10, !alias.scope !1051, !noalias !1052, !noundef !8 ; 2 uses
  %i.vi = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.vi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i.i.i.i, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.vj = getelementptr i8, ptr %i.vg, i64 8
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.vj, align 8, !alias.scope !1051, !noalias !1052, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1053
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i.i.i.i: ; preds = %bb.fr, %.lr.ph.i.i.i.i.i.i
  %i.vk = icmp eq i64 %i.vh, %i.ve
  br i1 %i.vk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBG_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBG_.exit.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i.i.i.i, %_RINvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferE12slice_rangesNtNtNtCs6JMX4GRUq9U_4core3ops5range9RangeFullEB1a_.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  br i1 %.not11.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB19_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBG_.exit.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i = phi i64 [ %i.vm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i.i.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBG_.exit.i.i.i.i.i ] ; 2 uses
  %i.vl = getelementptr inbounds nuw [32 x i8], ptr %i.vc, i64 %.sroa.0.04.i.i.i.i.i.i.i.i ; 2 uses
  %i.vm = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.vl, align 8, !range !10, !alias.scope !1054, !noalias !1052, !noundef !8 ; 2 uses
  %i.vn = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.vn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i.i.i.i.i.i, label %bb.fs

bb.fs:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.vo = getelementptr i8, ptr %i.vl, i64 8
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.vo, align 8, !alias.scope !1054, !noalias !1052, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1055
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.fs, %.lr.ph.i.i.i.i.i.i.i.i
  %i.vp = icmp eq i64 %i.vm, %.sroa.11.0.i.i.i.i.i
  br i1 %i.vp, label %_RNvXs0_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB19_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvXs0_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB19_.exit.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBF_.exit.i.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEBG_.exit.i.i.i.i.i, %_RINvNtCsgzkSwV7OBv7_7uu_head4take20copy_all_but_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtBW_2io5stdio10StdoutLockEB4_.exit.i.i.i
  %i.vq = icmp eq i64 %.val.pre.i.i.i.i, 0
  br i1 %i.vq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEEB1C_.exit.i.i.i, label %bb.ft

bb.ft:                                            ; preds = %_RNvXs0_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB19_.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.rf, align 8, !alias.scope !1048, !noalias !1017, !nonnull !8, !noundef !8
  %i.vr = shl nuw i64 %.val.pre.i.i.i.i, 5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.vr, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !1056
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEEB1C_.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEEB1C_.exit.i.i.i: ; preds = %bb.ft, %_RNvXs0_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB19_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1019
  %i.vs = inttoptr i64 %.sroa.4.1.i.i.i.i to ptr  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1017
  br i1 %.sroa.0.1.i.i.i.i, label %bb.fw, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsgzkSwV7OBv7_7uu_head.exit.i18.i.i

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsgzkSwV7OBv7_7uu_head.exit.i18.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEEB1C_.exit.i.i.i
  %i.vt = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #22, !noalias !959 ; 2 uses
  %.not.i19.i.i = icmp eq ptr %i.vt, null
  br i1 %.not.i19.i.i, label %bb.fu, label %bb.fw

bb.fu:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsgzkSwV7OBv7_7uu_head.exit.i18.i.i
  %.val13.i.i.i = load ptr, ptr %i.k, align 8, !noalias !1017, !nonnull !8, !align !17, !noundef !8 ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 12 ; 2 uses
  %i.vv = load i32, ptr %i.vu, align 4, !noalias !959, !noundef !8
  %i.vw = add i32 %i.vv, -1                       ; 2 uses
  store i32 %i.vw, ptr %i.vu, align 4, !noalias !959
  %i.vx = icmp eq i32 %i.vw, 0
  br i1 %i.vx, label %bb.fv, label %_RINvCsgzkSwV7OBv7_7uu_head22print_but_last_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i

bb.fv:                                            ; preds = %bb.fu
  store atomic i64 0, ptr %.val13.i.i.i monotonic, align 8, !noalias !959
  %i.vy = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 8 ; 2 uses
  %i.vz = atomicrmw xchg ptr %i.vy, i32 0 release, align 4, !noalias !959
  %i.wa = icmp eq i32 %i.vz, 2
  br i1 %i.wa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit15.sink.split.i.i.i, label %_RINvCsgzkSwV7OBv7_7uu_head22print_but_last_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i, !prof !15

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit15.sink.split.i.i.i: ; preds = %bb.fx, %bb.fv
  %.sink272.i.i.i = phi ptr [ %i.wg, %bb.fx ], [ %i.vy, %bb.fv ]
  %.sroa.4.0.ph.i.i.i = phi ptr [ %i.wb, %bb.fx ], [ %i.vs, %bb.fv ]
  %.sroa.0.0.ph.i.i.i = phi i64 [ 1, %bb.fx ], [ 0, %bb.fv ]
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.sink272.i.i.i) #22, !noalias !959
  br label %_RINvCsgzkSwV7OBv7_7uu_head22print_but_last_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i

bb.fw:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsgzkSwV7OBv7_7uu_head.exit.i18.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEEB1C_.exit.i.i.i
  %.sink.i20.i.i = phi ptr [ %i.vs, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequeNtNtCsgzkSwV7OBv7_7uu_head4take13TakeAllBufferEEB1C_.exit.i.i.i ], [ %i.vt, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsgzkSwV7OBv7_7uu_head.exit.i18.i.i ]
  %i.wb = call fastcc noundef nonnull ptr @_RNvCsgzkSwV7OBv7_7uu_head20wrap_in_stdout_error(ptr noundef nonnull %.sink.i20.i.i) #26, !noalias !959 ; 3 uses
  %.val.i21.i.i = load ptr, ptr %i.k, align 8, !noalias !1017, !nonnull !8, !align !17, !noundef !8 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.val.i21.i.i, i64 12 ; 2 uses
  %i.wd = load i32, ptr %i.wc, align 4, !noalias !959, !noundef !8
  %i.we = add i32 %i.wd, -1                       ; 2 uses
  store i32 %i.we, ptr %i.wc, align 4, !noalias !959
  %i.wf = icmp eq i32 %i.we, 0
  br i1 %i.wf, label %bb.fx, label %_RINvCsgzkSwV7OBv7_7uu_head22print_but_last_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i

bb.fx:                                            ; preds = %bb.fw
  store atomic i64 0, ptr %.val.i21.i.i monotonic, align 8, !noalias !959
  %i.wg = getelementptr inbounds nuw i8, ptr %.val.i21.i.i, i64 8 ; 2 uses
  %i.wh = atomicrmw xchg ptr %i.wg, i32 0 release, align 4, !noalias !959
  %i.wi = icmp eq i32 %i.wh, 2
  br i1 %i.wi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit15.sink.split.i.i.i, label %_RINvCsgzkSwV7OBv7_7uu_head22print_but_last_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i, !prof !15

_RINvCsgzkSwV7OBv7_7uu_head22print_but_last_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i: ; preds = %bb.fx, %bb.fw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit15.sink.split.i.i.i, %bb.fv, %bb.fu
  %.sroa.4.0.i.i.i = phi ptr [ %i.vs, %bb.fv ], [ %i.wb, %bb.fw ], [ %i.wb, %bb.fx ], [ %i.vs, %bb.fu ], [ %.sroa.4.0.ph.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit15.sink.split.i.i.i ]
  %.sroa.0.0.i22.i.i = phi i64 [ 0, %bb.fv ], [ 1, %bb.fw ], [ 1, %bb.fx ], [ 0, %bb.fu ], [ %.sroa.0.0.ph.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsgzkSwV7OBv7_7uu_head.exit15.sink.split.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1017
  br label %_RNvCsgzkSwV7OBv7_7uu_head32head_backwards_without_seek_file.exit.i

_RNvCsgzkSwV7OBv7_7uu_head32head_backwards_without_seek_file.exit.i: ; preds = %_RINvCsgzkSwV7OBv7_7uu_head22print_but_last_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i, %_RINvCsgzkSwV7OBv7_7uu_head22print_but_last_n_linesQNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i
  %.sroa.0.1.i.pn.i.i = phi i64 [ %.sroa.0.1.i.i.i, %_RINvCsgzkSwV7OBv7_7uu_head22print_but_last_n_linesQNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i ], [ %.sroa.0.0.i22.i.i, %_RINvCsgzkSwV7OBv7_7uu_head22print_but_last_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i ]
  %.sroa.7.1.i.pn.i.i = phi ptr [ %.sroa.7.1.i.i.i, %_RINvCsgzkSwV7OBv7_7uu_head22print_but_last_n_linesQNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i ], [ %.sroa.4.0.i.i.i, %_RINvCsgzkSwV7OBv7_7uu_head22print_but_last_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i ]
  %.pn29.i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i.pn.i.i, 0
  br label %_RNvCsgzkSwV7OBv7_7uu_head19head_backwards_file.exit

bb.fy:                                            ; preds = %_RNvCsgzkSwV7OBv7_7uu_head11is_seekable.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  switch i64 %i.ah, label %bb.fz [
    i64 1, label %bb.ga
    i64 3, label %bb.gv
  ], !prof !958

bb.fz:                                            ; preds = %bb.fy
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #25, !noalias !1058
  unreachable

bb.ga:                                            ; preds = %bb.fy
  %i.wj = load i64, ptr %i.ai, align 8, !alias.scope !1058, !noundef !8 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 43
  %i.wl = load i8, ptr %i.wk, align 1, !range !910, !alias.scope !1058, !noundef !8 ; 3 uses
  %i.wm = call { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, i64 noundef 1, i64 noundef 0) #22, !noalias !1058 ; 2 uses
  %i.wn = extractvalue { i64, ptr } %i.wm, 0
  %i.wo = extractvalue { i64, ptr } %i.wm, 1      ; 3 uses
  %i.wp = trunc nuw i64 %i.wn to i1
  br i1 %i.wp, label %_RNvCsgzkSwV7OBv7_7uu_head31head_backwards_on_seekable_file.exit.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.wq = ptrtoint ptr %i.wo to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1059
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65536) %i.e, i8 0, i64 65536, i1 false), !noalias !1059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1059
  store i64 0, ptr %i.d, align 8, !noalias !1059
  %i.wr = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ws = icmp eq i64 %i.wj, 0
  %i.wt = ptrtoint ptr %i.e to i64
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gt, %bb.gb
  %2 = phi i64 [ 0, %bb.gb ], [ %.lcssa95.i.i.i, %bb.gt ] ; 3 uses
  %.sroa.06.0.i.i.i = phi i64 [ %i.wq, %bb.gb ], [ %i.wv, %bb.gt ] ; 3 uses
  %.sroa.05.0.not.i.i.i = phi i1 [ false, %bb.gb ], [ true, %bb.gt ]
  %i.wu = phi i64 [ 0, %bb.gb ], [ %.lcssa.i.i.i, %bb.gt ] ; 4 uses
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.06.0.i.i.i, i64 65536) ; 4 uses
  %i.wv = sub nuw i64 %.sroa.06.0.i.i.i, %..i.i.i.i ; 4 uses
  %i.ww = call { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, i64 noundef 0, i64 noundef %i.wv) #22, !noalias !1058 ; 2 uses
  %i.wx = extractvalue { i64, ptr } %i.ww, 0
  %i.wy = trunc nuw i64 %i.wx to i1
  br i1 %i.wy, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.wz = extractvalue { i64, ptr } %i.ww, 1
  br label %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.thread35.i.i

bb.ge:                                            ; preds = %bb.gc
  %i.xa = icmp eq i64 %.sroa.06.0.i.i.i, 0
  br i1 %i.xa, label %_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.thread61.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ge, %bb.gm
  %.sroa.0.025.i.i.i.i.i = phi ptr [ %.sroa.0.117.i.i.i.i.i, %bb.gm ], [ %i.e, %bb.ge ] ; 3 uses
  %.sroa.7.024.i.i.i.i.i = phi i64 [ %.sroa.7.115.i.i.i.i.i, %bb.gm ], [ %..i.i.i.i, %bb.ge ] ; 6 uses
  %i.xb = call { i64, ptr } @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull %.sroa.0.025.i.i.i.i.i, i64 noundef %.sroa.7.024.i.i.i.i.i) #22, !noalias !1058 ; 2 uses
  %i.xc = extractvalue { i64, ptr } %i.xb, 0
  %i.xd = extractvalue { i64, ptr } %i.xb, 1      ; 11 uses
  %i.xe = ptrtoint ptr %i.xd to i64               ; 8 uses
  %i.xf = trunc nuw i64 %i.xc to i1
  br i1 %i.xf, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xd) ]
  %i.xg = and i64 %i.xe, 3
  switch i64 %i.xg, label %default.unreachable563 [
    i64 2, label %.split.i.i.i.i.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i
    i64 0, label %.split12.i.i.i.i.i
    i64 1, label %.split11.i.i.i.i.i
  ], !prof !13

.split.i.i.i.i.i:                                 ; preds = %bb.gf
  %i.xh = lshr i64 %i.xe, 32
  %i.xi = trunc nuw i64 %i.xh to i32
  %i.xj = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #22, !noalias !1058
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  %i.xl = load ptr, ptr %i.xk, align 8, !noalias !1058, !nonnull !8, !noundef !8
  %i.xm = call noundef zeroext i1 %i.xl(i32 noundef %i.xi) #22, !noalias !1058, !inline_history !892
  br i1 %i.xm, label %.thread.i.i.i.i.i, label %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.thread35.i.i

.split12.i.i.i.i.i:                               ; preds = %bb.gf
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  %i.xo = load i8, ptr %i.xn, align 8, !range !14, !noalias !1058, !noundef !8
  %i.xp = icmp eq i8 %i.xo, 35
  br i1 %i.xp, label %.thread.i.i.i.i.i, label %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.thread35.i.i

.split11.i.i.i.i.i:                               ; preds = %bb.gf
  %i.xq = getelementptr i8, ptr %i.xd, i64 31
  %i.xr = load i8, ptr %i.xq, align 8, !range !14, !noalias !1058, !noundef !8
  %i.xs = icmp eq i8 %i.xr, 35
  br i1 %i.xs, label %bb.gl, label %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.thread35.i.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i: ; preds = %bb.gf
  %i.xt = lshr i64 %i.xe, 32
  %i.xu = icmp ult ptr %i.xd, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i.i.i.i.i = trunc i64 %i.xt to i8
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.xu, i8 %switch.idx.cast.i.i.i.i.i.i.i.i, i8 -1 ; 2 uses
  %i.xv = icmp ne i8 %spec.select.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.xv)
  %i.xw = icmp eq i8 %spec.select.i.i.i.i.i.i.i.i, 35
  br i1 %i.xw, label %bb.gk, label %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.thread35.i.i

bb.gg:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.xx = icmp eq ptr %i.xd, null
  br i1 %i.xx, label %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.thread35.i.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.xy = icmp ult i64 %.sroa.7.024.i.i.i.i.i, %i.xe
  br i1 %i.xy, label %bb.gi, label %bb.gj, !prof !15

bb.gi:                                            ; preds = %bb.gh
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.xe, i64 noundef %.sroa.7.024.i.i.i.i.i, i64 noundef %.sroa.7.024.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #25, !noalias !1058
  unreachable

bb.gj:                                            ; preds = %bb.gh
  %i.xz = sub nuw nsw i64 %.sroa.7.024.i.i.i.i.i, %i.xe
  %i.ya = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i.i.i.i.i, i64 %i.xe
  br label %bb.gm

.thread.i.i.i.i.i:                                ; preds = %.split12.i.i.i.i.i, %.split.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1060
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i

bb.gk:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1060
  %i.yb = and i64 %i.xe, 1095216660480
  %i.yc = icmp ne i64 %i.yb, 1095216660480
  call void @llvm.assume(i1 %i.xu)
  call void @llvm.assume(i1 %i.yc)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i

bb.gl:                                            ; preds = %.split11.i.i.i.i.i
  %i.yd = getelementptr i8, ptr %i.xd, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1060
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yd) ]
  store ptr %i.yd, ptr %i.wr, align 8, !alias.scope !1061, !noalias !1060
  store i8 3, ptr %i.c, align 8, !alias.scope !1061, !noalias !1060
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.wr) #22, !noalias !1062
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i: ; preds = %bb.gl, %bb.gk, %.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1060
  br label %bb.gm

bb.gm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i, %bb.gj
  %.sroa.0.117.i.i.i.i.i = phi ptr [ %.sroa.0.025.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i ], [ %i.ya, %bb.gj ]
  %.sroa.7.115.i.i.i.i.i = phi i64 [ %.sroa.7.024.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i ], [ %i.xz, %bb.gj ] ; 2 uses
  %i.ye = icmp eq i64 %.sroa.7.115.i.i.i.i.i, 0
  br i1 %i.ye, label %_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.i.i.i: ; preds = %bb.gm
  br i1 %.sroa.05.0.not.i.i.i, label %_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.thread61.i.i.i, label %bb.gn

_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.thread61.i.i.i: ; preds = %bb.gp, %bb.gn, %_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.i.i.i, %bb.ge
  %3 = phi i64 [ %2, %_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.i.i.i ], [ %2, %bb.ge ], [ %2, %bb.gn ], [ 1, %bb.gp ]
  %i.yf = phi i64 [ %i.wu, %_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.i.i.i ], [ %i.wu, %bb.ge ], [ %i.wu, %bb.gn ], [ 1, %bb.gp ] ; 2 uses
  %i.yg = getelementptr i8, ptr %i.e, i64 %..i.i.i.i
  %4 = load atomic ptr, ptr @_RNvNvNtNtNtCs3RYoXg2VPb3_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !1063, !nonnull !8, !noundef !8
  %5 = call { i64, ptr } %4(i8 noundef range(i8 0, 11) %i.wl, ptr noundef nonnull %i.e, ptr noundef %i.yg) #22, !noalias !1064, !inline_history !907 ; 2 uses
  %6 = extractvalue { i64, ptr } %5, 0
  %7 = trunc nuw i64 %6 to i1
  br i1 %7, label %bb.gs, label %bb.gt

bb.gn:                                            ; preds = %_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.i.i.i
  %i.yh = getelementptr i8, ptr %i.e, i64 %..i.i.i.i
  %i.yi = getelementptr i8, ptr %i.yh, i64 -1
  %i.yj = load i8, ptr %i.yi, align 1, !noalias !1059, !noundef !8
  %.not38.i.i.i = icmp eq i8 %i.yj, %i.wl
  br i1 %.not38.i.i.i, label %_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.thread61.i.i.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  br i1 %i.ws, label %.split.i.i, label %bb.gp

.split.i.i:                                       ; preds = %bb.go
  %i.yk = call { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, i64 noundef 0, i64 noundef 0) #22, !noalias !1058 ; 2 uses
  %i.yl = extractvalue { i64, ptr } %i.yk, 0
  %i.ym = trunc nuw i64 %i.yl to i1
  %i.yn = extractvalue { i64, ptr } %i.yk, 1      ; 2 uses
  %.not41.i.not.i41.i = icmp ne ptr %i.yn, null
  %.not41.i.not.i.not.i = select i1 %i.ym, i1 %.not41.i.not.i41.i, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1059
  br i1 %.not41.i.not.i.not.i, label %_RNvCsgzkSwV7OBv7_7uu_head31head_backwards_on_seekable_file.exit.i, label %bb.gw

bb.gp:                                            ; preds = %bb.go
  %i.yo = icmp eq i64 %i.wu, 0
  br i1 %i.yo, label %_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.thread61.i.i.i, label %bb.gq, !prof !7

bb.gq:                                            ; preds = %bb.gp
  call void @_RINvNtCs6JMX4GRUq9U_4core9panicking13assert_failedyyEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @1, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #25, !noalias !1058
  unreachable

bb.gr:                                            ; preds = %bb.gs
  %i.yp = load atomic ptr, ptr @_RNvNvNtNtNtCs3RYoXg2VPb3_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !1063, !nonnull !8, !noundef !8
  %i.yq = call { i64, ptr } %i.yp(i8 noundef range(i8 0, 11) %i.wl, ptr noundef nonnull %i.e, ptr noundef %i.yt) #22, !noalias !1064, !inline_history !907 ; 2 uses
  %i.yr = extractvalue { i64, ptr } %i.yq, 0
  %i.ys = trunc nuw i64 %i.yr to i1
  br i1 %i.ys, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.thread61.i.i.i, %bb.gr
  %8 = phi { i64, ptr } [ %i.yq, %bb.gr ], [ %5, %_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.thread61.i.i.i ]
  %9 = phi i64 [ %i.yx, %bb.gr ], [ %i.yf, %_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.thread61.i.i.i ]
  %i.yt = extractvalue { i64, ptr } %8, 1         ; 2 uses
  %i.yu = ptrtoint ptr %i.yt to i64
  %i.yv = sub i64 %i.yu, %i.wt                    ; 2 uses
  %i.yw = icmp sgt i64 %i.yv, -1
  call void @llvm.assume(i1 %i.yw), !noalias !1065
  %i.yx = add i64 %9, 1                           ; 4 uses
  %i.yy = icmp ugt i64 %i.yx, %i.wj
  br i1 %i.yy, label %bb.gu, label %bb.gr

bb.gt:                                            ; preds = %bb.gr, %_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.thread61.i.i.i
  %.lcssa95.i.i.i = phi i64 [ %3, %_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.thread61.i.i.i ], [ %i.yx, %bb.gr ] ; 2 uses
  %.lcssa.i.i.i = phi i64 [ %i.yf, %_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsgzkSwV7OBv7_7uu_head.exit.thread61.i.i.i ], [ %i.yx, %bb.gr ]
  store i64 %.lcssa95.i.i.i, ptr %i.d, align 8, !noalias !1059
  %i.yz = icmp eq i64 %i.wv, 0
  br i1 %i.yz, label %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i, label %bb.gc

bb.gu:                                            ; preds = %bb.gs
  %i.za = call { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, i64 noundef 0, i64 noundef 0) #22, !noalias !1058 ; 2 uses
  %i.zb = extractvalue { i64, ptr } %i.za, 0
  %i.zc = trunc nuw i64 %i.zb to i1
  %i.zd = extractvalue { i64, ptr } %i.za, 1      ; 2 uses
  %.not4070.i.i.i = icmp ne ptr %i.zd, null
  %.not40.not.i.i.i = select i1 %i.zc, i1 %.not4070.i.i.i, i1 false
  br i1 %.not40.not.i.i.i, label %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.thread35.i.i, label %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.thread39.i.i

_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.thread39.i.i: ; preds = %bb.gu
  %i.ze = add i64 %i.wv, 1
  %i.zf = add i64 %i.ze, %i.yv
  %i.zg = inttoptr i64 %i.zf to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1059
  br label %bb.gw

_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.thread35.i.i: ; preds = %bb.gg, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i, %.split11.i.i.i.i.i, %.split12.i.i.i.i.i, %.split.i.i.i.i.i, %bb.gu, %bb.gd
  %.sroa.10.0.i.ph.i.i = phi ptr [ %i.wz, %bb.gd ], [ %i.zd, %bb.gu ], [ %i.xd, %.split12.i.i.i.i.i ], [ %i.xd, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i ], [ %i.xd, %.split.i.i.i.i.i ], [ %i.xd, %.split11.i.i.i.i.i ], [ @42, %bb.gg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1059
  br label %_RNvCsgzkSwV7OBv7_7uu_head31head_backwards_on_seekable_file.exit.i

_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i: ; preds = %bb.gt
  %i.zh = call { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, i64 noundef 0, i64 noundef 0) #22, !noalias !1058 ; 2 uses
  %i.zi = extractvalue { i64, ptr } %i.zh, 0
  %i.zj = trunc nuw i64 %i.zi to i1
  %i.zk = extractvalue { i64, ptr } %i.zh, 1      ; 2 uses
  %.not39.i.not120.i.i = icmp ne ptr %i.zk, null
  %.not39.i.not.not.i.i = select i1 %i.zj, i1 %.not39.i.not120.i.i, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1059
  br i1 %.not39.i.not.not.i.i, label %_RNvCsgzkSwV7OBv7_7uu_head31head_backwards_on_seekable_file.exit.i, label %bb.gw

bb.gv:                                            ; preds = %bb.fy
  %i.zl = load i64, ptr %i.ai, align 8, !alias.scope !1058, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1066
  call void @_RNvMs2_NtCs2vKOLqTMYjT_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0) #22, !noalias !1058
  %i.zm = load i64, ptr %i.f, align 8, !range !24, !noalias !1066, !noundef !8
  %i.zn = icmp eq i64 %i.zm, 2
  br i1 %i.zn, label %bb.gx, label %bb.gy

bb.gw:                                            ; preds = %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i, %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.thread39.i.i, %.split.i.i
  %.sroa.10.0.i43.i.i = phi ptr [ %i.zg, %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.thread39.i.i ], [ null, %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i ], [ %i.wo, %.split.i.i ]
  %i.zo = ptrtoint ptr %.sroa.10.0.i43.i.i to i64
  %i.zp = call fastcc { i64, ptr } @_RINvCsgzkSwV7OBv7_7uu_head13print_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, i64 noundef %i.zo) #22, !noalias !1058 ; 2 uses
  %i.zq = extractvalue { i64, ptr } %i.zp, 0
  %i.zr = extractvalue { i64, ptr } %i.zp, 1
  br label %_RNvCsgzkSwV7OBv7_7uu_head31head_backwards_on_seekable_file.exit.i

bb.gx:                                            ; preds = %bb.gv
  %i.zs = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.zt = load ptr, ptr %i.zs, align 8, !noalias !1066, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1066
  br label %_RNvCsgzkSwV7OBv7_7uu_head31head_backwards_on_seekable_file.exit.i

bb.gy:                                            ; preds = %bb.gv
  %.sroa.1421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.1421.0.copyload.i.i = load i64, ptr %.sroa.1421.0..sroa_idx.i.i, align 8, !noalias !1066 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1066
  %.not.i.i4 = icmp ult i64 %i.zl, %.sroa.1421.0.copyload.i.i
  br i1 %.not.i.i4, label %bb.gz, label %_RNvCsgzkSwV7OBv7_7uu_head31head_backwards_on_seekable_file.exit.i

bb.gz:                                            ; preds = %bb.gy
  %i.zu = sub nuw i64 %.sroa.1421.0.copyload.i.i, %i.zl
  %i.zv = call fastcc { i64, ptr } @_RINvCsgzkSwV7OBv7_7uu_head13print_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, i64 noundef %i.zu) #22, !noalias !1058 ; 2 uses
  %i.zw = extractvalue { i64, ptr } %i.zv, 0
  %i.zx = extractvalue { i64, ptr } %i.zv, 1
  br label %_RNvCsgzkSwV7OBv7_7uu_head31head_backwards_on_seekable_file.exit.i

_RNvCsgzkSwV7OBv7_7uu_head31head_backwards_on_seekable_file.exit.i: ; preds = %bb.gz, %bb.gy, %bb.gx, %bb.gw, %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i, %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.thread35.i.i, %.split.i.i, %bb.ga
  %.sroa.6.0.i.i = phi ptr [ %i.zx, %bb.gz ], [ %i.zr, %bb.gw ], [ %i.zt, %bb.gx ], [ %i.zk, %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i ], [ null, %bb.gy ], [ %.sroa.10.0.i.ph.i.i, %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.thread35.i.i ], [ %i.wo, %bb.ga ], [ %i.yn, %.split.i.i ]
  %.sroa.0.0.i39.i = phi i64 [ %i.zw, %bb.gz ], [ %i.zq, %bb.gw ], [ 1, %bb.gx ], [ 1, %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.i.i ], [ 0, %bb.gy ], [ 1, %_RINvCsgzkSwV7OBv7_7uu_head22find_nth_line_from_endNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit.thread35.i.i ], [ 1, %bb.ga ], [ 1, %.split.i.i ]
  %i.zy = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i39.i, 0
  br label %_RNvCsgzkSwV7OBv7_7uu_head19head_backwards_file.exit

_RNvCsgzkSwV7OBv7_7uu_head19head_backwards_file.exit: ; preds = %bb.ak, %_RNvCsgzkSwV7OBv7_7uu_head32head_backwards_without_seek_file.exit.i, %_RNvCsgzkSwV7OBv7_7uu_head31head_backwards_on_seekable_file.exit.i
  %.pn.i = phi { i64, ptr } [ { i64 1, ptr poison }, %bb.ak ], [ %.pn29.i.i, %_RNvCsgzkSwV7OBv7_7uu_head32head_backwards_without_seek_file.exit.i ], [ %i.zy, %_RNvCsgzkSwV7OBv7_7uu_head31head_backwards_on_seekable_file.exit.i ]
  %.pn42.i = phi ptr [ %i.el, %bb.ak ], [ %.sroa.7.1.i.pn.i.i, %_RNvCsgzkSwV7OBv7_7uu_head32head_backwards_without_seek_file.exit.i ], [ %.sroa.6.0.i.i, %_RNvCsgzkSwV7OBv7_7uu_head31head_backwards_on_seekable_file.exit.i ]
  %.merged.i = insertvalue { i64, ptr } %.pn.i, ptr %.pn42.i, 1
  br label %bb.hb

bb.ha:                                            ; preds = %bb.a
  %i.zz = load i64, ptr %i.ai, align 8, !noundef !8
  %i.aaa = tail call fastcc { i64, ptr } @_RINvCsgzkSwV7OBv7_7uu_head13print_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_(ptr noalias nofree noundef align 4 dereferenceable(4) %0, i64 noundef %i.zz) #22
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %_RNvCsgzkSwV7OBv7_7uu_head19head_backwards_file.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgzkSwV7OBv7_7uu_head.exit
  %.pn = phi { i64, ptr } [ %i.eh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgzkSwV7OBv7_7uu_head.exit ], [ %i.aaa, %bb.ha ], [ %.merged.i, %_RNvCsgzkSwV7OBv7_7uu_head19head_backwards_file.exit ]
  ret { i64, ptr } %.pn
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs1_CsgzkSwV7OBv7_7uu_headNtB5_11HeadOptions8get_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %i.j = alloca [16 x i8], align 16               ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 10 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [40 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 6 uses
  %i.ac = alloca [40 x i8], align 8               ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [40 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [40 x i8], align 8               ; 6 uses
  %i.ak = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 5) #22
  %i.al = zext i1 %i.ak to i8
  %i.am = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 7) #22
  %i.an = zext i1 %i.am to i8
  %i.ao = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 4) #22
  %. = select i1 %i.ao, i8 0, i8 10
  %i.ap = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 19) #22
  %i.aq = zext i1 %i.ap to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1185
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1185
  store ptr @73, ptr %i.ad, align 8, !noalias !1187
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 5, ptr %i.ar, align 8, !noalias !1187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1187
  %i.as = load i64, ptr %i.aj, align 8, !range !24, !alias.scope !1186, !noalias !1185, !noundef !8
  %.not.i.i = icmp eq i64 %i.as, 2
  %.sink285.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sink285.sroa.gep295 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sink285.sroa.gep297 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sink285.sroa.gep298 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  br i1 %.not.i.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgzkSwV7OBv7_7uu_head.exit.i, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.aj, i64 40, i1 false), !noalias !1188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1187
  store ptr %i.ad, ptr %i.ab, align 8, !noalias !1187
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgzkSwV7OBv7_7uu_head, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1187
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ac, ptr %i.at, align 8, !noalias !1187
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !1187
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #25, !noalias !1189
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgzkSwV7OBv7_7uu_head.exit.i: ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !1186, !noalias !1185, !align !17, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1185
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgzkSwV7OBv7_7uu_head.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !1185, !nonnull !8, !noundef !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noalias !1185, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1190
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6parser16parse_signed_num20parse_signed_num_max(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef %i.az) #22, !noalias !1191
  %i.ba = load i64, ptr %i.aa, align 8, !range !1192, !noalias !1190, !noundef !8 ; 2 uses
  %.not.i74.i = icmp eq i64 %i.ba, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !1190 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !noalias !1190 ; 2 uses
  br i1 %.not.i74.i, label %bb.y, label %bb.f

bb.d:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgzkSwV7OBv7_7uu_head.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1185
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74) #22
end_hunk_1
