Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/assembler-x64?download=true
inline.NumInlined: 3306
inline.NumDeleted: 586
begin_hunk_0_@_ZN2v88internal11CpuFeatures9ProbeImplEb:bb.a
  %i.en = phi i32 [ %i.em, %bb.bb ], [ %i.ei, %bb.ba ] ; 3 uses
  %i.eo = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1298), align 2, !range !11, !noundef !12
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = and i32 %i.en, 32
  %.not20 = icmp ne i32 %i.eq, 0
  %or.cond41.not = select i1 %i.ep, i1 %.not20, i1 false
  br i1 %or.cond41.not, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = and i32 %i.en, -257                     ; 2 uses
  store i32 %i.er, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.es = phi i32 [ %i.er, %bb.bd ], [ %i.en, %bb.bc ] ; 3 uses
  %i.et = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1299), align 1, !range !11, !noundef !12
  %i.eu = trunc nuw i8 %i.et to i1
  %i.ev = and i32 %i.es, 32
  %.not21 = icmp ne i32 %i.ev, 0
  %or.cond43.not = select i1 %i.eu, i1 %.not21, i1 false
  br i1 %or.cond43.not, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ew = and i32 %i.es, -513                     ; 2 uses
  store i32 %i.ew, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.ex = phi i32 [ %i.ew, %bb.bf ], [ %i.es, %bb.be ] ; 3 uses
  %i.ey = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1300), align 4, !range !11, !noundef !12
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = and i32 %i.ex, 32
  %.not22 = icmp ne i32 %i.fa, 0
  %or.cond45.not = select i1 %i.ez, i1 %.not22, i1 false
  br i1 %or.cond45.not, label %_ZN2v88internal11CpuFeatures19SupportsWasmSimd128Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fb = and i32 %i.ex, -131073                  ; 2 uses
  store i32 %i.fb, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %_ZN2v88internal11CpuFeatures19SupportsWasmSimd128Ev.exit

_ZN2v88internal11CpuFeatures19SupportsWasmSimd128Ev.exit: ; preds = %bb.bg, %bb.bh
  %i.fc = phi i32 [ %i.fb, %bb.bh ], [ %i.ex, %bb.bg ] ; 4 uses
  %i.fd = and i32 %i.fc, 2
  %.not.i = icmp eq i32 %i.fd, 0
  %i.fe = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 924), align 4, !range !11
  %i.ff = trunc i32 %i.fc to i8
  %i.fg = lshr i8 %i.ff, 2
  %i.fh = and i8 %i.fe, %i.fg
  %.0.i = select i1 %.not.i, i8 %i.fh, i8 1
  store i8 %.0.i, ptr @_ZN2v88internal11CpuFeatures23supports_wasm_simd_128_E, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fj = load i8, ptr %i.fi, align 4, !range !11, !noundef !12
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZN2v88internal11CpuFeatures19SupportsWasmSimd128Ev.exit
  %i.fl = or i32 %i.fc, 65536                     ; 2 uses
  store i32 %i.fl, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZN2v88internal11CpuFeatures19SupportsWasmSimd128Ev.exit
  %i.fm = phi i32 [ %i.fl, %bb.bi ], [ %i.fc, %_ZN2v88internal11CpuFeatures19SupportsWasmSimd128Ev.exit ]
  %i.fn = and i32 %i.fm, 65536
  %.not23 = icmp eq i32 %i.fn, 0
  br i1 %.not23, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fo = call noundef zeroext i1 @_ZN2v84base2OS37IsHardwareEnforcedShadowStacksEnabledEv() #26
  %i.fp = zext i1 %i.fo to i8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.fq = phi i8 [ 0, %bb.bj ], [ %i.fp, %bb.bk ]
  store i8 %i.fq, ptr @_ZN2v88internal11CpuFeatures15supports_cetss_E, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.bm

bb.bm:                                            ; preds = %bb.a, %bb.bl
  ret void
}

declare void @_ZN2v84base3CPUC1Ev(ptr noundef nonnull align 4 dereferenceable(120)) unnamed_addr #5

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN2v84base2OS37IsHardwareEnforcedShadowStacksEnabledEv() local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal11CpuFeatures11PrintTargetEv() local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN2v88internal11CpuFeatures13PrintFeaturesEv() local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4 ; 16 uses
  %i.b = lshr i32 %i.a, 3
  %.lobit = and i32 %i.b, 1
  %i.c = lshr i32 %i.a, 2
  %.lobit1 = and i32 %i.c, 1
  %i.d = lshr i32 %i.a, 1
  %.lobit2 = and i32 %i.d, 1
  %i.e = and i32 %i.a, 1
  %i.f = lshr i32 %i.a, 4
  %.lobit3 = and i32 %i.f, 1
  %i.g = lshr i32 %i.a, 5
  %.lobit4 = and i32 %i.g, 1
  %i.h = lshr i32 %i.a, 6
  %.lobit5 = and i32 %i.h, 1
  %i.i = lshr i32 %i.a, 7
  %.lobit6 = and i32 %i.i, 1
  %i.j = lshr i32 %i.a, 8
  %.lobit7 = and i32 %i.j, 1
  %i.k = lshr i32 %i.a, 9
  %.lobit8 = and i32 %i.k, 1
  %i.l = lshr i32 %i.a, 17
  %.lobit9 = and i32 %i.l, 1
  %i.m = lshr i32 %i.a, 10
  %.lobit10 = and i32 %i.m, 1
  %i.n = lshr i32 %i.a, 11
  %.lobit11 = and i32 %i.n, 1
  %i.o = lshr i32 %i.a, 12
  %.lobit12 = and i32 %i.o, 1
  %i.p = lshr i32 %i.a, 13
  %.lobit13 = and i32 %i.p, 1
  %i.q = lshr i32 %i.a, 14
  %.lobit14 = and i32 %i.q, 1
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.lobit, i32 noundef %.lobit1, i32 noundef %.lobit2, i32 noundef %i.e, i32 noundef %.lobit3, i32 noundef %.lobit4, i32 noundef %.lobit5, i32 noundef %.lobit6, i32 noundef %.lobit7, i32 noundef %.lobit8, i32 noundef %.lobit9, i32 noundef %.lobit10, i32 noundef %.lobit11, i32 noundef %.lobit12, i32 noundef %.lobit13, i32 noundef %.lobit14) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2v88internal9RelocInfo13wasm_call_tagEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = inttoptr i64 %i.a to ptr
  %.0.copyload.i = load i32, ptr %i.b, align 1
  ret i32 %.0.copyload.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal7OperandC2ES1_i(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 %1, ptr nofree readnone captures(none) %2, i32 noundef %3) unnamed_addr #12 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 2 uses
  store i64 %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  %.ptr37 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.e = lshr i64 %1, 16
  %i.f = trunc i64 %i.e to i8                     ; 6 uses
  %i.g = and i8 %i.f, 7
  %i.h = icmp eq i8 %i.g, 4                       ; 3 uses
  %i.i = and i8 %i.f, -64                         ; 2 uses
  %i.j = select i1 %i.h, i32 2, i32 1             ; 7 uses
  %i.k = lshr i64 %1, 24
  %i.l = trunc i64 %i.k to i8                     ; 2 uses
  %i.m = select i1 %i.h, i8 %i.l, i8 %i.f
  %i.n = and i8 %i.m, 7
  %i.o = icmp eq i8 %i.i, 0
  %i.p = icmp eq i8 %i.n, 5                       ; 2 uses
  %i.q = and i1 %i.o, %i.p                        ; 3 uses
  %i.r = icmp slt i8 %i.f, -64
  %or.cond = or i1 %i.r, %i.q
  %i.s = lshr i64 %1, 8
  %i.t = trunc i64 %i.s to i8
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = zext nneg i32 %i.j to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %.0.copyload.i = load i32, ptr %i.v, align 1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.w = icmp eq i8 %i.i, 64
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = zext nneg i32 %i.j to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = sext i8 %i.z to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %.0.copyload.i, %bb.b ], [ %i.aa, %bb.d ], [ 0, %bb.c ]
  %i.ab = add nsw i32 %.0, %3                     ; 4 uses
  store i8 %i.t, ptr %i.a, align 1
  %5 = sext i32 %i.ab to i64
  %6 = add nsw i64 %5, -128
  %i.ac = icmp ult i64 %6, -256
  %or.cond3 = or i1 %i.ac, %i.q
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = and i8 %i.f, 63
  %i.ae = select i1 %i.q, i8 0, i8 -128
  %i.af = or disjoint i8 %i.ae, %i.ad
  store i8 %i.af, ptr %i.b, align 2
  %i.ag = or disjoint i32 %i.j, 4
  %i.ah = zext nneg i32 %i.ag to i64
  store i64 %i.ah, ptr %i.c, align 8
  %i.ai = zext nneg i32 %i.j to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ai
  store i32 %i.ab, ptr %i.aj, align 1
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ak = icmp ne i32 %i.ab, 0
  %or.cond5 = or i1 %i.ak, %i.p
  %i.al = and i8 %i.f, 63                         ; 2 uses
  br i1 %or.cond5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = or disjoint i8 %i.al, 64
  store i8 %i.am, ptr %i.b, align 2
  %i.an = add nuw nsw i32 %i.j, 1
  %i.ao = zext nneg i32 %i.an to i64
  store i64 %i.ao, ptr %i.c, align 8
  %i.ap = trunc i32 %i.ab to i8
  %i.aq = zext nneg i32 %i.j to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aq
  store i8 %i.ap, ptr %i.ar, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i8 %i.al, ptr %i.b, align 2
  %i.as = zext nneg i32 %i.j to i64
  store i64 %i.as, ptr %i.c, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  br i1 %i.h, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 %i.l, ptr %.ptr37, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal7Operand19AddressUsesRegisterENS0_8RegisterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i8 %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i8, ptr %i.b, align 2               ; 3 uses
  %i.d = and i8 %i.c, 7                           ; 2 uses
  switch i8 %i.d, label %bb.e [
    i8 4, label %bb.b
    i8 5, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = lshr i8 %i.f, 3
  %i.h = and i8 %i.g, 7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %i.k = shl i8 %i.j, 2
  %i.l = and i8 %i.k, 8
  %i.m = or disjoint i8 %i.l, %i.h                ; 2 uses
  %.not = icmp ne i8 %i.m, 4
  %i.n = icmp eq i8 %i.m, %1
  %or.cond = and i1 %.not, %i.n
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = and i8 %i.f, 7
  %i.p = shl i8 %i.j, 3
  %i.q = and i8 %i.p, 8
  %i.r = or disjoint i8 %i.q, %i.o                ; 2 uses
  %i.s = icmp ne i8 %i.r, 5
  %i.t = icmp ugt i8 %i.c, 63
  %or.cond14.not = or i1 %i.t, %i.s
  %i.u = icmp eq i8 %1, %i.r
  %spec.select = and i1 %i.u, %or.cond14.not
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.v = icmp ult i8 %i.c, 64
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = shl i8 %i.x, 3
  %i.z = and i8 %i.y, 8
  %i.aa = or disjoint i8 %i.z, %i.d
  %i.ab = icmp eq i8 %1, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.e
  %.1 = phi i1 [ %i.ab, %bb.e ], [ %spec.select, %bb.c ], [ false, %bb.d ], [ true, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal9Assembler24PatchInHeapNumberRequestEmNS0_6HandleINS0_10HeapNumberEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 noundef %1, ptr %2) unnamed_addr #14 align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  store ptr %2, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal9ConstPool14AddSharedEntryEmi(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ult i64 %i.e, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !97

_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit.thread, label %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit

_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ult i64 %1, %i.i
  br i1 %i.j, label %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit.thread, label %bb.b

_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit.thread: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.a, %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit
  %i.k = add nsw i32 %2, 2
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i32 %i.k, ptr %i.n, align 8
  %.078.i.i.i = load ptr, ptr %i.a, align 8       ; 2 uses
  %.not9.i.i.i = icmp eq ptr %.078.i.i.i, null
  br i1 %.not9.i.i.i, label %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE6insertIS2_ImiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueESt17_Rb_tree_iteratorIS4_EE4typeEOSA_.exit, label %.lr.ph.i.i.i9

.lr.ph.i.i.i9:                                    ; preds = %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit.thread, %.lr.ph.i.i.i9
  %.0710.i.i.i = phi ptr [ %.07.i.i.i, %.lr.ph.i.i.i9 ], [ %.078.i.i.i, %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit.thread ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp ult i64 %1, %i.p                    ; 2 uses
  %.in.v.i.i.i = select i1 %i.q, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 %.in.v.i.i.i
  %.07.i.i.i = load ptr, ptr %.in.i.i.i, align 8  ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %.07.i.i.i, null
  br i1 %.not.i.i.i10, label %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i, label %.lr.ph.i.i.i9, !llvm.loop !98

_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i: ; preds = %.lr.ph.i.i.i9
  %i.r = icmp eq ptr %.0710.i.i.i, %i.c
  %spec.select.i.i11 = or i1 %i.r, %i.q
  br label %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE6insertIS2_ImiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueESt17_Rb_tree_iteratorIS4_EE4typeEOSA_.exit

_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE6insertIS2_ImiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueESt17_Rb_tree_iteratorIS4_EE4typeEOSA_.exit: ; preds = %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit.thread, %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i
  %.0.lcssa.i11.i.i = phi ptr [ %i.c, %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit.thread ], [ %.0710.i.i.i, %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i ]
  %i.s = phi i1 [ true, %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit.thread ], [ %spec.select.i.i11, %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.l, ptr noundef nonnull %.0.lcssa.i11.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #26
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit
  %i.t = add nsw i32 %2, 3
  %i.u = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 %1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 %i.t, ptr %i.w, align 8
  %.078.i.i.i14 = load ptr, ptr %i.a, align 8     ; 2 uses
  %.not9.i.i.i15 = icmp eq ptr %.078.i.i.i14, null
  br i1 %.not9.i.i.i15, label %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE6insertIS2_ImiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueESt17_Rb_tree_iteratorIS4_EE4typeEOSA_.exit25, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %bb.b, %.lr.ph.i.i.i16
  %.0710.i.i.i17 = phi ptr [ %.07.i.i.i20, %.lr.ph.i.i.i16 ], [ %.078.i.i.i14, %bb.b ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0710.i.i.i17, i64 32
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp ult i64 %1, %i.y                    ; 2 uses
  %.in.v.i.i.i18 = select i1 %i.z, i64 16, i64 24
  %.in.i.i.i19 = getelementptr inbounds nuw i8, ptr %.0710.i.i.i17, i64 %.in.v.i.i.i18
  %.07.i.i.i20 = load ptr, ptr %.in.i.i.i19, align 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %.07.i.i.i20, null
  br i1 %.not.i.i.i21, label %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i22, label %.lr.ph.i.i.i16, !llvm.loop !98

_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i22: ; preds = %.lr.ph.i.i.i16
  %i.aa = icmp eq ptr %.0710.i.i.i17, %i.c
  %spec.select.i.i23 = or i1 %i.aa, %i.z
  br label %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE6insertIS2_ImiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueESt17_Rb_tree_iteratorIS4_EE4typeEOSA_.exit25

_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE6insertIS2_ImiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueESt17_Rb_tree_iteratorIS4_EE4typeEOSA_.exit25: ; preds = %bb.b, %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i22
  %.0.lcssa.i11.i.i24 = phi ptr [ %i.c, %bb.b ], [ %.0710.i.i.i17, %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i22 ]
  %i.ab = phi i1 [ true, %bb.b ], [ %spec.select.i.i23, %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i22 ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ab, ptr noundef nonnull %i.u, ptr noundef nonnull %.0.lcssa.i11.i.i24, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE6insertIS2_ImiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueESt17_Rb_tree_iteratorIS4_EE4typeEOSA_.exit25, %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE6insertIS2_ImiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueESt17_Rb_tree_iteratorIS4_EE4typeEOSA_.exit
  %.0 = phi i1 [ true, %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE6insertIS2_ImiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueESt17_Rb_tree_iteratorIS4_EE4typeEOSA_.exit25 ], [ false, %_ZNSt8multimapImiSt4lessImESaISt4pairIKmiEEE6insertIS2_ImiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueESt17_Rb_tree_iteratorIS4_EE4typeEOSA_.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal9ConstPool14TryRecordEntryElNS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1336), align 8, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
end_hunk_0
begin_hunk_1_@_ZN2v88internal9AssemblerC2ERKNS0_16AssemblerOptionsESt10unique_ptrINS0_15AssemblerBufferESt14default_deleteIS6_EE:bb.a
  br i1 %.not3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = or i64 %i.bb, 8
  store i64 %i.bc, ptr %i.ba, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZN2v88internal13AssemblerBaseC2ERKNS0_16AssemblerOptionsESt10unique_ptrINS0_15AssemblerBufferESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(27), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7GetCodeEPNS0_7IsolateEPNS0_8CodeDescE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 63936
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal9Assembler7GetCodeEPNS0_12LocalIsolateEPNS0_8CodeDescEPNS0_25SafepointTableBuilderBaseEi(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %i.b, ptr noundef %2, ptr noundef null, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7GetCodeEPNS0_12LocalIsolateEPNS0_8CodeDescEPNS0_25SafepointTableBuilderBaseEi(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal9Assembler9DataAlignEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 4) #26
  tail call void @_ZN2v88internal9Assembler14PatchConstPoolEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %i.a = tail call noundef i32 @_ZN2v88internal9Assembler17WriteCodeCommentsEv(ptr noundef nonnull align 8 dereferenceable(408) %0) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.c = tail call noundef i64 @_ZNK2v88internal19JumpTableInfoWriter11entry_countEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #26
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN2v88internal9Assembler26WriteBuiltinJumpTableInfosEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %.neg.i.neg = sub i64 %i.i, %i.j
  %.neg3.i.neg = trunc i64 %.neg.i.neg to i32
  tail call void @_ZN2v88internal19JumpTableInfoWriter4EmitEPNS0_9AssemblerE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(408) %0) #26
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %.neg = sub i64 %i.n, %i.m
  %.neg19 = trunc i64 %.neg to i32
  %.neg20 = add i32 %.neg19, %.neg3.i.neg
  br label %_ZN2v88internal9Assembler26WriteBuiltinJumpTableInfosEv.exit

_ZN2v88internal9Assembler26WriteBuiltinJumpTableInfosEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i32 [ %.neg20, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN2v88internal13AssemblerBase38AllocateAndInstallRequestedHeapNumbersEPNS0_12LocalIsolateE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1) #26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %.0.i.neg, %i.v                  ; 2 uses
  %i.x = sub nsw i32 %i.w, %i.a                   ; 3 uses
  %i.y = icmp eq i32 %4, 0
  %i.z = select i1 %i.y, i32 %i.x, i32 %4         ; 2 uses
  %i.aa = icmp eq ptr %3, null
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal9Assembler26WriteBuiltinJumpTableInfosEv.exit
  %i.ab = load i32, ptr %3, align 4
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal9Assembler26WriteBuiltinJumpTableInfosEv.exit, %bb.c
  %i.ac = phi i32 [ %i.ab, %bb.c ], [ %i.z, %_ZN2v88internal9Assembler26WriteBuiltinJumpTableInfosEv.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #26
  %i.al = ptrtoint ptr %i.ae to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = trunc i64 %i.an to i32
  tail call void @_ZN2v88internal8CodeDesc10InitializeEPS1_PNS0_9AssemblerEiiiiii(ptr noundef %2, ptr noundef nonnull %0, i32 noundef %i.ac, i32 noundef %i.z, i32 noundef %i.x, i32 noundef %i.x, i32 noundef %i.w, i32 noundef %i.ao) #26
  ret void
}

declare void @_ZN2v88internal9Assembler9DataAlignEi(ptr noundef nonnull align 8 dereferenceable(408), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN2v88internal9Assembler17WriteCodeCommentsEv(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal9Assembler26WriteBuiltinJumpTableInfosEv(ptr noundef nonnull align 8 dereferenceable(408) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.b = tail call noundef i64 @_ZNK2v88internal19JumpTableInfoWriter11entry_countEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #26
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %.neg = sub i64 %i.i, %i.h
  %.neg3 = trunc i64 %.neg to i32
  tail call void @_ZN2v88internal19JumpTableInfoWriter4EmitEPNS0_9AssemblerE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %0) #26
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = load ptr, ptr %i.f, align 8
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = add i32 %i.o, %.neg3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.p, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @_ZN2v88internal13AssemblerBase38AllocateAndInstallRequestedHeapNumbersEPNS0_12LocalIsolateE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef) local_unnamed_addr #5

declare void @_ZN2v88internal8CodeDesc10InitializeEPS1_PNS0_9AssemblerEiiiiii(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler28FinalizeJumpOptimizationInfoEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 12
  %i.o = trunc i64 %i.n to i32                    ; 4 uses
  %.not21 = icmp eq i32 %i.o, 0
  br i1 %.not21, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4
  %i.s = icmp sgt i32 %i.o, 0
  br i1 %i.s, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph
  %.023.ph = phi i1 [ true, %.thread ], [ false, %.lr.ph ]
  %storemerge22.ph = phi i32 [ %i.af, %.thread ], [ 0, %.lr.ph ]
  %i.u = load ptr, ptr %i.t, align 8
  br label %bb.f

._crit_edge:                                      ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %.023.ph, label %bb.h, label %bb.i

bb.f:                                             ; preds = %.outer, %bb.g
  %storemerge22 = phi i32 [ %i.ac, %bb.g ], [ %storemerge22.ph, %.outer ] ; 2 uses
  %i.v = sext i32 %storemerge22 to i64
  %i.w = load ptr, ptr %i.g, align 8
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.x, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %i.y = add nsw i32 %.sroa.5.0.copyload, %.sroa.0.0.copyload
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 %i.z
  %.0.copyload.i.i = load i32, ptr %i.aa, align 1 ; 2 uses
  %1 = sext i32 %.0.copyload.i.i to i64
  %2 = add nsw i64 %1, 128
  %i.ab = icmp ult i64 %2, 256
  br i1 %i.ab, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = add nsw i32 %storemerge22, 1            ; 3 uses
  store i32 %i.ac, ptr %i.a, align 4
  %i.ad = icmp slt i32 %i.ac, %i.o
  br i1 %i.ad, label %bb.f, label %._crit_edge, !llvm.loop !99

.thread:                                          ; preds = %bb.f
  %i.ae = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 3 uses
  store i32 %.sroa.0.0.copyload, ptr %i.ae, align 4
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx3, align 4
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx5, align 4
  %.pre = load i32, ptr %i.a, align 4
  %i.af = add nsw i32 %.pre, 1                    ; 3 uses
  store i32 %i.af, ptr %i.a, align 4
  %i.ag = icmp slt i32 %i.af, %i.o
  br i1 %i.ag, label %.outer, label %._crit_edge.thread, !llvm.loop !99

._crit_edge.thread:                               ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i8 1, ptr %i.ah, align 8
  br label %bb.i

.critedge:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.c, %bb.d, %bb.h, %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(12) ptr @_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit, label %bb.b, !llvm.loop !2

_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp slt i32 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal20JumpOptimizationInfo8JumpInfoEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i32, ptr %1, align 4
  store i32 %i.n, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.o, i8 0, i64 12, i1 false)
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal20JumpOptimizationInfo8JumpInfoEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.m) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.m, align 4
  %i.v = load i32, ptr %i.t, align 4
  %i.w = icmp slt i32 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal20JumpOptimizationInfo8JumpInfoEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #30
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal20JumpOptimizationInfo8JumpInfoEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal20JumpOptimizationInfo8JumpInfoEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 36
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler5AlignEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = add nsw i32 %1, -1                       ; 2 uses
  %i.j = and i32 %i.i, %i.h
  %i.k = sub nsw i32 %1, %i.j
  %i.l = and i32 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i, %bb.a
  %i.n = phi ptr [ %i.b, %bb.a ], [ %i.ab, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i ] ; 2 uses
  %.0.i = phi i32 [ %i.l, %bb.a ], [ %i.ac, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i ] ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp slt i32 %i.s, 32
  br i1 %i.t, label %bb.c, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre9.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i: ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.n, %bb.b ], [ %.pre9.i, %bb.c ]
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.0.i, i32 9) ; 2 uses
  %i.v = sext i32 %.sroa.speculated.i to i64      ; 3 uses
  %i.w = getelementptr inbounds i8, ptr @__const._ZN2v88internal9Assembler3NopEi.kNopOffsets, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sext i8 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr @.str.9, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %i.z, i64 %i.v, i1 false)
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.v ; 2 uses
  store ptr %i.ab, ptr %i.a, align 8
  %i.ac = sub nsw i32 %.0.i, %.sroa.speculated.i
  %.not.i = icmp slt i32 %.0.i, 10
  br i1 %.not.i, label %_ZN2v88internal9Assembler3NopEi.exit, label %bb.b, !llvm.loop !3

_ZN2v88internal9Assembler3NopEi.exit:             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler3NopEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, %bb.a
  %i.c = phi ptr [ %.pre, %bb.a ], [ %i.q, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit ] ; 2 uses
  %.0 = phi i32 [ %1, %bb.a ], [ %i.r, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit ] ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.c, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre9 = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.c, %bb.b ], [ %.pre9, %bb.c ]
end_hunk_1
begin_hunk_2_@_ZN2v88internal9Assembler15LoopHeaderAlignEv:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal9Assembler5IsNopEm(i64 noundef %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.c, %bb.c ]  ; 3 uses
  %i.b = load i8, ptr %.0, align 1
  switch i8 %i.b, label %.loopexit [
    i8 102, label %bb.c
    i8 -112, label %.loopexit8
    i8 15, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !101

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 31
  br i1 %i.f, label %.loopexit8, label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  br label %.loopexit8

.loopexit8:                                       ; preds = %bb.b, %bb.d, %.loopexit
  %.06 = phi i1 [ false, %.loopexit ], [ true, %bb.d ], [ true, %bb.b ]
  ret i1 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal9Assembler8IsJmpRelEm(i64 noundef %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, -3
  %spec.select = icmp eq i8 %i.c, -23
  ret i1 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7bind_toEPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr nofree noundef captures(address) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load i32, ptr %1, align 4                ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %_ZNK2v88internal5Label3posEv.exit, label %bb.n

_ZNK2v88internal5Label3posEv.exit:                ; preds = %bb.a
  %i.e = add nsw i32 %i.c, -1                     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = zext nneg i32 %i.e to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %.0.neg72 = sub nsw i32 1, %i.c                 ; 2 uses
  %.04973 = load i32, ptr %i.i, align 1           ; 2 uses
  %.not74 = icmp eq i32 %.04973, %i.e
  br i1 %.not74, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v88internal5Label3posEv.exit
  %.neg = add i32 %2, -4
  %i.j = sext i32 %2 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.n = phi ptr [ %i.g, %.lr.ph ], [ %i.ad, %bb.h ] ; 3 uses
  %.04977 = phi i32 [ %.04973, %.lr.ph ], [ %.049, %bb.h ] ; 5 uses
  %.0.neg76 = phi i32 [ %.0.neg72, %.lr.ph ], [ %.0.neg, %bb.h ]
  %.075 = phi i32 [ %i.e, %.lr.ph ], [ %.04977, %bb.h ] ; 3 uses
  %i.o = icmp sgt i32 %.075, 3
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %.075, -4                    ; 3 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q ; 2 uses
  %.0.copyload.i.i53 = load i32, ptr %i.r, align 1
  %i.s = icmp eq i32 %.0.copyload.i.i53, 0
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds i8, ptr %i.n, i64 %i.j
  %i.u = ptrtoint ptr %i.t to i64
  store i64 %i.u, ptr %i.r, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 %i.p, ptr %i.a, align 4
  %i.v = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.l, align 8
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -4
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.p, ptr %i.v, align 4
  %i.y = load ptr, ptr %i.k, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store ptr %i.z, ptr %i.k, align 8
  br label %_ZNSt5dequeIiSaIiEE9push_backEOi.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt5dequeIiSaIiEE9push_backEOi.exit

_ZNSt5dequeIiSaIiEE9push_backEOi.exit:            ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.aa = add i32 %.neg, %.0.neg76
  %i.ab = sext i32 %.075 to i64
  %i.ac = getelementptr inbounds i8, ptr %i.n, i64 %i.ab
  store i32 %i.aa, ptr %i.ac, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt5dequeIiSaIiEE9push_backEOi.exit
  %i.ad = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.ae = sext i32 %.04977 to i64
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae
  %.0.neg = sub i32 0, %.04977                    ; 2 uses
  %.049 = load i32, ptr %i.af, align 1            ; 2 uses
  %.not = icmp eq i32 %.049, %.04977
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.h, %_ZNK2v88internal5Label3posEv.exit
  %i.ag = phi ptr [ %i.g, %_ZNK2v88internal5Label3posEv.exit ], [ %i.ad, %bb.h ] ; 3 uses
  %.0.lcssa = phi i32 [ %i.e, %_ZNK2v88internal5Label3posEv.exit ], [ %.04977, %bb.h ] ; 3 uses
  %.0.neg.lcssa = phi i32 [ %.0.neg72, %_ZNK2v88internal5Label3posEv.exit ], [ %.0.neg, %bb.h ]
  %i.ah = icmp sgt i32 %.0.lcssa, 3
  br i1 %i.ah, label %bb.i, label %bb.m

bb.i:                                             ; preds = %._crit_edge
  %i.ai = add nsw i32 %.0.lcssa, -4               ; 3 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  %.0.copyload.i.i55 = load i32, ptr %i.ak, align 1
  %i.al = icmp eq i32 %.0.copyload.i.i55, 0
  br i1 %i.al, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.am = sext i32 %2 to i64
  %i.an = getelementptr inbounds i8, ptr %i.ag, i64 %i.am
  %i.ao = ptrtoint ptr %i.an to i64
  store i64 %i.ao, ptr %i.ak, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 %i.ai, ptr %i.b, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  %.not.i.i56 = icmp eq ptr %i.aq, %i.at
  br i1 %.not.i.i56, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ai, ptr %i.aq, align 4
  %i.au = load ptr, ptr %i.ap, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store ptr %i.av, ptr %i.ap, align 8
  br label %_ZNSt5dequeIiSaIiEE9push_backEOi.exit57

bb.l:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_ZNSt5dequeIiSaIiEE9push_backEOi.exit57

_ZNSt5dequeIiSaIiEE9push_backEOi.exit57:          ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.n

bb.m:                                             ; preds = %bb.i, %._crit_edge
  %.neg71 = add i32 %2, -4
  %i.ax = add i32 %.neg71, %.0.neg.lcssa
  %i.ay = sext i32 %.0.lcssa to i64
  %i.az = getelementptr inbounds i8, ptr %i.ag, i64 %i.ay
  store i32 %i.ax, ptr %i.az, align 1
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt5dequeIiSaIiEE9push_backEOi.exit57, %bb.m, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph80, %bb.q
  %i.be = phi i32 [ %i.bb, %.lr.ph80 ], [ %i.bp, %bb.q ] ; 3 uses
  %i.bf = sub i32 %2, %i.be                       ; 2 uses
  %3 = sext i32 %i.bf to i64
  %4 = add nsw i64 %3, 128
  %i.bg = icmp ult i64 %4, 256
  br i1 %i.bg, label %bb.q, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #27
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %i.bd, align 8
  %i.bi = zext nneg i32 %i.be to i64
  %i.bj = getelementptr i8, ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1     ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  %i.bm = sext i8 %i.bl to i32
  %i.bn = trunc i32 %i.bf to i8
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bo = icmp slt i8 %i.bl, 0
  %i.bp = add nsw i32 %i.be, %i.bm                ; 2 uses
  %storemerge = select i1 %i.bo, i32 %i.bp, i32 0 ; 2 uses
  store i32 %storemerge, ptr %i.ba, align 4
  %i.bq = icmp sgt i32 %storemerge, 0
  br i1 %i.bq, label %bb.o, label %._crit_edge81, !llvm.loop !103

._crit_edge81:                                    ; preds = %bb.q, %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bs = load ptr, ptr %i.br, align 8            ; 5 uses
  %.not52 = icmp eq ptr %i.bs, null
  br i1 %.not52, label %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %bb.r

bb.r:                                             ; preds = %._crit_edge81
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.s, label %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 168
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 160 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.bw, %bb.s ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.bx, %bb.s ]
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = icmp ult ptr %i.bz, %1                  ; 2 uses
  %.19.i.i.i = select i1 %i.ca, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.ca, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal5LabelESt4pairIKS3_St6vectorIiSaIiEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt8_Rb_treeIPN2v88internal5LabelESt4pairIKS3_St6vectorIiSaIiEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cb = icmp eq ptr %.19.i.i.i, %i.bx
  br i1 %i.cb, label %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit

_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit: ; preds = %_ZNSt8_Rb_treeIPN2v88internal5LabelESt4pairIKS3_St6vectorIiSaIiEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = icmp ult ptr %1, %i.cd                  ; 2 uses
  %spec.select.i.i = select i1 %i.ce, ptr %i.bx, ptr %.19.i.i.i
  br i1 %i.ce, label %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = icmp eq ptr %i.cg, %i.ci
  br i1 %i.cj, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.v

._crit_edge85:                                    ; preds = %bb.x, %bb.t
  %i.cl = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %spec.select.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bx) #26 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISB_E.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge85
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cs) #30
  br label %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISB_E.exit

_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISB_E.exit: ; preds = %._crit_edge85, %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef 64) #30
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bs, i64 192 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = add i64 %i.cu, -1
  store i64 %i.cv, ptr %i.ct, align 8
  br label %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread

bb.v:                                             ; preds = %.lr.ph84, %bb.x
  %.sroa.058.082 = phi ptr [ %i.cg, %.lr.ph84 ], [ %i.de, %bb.x ] ; 2 uses
  %i.cw = load i32, ptr %.sroa.058.082, align 4   ; 2 uses
  %i.cx = xor i32 %i.cw, -1
  %i.cy = add i32 %2, %i.cx                       ; 2 uses
  %5 = sext i32 %i.cy to i64
  %6 = add nsw i64 %5, 128
  %i.cz = icmp ult i64 %6, 256
  br i1 %i.cz, label %bb.x, label %bb.w, !prof !13

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #27
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.da = trunc i32 %i.cy to i8
  %i.db = load ptr, ptr %i.ck, align 8
  %i.dc = sext i32 %i.cw to i64
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 %i.dc
  store i8 %i.da, ptr %i.dd, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.058.082, i64 4 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.ci
  br i1 %i.df, label %._crit_edge85, label %bb.v

_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPN2v88internal5LabelESt4pairIKS3_St6vectorIiSaIiEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.s, %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit, %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISB_E.exit, %bb.r, %._crit_edge81
  %i.dg = xor i32 %2, -1
  store i32 %i.dg, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  tail call void @_ZN2v88internal9Assembler7bind_toEPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %1, i32 noundef %i.h)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler22record_farjmp_positionEPNS0_5LabelEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::tuple.577", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.560", align 1    ; 3 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.g, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp ult ptr %i.i, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.j, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.j, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.k = icmp eq ptr %.19.i.i.i.i, %i.g
  br i1 %i.k, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp ult ptr %1, %i.m
  br i1 %i.n, label %.critedge.i, label %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEEixERSA_.exit

.critedge.i:                                      ; preds = %bb.b, %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i, %bb.a
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.b ], [ %.19.i.i.i.i, %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i ], [ %i.g, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.a, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.o = call ptr @_ZNSt8_Rb_treeIPN2v88internal5LabelESt4pairIKS3_St6vectorIiSaIiEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEEixERSA_.exit

_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEEixERSA_.exit: ; preds = %bb.b, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.o, %.critedge.i ], [ %.19.i.i.i.i, %bb.b ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %.not.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEEixERSA_.exit
  store i32 %2, ptr %i.r, align 4
  %i.u = load ptr, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.v, ptr %i.q, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.d:                                             ; preds = %_ZNSt3mapIPN2v88internal5LabelESt6vectorIiSaIiEESt4lessIS3_ESaISt4pairIKS3_S6_EEEixERSA_.exit
  %i.w = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 5 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775804
  br i1 %i.aa, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #27
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ab = ashr exact i64 %i.z, 2                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 2305843009213693951)
  %i.af = select i1 %i.ad, i64 2305843009213693951, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #29 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  store i32 %2, ptr %i.ai, align 4
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %i.w, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.not.i17.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.al = load ptr, ptr %i.s, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.an) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ah, ptr %i.p, align 8
  store ptr %i.ak, ptr %i.q, align 8
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.ao, ptr %i.s, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal9Assembler21is_optimizable_farjmpEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load i8, ptr %i.b, align 8, !range !11, !noundef !12
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.l, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp slt i32 %i.n, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.o, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal20JumpOptimizationInfo8JumpInfoEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal20JumpOptimizationInfo8JumpInfoEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i, %i.l
  br i1 %i.p, label %_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit

_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal20JumpOptimizationInfo8JumpInfoEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp slt i32 %1, %i.r
  br i1 %i.s, label %_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit
  %i.t = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.t, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %i.u = add i32 %.sroa.5.0.copyload, %.sroa.0.0.copyload ; 2 uses
  %i.v = add nsw i32 %i.u, 4
  %i.w = add nsw i32 %i.v, %.sroa.7.0.copyload
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not10.i.i.i.i, label %.critedge, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.y, %bb.e ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.z, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp slt i32 %.sroa.0.0.copyload, %i.ab ; 2 uses
  %.19.i.i.i.i = select i1 %i.ac, ptr %.012.i.i.i.i, ptr %.0811.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.ac, i64 16, i64 24
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11upper_boundERS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !104

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11upper_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ad = icmp eq ptr %.19.i.i.i.i, %i.z
  br i1 %i.ad, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11upper_boundERS3_.exit.i, %bb.f
  %.09.i = phi i32 [ %.sroa.speculated.i, %bb.f ], [ 0, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11upper_boundERS3_.exit.i ] ; 2 uses
  %.sroa.01.08.i = phi ptr [ %i.ai, %bb.f ], [ %.19.i.i.i.i, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11upper_boundERS3_.exit.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i, i64 32
  %i.af = load i32, ptr %i.ae, align 4
  %.not.i = icmp sgt i32 %i.af, %i.w
  br i1 %.not.i, label %_ZN2v88internal20JumpOptimizationInfo15MaxAlignInRangeEii.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i, i64 36
  %i.ah = load i32, ptr %i.ag, align 4
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %.09.i, i32 %i.ah) ; 2 uses
  %i.ai = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.08.i) #28 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.z
  br i1 %i.aj, label %_ZN2v88internal20JumpOptimizationInfo15MaxAlignInRangeEii.exit, label %.lr.ph.i, !llvm.loop !105

_ZN2v88internal20JumpOptimizationInfo15MaxAlignInRangeEii.exit: ; preds = %.lr.ph.i, %bb.f
  %.0.lcssa.i = phi i32 [ %.sroa.speculated.i, %bb.f ], [ %.09.i, %.lr.ph.i ] ; 2 uses
  %i.ak = icmp eq i32 %.0.lcssa.i, 0
  br i1 %i.ak, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal20JumpOptimizationInfo15MaxAlignInRangeEii.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %.neg = sub i64 %i.aq, %i.ap
  %.neg24 = trunc i64 %.neg to i32
  %i.ar = add i32 %i.u, 2
  %i.as = add i32 %i.ar, %.neg24
  %i.at = srem i32 %i.as, %.0.lcssa.i
  %i.au = add nsw i32 %i.at, %.sroa.7.0.copyload
  %2 = sext i32 %i.au to i64
  %3 = add nsw i64 %2, -128
  %i.av = icmp ult i64 %3, -256
  br i1 %i.av, label %_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %.critedge

_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN2v88internal20JumpOptimizationInfo8JumpInfoEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.d, %bb.g, %_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11upper_boundERS3_.exit.i, %_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, %bb.g, %_ZN2v88internal20JumpOptimizationInfo15MaxAlignInRangeEii.exit, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %_ZNSt3mapIiN2v88internal20JumpOptimizationInfo8JumpInfoESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread ], [ true, %bb.g ], [ true, %_ZN2v88internal20JumpOptimizationInfo15MaxAlignInRangeEii.exit ], [ true, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11upper_boundERS3_.exit.i ], [ true, %bb.e ]
  ret i1 %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #26 ; 3 uses
  %i.g = icmp sgt i32 %i.f, 268435456
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(16) @_ZN2v88internal2V813kNoOOMDetailsE) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = shl nsw i32 %i.f, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.h) #26
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #26 ; 20 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 19 uses
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = sext i32 %i.h to i64
  %i.x = getelementptr inbounds i8, ptr %i.q, i64 %i.w
  %i.y = sext i32 %i.f to i64
  %i.z = getelementptr inbounds i8, ptr %i.s, i64 %i.y
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.ab, %i.af                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.u
  %i.al = shl i64 %i.ak, 32
  %i.am = ashr exact i64 %i.al, 32                ; 2 uses
  switch i64 %i.am, label %bb.t [
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
  ]

bb.d:                                             ; preds = %bb.c
  %i.an = load i8, ptr %i.s, align 1
  store i8 %i.an, ptr %i.q, align 1
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.e:                                             ; preds = %bb.c
  %i.ao = load i16, ptr %i.s, align 1
  store i16 %i.ao, ptr %i.q, align 1
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.f:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.q, ptr noundef nonnull align 1 dereferenceable(3) %i.s, i64 3, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.g:                                             ; preds = %bb.c
  %i.ap = load i32, ptr %i.s, align 1
  store i32 %i.ap, ptr %i.q, align 1
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.h:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.q, ptr noundef nonnull align 1 dereferenceable(5) %i.s, i64 5, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.i:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.q, ptr noundef nonnull align 1 dereferenceable(6) %i.s, i64 6, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.j:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.q, ptr noundef nonnull align 1 dereferenceable(7) %i.s, i64 7, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.k:                                             ; preds = %bb.c
  %i.aq = load i64, ptr %i.s, align 1
  store i64 %i.aq, ptr %i.q, align 1
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.l:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.q, ptr noundef nonnull align 1 dereferenceable(9) %i.s, i64 9, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.m:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.q, ptr noundef nonnull align 1 dereferenceable(10) %i.s, i64 10, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.n:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.q, ptr noundef nonnull align 1 dereferenceable(11) %i.s, i64 11, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.o:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.q, ptr noundef nonnull align 1 dereferenceable(12) %i.s, i64 12, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.p:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.q, ptr noundef nonnull align 1 dereferenceable(13) %i.s, i64 13, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.q:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.q, ptr noundef nonnull align 1 dereferenceable(14) %i.s, i64 14, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.r:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.q, ptr noundef nonnull align 1 dereferenceable(15) %i.s, i64 15, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.s:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.q, ptr noundef nonnull align 1 dereferenceable(16) %i.s, i64 16, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.t:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.s, i64 %i.am, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

_ZN2v88internal7MemMoveEPvPKvm.exit:              ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %i.ar = load ptr, ptr %i.ad, align 8            ; 18 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.ac ; 17 uses
  switch i64 %i.ag, label %bb.ak [
    i64 1, label %bb.u
    i64 2, label %bb.v
    i64 3, label %bb.w
    i64 4, label %bb.x
    i64 5, label %bb.y
    i64 6, label %bb.z
    i64 7, label %bb.aa
    i64 8, label %bb.ab
    i64 9, label %bb.ac
    i64 10, label %bb.ad
    i64 11, label %bb.ae
    i64 12, label %bb.af
    i64 13, label %bb.ag
    i64 14, label %bb.ah
    i64 15, label %bb.ai
    i64 16, label %bb.aj
  ]

bb.u:                                             ; preds = %_ZN2v88internal7MemMoveEPvPKvm.exit
  %i.at = load i8, ptr %i.ar, align 1
  store i8 %i.at, ptr %i.as, align 1
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit21

bb.v:                                             ; preds = %_ZN2v88internal7MemMoveEPvPKvm.exit
  %i.au = load i16, ptr %i.ar, align 1
  store i16 %i.au, ptr %i.as, align 1
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit21

bb.w:                                             ; preds = %_ZN2v88internal7MemMoveEPvPKvm.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.as, ptr noundef nonnull align 1 dereferenceable(3) %i.ar, i64 3, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit21

bb.x:                                             ; preds = %_ZN2v88internal7MemMoveEPvPKvm.exit
  %i.av = load i32, ptr %i.ar, align 1
  store i32 %i.av, ptr %i.as, align 1
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit21

bb.y:                                             ; preds = %_ZN2v88internal7MemMoveEPvPKvm.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.as, ptr noundef nonnull align 1 dereferenceable(5) %i.ar, i64 5, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit21

bb.z:                                             ; preds = %_ZN2v88internal7MemMoveEPvPKvm.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.as, ptr noundef nonnull align 1 dereferenceable(6) %i.ar, i64 6, i1 false)
end_hunk_2
begin_hunk_3_@_ZN2v88internal9Assembler8emit_incENS0_8RegisterEi:bb.a
  %.pre5 = load ptr, ptr %i.c, align 8            ; 2 uses
  br i1 %.not.i.i, label %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit, label %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterE.exit.sink.split.i

_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterE.exit.sink.split.i: ; preds = %bb.d, %bb.c
  %i.n = phi ptr [ %.pre4, %bb.c ], [ %.pre5, %bb.d ] ; 2 uses
  %.sink.i = phi i8 [ %i.m, %bb.c ], [ 65, %bb.d ]
  store i8 %.sink.i, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  br label %_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit

_ZN2v88internal9Assembler8emit_rexINS0_8RegisterEEEvT_i.exit: ; preds = %bb.d, %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterE.exit.sink.split.i
  %i.p = phi ptr [ %i.o, %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_8RegisterE.exit.sink.split.i ], [ %.pre5, %bb.d ] ; 3 uses
  store i8 -1, ptr %i.p, align 1, !alias.scope !921
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = and i8 %1, 7
  %i.s = or disjoint i8 %i.r, -64
  store i8 %i.s, ptr %i.q, align 1, !alias.scope !922
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store ptr %i.t, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler8emit_incENS0_7OperandEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i64 %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = icmp eq i32 %3, 8
  %.sroa.2.0.extract.shift.i.i = lshr i64 %1, 8
  %.sroa.2.0.extract.trunc.i.i = trunc i64 %.sroa.2.0.extract.shift.i.i to i8 ; 2 uses
  %i.k = trunc i64 %1 to i1                       ; 2 uses
  %not..i.i = xor i1 %i.k, true
  br i1 %i.j, label %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_7OperandE.exit.sink.split.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.l = icmp eq i8 %.sroa.2.0.extract.trunc.i.i, 0
  br i1 %i.l, label %._ZN2v88internal9Assembler8emit_rexINS0_7OperandEEEvT_i.exit_crit_edge, label %bb.d

._ZN2v88internal9Assembler8emit_rexINS0_7OperandEEEvT_i.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler8emit_rexINS0_7OperandEEEvT_i.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %not..i.i)
  br label %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_7OperandE.exit.sink.split.i

_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_7OperandE.exit.sink.split.i: ; preds = %bb.d, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %.sink10.i = phi i8 [ 64, %bb.d ], [ 72, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit ]
  %i.m = or i8 %.sink10.i, %.sroa.2.0.extract.trunc.i.i
  %i.n = load ptr, ptr %i.c, align 8              ; 2 uses
  store i8 %i.m, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  br label %_ZN2v88internal9Assembler8emit_rexINS0_7OperandEEEvT_i.exit

_ZN2v88internal9Assembler8emit_rexINS0_7OperandEEEvT_i.exit: ; preds = %._ZN2v88internal9Assembler8emit_rexINS0_7OperandEEEvT_i.exit_crit_edge, %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_7OperandE.exit.sink.split.i
  %i.p = phi ptr [ %.pre, %._ZN2v88internal9Assembler8emit_rexINS0_7OperandEEEvT_i.exit_crit_edge ], [ %i.o, %_ZN2v88internal9Assembler20emit_optional_rex_32ENS0_7OperandE.exit.sink.split.i ] ; 2 uses
  store i8 -1, ptr %i.p, align 1, !alias.scope !925
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 4 uses
  store ptr %i.q, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %1, ptr %4, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.r, align 8
  %i.s = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.t = lshr i64 %1, 16                          ; 2 uses
  %i.u = trunc i64 %i.t to i8                     ; 2 uses
  %i.v = trunc i64 %i.t to i32
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9Assembler8emit_rexINS0_7OperandEEEvT_i.exit
  %i.w = sext i8 %i.u to i32
  tail call void @_ZN2v88internal9Assembler18emit_label_operandEiPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 0, ptr noundef %2, i32 noundef %i.w)
  br label %_ZN2v88internal9Assembler12emit_operandEiNS0_7OperandE.exit

bb.f:                                             ; preds = %_ZN2v88internal9Assembler8emit_rexINS0_7OperandEEEvT_i.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.x = icmp ult ptr %2, inttoptr (i64 7 to ptr)
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = ptrtoint ptr %i.q to i64                ; 2 uses
  %i.ab = icmp ugt ptr %2, inttoptr (i64 4 to ptr)
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = add nsw i64 %i.s, -2                    ; 2 uses
  %i.ad = add i64 %i.ac, %i.z
  %i.ae = inttoptr i64 %i.ad to ptr
  %.0.copyload.i29.i = load i16, ptr %i.ae, align 1
  %i.af = add i64 %i.ac, %i.aa
  %i.ag = inttoptr i64 %i.af to ptr
  store i16 %.0.copyload.i29.i, ptr %i.ag, align 1
  store i32 %i.v, ptr %i.q, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %2, inttoptr (i64 1 to ptr)
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add nsw i64 %i.s, -2                    ; 2 uses
  %i.ai = add i64 %i.ah, %i.z
  %i.aj = inttoptr i64 %i.ai to ptr
  %.0.copyload.i31.i = load i16, ptr %i.aj, align 1
  %i.ak = add i64 %i.ah, %i.aa
  %i.al = inttoptr i64 %i.ak to ptr
  store i16 %.0.copyload.i31.i, ptr %i.al, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 %i.u, ptr %i.q, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.am = load ptr, ptr %i.c, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.s
  store ptr %i.an, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler12emit_operandEiNS0_7OperandE.exit

_ZN2v88internal9Assembler12emit_operandEiNS0_7OperandE.exit: ; preds = %bb.e, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler4int3Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  store i8 -52, ptr %i.j, align 1, !alias.scope !928
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.k, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.v8::internal::JumpOptimizationInfo::JumpInfo", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 17 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = load i32, ptr %2, align 4                ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %_ZNK2v88internal5Label3posEv.exit, label %bb.f

_ZNK2v88internal5Label3posEv.exit:                ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.l = xor i32 %i.j, -1
  %i.m = load ptr, ptr %i.c, align 8              ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %.neg36 = sub i64 %i.q, %i.p
  %.neg37 = trunc i64 %.neg36 to i32
  %i.r = add i32 %.neg37, %i.l                    ; 3 uses
  %5 = sext i32 %i.r to i64
  %6 = add nsw i64 %5, 126
  %i.s = icmp ult i64 %6, 256
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK2v88internal5Label3posEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.u = load i8, ptr %i.t, align 8, !range !11, !noundef !12
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = trunc i32 %1 to i8
  %i.x = or i8 %i.w, 112
  store i8 %i.x, ptr %i.m, align 1, !alias.scope !951
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.z = trunc i32 %i.r to i8
  %i.aa = add i8 %i.z, -2
  store i8 %i.aa, ptr %i.y, align 1, !alias.scope !952
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.ab, ptr %i.c, align 8
  br label %bb.v

bb.e:                                             ; preds = %bb.c, %_ZNK2v88internal5Label3posEv.exit
  store i8 15, ptr %i.m, align 1, !alias.scope !953
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.ad = trunc i32 %1 to i8
  %i.ae = or i8 %i.ad, -128
  store i8 %i.ae, ptr %i.ac, align 1, !alias.scope !954
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.ag = add nsw i32 %i.r, -6
  store i32 %i.ag, ptr %i.af, align 1, !alias.scope !955
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  store ptr %i.ah, ptr %i.c, align 8
  br label %bb.v

bb.f:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.ai = icmp eq i32 %3, 0
  br i1 %i.ai, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aj = trunc i32 %1 to i8
  %i.ak = or i8 %i.aj, 112
  %i.al = load ptr, ptr %i.c, align 8             ; 2 uses
  store i8 %i.ak, ptr %i.al, align 1, !alias.scope !956
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 3 uses
  store ptr %i.am, ptr %i.c, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.pre38 = ptrtoint ptr %i.am to i64
  %.pre39 = ptrtoint ptr %.pre to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = add nuw i32 %i.ao, 255
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %.neg = sub i64 %i.au, %i.at
  %.neg35 = trunc i64 %.neg to i32
  %i.av = add i32 %i.aq, %.neg35
  %i.aw = trunc i32 %i.av to i8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.pre-phi40 = phi i64 [ %.pre39, %._crit_edge ], [ %i.au, %bb.h ]
  %.pre-phi = phi i64 [ %.pre38, %._crit_edge ], [ %i.at, %bb.h ]
  %.030 = phi i8 [ 0, %._crit_edge ], [ %i.aw, %bb.h ]
  %i.ax = sub i64 %.pre-phi, %.pre-phi40
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.an, align 4
  %i.ba = load ptr, ptr %i.c, align 8             ; 2 uses
  store i8 %.030, ptr %i.ba, align 1, !alias.scope !957
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.c, align 8
  br label %bb.v

bb.j:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bd = load ptr, ptr %i.bc, align 8            ; 5 uses
  %.not = icmp eq ptr %i.bd, null
  br i1 %.not, label %bb.o, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.be = load i32, ptr %i.bd, align 8            ; 2 uses
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 64 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8            ; 2 uses
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 8
  %i.bj = tail call noundef zeroext i1 @_ZN2v88internal9Assembler21is_optimizable_farjmpEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.bh)
  br i1 %i.bj, label %.critedge, label %thread-pre-split

.critedge:                                        ; preds = %bb.l
  %i.bk = trunc i32 %1 to i8
  %i.bl = or i8 %i.bk, 112
  %i.bm = load ptr, ptr %i.c, align 8             ; 2 uses
  store i8 %i.bl, ptr %i.bm, align 1, !alias.scope !958
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  store ptr %i.bn, ptr %i.c, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = trunc i64 %i.bs to i32
  tail call void @_ZN2v88internal9Assembler22record_farjmp_positionEPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %2, i32 noundef %i.bt)
  %i.bu = load ptr, ptr %i.c, align 8             ; 2 uses
  store i8 0, ptr %i.bu, align 1, !alias.scope !959
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bv, ptr %i.c, align 8
  br label %bb.v

thread-pre-split:                                 ; preds = %bb.l
  %.pr = load i32, ptr %i.bd, align 8
  br label %bb.m

bb.m:                                             ; preds = %thread-pre-split, %bb.k
  %i.bw = phi i32 [ %.pr, %thread-pre-split ], [ %i.be, %bb.k ]
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bz = load ptr, ptr %i.c, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32
  store i32 %i.cf, ptr %4, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 2, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.ch, align 4
  call void @_ZNSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 4 dereferenceable(12) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.j
  %i.ci = load i32, ptr %2, align 4
  %i.cj = icmp sgt i32 %i.ci, 0
  %i.ck = load ptr, ptr %i.c, align 8             ; 5 uses
  store i8 15, ptr %i.ck, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cm = trunc i32 %1 to i8
  %i.cn = or i8 %i.cm, -128
  store i8 %i.cn, ptr %i.cl, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 2 ; 4 uses
  br i1 %i.cj, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  store ptr %i.co, ptr %i.c, align 8
  %i.cp = load i32, ptr %2, align 4               ; 4 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cr = xor i32 %i.cp, -1
  br label %_ZNK2v88internal5Label3posEv.exit34

bb.r:                                             ; preds = %bb.p
  %.not.i32 = icmp eq i32 %i.cp, 0
  br i1 %.not.i32, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = add nsw i32 %i.cp, -1
  br label %_ZNK2v88internal5Label3posEv.exit34

bb.t:                                             ; preds = %bb.r
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14) #27
  unreachable

_ZNK2v88internal5Label3posEv.exit34:              ; preds = %bb.q, %bb.s
  %.0.i33 = phi i32 [ %i.cr, %bb.q ], [ %i.cs, %bb.s ]
  store i32 %.0.i33, ptr %i.co, align 1, !alias.scope !960
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 6 ; 2 uses
  store ptr %i.ct, ptr %i.c, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = trunc i64 %i.cy to i32
  %i.da = add i32 %i.cz, -3
  store i32 %i.da, ptr %2, align 4
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE9push_backEOS3_:bb.a
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store ptr %i.f, ptr %i.a, align 8
  br label %_ZNSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8                ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #27
  unreachable

_ZNKSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = sdiv exact i64 %i.j, 12                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 768614336404564650)
  %i.p = select i1 %i.n, i64 768614336404564650, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = mul nuw nsw i64 %i.p, 12
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #29 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #30
  br label %_ZNSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.r, ptr %0, align 8
  store ptr %i.u, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.p
  store ptr %i.y, ptr %i.c, align 8
  br label %_ZNSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler1jENS0_9ConditionEmNS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %1, i64 noundef %2, i8 noundef signext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::RelocInfo", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  store i8 15, ptr %i.j, align 1, !alias.scope !968
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = trunc i32 %1 to i8
  %i.m = or i8 %i.l, -128
  store i8 %i.m, ptr %i.k, align 1, !alias.scope !969
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 3 uses
  store ptr %i.n, ptr %i.c, align 8
  %i.o = and i8 %3, -5
  %i.p = icmp ne i8 %i.o, 9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = load i8, ptr %i.q, align 8, !range !11
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond.i.i, label %bb.c, label %_ZN2v88internal9Assembler15RecordRelocInfoENS0_9RelocInfo4ModeEl.exit

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.t = ptrtoint ptr %i.n to i64
  store i64 %i.t, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %3, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  call void @_ZN2v88internal15RelocInfoWriter5WriteEPKNS0_9RelocInfoE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.pre3 = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler15RecordRelocInfoENS0_9RelocInfo4ModeEl.exit

_ZN2v88internal9Assembler15RecordRelocInfoENS0_9RelocInfo4ModeEl.exit: ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, %bb.c
  %i.w = phi ptr [ %i.n, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit ], [ %.pre3, %bb.c ] ; 2 uses
  %i.x = trunc i64 %2 to i32
  store i32 %i.x, ptr %i.w, align 1, !alias.scope !970
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.y, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler1jENS0_9ConditionENS0_6HandleINS0_4CodeEEENS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %1, ptr %2, i8 noundef signext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::RelocInfo", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  store i8 15, ptr %i.j, align 1, !alias.scope !977
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = trunc i32 %1 to i8
  %i.m = or i8 %i.l, -128
  store i8 %i.m, ptr %i.k, align 1, !alias.scope !978
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 2 uses
  store ptr %i.n, ptr %i.c, align 8
  %i.o = and i8 %3, -5
  %i.p = icmp ne i8 %i.o, 9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = load i8, ptr %i.q, align 8, !range !11
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond.i.i, label %bb.c, label %_ZN2v88internal9Assembler15RecordRelocInfoENS0_9RelocInfo4ModeEl.exit

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.t = ptrtoint ptr %i.n to i64
  store i64 %i.t, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %3, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  call void @_ZN2v88internal15RelocInfoWriter5WriteEPKNS0_9RelocInfoE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN2v88internal9Assembler15RecordRelocInfoENS0_9RelocInfo4ModeEl.exit

_ZN2v88internal9Assembler15RecordRelocInfoENS0_9RelocInfo4ModeEl.exit: ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, %bb.c
  %i.w = call noundef i32 @_ZN2v88internal13AssemblerBase13AddCodeTargetENS0_6HandleINS0_4CodeEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr %2) #26
  %i.x = load ptr, ptr %i.c, align 8              ; 2 uses
  store i32 %i.w, ptr %i.x, align 1, !alias.scope !979
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler7jmp_relEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.a, %bb.b
  %2 = sext i32 %1 to i64
  %3 = add nsw i64 %2, 126
  %i.j = icmp ult i64 %3, 256
  br i1 %i.j, label %bb.c, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit._crit_edge

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit._crit_edge: ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %.pre = load ptr, ptr %i.c, align 8
  br label %bb.e

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.l = load i8, ptr %i.k, align 8, !range !11, !noundef !12
  %i.m = trunc nuw i8 %i.l to i1
  %.pre3 = load ptr, ptr %i.c, align 8            ; 4 uses
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 -21, ptr %.pre3, align 1, !alias.scope !988
  %i.n = getelementptr inbounds nuw i8, ptr %.pre3, i64 1
  %i.o = trunc i32 %1 to i8
  %i.p = add i8 %i.o, -2
  store i8 %i.p, ptr %i.n, align 1, !alias.scope !989
  %i.q = getelementptr inbounds nuw i8, ptr %.pre3, i64 2
  br label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit._crit_edge, %bb.c
  %i.r = phi ptr [ %.pre, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit._crit_edge ], [ %.pre3, %bb.c ] ; 3 uses
  store i8 -23, ptr %i.r, align 1, !alias.scope !990
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = add nsw i32 %1, -5
  store i32 %i.t, ptr %i.s, align 1, !alias.scope !991
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi ptr [ %i.q, %bb.d ], [ %i.u, %bb.e ]
  store ptr %storemerge, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::JumpOptimizationInfo::JumpInfo", align 4 ; 6 uses
  %i.a = load i32, ptr %1, align 4                ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZNK2v88internal5Label3posEv.exit, label %bb.f

_ZNK2v88internal5Label3posEv.exit:                ; preds = %bb.a
  %i.c = xor i32 %i.a, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %.neg28 = sub i64 %i.i, %i.h
  %.neg29 = trunc i64 %.neg28 to i32
  %i.j = add i32 %.neg29, %i.c                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp slt i32 %i.o, 32
  br i1 %i.p, label %bb.b, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i, !prof !10

bb.b:                                             ; preds = %_ZNK2v88internal5Label3posEv.exit
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i: ; preds = %bb.b, %_ZNK2v88internal5Label3posEv.exit
  %4 = sext i32 %i.j to i64
  %5 = add nsw i64 %4, 126
  %i.q = icmp ult i64 %5, 256
  br i1 %i.q, label %bb.c, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit._crit_edge.i

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit._crit_edge.i: ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i
  %.pre.i = load ptr, ptr %i.d, align 8
  br label %bb.e

bb.c:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.s = load i8, ptr %i.r, align 8, !range !11, !noundef !12
  %i.t = trunc nuw i8 %i.s to i1
  %.pre3.i = load ptr, ptr %i.d, align 8          ; 4 uses
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 -21, ptr %.pre3.i, align 1, !alias.scope !1012
  %i.u = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 1
  %i.v = trunc i32 %i.j to i8
  %i.w = add i8 %i.v, -2
  store i8 %i.w, ptr %i.u, align 1, !alias.scope !1013
  %i.x = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 2
  br label %_ZN2v88internal9Assembler7jmp_relEi.exit

bb.e:                                             ; preds = %bb.c, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit._crit_edge.i
  %i.y = phi ptr [ %.pre.i, %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit._crit_edge.i ], [ %.pre3.i, %bb.c ] ; 3 uses
  store i8 -23, ptr %i.y, align 1, !alias.scope !1014
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = add nsw i32 %i.j, -5
  store i32 %i.aa, ptr %i.z, align 1, !alias.scope !1015
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  br label %_ZN2v88internal9Assembler7jmp_relEi.exit

_ZN2v88internal9Assembler7jmp_relEi.exit:         ; preds = %bb.d, %bb.e
  %storemerge.i = phi ptr [ %i.x, %bb.d ], [ %i.ab, %bb.e ]
  store ptr %storemerge.i, ptr %i.d, align 8
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = icmp slt i32 %i.aj, 32
  br i1 %i.ak, label %bb.g, label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit, !prof !10

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal9Assembler10GrowBufferEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
  br label %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit

_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit: ; preds = %bb.f, %bb.g
  %i.al = icmp eq i32 %2, 0
  br i1 %i.al, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.am = load ptr, ptr %i.ae, align 8            ; 2 uses
  store i8 -21, ptr %i.am, align 1, !alias.scope !1016
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 3 uses
  store ptr %i.an, ptr %i.ae, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.pre30 = ptrtoint ptr %i.an to i64
  %.pre31 = ptrtoint ptr %.pre to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = add nuw i32 %i.ap, 255
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %.neg = sub i64 %i.av, %i.au
  %.neg27 = trunc i64 %.neg to i32
  %i.aw = add i32 %i.ar, %.neg27
  %i.ax = trunc i32 %i.aw to i8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %.pre-phi32 = phi i64 [ %.pre31, %._crit_edge ], [ %i.av, %bb.i ]
  %.pre-phi = phi i64 [ %.pre30, %._crit_edge ], [ %i.au, %bb.i ]
  %.022 = phi i8 [ 0, %._crit_edge ], [ %i.ax, %bb.i ]
  %i.ay = sub i64 %.pre-phi, %.pre-phi32
  %i.az = trunc i64 %i.ay to i32
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ao, align 4
  %i.bb = load ptr, ptr %i.ae, align 8            ; 2 uses
  store i8 %.022, ptr %i.bb, align 1, !alias.scope !1017
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bc, ptr %i.ae, align 8
  br label %bb.w

bb.k:                                             ; preds = %_ZN2v88internal11EnsureSpaceC2EPNS0_9AssemblerE.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.be = load ptr, ptr %i.bd, align 8            ; 5 uses
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %bb.p, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.bf = load i32, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 8
  %i.bk = tail call noundef zeroext i1 @_ZN2v88internal9Assembler21is_optimizable_farjmpEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.bi)
  br i1 %i.bk, label %.critedge, label %thread-pre-split

.critedge:                                        ; preds = %bb.m
  %i.bl = load ptr, ptr %i.ae, align 8            ; 2 uses
  store i8 -21, ptr %i.bl, align 1, !alias.scope !1018
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  store ptr %i.bm, ptr %i.ae, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i32
  tail call void @_ZN2v88internal9Assembler22record_farjmp_positionEPNS0_5LabelEi(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %1, i32 noundef %i.bs)
  %i.bt = load ptr, ptr %i.ae, align 8            ; 2 uses
  store i8 0, ptr %i.bt, align 1, !alias.scope !1019
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store ptr %i.bu, ptr %i.ae, align 8
  br label %bb.w

thread-pre-split:                                 ; preds = %bb.m
  %.pr = load i32, ptr %i.be, align 8
  br label %bb.n

bb.n:                                             ; preds = %thread-pre-split, %bb.l
  %i.bv = phi i32 [ %.pr, %thread-pre-split ], [ %i.bf, %bb.l ]
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.by = load ptr, ptr %i.ae, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %3, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.cg, align 4
  call void @_ZNSt6vectorIN2v88internal20JumpOptimizationInfo8JumpInfoESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 4 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.k
  %i.ch = load i32, ptr %1, align 4
  %i.ci = icmp sgt i32 %i.ch, 0
  %i.cj = load ptr, ptr %i.ae, align 8            ; 4 uses
  store i8 -23, ptr %i.cj, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 4 uses
  br i1 %i.ci, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  store ptr %i.ck, ptr %i.ae, align 8
  %i.cl = load i32, ptr %1, align 4               ; 4 uses
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cn = xor i32 %i.cl, -1
  br label %_ZNK2v88internal5Label3posEv.exit26

bb.s:                                             ; preds = %bb.q
  %.not.i24 = icmp eq i32 %i.cl, 0
  br i1 %.not.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = add nsw i32 %i.cl, -1
  br label %_ZNK2v88internal5Label3posEv.exit26

bb.u:                                             ; preds = %bb.s
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14) #27
  unreachable

_ZNK2v88internal5Label3posEv.exit26:              ; preds = %bb.r, %bb.t
  %.0.i25 = phi i32 [ %i.cn, %bb.r ], [ %i.co, %bb.t ]
  store i32 %.0.i25, ptr %i.ck, align 1, !alias.scope !1020
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 5 ; 2 uses
  store ptr %i.cp, ptr %i.ae, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_4
