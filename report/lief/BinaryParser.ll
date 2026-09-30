Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/BinaryParser?download=true
inline.NumInlined: 15251
inline.NumDeleted: 5384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE:bb.a
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZSt9has_facetIN3fmt3v1212format_facetISt6localeEEEbRKS3_.exit.thread
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !253
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #29, !inline_history !462
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZSt9has_facetIN3fmt3v1212format_facetISt6localeEEEbRKS3_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !252 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !253
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #29, !inline_history !462
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !252 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZN3fmt3v1212format_facetISt6localeED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !253
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #29, !inline_history !462
  br label %_ZN3fmt3v1212format_facetISt6localeED2Ev.exit

_ZN3fmt3v1212format_facetISt6localeED2Ev.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(112) %5) #26, !inline_history !462
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1212format_facetISt6localeED2Ev.exit, %_ZSt9use_facetIN3fmt3v1212format_facetISt6localeEEERKT_RKS3_.exit
  %.0 = phi i1 [ %i.v, %_ZSt9use_facetIN3fmt3v1212format_facetISt6localeEEERKT_RKS3_.exit ], [ %i.z, %_ZN3fmt3v1212format_facetISt6localeED2Ev.exit ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i1 %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #19 comdat {
bb.a:
  %3 = alloca %class.anon.813, align 1            ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 10 uses
  %.sroa.039.0.extract.trunc.i = trunc i64 %1 to i32 ; 7 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %1, 32    ; 4 uses
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = load i32, ptr %2, align 4, !tbaa !442    ; 10 uses
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %bb.b [
    i8 7, label %bb.j
    i8 6, label %.split.us.i10
    i8 4, label %bb.e
    i8 5, label %.split.us.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i32 %.sroa.039.0.extract.trunc.i, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.f, %.lr.ph.i ], [ 32, %bb.b ]
  %.01819.i = phi i32 [ %i.n, %.lr.ph.i ], [ %.sroa.039.0.extract.trunc.i, %bb.b ] ; 3 uses
  %i.f = add i32 %.020.i, -2                      ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = urem i32 %.01819.i, 100
  %i.j = shl nuw nsw i32 %i.i, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2
  store i16 %i.m, ptr %i.h, align 2
  %i.n = udiv i32 %.01819.i, 100                  ; 2 uses
  %i.o = icmp ugt i32 %.01819.i, 9999
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !11

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i32 [ %.sroa.039.0.extract.trunc.i, %bb.b ], [ %i.n, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 32, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.p = icmp samesign ugt i32 %.018.lcssa.i, 9
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.q = add i32 %.0.lcssa.i, -2
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.t = shl nuw nsw i32 %.018.lcssa.i, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  store i16 %i.w, ptr %i.s, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = trunc nuw nsw i32 %.018.lcssa.i to i8
  %i.y = or disjoint i8 %i.x, 48
  %i.z = add i32 %.0.lcssa.i, -1
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aa
  store i8 %i.y, ptr %i.ab, align 1, !tbaa !253
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.e:                                             ; preds = %bb.a
  %i.ac = and i32 %i.b, 4096
  %.not36 = icmp eq i32 %i.ac, 0                  ; 2 uses
  %.str.49..str.50.i = select i1 %.not36, ptr @.str.50, ptr @.str.49
  br label %.split.i

.split.i:                                         ; preds = %.split.i, %bb.e
  %.012.i = phi i32 [ %i.ah, %.split.i ], [ %.sroa.039.0.extract.trunc.i, %bb.e ] ; 2 uses
  %.0.i5.idx = phi i64 [ %.0.i5.add, %.split.i ], [ 32, %bb.e ]
  %i.ad = and i32 %.012.i, 15
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.str.49..str.50.i, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !253
  %.0.i5.add = add nsw i64 %.0.i5.idx, -1         ; 4 uses
  %.ptr41 = getelementptr inbounds i8, ptr %i.a, i64 %.0.i5.add
  store i8 %i.ag, ptr %.ptr41, align 1, !tbaa !253
  %i.ah = lshr i32 %.012.i, 4                     ; 2 uses
  %.not.i6 = icmp eq i32 %i.ah, 0
  br i1 %.not.i6, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit, label %.split.i, !llvm.loop !20

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit: ; preds = %.split.i
  %i.ai = and i32 %i.b, 8192
  %.not37 = icmp eq i32 %i.ai, 0
  br i1 %.not37, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit
  %i.aj = select i1 %.not36, i32 30768, i32 22576 ; 2 uses
  %.not.i7 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = select i1 %.not.i7, i32 %i.aj, i32 %i.ak
  %i.am = or i32 %i.al, %.sroa.2.0.extract.trunc.i
  %i.an = add i32 %i.am, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

.split.us.i:                                      ; preds = %bb.a, %.split.us.i
  %.012.us.i = phi i32 [ %i.ar, %.split.us.i ], [ %.sroa.039.0.extract.trunc.i, %bb.a ] ; 2 uses
  %.0.us.i.idx = phi i64 [ %.0.us.i.add, %.split.us.i ], [ 32, %bb.a ] ; 2 uses
  %i.ao = trunc i32 %.012.us.i to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = or disjoint i8 %i.ap, 48
  %.0.us.i.add = add nsw i64 %.0.us.i.idx, -1     ; 5 uses
  %.ptr40 = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i.add
  store i8 %i.aq, ptr %.ptr40, align 1, !tbaa !253
  %i.ar = lshr i32 %.012.us.i, 3                  ; 2 uses
  %.not.us.i = icmp eq i32 %i.ar, 0
  br i1 %.not.us.i, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8, label %.split.us.i, !llvm.loop !20

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8: ; preds = %.split.us.i
  %i.as = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8
  %gepdiff = sub nsw i64 33, %.0.us.i.idx
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !444
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp sge i64 %gepdiff, %i.av
  %i.ax = icmp ne i32 %.sroa.039.0.extract.trunc.i, 0
  %or.cond.i = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond.i, label %bb.h, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.h:                                             ; preds = %bb.g
  %.not.i9 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %i.ay = select i1 %.not.i9, i32 48, i32 12288
  %i.az = or i32 %i.ay, %.sroa.2.0.extract.trunc.i
  %i.ba = add i32 %i.az, 16777216
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

.split.us.i10:                                    ; preds = %bb.a, %.split.us.i10
  %.012.us.i11 = phi i32 [ %i.be, %.split.us.i10 ], [ %.sroa.039.0.extract.trunc.i, %bb.a ] ; 2 uses
  %.0.us.i12.idx = phi i64 [ %.0.us.i12.add, %.split.us.i10 ], [ 32, %bb.a ]
  %i.bb = trunc i32 %.012.us.i11 to i8
  %i.bc = and i8 %i.bb, 1
  %i.bd = or disjoint i8 %i.bc, 48
  %.0.us.i12.add = add nsw i64 %.0.us.i12.idx, -1 ; 4 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i12.add
  store i8 %i.bd, ptr %.ptr, align 1, !tbaa !253
  %i.be = lshr i32 %.012.us.i11, 1                ; 2 uses
  %.not.us.i13 = icmp eq i32 %i.be, 0
  br i1 %.not.us.i13, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14, label %.split.us.i10, !llvm.loop !20

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14: ; preds = %.split.us.i10
  %i.bf = and i32 %i.b, 8192
  %.not38 = icmp eq i32 %i.bf, 0
  br i1 %.not38, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14
  %4 = and i32 %i.b, 4096
  %.not39 = icmp eq i32 %4, 0
  %5 = select i1 %.not39, i32 25136, i32 16944    ; 2 uses
  %.not.i15 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %i.bg = shl nuw nsw i32 %5, 8
  %i.bh = select i1 %.not.i15, i32 %5, i32 %i.bg
  %i.bi = or i32 %i.bh, %.sroa.2.0.extract.trunc.i
  %i.bj = add i32 %i.bi, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %bb.a
  %i.bk = trunc i64 %1 to i8
  %i.bl = and i32 %i.b, 7
  %i.bm = icmp eq i32 %i.bl, 1
  %i.bn = zext i1 %i.bm to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i8 %i.bn, ptr %3, align 1, !tbaa !464
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.bk, ptr %i.bo, align 1, !tbaa !465
  %i.bp = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit: ; preds = %bb.d, %bb.c, %bb.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14, %bb.h, %bb.g, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8, %bb.f, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit
  %.0 = phi i32 [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14 ], [ %i.an, %bb.f ], [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %i.ba, %bb.h ], [ %.sroa.2.0.extract.trunc.i, %bb.g ], [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8 ], [ %i.bj, %bb.i ], [ %.sroa.2.0.extract.trunc.i, %bb.c ], [ %.sroa.2.0.extract.trunc.i, %bb.d ] ; 3 uses
  %.0.i.idx = phi i64 [ %.0.us.i12.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14 ], [ %.0.i5.add, %bb.f ], [ %.0.i5.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %.0.us.i.add, %bb.h ], [ %.0.us.i.add, %bb.g ], [ %.0.us.i.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8 ], [ %.0.us.i12.add, %bb.i ], [ %i.r, %bb.c ], [ %i.aa, %bb.d ] ; 5 uses
  %i.bq = trunc i64 %.0.i.idx to i32
  %i.br = sub i32 32, %i.bq                       ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !466 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !444 ; 4 uses
  %i.bw = add nsw i32 %i.bv, 1
  %i.bx = or i32 %i.bw, %i.bt
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = lshr i32 %.0, 24                        ; 2 uses
  %i.ca = add i32 %i.br, %i.bz                    ; 4 uses
  br i1 %i.by, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !429
  %i.ce = add i64 %i.cd, %i.cb                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !427
  %i.ch = icmp ugt i64 %i.ce, %i.cg
  br i1 %i.ch, label %bb.l, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !440
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ce) #26, !inline_history !21
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.k, %bb.l
  %i.ck = and i32 %.0, 16777215                   ; 2 uses
  %.not.i48 = icmp eq i32 %i.ck, 0
  br i1 %.not.i48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.p

._crit_edge:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.not31.i.i = icmp eq i64 %.0.i.idx, 32
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i = load i64, ptr %i.cc, align 8, !tbaa !429
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.cn = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.da, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ %.0.i.idx, %.lr.ph34.i.i ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.ptr = getelementptr i8, ptr %i.a, i64 %.02732.i.i.idx
  %i.co = load i64, ptr %i.cf, align 8, !tbaa !427
  %i.cp = sub i64 %i.co, %i.cn
  %gepdiff52 = sub nsw i64 32, %.02732.i.i.idx    ; 4 uses
  %i.cq = icmp ult i64 %i.cp, %gepdiff52
  br i1 %i.cq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !440
  %i.cs = add i64 %gepdiff52, %i.cn
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cs) #26, !inline_history !22
  %i.ct = load i64, ptr %i.cc, align 8, !tbaa !429 ; 2 uses
  %i.cu = load i64, ptr %i.cf, align 8, !tbaa !427
  %i.cv = sub i64 %i.cu, %i.ct
  %i.cw = tail call i64 @llvm.umin.i64(i64 %gepdiff52, i64 %i.cv)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.026.i.i = phi i64 [ %i.ct, %bb.n ], [ %i.cn, %bb.m ] ; 2 uses
  %.025.i.i = phi i64 [ %i.cw, %bb.n ], [ %gepdiff52, %bb.m ] ; 4 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %i.cx = load ptr, ptr %0, align 8, !tbaa !428
  %i.cy = getelementptr i8, ptr %i.cx, i64 %.026.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr align 1 %.02732.i.i.ptr, i64 %.025.i.i, i1 false), !tbaa !253
  %.pre37.i.i = load i64, ptr %i.cc, align 8, !tbaa !429
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.preheader, %bb.o
  %i.cz = phi i64 [ %.pre37.i.i, %.lr.ph.i.i.preheader ], [ %.026.i.i, %bb.o ]
  %i.da = add i64 %i.cz, %.025.i.i                ; 2 uses
  store i64 %i.da, ptr %i.cc, align 8, !tbaa !429
  %.02732.i.i.add = add nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 32
  br i1 %.not.i.i, label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %bb.m, !llvm.loop !17

bb.p:                                             ; preds = %.lr.ph, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.042.i49 = phi i32 [ %i.ck, %.lr.ph ], [ %i.dk, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ] ; 2 uses
  %i.db = trunc i32 %.042.i49 to i8
  %i.dc = load i64, ptr %i.cc, align 8, !tbaa !429 ; 2 uses
  %i.dd = add i64 %i.dc, 1                        ; 3 uses
  %i.de = load i64, ptr %i.cf, align 8, !tbaa !427
  %i.df = icmp ugt i64 %i.dd, %i.de
  br i1 %i.df, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.q:                                             ; preds = %bb.p
  %i.dg = load ptr, ptr %i.cl, align 8, !tbaa !440
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dd) #26, !inline_history !15
  %.pre.i.i16 = load i64, ptr %i.cc, align 8, !tbaa !429 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.p, %bb.q
  %.pre-phi.i.i = phi i64 [ %i.dd, %bb.p ], [ %.pre2.i.i, %bb.q ]
  %i.dh = phi i64 [ %i.dc, %bb.p ], [ %.pre.i.i16, %bb.q ]
  %i.di = load ptr, ptr %0, align 8, !tbaa !428
  store i64 %.pre-phi.i.i, ptr %i.cc, align 8, !tbaa !429
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh
  store i8 %i.db, ptr %i.dj, align 1, !tbaa !253
  %i.dk = lshr i32 %.042.i49, 8                   ; 2 uses
  %.not.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i, label %._crit_edge, label %bb.p, !llvm.loop !1147

bb.r:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit
  %i.dl = and i32 %i.b, 56
  %i.dm = icmp eq i32 %i.dl, 32
  br i1 %i.dm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %i.bt, i32 %i.ca)
  %spec.select35 = tail call i32 @llvm.umax.i32(i32 %i.bt, i32 %i.ca)
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.t:                                             ; preds = %bb.r
  %i.dn = icmp sgt i32 %i.bv, %i.br
  br i1 %i.dn, label %bb.u, label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.u:                                             ; preds = %bb.t
  %i.do = add i32 %i.bv, %i.bz
  %i.dp = sub nsw i32 %i.bv, %i.br
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit: ; preds = %bb.s, %bb.t, %bb.u
  %.sroa.626.0 = phi i32 [ 0, %bb.t ], [ %spec.select, %bb.s ], [ %i.dp, %bb.u ] ; 2 uses
  %.sroa.025.0 = phi i32 [ %i.ca, %bb.t ], [ %spec.select35, %bb.s ], [ %i.do, %bb.u ]
  %i.dq = zext i32 %.sroa.025.0 to i64            ; 2 uses
  %i.dr = zext i32 %i.bt to i64
  %i.ds = tail call i64 @llvm.usub.sat.i64(i64 %i.dr, i64 %i.dq) ; 4 uses
  %i.dt = lshr i32 %i.b, 3
  %i.du = and i32 %i.dt, 7
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr @.str.52, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !253
  %i.dy = sext i8 %i.dx to i64
  %i.dz = and i64 %i.dy, 4294967295
  %i.ea = lshr i64 %i.ds, %i.dz                   ; 4 uses
  %i.eb = sub nsw i64 %i.ds, %i.ea
  %i.ec = lshr i32 %i.b, 15
  %i.ed = and i32 %i.ec, 7
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = mul nuw nsw i64 %i.ds, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !429
  %i.ei = add i64 %i.eh, %i.dq
  %i.ej = add i64 %i.ei, %i.ef                    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !427
  %i.em = icmp ugt i64 %i.ej, %i.el
  br i1 %i.em, label %bb.v, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.v:                                             ; preds = %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !440
  tail call void %i.eo(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ej) #26, !inline_history !1148
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.v, %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %.not.i.i17 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i17, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.ep = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.ea, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %.sroa.09.0.i.i = phi ptr [ %i.ep, %bb.w ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ] ; 17 uses
  %i.eq = and i32 %.0, 16777215                   ; 2 uses
  %.not8.i = icmp eq i32 %i.eq, 0
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail10loc_writerIcEclIoTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEbS6_:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !342
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !252 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !343 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !118
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %bb.e, label %._crit_edge.i.i2

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !252
  %i.af = load i64, ptr %i.a, align 8, !tbaa !118
  store i64 %i.af, ptr %i.z, align 8, !tbaa !253
  br label %._crit_edge.i.i2

._crit_edge.i.i2:                                 ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ag = phi ptr [ %i.ae, %bb.e ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.ac, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit3
  ]

bb.f:                                             ; preds = %._crit_edge.i.i2
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !253
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !253
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit3

bb.g:                                             ; preds = %._crit_edge.i.i2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit3: ; preds = %._crit_edge.i.i2, %bb.f, %bb.g
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !343
  %i.ak = load ptr, ptr %4, align 8, !tbaa !252
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !342
  %i.an = load ptr, ptr %3, align 8, !tbaa !252   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.l
  br i1 %i.ao, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit3
  %i.ap = load i64, ptr %i.v, align 8, !tbaa !343 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit3
  store ptr %i.an, ptr %2, align 8, !tbaa !252
  %i.as = load i64, ptr %i.l, align 8, !tbaa !253
  store i64 %i.as, ptr %i.am, align 8, !tbaa !253
  %.pre = load i64, ptr %i.v, align 8, !tbaa !343
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %i.at = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ap, %bb.h ]
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !343
  store ptr %i.l, ptr %3, align 8, !tbaa !252
  store i64 0, ptr %i.v, align 8, !tbaa !343
  store i8 0, ptr %i.l, align 8, !tbaa !253
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !342
  %i.ax = load ptr, ptr %4, align 8, !tbaa !252   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.z
  br i1 %i.ay, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.az = load i64, ptr %i.aj, align 8, !tbaa !343 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.bb, i1 false)
  br label %_ZN3fmt3v126detail14digit_groupingIcEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !252
  %i.bc = load i64, ptr %i.z, align 8, !tbaa !253
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !253
  %.pre8 = load i64, ptr %i.aj, align 8, !tbaa !343
  br label %_ZN3fmt3v126detail14digit_groupingIcEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

_ZN3fmt3v126detail14digit_groupingIcEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i
  %i.bd = phi i64 [ %i.az, %bb.i ], [ %.pre8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !343
  store ptr %i.z, ptr %4, align 8, !tbaa !252
  store i64 0, ptr %i.aj, align 8, !tbaa !343
  store i8 0, ptr %i.z, align 8, !tbaa !253
  %i.bf = call ptr @_ZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE(ptr %.sroa.01.0.copyload, i128 noundef %1, i32 noundef %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  %i.bg = load ptr, ptr %i.av, align 8, !tbaa !252 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.aw
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN3fmt3v126detail14digit_groupingIcEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit
  %i.bi = load i64, ptr %i.aw, align 8, !tbaa !253
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN3fmt3v126detail14digit_groupingIcEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bk = load ptr, ptr %2, align 8, !tbaa !252   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.am
  br i1 %i.bl, label %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bm = load i64, ptr %i.am, align 8, !tbaa !253
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #29
  br label %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit

_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bo = load ptr, ptr %4, align 8, !tbaa !252   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.z
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit
  %i.bq = load i64, ptr %i.z, align 8, !tbaa !253
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.bs = load ptr, ptr %3, align 8, !tbaa !252   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.l
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = load i64, ptr %i.l, align 8, !tbaa !253
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE(ptr %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %6 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %7 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %8 = alloca %class.anon.813, align 1            ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.fmt::v12::basic_memory_buffer.804", align 8 ; 13 uses
  %10 = alloca %class.anon.806, align 8           ; 6 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.d, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.c, align 8, !tbaa !440
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 5 uses
  store ptr %i.e, ptr %9, align 8, !tbaa !428
  store i64 500, ptr %i.b, align 8, !tbaa !427
  %i.f = load i32, ptr %3, align 4, !tbaa !442    ; 8 uses
  %i.g = trunc i32 %i.f to i8
  %i.h = and i8 %i.g, 7
  switch i8 %i.h, label %bb.b [
    i8 7, label %bb.q
    i8 6, label %bb.l
    i8 4, label %bb.c
    i8 5, label %.preheader
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = or i64 %1, 1
  %i.j = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = xor i64 %i.j, 63
  %i.l = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !253   ; 2 uses
  %i.n = zext i8 %i.m to i32
  %i.o = zext i8 %i.m to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !118
  %i.r = icmp ult i64 %1, %i.q
  %.neg.i.i = sext i1 %i.r to i32
  %i.s = add nsw i32 %.neg.i.i, %i.n              ; 2 uses
  %i.t = call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %9, i64 noundef %1, i32 noundef %i.s) ; 0 uses
  br label %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit

bb.c:                                             ; preds = %bb.a
  %i.u = and i32 %i.f, 8192
  %.not81 = icmp eq i32 %i.u, 0
  br i1 %.not81, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %11 = and i32 %i.f, 4096
  %.not82 = icmp eq i32 %11, 0
  %12 = select i1 %.not82, i32 30768, i32 22576   ; 2 uses
  %.not.i = icmp eq i32 %2, 0
  %i.v = shl nuw nsw i32 %12, 8
  %i.w = select i1 %.not.i, i32 %12, i32 %i.v
  %i.x = or i32 %i.w, %2
  %i.y = add i32 %i.x, 33554432                   ; 2 uses
  store i32 %i.y, ptr %i.a, align 4, !tbaa !119
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = phi i32 [ %i.y, %bb.d ], [ %2, %bb.c ]
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.03.i.i = phi i64 [ %1, %bb.e ], [ %i.ab, %bb.f ]
  %.0.i.i = phi i32 [ 0, %bb.e ], [ %i.aa, %bb.f ] ; 2 uses
  %i.aa = add nuw nsw i32 %.0.i.i, 1              ; 3 uses
  %i.ab = lshr i64 %.03.i.i, 4                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit, label %bb.f, !llvm.loop !13

_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit: ; preds = %bb.f
  %i.ac = and i32 %i.f, 4096
  %.not83 = icmp eq i32 %i.ac, 0
  %i.ad = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.ae = icmp samesign ugt i32 %.0.i.i, 499
  br i1 %i.ae, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 750) ; 2 uses
  %i.af = call noalias ptr @malloc(i64 noundef %spec.select.i) #31 ; 3 uses
  %.not.i.i112 = icmp eq ptr %i.af, null
  br i1 %.not.i.i112, label %bb.g, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

bb.g:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %7, align 8, !tbaa !117
  %i.ag = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.40, i32 noundef 752, ptr noundef %i.ag) #32
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i
  store ptr %i.af, ptr %9, align 8, !tbaa !428
  store i64 %spec.select.i, ptr %i.b, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread: ; preds = %_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i
  %i.ah = phi ptr [ %i.af, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i ], [ %i.e, %_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit ]
  store i64 %i.ad, ptr %i.d, align 8, !tbaa !429
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ad
  %.str.49..str.50.i.i.i = select i1 %.not83, ptr @.str.50, ptr @.str.49
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.split.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread
  %.012.i.i.i = phi i64 [ %i.an, %.split.i.i.i ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.am, %.split.i.i.i ], [ %i.ai, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread ]
  %i.aj = and i64 %.012.i.i.i, 15
  %i.ak = getelementptr inbounds nuw i8, ptr %.str.49..str.50.i.i.i, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !253
  %i.am = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -1 ; 2 uses
  store i8 %i.al, ptr %i.am, align 1, !tbaa !253
  %i.an = lshr i64 %.012.i.i.i, 4                 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit, label %.split.i.i.i, !llvm.loop !24

.preheader:                                       ; preds = %bb.a, %.preheader
  %.03.i.i38 = phi i64 [ %i.ap, %.preheader ], [ %1, %bb.a ]
  %.0.i.i39 = phi i32 [ %i.ao, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.ao = add nuw nsw i32 %.0.i.i39, 1            ; 4 uses
  %i.ap = lshr i64 %.03.i.i38, 3                  ; 2 uses
  %.not.i.i40 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i40, label %_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit, label %.preheader, !llvm.loop !1166

_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit: ; preds = %.preheader
  %i.aq = and i32 %i.f, 8192
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !444
  %i.at = icmp sle i32 %i.as, %i.ao
  %i.au = icmp ne i64 %1, 0
  %or.cond = and i1 %i.au, %i.at
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i41 = icmp eq i32 %2, 0
  %i.av = select i1 %.not.i41, i32 48, i32 12288
  %i.aw = or i32 %i.av, %2
  %i.ax = add i32 %i.aw, 16777216                 ; 2 uses
  store i32 %i.ax, ptr %i.a, align 4, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit
  %i.ay = phi i32 [ %i.ax, %bb.i ], [ %2, %bb.h ], [ %2, %_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit ]
  %i.az = zext nneg i32 %i.ao to i64              ; 3 uses
  %i.ba = icmp samesign ugt i32 %.0.i.i39, 499
  br i1 %i.ba, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i48, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i48: ; preds = %bb.j
  %spec.select.i114 = call i64 @llvm.umax.i64(i64 %i.az, i64 750) ; 2 uses
  %i.bb = call noalias ptr @malloc(i64 noundef %spec.select.i114) #31 ; 3 uses
  %.not.i.i115 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i115, label %bb.k, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42

bb.k:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i48
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %6, align 8, !tbaa !117
  %i.bc = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.40, i32 noundef 752, ptr noundef %i.bc) #32
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i48
  store ptr %i.bb, ptr %9, align 8, !tbaa !428
  store i64 %spec.select.i114, ptr %i.b, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42.thread: ; preds = %bb.j, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42
  %i.bd = phi ptr [ %i.bb, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42 ], [ %i.e, %bb.j ]
  store i64 %i.az, ptr %i.d, align 8, !tbaa !429
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.az
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.split.us.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42.thread
  %.012.us.i.i.i = phi i64 [ %i.bj, %.split.us.i.i.i ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42.thread ] ; 2 uses
  %.0.us.i.i.i = phi ptr [ %i.bi, %.split.us.i.i.i ], [ %i.be, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42.thread ]
  %i.bf = trunc i64 %.012.us.i.i.i to i8
  %i.bg = and i8 %i.bf, 7
  %i.bh = or disjoint i8 %i.bg, 48
  %i.bi = getelementptr inbounds i8, ptr %.0.us.i.i.i, i64 -1 ; 2 uses
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !253
  %i.bj = lshr i64 %.012.us.i.i.i, 3              ; 2 uses
  %.not.us.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.us.i.i.i, label %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit, label %.split.us.i.i.i, !llvm.loop !24

bb.l:                                             ; preds = %bb.a
  %i.bk = and i32 %i.f, 8192
  %.not84 = icmp eq i32 %i.bk, 0
  br i1 %.not84, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %13 = and i32 %i.f, 4096
  %.not85 = icmp eq i32 %13, 0
  %14 = select i1 %.not85, i32 25136, i32 16944   ; 2 uses
  %.not.i53 = icmp eq i32 %2, 0
  %i.bl = shl nuw nsw i32 %14, 8
  %i.bm = select i1 %.not.i53, i32 %14, i32 %i.bl
  %i.bn = or i32 %i.bm, %2
  %i.bo = add i32 %i.bn, 33554432                 ; 2 uses
  store i32 %i.bo, ptr %i.a, align 4, !tbaa !119
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bp = phi i32 [ %i.bo, %bb.m ], [ %2, %bb.l ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.03.i.i54 = phi i64 [ %1, %bb.n ], [ %i.br, %bb.o ]
  %.0.i.i55 = phi i32 [ 0, %bb.n ], [ %i.bq, %bb.o ] ; 2 uses
  %i.bq = add nuw nsw i32 %.0.i.i55, 1            ; 3 uses
  %i.br = lshr i64 %.03.i.i54, 1                  ; 2 uses
  %.not.i.i56 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i56, label %_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit, label %bb.o, !llvm.loop !1167

_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit: ; preds = %bb.o
  %i.bs = zext nneg i32 %i.bq to i64              ; 3 uses
  %i.bt = icmp samesign ugt i32 %.0.i.i55, 499
  br i1 %i.bt, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i71, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i71: ; preds = %_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit
  %spec.select.i119 = call i64 @llvm.umax.i64(i64 %i.bs, i64 750) ; 2 uses
  %i.bu = call noalias ptr @malloc(i64 noundef %spec.select.i119) #31 ; 3 uses
  %.not.i.i120 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i120, label %bb.p, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57

bb.p:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i71
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %5, align 8, !tbaa !117
  %i.bv = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.40, i32 noundef 752, ptr noundef %i.bv) #32
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i71
  store ptr %i.bu, ptr %9, align 8, !tbaa !428
  store i64 %spec.select.i119, ptr %i.b, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57.thread: ; preds = %_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57
  %i.bw = phi ptr [ %i.bu, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57 ], [ %i.e, %_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit ]
  store i64 %i.bs, ptr %i.d, align 8, !tbaa !429
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bs
  br label %.split.us.i.i.i60

.split.us.i.i.i60:                                ; preds = %.split.us.i.i.i60, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57.thread
  %.012.us.i.i.i61 = phi i64 [ %i.cc, %.split.us.i.i.i60 ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57.thread ] ; 2 uses
  %.0.us.i.i.i62 = phi ptr [ %i.cb, %.split.us.i.i.i60 ], [ %i.bx, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57.thread ]
  %i.by = trunc i64 %.012.us.i.i.i61 to i8
  %i.bz = and i8 %i.by, 1
  %i.ca = or disjoint i8 %i.bz, 48
  %i.cb = getelementptr inbounds i8, ptr %.0.us.i.i.i62, i64 -1 ; 2 uses
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !253
  %i.cc = lshr i64 %.012.us.i.i.i61, 1            ; 2 uses
  %.not.us.i.i.i63 = icmp eq i64 %i.cc, 0
  br i1 %.not.us.i.i.i63, label %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit, label %.split.us.i.i.i60, !llvm.loop !24

bb.q:                                             ; preds = %bb.a
  %i.cd = trunc i64 %1 to i8
  %i.ce = and i32 %i.f, 7
  %i.cf = icmp eq i32 %i.ce, 1
  %i.cg = zext i1 %i.cf to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i8 %i.cg, ptr %8, align 1, !tbaa !464
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 1
  store i8 %i.cd, ptr %i.ch, align 1, !tbaa !465
  %i.ci = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.v

_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit: ; preds = %.split.us.i.i.i, %.split.i.i.i, %.split.us.i.i.i60, %bb.b
  %i.cj = phi i32 [ %2, %bb.b ], [ %i.bp, %.split.us.i.i.i60 ], [ %i.z, %.split.i.i.i ], [ %i.ay, %.split.us.i.i.i ]
  %.0 = phi i32 [ %i.s, %bb.b ], [ %i.bq, %.split.us.i.i.i60 ], [ %i.aa, %.split.i.i.i ], [ %i.ao, %.split.us.i.i.i ] ; 2 uses
  %i.ck = lshr i32 %i.cj, 24
  %i.cl = add i32 %i.ck, %.0
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !343
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit
  %i.cp = load ptr, ptr %4, align 8, !tbaa !252   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !343
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cr ; 3 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 -1
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %.lr.ph.i
  %.08.i = phi i32 [ 0, %.lr.ph.i ], [ %i.db, %bb.u ] ; 3 uses
  %.sroa.0.07.i = phi ptr [ %i.cp, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.u ] ; 3 uses
  %.sroa.5.06.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cz, %bb.u ]
  %i.cu = icmp eq ptr %.sroa.0.07.i, %i.cs
  br i1 %i.cu, label %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i, label %bb.s

._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i: ; preds = %bb.r
  %.sink.i.pre.i = load i8, ptr %i.ct, align 1, !tbaa !253
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

bb.s:                                             ; preds = %bb.r
  %i.cv = load i8, ptr %.sroa.0.07.i, align 1, !tbaa !253 ; 2 uses
  %i.cw = add i8 %i.cv, -127
  %or.cond.i.i = icmp ult i8 %i.cw, -126
  br i1 %or.cond.i.i, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 1
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i: ; preds = %bb.t, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i
  %.sink.i.i = phi i8 [ %i.cv, %bb.t ], [ %.sink.i.pre.i, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %.sroa.0.1.i = phi ptr [ %i.cx, %bb.t ], [ %i.cs, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %i.cy = sext i8 %.sink.i.i to i32
  %i.cz = add nsw i32 %.sroa.5.06.i, %i.cy        ; 2 uses
  %i.da = icmp sgt i32 %.0, %i.cz
  br i1 %i.da, label %bb.u, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit

bb.u:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i
  %i.db = add nuw nsw i32 %.08.i, 1
  br label %bb.r

_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit: ; preds = %bb.s, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i, %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit ], [ %.08.i, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i ], [ %.08.i, %bb.s ]
  %i.dc = add i32 %i.cl, %.0.lcssa.i
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %i.a, ptr %10, align 8, !tbaa !477
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %4, ptr %i.de, align 8, !tbaa !479
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %9, ptr %i.df, align 8, !tbaa !481
  %i.dg = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_9write_intIS5_mcEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %i.dd, i64 noundef %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.v

bb.v:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, %bb.q
  %.sroa.037.0 = phi ptr [ %i.dg, %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit ], [ %i.ci, %bb.q ]
  %i.dh = load ptr, ptr %9, align 8, !tbaa !428   ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.dh, %i.e
  br i1 %.not.i.i76, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.dh) #26
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  ret ptr %.sroa.037.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_9write_intIS5_mcEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !466
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !442    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.52, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !253
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !429
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !427
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !440
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v) #26, !inline_history !21
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 6 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !1171, !nonnull !257, !align !475
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !119
  %i.ae = and i32 %i.ad, 16777215                 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE:_ZN3fmt3v126detail6bufferIiE9push_backERKi.exit
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.m
  %i.ck = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.m ]
  %i.cl = add i64 %i.ck, %.025.i.i                ; 2 uses
  store i64 %i.cl, ptr %i.ao, align 8, !tbaa !429
  %i.cm = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.cm, %i.bc
  br i1 %.not.i.i22, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.k, !llvm.loop !17

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.dc, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !253
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.030.i.i
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !253
  %i.cq = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !253
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !253
  %i.cu = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !253
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cu
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !253
  %i.cy = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !253
  %i.db = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cy
  store i8 %i.da, ptr %i.db, align 1, !tbaa !253
  %i.dc = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.dc, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1189

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.j
  %i.dd = add nsw i32 %.01344, -1
  br label %bb.n

bb.n:                                             ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, %bb.i
  %.1 = phi i32 [ %i.dd, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit ], [ %.01344, %bb.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !253
  %i.dg = load i64, ptr %i.ao, align 8, !tbaa !429 ; 2 uses
  %i.dh = add i64 %i.dg, 1                        ; 3 uses
  %i.di = load i64, ptr %i.ap, align 8, !tbaa !427
  %i.dj = icmp ugt i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.o, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.o:                                             ; preds = %bb.n
  %i.dk = load ptr, ptr %i.aq, align 8, !tbaa !440
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dh) #26, !inline_history !15
  %.pre.i.i23 = load i64, ptr %i.ao, align 8, !tbaa !429 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i23, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.n, %bb.o
  %.pre-phi.i.i = phi i64 [ %i.dh, %bb.n ], [ %.pre2.i.i, %bb.o ]
  %i.dl = phi i64 [ %i.dg, %bb.n ], [ %.pre.i.i23, %bb.o ]
  %i.dm = load ptr, ptr %1, align 8, !tbaa !428
  store i64 %.pre-phi.i.i, ptr %i.ao, align 8, !tbaa !429
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dl
  store i8 %i.df, ptr %i.dn, align 1, !tbaa !253
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ar
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.i, !llvm.loop !1190
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEE4growERNS2_6bufferIiEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !489  ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !488    ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #31 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %2, align 8, !tbaa !117
  %i.k = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.40, i32 noundef 752, ptr noundef %i.k) #32
  unreachable

_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit:  ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !490  ; 2 uses
  %i.n = icmp ule i64 %i.m, %.0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = shl i64 %i.m, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.h, i64 %i.o, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !488
  store i64 %.0, ptr %i.a, align 8, !tbaa !489
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.h, %i.p
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit
  tail call void @free(ptr noundef %i.h) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE(ptr %0, i128 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %6 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %7 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %8 = alloca %class.anon.813, align 1            ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.fmt::v12::basic_memory_buffer.804", align 8 ; 13 uses
  %10 = alloca %class.anon.820, align 8           ; 6 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.d, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.c, align 8, !tbaa !440
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 5 uses
  store ptr %i.e, ptr %9, align 8, !tbaa !428
  store i64 500, ptr %i.b, align 8, !tbaa !427
  %i.f = load i32, ptr %3, align 4, !tbaa !442    ; 8 uses
  %i.g = trunc i32 %i.f to i8
  %i.h = and i8 %i.g, 7
  switch i8 %i.h, label %bb.b [
    i8 7, label %bb.w
    i8 6, label %bb.r
    i8 4, label %bb.i
    i8 5, label %.preheader
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i128 %1, 10
  br i1 %i.i, label %_ZN3fmt3v126detail12count_digitsEo.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.h
  %.017.i.i = phi i32 [ %i.q, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %.01116.i.i = phi i128 [ %i.p, %bb.h ], [ %1, %bb.b ] ; 5 uses
  %i.j = icmp ult i128 %.01116.i.i, 100
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = add nuw nsw i32 %.017.i.i, 1
  br label %_ZN3fmt3v126detail12count_digitsEo.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.l = icmp ult i128 %.01116.i.i, 1000
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw nsw i32 %.017.i.i, 2
  br label %_ZN3fmt3v126detail12count_digitsEo.exit

bb.f:                                             ; preds = %bb.d
  %i.n = icmp ult i128 %.01116.i.i, 10000
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = add nuw nsw i32 %.017.i.i, 3
  br label %_ZN3fmt3v126detail12count_digitsEo.exit

bb.h:                                             ; preds = %bb.f
  %i.p = udiv i128 %.01116.i.i, 10000
  %i.q = add nuw nsw i32 %.017.i.i, 4             ; 2 uses
  %i.r = icmp ult i128 %.01116.i.i, 100000
  br i1 %i.r, label %_ZN3fmt3v126detail12count_digitsEo.exit, label %.lr.ph.i.i, !llvm.loop !18

_ZN3fmt3v126detail12count_digitsEo.exit:          ; preds = %bb.h, %bb.b, %bb.c, %bb.e, %bb.g
  %.012.i.i = phi i32 [ %i.o, %bb.g ], [ %i.k, %bb.c ], [ %i.m, %bb.e ], [ 1, %bb.b ], [ %i.q, %bb.h ] ; 2 uses
  %i.s = call ptr @_ZN3fmt3v126detail14format_decimalIcoNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %9, i128 noundef %1, i32 noundef %.012.i.i) ; 0 uses
  br label %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit

bb.i:                                             ; preds = %bb.a
  %i.t = and i32 %i.f, 8192
  %.not81 = icmp eq i32 %i.t, 0
  br i1 %.not81, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %11 = and i32 %i.f, 4096
  %.not82 = icmp eq i32 %11, 0
  %12 = select i1 %.not82, i32 30768, i32 22576   ; 2 uses
  %.not.i = icmp eq i32 %2, 0
  %i.u = shl nuw nsw i32 %12, 8
  %i.v = select i1 %.not.i, i32 %12, i32 %i.u
  %i.w = or i32 %i.v, %2
  %i.x = add i32 %i.w, 33554432                   ; 2 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !119
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = phi i32 [ %i.x, %bb.j ], [ %2, %bb.i ]
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.03.i.i = phi i128 [ %1, %bb.k ], [ %i.aa, %bb.l ]
  %.0.i.i = phi i32 [ 0, %bb.k ], [ %i.z, %bb.l ] ; 2 uses
  %i.z = add nuw nsw i32 %.0.i.i, 1               ; 3 uses
  %i.aa = lshr i128 %.03.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i128 %i.aa, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail12count_digitsILi4EoEEiT0_.exit, label %bb.l, !llvm.loop !1192

_ZN3fmt3v126detail12count_digitsILi4EoEEiT0_.exit: ; preds = %bb.l
  %i.ab = and i32 %i.f, 4096
  %.not83 = icmp eq i32 %i.ab, 0
  %i.ac = zext nneg i32 %i.z to i64               ; 3 uses
  %i.ad = icmp samesign ugt i32 %.0.i.i, 499
  br i1 %i.ad, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %_ZN3fmt3v126detail12count_digitsILi4EoEEiT0_.exit
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 750) ; 2 uses
  %i.ae = call noalias ptr @malloc(i64 noundef %spec.select.i) #31 ; 3 uses
  %.not.i.i125 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i125, label %bb.m, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

bb.m:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %7, align 8, !tbaa !117
  %i.af = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.40, i32 noundef 752, ptr noundef %i.af) #32
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i
  store ptr %i.ae, ptr %9, align 8, !tbaa !428
  store i64 %spec.select.i, ptr %i.b, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread: ; preds = %_ZN3fmt3v126detail12count_digitsILi4EoEEiT0_.exit, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i
  %i.ag = phi ptr [ %i.ae, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i ], [ %i.e, %_ZN3fmt3v126detail12count_digitsILi4EoEEiT0_.exit ]
  store i64 %i.ac, ptr %i.d, align 8, !tbaa !429
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ac
  %.str.49..str.50.i.i.i = select i1 %.not83, ptr @.str.50, ptr @.str.49
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.split.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread
  %.012.i.i.i = phi i128 [ %i.an, %.split.i.i.i ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.am, %.split.i.i.i ], [ %i.ah, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread ]
  %i.ai = trunc i128 %.012.i.i.i to i64
  %i.aj = and i64 %i.ai, 15
  %i.ak = getelementptr inbounds nuw i8, ptr %.str.49..str.50.i.i.i, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !253
  %i.am = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -1 ; 2 uses
  store i8 %i.al, ptr %i.am, align 1, !tbaa !253
  %i.an = lshr i128 %.012.i.i.i, 4                ; 2 uses
  %.not.i.i.i = icmp eq i128 %i.an, 0
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit, label %.split.i.i.i, !llvm.loop !25

.preheader:                                       ; preds = %bb.a, %.preheader
  %.03.i.i38 = phi i128 [ %i.ap, %.preheader ], [ %1, %bb.a ]
  %.0.i.i39 = phi i32 [ %i.ao, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.ao = add nuw nsw i32 %.0.i.i39, 1            ; 4 uses
  %i.ap = lshr i128 %.03.i.i38, 3                 ; 2 uses
  %.not.i.i40 = icmp eq i128 %i.ap, 0
  br i1 %.not.i.i40, label %_ZN3fmt3v126detail12count_digitsILi3EoEEiT0_.exit, label %.preheader, !llvm.loop !1193

_ZN3fmt3v126detail12count_digitsILi3EoEEiT0_.exit: ; preds = %.preheader
  %i.aq = and i32 %i.f, 8192
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN3fmt3v126detail12count_digitsILi3EoEEiT0_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !444
  %i.at = icmp sle i32 %i.as, %i.ao
  %i.au = icmp ne i128 %1, 0
  %or.cond = and i1 %i.au, %i.at
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not.i41 = icmp eq i32 %2, 0
  %i.av = select i1 %.not.i41, i32 48, i32 12288
  %i.aw = or i32 %i.av, %2
  %i.ax = add i32 %i.aw, 16777216                 ; 2 uses
  store i32 %i.ax, ptr %i.a, align 4, !tbaa !119
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %_ZN3fmt3v126detail12count_digitsILi3EoEEiT0_.exit
  %i.ay = phi i32 [ %i.ax, %bb.o ], [ %2, %bb.n ], [ %2, %_ZN3fmt3v126detail12count_digitsILi3EoEEiT0_.exit ]
  %i.az = zext nneg i32 %i.ao to i64              ; 3 uses
  %i.ba = icmp samesign ugt i32 %.0.i.i39, 499
  br i1 %i.ba, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i48, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i48: ; preds = %bb.p
  %spec.select.i127 = call i64 @llvm.umax.i64(i64 %i.az, i64 750) ; 2 uses
  %i.bb = call noalias ptr @malloc(i64 noundef %spec.select.i127) #31 ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i128, label %bb.q, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42

bb.q:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i48
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %6, align 8, !tbaa !117
  %i.bc = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.40, i32 noundef 752, ptr noundef %i.bc) #32
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i48
  store ptr %i.bb, ptr %9, align 8, !tbaa !428
  store i64 %spec.select.i127, ptr %i.b, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42.thread: ; preds = %bb.p, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42
  %i.bd = phi ptr [ %i.bb, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42 ], [ %i.e, %bb.p ]
  store i64 %i.az, ptr %i.d, align 8, !tbaa !429
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.az
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.split.us.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42.thread
  %.012.us.i.i.i = phi i128 [ %i.bj, %.split.us.i.i.i ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42.thread ] ; 2 uses
  %.0.us.i.i.i = phi ptr [ %i.bi, %.split.us.i.i.i ], [ %i.be, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i42.thread ]
  %i.bf = trunc i128 %.012.us.i.i.i to i8
  %i.bg = and i8 %i.bf, 7
  %i.bh = or disjoint i8 %i.bg, 48
  %i.bi = getelementptr inbounds i8, ptr %.0.us.i.i.i, i64 -1 ; 2 uses
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !253
  %i.bj = lshr i128 %.012.us.i.i.i, 3             ; 2 uses
  %.not.us.i.i.i = icmp eq i128 %i.bj, 0
  br i1 %.not.us.i.i.i, label %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit, label %.split.us.i.i.i, !llvm.loop !25

bb.r:                                             ; preds = %bb.a
  %i.bk = and i32 %i.f, 8192
  %.not84 = icmp eq i32 %i.bk, 0
  br i1 %.not84, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %13 = and i32 %i.f, 4096
  %.not85 = icmp eq i32 %13, 0
  %14 = select i1 %.not85, i32 25136, i32 16944   ; 2 uses
  %.not.i53 = icmp eq i32 %2, 0
  %i.bl = shl nuw nsw i32 %14, 8
  %i.bm = select i1 %.not.i53, i32 %14, i32 %i.bl
  %i.bn = or i32 %i.bm, %2
  %i.bo = add i32 %i.bn, 33554432                 ; 2 uses
  store i32 %i.bo, ptr %i.a, align 4, !tbaa !119
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bp = phi i32 [ %i.bo, %bb.s ], [ %2, %bb.r ]
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.03.i.i54 = phi i128 [ %1, %bb.t ], [ %i.br, %bb.u ]
  %.0.i.i55 = phi i32 [ 0, %bb.t ], [ %i.bq, %bb.u ] ; 2 uses
  %i.bq = add nuw nsw i32 %.0.i.i55, 1            ; 3 uses
  %i.br = lshr i128 %.03.i.i54, 1                 ; 2 uses
  %.not.i.i56 = icmp eq i128 %i.br, 0
  br i1 %.not.i.i56, label %_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit, label %bb.u, !llvm.loop !1194

_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit: ; preds = %bb.u
  %i.bs = zext nneg i32 %i.bq to i64              ; 3 uses
  %i.bt = icmp samesign ugt i32 %.0.i.i55, 499
  br i1 %i.bt, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i71, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i71: ; preds = %_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit
  %spec.select.i132 = call i64 @llvm.umax.i64(i64 %i.bs, i64 750) ; 2 uses
  %i.bu = call noalias ptr @malloc(i64 noundef %spec.select.i132) #31 ; 3 uses
  %.not.i.i133 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i133, label %bb.v, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57

bb.v:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i71
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %5, align 8, !tbaa !117
  %i.bv = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.40, i32 noundef 752, ptr noundef %i.bv) #32
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i71
  store ptr %i.bu, ptr %9, align 8, !tbaa !428
  store i64 %spec.select.i132, ptr %i.b, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57.thread: ; preds = %_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57
  %i.bw = phi ptr [ %i.bu, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57 ], [ %i.e, %_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit ]
  store i64 %i.bs, ptr %i.d, align 8, !tbaa !429
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bs
  br label %.split.us.i.i.i60

.split.us.i.i.i60:                                ; preds = %.split.us.i.i.i60, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57.thread
  %.012.us.i.i.i61 = phi i128 [ %i.cc, %.split.us.i.i.i60 ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57.thread ] ; 2 uses
  %.0.us.i.i.i62 = phi ptr [ %i.cb, %.split.us.i.i.i60 ], [ %i.bx, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i57.thread ]
  %i.by = trunc i128 %.012.us.i.i.i61 to i8
  %i.bz = and i8 %i.by, 1
  %i.ca = or disjoint i8 %i.bz, 48
  %i.cb = getelementptr inbounds i8, ptr %.0.us.i.i.i62, i64 -1 ; 2 uses
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !253
  %i.cc = lshr i128 %.012.us.i.i.i61, 1           ; 2 uses
  %.not.us.i.i.i63 = icmp eq i128 %i.cc, 0
  br i1 %.not.us.i.i.i63, label %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit, label %.split.us.i.i.i60, !llvm.loop !25

bb.w:                                             ; preds = %bb.a
  %i.cd = trunc i128 %1 to i8
  %i.ce = and i32 %i.f, 7
  %i.cf = icmp eq i32 %i.ce, 1
  %i.cg = zext i1 %i.cf to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i8 %i.cg, ptr %8, align 1, !tbaa !464
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 1
  store i8 %i.cd, ptr %i.ch, align 1, !tbaa !465
  %i.ci = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ab

_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit: ; preds = %.split.us.i.i.i, %.split.i.i.i, %.split.us.i.i.i60, %_ZN3fmt3v126detail12count_digitsEo.exit
  %i.cj = phi i32 [ %2, %_ZN3fmt3v126detail12count_digitsEo.exit ], [ %i.bp, %.split.us.i.i.i60 ], [ %i.y, %.split.i.i.i ], [ %i.ay, %.split.us.i.i.i ]
  %.0 = phi i32 [ %.012.i.i, %_ZN3fmt3v126detail12count_digitsEo.exit ], [ %i.bq, %.split.us.i.i.i60 ], [ %i.z, %.split.i.i.i ], [ %i.ao, %.split.us.i.i.i ] ; 2 uses
  %i.ck = lshr i32 %i.cj, 24
  %i.cl = add i32 %i.ck, %.0
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !343
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit
  %i.cp = load ptr, ptr %4, align 8, !tbaa !252   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !343
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cr ; 3 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 -1
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %.lr.ph.i
  %.08.i = phi i32 [ 0, %.lr.ph.i ], [ %i.db, %bb.aa ] ; 3 uses
  %.sroa.0.07.i = phi ptr [ %i.cp, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.aa ] ; 3 uses
  %.sroa.5.06.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cz, %bb.aa ]
  %i.cu = icmp eq ptr %.sroa.0.07.i, %i.cs
  br i1 %i.cu, label %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i, label %bb.y

._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i: ; preds = %bb.x
  %.sink.i.pre.i = load i8, ptr %i.ct, align 1, !tbaa !253
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

bb.y:                                             ; preds = %bb.x
  %i.cv = load i8, ptr %.sroa.0.07.i, align 1, !tbaa !253 ; 2 uses
  %i.cw = add i8 %i.cv, -127
  %or.cond.i.i = icmp ult i8 %i.cw, -126
  br i1 %or.cond.i.i, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 1
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i: ; preds = %bb.z, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i
  %.sink.i.i = phi i8 [ %i.cv, %bb.z ], [ %.sink.i.pre.i, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %.sroa.0.1.i = phi ptr [ %i.cx, %bb.z ], [ %i.cs, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %i.cy = sext i8 %.sink.i.i to i32
  %i.cz = add nsw i32 %.sroa.5.06.i, %i.cy        ; 2 uses
  %i.da = icmp sgt i32 %.0, %i.cz
  br i1 %i.da, label %bb.aa, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit

bb.aa:                                            ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i
  %i.db = add nuw nsw i32 %.08.i, 1
  br label %bb.x

_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit: ; preds = %bb.y, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i, %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit ], [ %.08.i, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i ], [ %.08.i, %bb.y ]
  %i.dc = add i32 %i.cl, %.0.lcssa.i
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %i.a, ptr %10, align 8, !tbaa !477
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %4, ptr %i.de, align 8, !tbaa !479
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %9, ptr %i.df, align 8, !tbaa !481
  %i.dg = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_9write_intIS5_ocEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %i.dd, i64 noundef %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, %bb.w
  %.sroa.037.0 = phi ptr [ %i.dg, %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit ], [ %i.ci, %bb.w ]
  %i.dh = load ptr, ptr %9, align 8, !tbaa !428   ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.dh, %i.e
  br i1 %.not.i.i76, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.dh) #26
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  ret ptr %.sroa.037.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_9write_intIS5_ocEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !466
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !442    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.52, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !253
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !429
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !427
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !440
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v) #26, !inline_history !21
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 6 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !1198, !nonnull !257, !align !475
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !119
  %i.ae = and i32 %i.ad, 16777215                 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_:bb.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.av  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.aw, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.70) #32
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1404

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.ay = phi ptr [ %i.ax, %.critedge4 ], [ %i.aw, %.critedge4.preheader ] ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !253 ; 3 uses
  %i.ba = and i8 %i.az, -33
  %i.bb = add i8 %i.ba, -65
  %or.cond10.i32 = icmp ult i8 %i.bb, 26
  %i.bc = icmp eq i8 %i.az, 95
  %i.bd = or i1 %i.bc, %or.cond10.i32
  %i.be = add i8 %i.az, -48
  %or.cond31 = icmp ult i8 %i.be, 10
  %or.cond38 = or i1 %or.cond31, %i.bd
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !1404

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !1404

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.ay, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bf = ptrtoint ptr %.lcssa40 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1406, !nonnull !257, !align !482 ; 2 uses
  store ptr %0, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !253
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1407, !nonnull !257, !align !475
  store i32 2, ptr %i.bl, align 4, !tbaa !545
  %i.bm = load ptr, ptr %2, align 8, !tbaa !1408, !nonnull !257, !align !482
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 8, !tbaa !434
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #19 comdat {
bb.a:
  %4 = alloca %class.anon.813, align 1            ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = load i32, ptr %3, align 4, !tbaa !442    ; 10 uses
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %bb.b [
    i8 7, label %bb.j
    i8 6, label %.split.us.i11
    i8 4, label %bb.e
    i8 5, label %.split.us.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.f, %.lr.ph.i ], [ 64, %bb.b ]
  %.01819.i = phi i64 [ %i.m, %.lr.ph.i ], [ %1, %bb.b ] ; 3 uses
  %i.f = add i32 %.020.i, -2                      ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = urem i64 %.01819.i, 100
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 2
  %i.m = udiv i64 %.01819.i, 100                  ; 2 uses
  %i.n = icmp ugt i64 %.01819.i, 9999
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !12

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i64 [ %1, %bb.b ], [ %i.m, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 64, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.o = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.p = add i32 %.0.lcssa.i, -2
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.q
  %i.s = shl nuw nsw i64 %.018.lcssa.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.v = trunc nuw nsw i64 %.018.lcssa.i to i8
  %i.w = or disjoint i8 %i.v, 48
  %i.x = add i32 %.0.lcssa.i, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1, !tbaa !253
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.e:                                             ; preds = %bb.a
  %i.aa = and i32 %i.b, 4096
  %.not37 = icmp eq i32 %i.aa, 0                  ; 2 uses
  %.str.49..str.50.i = select i1 %.not37, ptr @.str.50, ptr @.str.49
  br label %.split.i

.split.i:                                         ; preds = %.split.i, %bb.e
  %.012.i = phi i64 [ %i.ae, %.split.i ], [ %1, %bb.e ] ; 2 uses
  %.0.i6.idx = phi i64 [ %.0.i6.add, %.split.i ], [ 64, %bb.e ]
  %i.ab = and i64 %.012.i, 15
  %i.ac = getelementptr inbounds nuw i8, ptr %.str.49..str.50.i, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !253
  %.0.i6.add = add nsw i64 %.0.i6.idx, -1         ; 4 uses
  %.ptr42 = getelementptr inbounds i8, ptr %i.a, i64 %.0.i6.add
  store i8 %i.ad, ptr %.ptr42, align 1, !tbaa !253
  %i.ae = lshr i64 %.012.i, 4                     ; 2 uses
  %.not.i7 = icmp eq i64 %i.ae, 0
  br i1 %.not.i7, label %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit, label %.split.i, !llvm.loop !24

_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit: ; preds = %.split.i
  %i.af = and i32 %i.b, 8192
  %.not38 = icmp eq i32 %i.af, 0
  br i1 %.not38, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit
  %i.ag = select i1 %.not37, i32 30768, i32 22576 ; 2 uses
  %.not.i8 = icmp eq i32 %2, 0
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = select i1 %.not.i8, i32 %i.ag, i32 %i.ah
  %i.aj = or i32 %i.ai, %2
  %i.ak = add i32 %i.aj, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

.split.us.i:                                      ; preds = %bb.a, %.split.us.i
  %.012.us.i = phi i64 [ %i.ao, %.split.us.i ], [ %1, %bb.a ] ; 2 uses
  %.0.us.i.idx = phi i64 [ %.0.us.i.add, %.split.us.i ], [ 64, %bb.a ] ; 2 uses
  %i.al = trunc i64 %.012.us.i to i8
  %i.am = and i8 %i.al, 7
  %i.an = or disjoint i8 %i.am, 48
  %.0.us.i.add = add nsw i64 %.0.us.i.idx, -1     ; 5 uses
  %.ptr41 = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i.add
  store i8 %i.an, ptr %.ptr41, align 1, !tbaa !253
  %i.ao = lshr i64 %.012.us.i, 3                  ; 2 uses
  %.not.us.i = icmp eq i64 %i.ao, 0
  br i1 %.not.us.i, label %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9, label %.split.us.i, !llvm.loop !24

_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9: ; preds = %.split.us.i
  %i.ap = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9
  %gepdiff = sub nsw i64 65, %.0.us.i.idx
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !444
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp sge i64 %gepdiff, %i.as
  %i.au = icmp ne i64 %1, 0
  %or.cond.i = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond.i, label %bb.h, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.h:                                             ; preds = %bb.g
  %.not.i10 = icmp eq i32 %2, 0
  %i.av = select i1 %.not.i10, i32 48, i32 12288
  %i.aw = or i32 %i.av, %2
  %i.ax = add i32 %i.aw, 16777216
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

.split.us.i11:                                    ; preds = %bb.a, %.split.us.i11
  %.012.us.i12 = phi i64 [ %i.bb, %.split.us.i11 ], [ %1, %bb.a ] ; 2 uses
  %.0.us.i13.idx = phi i64 [ %.0.us.i13.add, %.split.us.i11 ], [ 64, %bb.a ]
  %i.ay = trunc i64 %.012.us.i12 to i8
  %i.az = and i8 %i.ay, 1
  %i.ba = or disjoint i8 %i.az, 48
  %.0.us.i13.add = add nsw i64 %.0.us.i13.idx, -1 ; 4 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i13.add
  store i8 %i.ba, ptr %.ptr, align 1, !tbaa !253
  %i.bb = lshr i64 %.012.us.i12, 1                ; 2 uses
  %.not.us.i14 = icmp eq i64 %i.bb, 0
  br i1 %.not.us.i14, label %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15, label %.split.us.i11, !llvm.loop !24

_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15: ; preds = %.split.us.i11
  %i.bc = and i32 %i.b, 8192
  %.not39 = icmp eq i32 %i.bc, 0
  br i1 %.not39, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15
  %5 = and i32 %i.b, 4096
  %.not40 = icmp eq i32 %5, 0
  %6 = select i1 %.not40, i32 25136, i32 16944    ; 2 uses
  %.not.i16 = icmp eq i32 %2, 0
  %i.bd = shl nuw nsw i32 %6, 8
  %i.be = select i1 %.not.i16, i32 %6, i32 %i.bd
  %i.bf = or i32 %i.be, %2
  %i.bg = add i32 %i.bf, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %bb.a
  %i.bh = trunc i64 %1 to i8
  %i.bi = and i32 %i.b, 7
  %i.bj = icmp eq i32 %i.bi, 1
  %i.bk = zext i1 %i.bj to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i8 %i.bk, ptr %4, align 1, !tbaa !464
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 %i.bh, ptr %i.bl, align 1, !tbaa !465
  %i.bm = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit: ; preds = %bb.d, %bb.c, %bb.i, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15, %bb.h, %bb.g, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9, %bb.f, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit
  %.0 = phi i32 [ %2, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15 ], [ %i.ak, %bb.f ], [ %2, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %i.ax, %bb.h ], [ %2, %bb.g ], [ %2, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9 ], [ %i.bg, %bb.i ], [ %2, %bb.c ], [ %2, %bb.d ] ; 3 uses
  %.0.i.idx = phi i64 [ %.0.us.i13.add, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15 ], [ %.0.i6.add, %bb.f ], [ %.0.i6.add, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.0.us.i.add, %bb.h ], [ %.0.us.i.add, %bb.g ], [ %.0.us.i.add, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9 ], [ %.0.us.i13.add, %bb.i ], [ %i.q, %bb.c ], [ %i.y, %bb.d ] ; 5 uses
  %i.bn = trunc i64 %.0.i.idx to i32
  %i.bo = sub i32 64, %i.bn                       ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !466 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !444 ; 4 uses
  %i.bt = add nsw i32 %i.bs, 1
  %i.bu = or i32 %i.bt, %i.bq
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = lshr i32 %.0, 24                        ; 2 uses
  %i.bx = add i32 %i.bo, %i.bw                    ; 4 uses
  br i1 %i.bv, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !429
  %i.cb = add i64 %i.ca, %i.by                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !427
  %i.ce = icmp ugt i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.l, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !440
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb) #26, !inline_history !21
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.k, %bb.l
  %i.ch = and i32 %.0, 16777215                   ; 2 uses
  %.not.i49 = icmp eq i32 %i.ch, 0
  br i1 %.not.i49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.p

._crit_edge:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.not31.i.i = icmp eq i64 %.0.i.idx, 64
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i = load i64, ptr %i.bz, align 8, !tbaa !429
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.ck = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.cx, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ %.0.i.idx, %.lr.ph34.i.i ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.ptr = getelementptr i8, ptr %i.a, i64 %.02732.i.i.idx
  %i.cl = load i64, ptr %i.cc, align 8, !tbaa !427
  %i.cm = sub i64 %i.cl, %i.ck
  %gepdiff53 = sub nsw i64 64, %.02732.i.i.idx    ; 4 uses
  %i.cn = icmp ult i64 %i.cm, %gepdiff53
  br i1 %i.cn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !440
  %i.cp = add i64 %gepdiff53, %i.ck
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cp) #26, !inline_history !22
  %i.cq = load i64, ptr %i.bz, align 8, !tbaa !429 ; 2 uses
  %i.cr = load i64, ptr %i.cc, align 8, !tbaa !427
  %i.cs = sub i64 %i.cr, %i.cq
  %i.ct = tail call i64 @llvm.umin.i64(i64 %gepdiff53, i64 %i.cs)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.026.i.i = phi i64 [ %i.cq, %bb.n ], [ %i.ck, %bb.m ] ; 2 uses
  %.025.i.i = phi i64 [ %i.ct, %bb.n ], [ %gepdiff53, %bb.m ] ; 4 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %i.cu = load ptr, ptr %0, align 8, !tbaa !428
  %i.cv = getelementptr i8, ptr %i.cu, i64 %.026.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %.02732.i.i.ptr, i64 %.025.i.i, i1 false), !tbaa !253
  %.pre37.i.i = load i64, ptr %i.bz, align 8, !tbaa !429
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.preheader, %bb.o
  %i.cw = phi i64 [ %.pre37.i.i, %.lr.ph.i.i.preheader ], [ %.026.i.i, %bb.o ]
  %i.cx = add i64 %i.cw, %.025.i.i                ; 2 uses
  store i64 %i.cx, ptr %i.bz, align 8, !tbaa !429
  %.02732.i.i.add = add nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 64
  br i1 %.not.i.i, label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %bb.m, !llvm.loop !17

bb.p:                                             ; preds = %.lr.ph, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.042.i50 = phi i32 [ %i.ch, %.lr.ph ], [ %i.dh, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ] ; 2 uses
  %i.cy = trunc i32 %.042.i50 to i8
  %i.cz = load i64, ptr %i.bz, align 8, !tbaa !429 ; 2 uses
  %i.da = add i64 %i.cz, 1                        ; 3 uses
  %i.db = load i64, ptr %i.cc, align 8, !tbaa !427
  %i.dc = icmp ugt i64 %i.da, %i.db
  br i1 %i.dc, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.q:                                             ; preds = %bb.p
  %i.dd = load ptr, ptr %i.ci, align 8, !tbaa !440
  tail call void %i.dd(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.da) #26, !inline_history !15
  %.pre.i.i17 = load i64, ptr %i.bz, align 8, !tbaa !429 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i17, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.p, %bb.q
  %.pre-phi.i.i = phi i64 [ %i.da, %bb.p ], [ %.pre2.i.i, %bb.q ]
  %i.de = phi i64 [ %i.cz, %bb.p ], [ %.pre.i.i17, %bb.q ]
  %i.df = load ptr, ptr %0, align 8, !tbaa !428
  store i64 %.pre-phi.i.i, ptr %i.bz, align 8, !tbaa !429
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  store i8 %i.cy, ptr %i.dg, align 1, !tbaa !253
  %i.dh = lshr i32 %.042.i50, 8                   ; 2 uses
  %.not.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i, label %._crit_edge, label %bb.p, !llvm.loop !1409

bb.r:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit
  %i.di = and i32 %i.b, 56
  %i.dj = icmp eq i32 %i.di, 32
  br i1 %i.dj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %i.bq, i32 %i.bx)
  %spec.select36 = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 %i.bx)
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.t:                                             ; preds = %bb.r
  %i.dk = icmp sgt i32 %i.bs, %i.bo
  br i1 %i.dk, label %bb.u, label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.u:                                             ; preds = %bb.t
  %i.dl = add i32 %i.bs, %i.bw
  %i.dm = sub nsw i32 %i.bs, %i.bo
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit: ; preds = %bb.s, %bb.t, %bb.u
  %.sroa.627.0 = phi i32 [ 0, %bb.t ], [ %spec.select, %bb.s ], [ %i.dm, %bb.u ] ; 2 uses
  %.sroa.026.0 = phi i32 [ %i.bx, %bb.t ], [ %spec.select36, %bb.s ], [ %i.dl, %bb.u ]
  %i.dn = zext i32 %.sroa.026.0 to i64            ; 2 uses
  %i.do = zext i32 %i.bq to i64
  %i.dp = tail call i64 @llvm.usub.sat.i64(i64 %i.do, i64 %i.dn) ; 4 uses
  %i.dq = lshr i32 %i.b, 3
  %i.dr = and i32 %i.dq, 7
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @.str.52, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !253
  %i.dv = sext i8 %i.du to i64
  %i.dw = and i64 %i.dv, 4294967295
  %i.dx = lshr i64 %i.dp, %i.dw                   ; 4 uses
  %i.dy = sub nsw i64 %i.dp, %i.dx
  %i.dz = lshr i32 %i.b, 15
  %i.ea = and i32 %i.dz, 7
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = mul nuw nsw i64 %i.dp, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !429
  %i.ef = add i64 %i.ee, %i.dn
  %i.eg = add i64 %i.ef, %i.ec                    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !427
  %i.ej = icmp ugt i64 %i.eg, %i.ei
  br i1 %i.ej, label %bb.v, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.v:                                             ; preds = %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !440
  tail call void %i.el(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.eg) #26, !inline_history !1410
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.v, %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %.not.i.i18 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i18, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.em = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.dx, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %.sroa.09.0.i.i = phi ptr [ %i.em, %bb.w ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ] ; 17 uses
  %i.en = and i32 %.0, 16777215                   ; 2 uses
  %.not8.i = icmp eq i32 %i.en, 0
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
  %.02732.i.i.i.add = add nsw i64 %.025.i.i.i, %.02732.i.i.i.idx ; 2 uses
  %.not.i.i.i = icmp eq i64 %.02732.i.i.i.add, 64
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %bb.aa, !llvm.loop !17

bb.ad:                                            ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i20
  %.09.i = phi i32 [ %i.en, %.lr.ph.i20 ], [ %i.gd, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ] ; 2 uses
  %i.fu = trunc i32 %.09.i to i8
  %i.fv = load i64, ptr %i.eo, align 8, !tbaa !429 ; 2 uses
  %i.fw = add i64 %i.fv, 1                        ; 3 uses
  %i.fx = load i64, ptr %i.ep, align 8, !tbaa !427
  %i.fy = icmp ugt i64 %i.fw, %i.fx
  br i1 %i.fy, label %bb.ae, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.fz = load ptr, ptr %i.eq, align 8, !tbaa !440
  tail call void %i.fz(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0.i.i, i64 noundef %i.fw) #26, !inline_history !1413
  %.pre.i.i6.i = load i64, ptr %i.eo, align 8, !tbaa !429 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i6.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.ae, %bb.ad
  %.pre-phi.i.i.i = phi i64 [ %i.fw, %bb.ad ], [ %.pre2.i.i.i, %bb.ae ]
  %i.ga = phi i64 [ %i.fv, %bb.ad ], [ %.pre.i.i6.i, %bb.ae ]
  %i.gb = load ptr, ptr %.sroa.09.0.i.i, align 8, !tbaa !428
  store i64 %.pre-phi.i.i.i, ptr %i.eo, align 8, !tbaa !429
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ga
  store i8 %i.fu, ptr %i.gc, align 1, !tbaa !253
  %i.gd = lshr i32 %.09.i, 8                      ; 2 uses
  %.not.i21 = icmp eq i32 %i.gd, 0
  br i1 %.not.i21, label %._crit_edge.i22, label %bb.ad, !llvm.loop !1414

_ZZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEjcEET_S5_T0_RKT1_.exit.i
  %.not31.i.i19 = icmp eq i64 %i.dp, %i.dx
  br i1 %.not31.i.i19, label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %bb.af

bb.af:                                            ; preds = %_ZZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.ge = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.09.0.i.i, i64 noundef %i.dy, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit: ; preds = %._crit_edge.i.i, %bb.af, %_ZZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, %._crit_edge, %bb.j
  %.sroa.041.1.i = phi ptr [ %i.bm, %bb.j ], [ %.sroa.09.0.i.i, %_ZZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ], [ %0, %._crit_edge ], [ %i.ge, %bb.af ], [ %0, %._crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.sroa.041.1.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, ptr noundef byval(%"struct.fmt::v12::detail::write_int_arg.819") align 16 %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #19 comdat {
bb.a:
  %3 = alloca %class.anon.813, align 1            ; 5 uses
  %i.a = alloca [128 x i8], align 16              ; 10 uses
  %.sroa.023.0.copyload = load i128, ptr %1, align 16, !tbaa !517 ; 8 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 16, !tbaa !119 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = load i32, ptr %2, align 4, !tbaa !442    ; 10 uses
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %bb.b [
    i8 7, label %bb.j
    i8 6, label %.split.us.i8
    i8 4, label %bb.e
    i8 5, label %.split.us.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i128 %.sroa.023.0.copyload, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.022.i = phi i32 [ %i.f, %.lr.ph.i ], [ 128, %bb.b ]
  %.01821.i = phi i128 [ %i.i, %.lr.ph.i ], [ %.sroa.023.0.copyload, %bb.b ] ; 2 uses
  %i.f = add i32 %.022.i, -2                      ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %.01821.i.frozen = freeze i128 %.01821.i        ; 2 uses
  %i.i = udiv i128 %.01821.i.frozen, 100          ; 3 uses
  %i.j = mul i128 %i.i, 100
  %.decomposed = sub i128 %.01821.i.frozen, %i.j
  %i.k = trunc nuw nsw i128 %.decomposed to i64
  %i.l = shl nuw nsw i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2
  store i16 %i.n, ptr %i.h, align 2
  %i.o = icmp ugt i128 %.01821.i, 9999
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !19

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i128 [ %.sroa.023.0.copyload, %bb.b ], [ %i.i, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 128, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.p = icmp samesign ugt i128 %.018.lcssa.i, 9
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.q = add i32 %.0.lcssa.i, -2
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.t = trunc nuw nsw i128 %.018.lcssa.i to i64
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  store i16 %i.w, ptr %i.s, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = trunc nuw nsw i128 %.018.lcssa.i to i8
  %i.y = or disjoint i8 %i.x, 48
  %i.z = add i32 %.0.lcssa.i, -1
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aa
  store i8 %i.y, ptr %i.ab, align 1, !tbaa !253
  br label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit

bb.e:                                             ; preds = %bb.a
  %i.ac = and i32 %i.b, 4096
  %.not37 = icmp eq i32 %i.ac, 0                  ; 2 uses
  %.str.49..str.50.i = select i1 %.not37, ptr @.str.50, ptr @.str.49
  br label %.split.i

.split.i:                                         ; preds = %.split.i, %bb.e
  %.012.i = phi i128 [ %i.ah, %.split.i ], [ %.sroa.023.0.copyload, %bb.e ] ; 2 uses
  %.0.i3.idx = phi i64 [ %.0.i3.add, %.split.i ], [ 128, %bb.e ]
  %i.ad = trunc i128 %.012.i to i64
  %i.ae = and i64 %i.ad, 15
  %i.af = getelementptr inbounds nuw i8, ptr %.str.49..str.50.i, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !253
  %.0.i3.add = add nsw i64 %.0.i3.idx, -1         ; 4 uses
  %.ptr42 = getelementptr inbounds i8, ptr %i.a, i64 %.0.i3.add
  store i8 %i.ag, ptr %.ptr42, align 1, !tbaa !253
  %i.ah = lshr i128 %.012.i, 4                    ; 2 uses
  %.not.i4 = icmp eq i128 %i.ah, 0
  br i1 %.not.i4, label %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit, label %.split.i, !llvm.loop !25

_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit: ; preds = %.split.i
  %i.ai = and i32 %i.b, 8192
  %.not38 = icmp eq i32 %i.ai, 0
  br i1 %.not38, label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit
  %i.aj = select i1 %.not37, i32 30768, i32 22576 ; 2 uses
  %.not.i5 = icmp eq i32 %.sroa.2.0.copyload, 0
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = select i1 %.not.i5, i32 %i.aj, i32 %i.ak
  %i.am = or i32 %i.al, %.sroa.2.0.copyload
  %i.an = add i32 %i.am, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit

.split.us.i:                                      ; preds = %bb.a, %.split.us.i
  %.012.us.i = phi i128 [ %i.ar, %.split.us.i ], [ %.sroa.023.0.copyload, %bb.a ] ; 2 uses
  %.0.us.i.idx = phi i64 [ %.0.us.i.add, %.split.us.i ], [ 128, %bb.a ] ; 2 uses
  %i.ao = trunc i128 %.012.us.i to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = or disjoint i8 %i.ap, 48
  %.0.us.i.add = add nsw i64 %.0.us.i.idx, -1     ; 5 uses
  %.ptr41 = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i.add
  store i8 %i.aq, ptr %.ptr41, align 1, !tbaa !253
  %i.ar = lshr i128 %.012.us.i, 3                 ; 2 uses
  %.not.us.i = icmp eq i128 %i.ar, 0
  br i1 %.not.us.i, label %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit6, label %.split.us.i, !llvm.loop !25

_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit6: ; preds = %.split.us.i
  %i.as = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit6
  %gepdiff = sub nsw i64 129, %.0.us.i.idx
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !444
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp sge i64 %gepdiff, %i.av
  %i.ax = icmp ne i128 %.sroa.023.0.copyload, 0
  %or.cond.i = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond.i, label %bb.h, label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit

bb.h:                                             ; preds = %bb.g
  %.not.i7 = icmp eq i32 %.sroa.2.0.copyload, 0
  %i.ay = select i1 %.not.i7, i32 48, i32 12288
  %i.az = or i32 %i.ay, %.sroa.2.0.copyload
  %i.ba = add i32 %i.az, 16777216
  br label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit

.split.us.i8:                                     ; preds = %bb.a, %.split.us.i8
  %.012.us.i9 = phi i128 [ %i.be, %.split.us.i8 ], [ %.sroa.023.0.copyload, %bb.a ] ; 2 uses
  %.0.us.i10.idx = phi i64 [ %.0.us.i10.add, %.split.us.i8 ], [ 128, %bb.a ]
  %i.bb = trunc i128 %.012.us.i9 to i8
  %i.bc = and i8 %i.bb, 1
  %i.bd = or disjoint i8 %i.bc, 48
  %.0.us.i10.add = add nsw i64 %.0.us.i10.idx, -1 ; 4 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i10.add
  store i8 %i.bd, ptr %.ptr, align 1, !tbaa !253
  %i.be = lshr i128 %.012.us.i9, 1                ; 2 uses
  %.not.us.i11 = icmp eq i128 %i.be, 0
  br i1 %.not.us.i11, label %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit12, label %.split.us.i8, !llvm.loop !25

_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit12: ; preds = %.split.us.i8
  %i.bf = and i32 %i.b, 8192
  %.not39 = icmp eq i32 %i.bf, 0
  br i1 %.not39, label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit12
  %4 = and i32 %i.b, 4096
  %.not40 = icmp eq i32 %4, 0
  %5 = select i1 %.not40, i32 25136, i32 16944    ; 2 uses
  %.not.i13 = icmp eq i32 %.sroa.2.0.copyload, 0
  %i.bg = shl nuw nsw i32 %5, 8
  %i.bh = select i1 %.not.i13, i32 %5, i32 %i.bg
  %i.bi = or i32 %i.bh, %.sroa.2.0.copyload
  %i.bj = add i32 %i.bi, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %bb.a
  %i.bk = trunc i128 %.sroa.023.0.copyload to i8
  %i.bl = and i32 %i.b, 7
  %i.bm = icmp eq i32 %i.bl, 1
  %i.bn = zext i1 %i.bm to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i8 %i.bn, ptr %3, align 1, !tbaa !464
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.bk, ptr %i.bo, align 1, !tbaa !465
  %i.bp = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit: ; preds = %bb.d, %bb.c, %bb.i, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit12, %bb.h, %bb.g, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit6, %bb.f, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit
  %.0 = phi i32 [ %.sroa.2.0.copyload, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit12 ], [ %i.an, %bb.f ], [ %.sroa.2.0.copyload, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit ], [ %i.ba, %bb.h ], [ %.sroa.2.0.copyload, %bb.g ], [ %.sroa.2.0.copyload, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit6 ], [ %i.bj, %bb.i ], [ %.sroa.2.0.copyload, %bb.c ], [ %.sroa.2.0.copyload, %bb.d ] ; 3 uses
  %.0.i.idx = phi i64 [ %.0.us.i10.add, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit12 ], [ %.0.i3.add, %bb.f ], [ %.0.i3.add, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit ], [ %.0.us.i.add, %bb.h ], [ %.0.us.i.add, %bb.g ], [ %.0.us.i.add, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit6 ], [ %.0.us.i10.add, %bb.i ], [ %i.r, %bb.c ], [ %i.aa, %bb.d ] ; 5 uses
  %i.bq = trunc i64 %.0.i.idx to i32
  %i.br = sub i32 128, %i.bq                      ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !466 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !444 ; 4 uses
  %i.bw = add nsw i32 %i.bv, 1
  %i.bx = or i32 %i.bw, %i.bt
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = lshr i32 %.0, 24                        ; 2 uses
  %i.ca = add i32 %i.br, %i.bz                    ; 4 uses
  br i1 %i.by, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !429
  %i.ce = add i64 %i.cd, %i.cb                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !427
  %i.ch = icmp ugt i64 %i.ce, %i.cg
  br i1 %i.ch, label %bb.l, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !440
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ce) #26, !inline_history !21
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.k, %bb.l
  %i.ck = and i32 %.0, 16777215                   ; 2 uses
  %.not.i49 = icmp eq i32 %i.ck, 0
  br i1 %.not.i49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.p

._crit_edge:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.not31.i.i = icmp eq i64 %.0.i.idx, 128
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i = load i64, ptr %i.cc, align 8, !tbaa !429
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.cn = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.da, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ %.0.i.idx, %.lr.ph34.i.i ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.ptr = getelementptr i8, ptr %i.a, i64 %.02732.i.i.idx
  %i.co = load i64, ptr %i.cf, align 8, !tbaa !427
  %i.cp = sub i64 %i.co, %i.cn
  %gepdiff53 = sub nsw i64 128, %.02732.i.i.idx   ; 4 uses
  %i.cq = icmp ult i64 %i.cp, %gepdiff53
  br i1 %i.cq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !440
  %i.cs = add i64 %gepdiff53, %i.cn
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cs) #26, !inline_history !22
  %i.ct = load i64, ptr %i.cc, align 8, !tbaa !429 ; 2 uses
  %i.cu = load i64, ptr %i.cf, align 8, !tbaa !427
  %i.cv = sub i64 %i.cu, %i.ct
  %i.cw = tail call i64 @llvm.umin.i64(i64 %gepdiff53, i64 %i.cv)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.026.i.i = phi i64 [ %i.ct, %bb.n ], [ %i.cn, %bb.m ] ; 2 uses
  %.025.i.i = phi i64 [ %i.cw, %bb.n ], [ %gepdiff53, %bb.m ] ; 4 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %i.cx = load ptr, ptr %0, align 8, !tbaa !428
  %i.cy = getelementptr i8, ptr %i.cx, i64 %.026.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr align 1 %.02732.i.i.ptr, i64 %.025.i.i, i1 false), !tbaa !253
  %.pre37.i.i = load i64, ptr %i.cc, align 8, !tbaa !429
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.preheader, %bb.o
  %i.cz = phi i64 [ %.pre37.i.i, %.lr.ph.i.i.preheader ], [ %.026.i.i, %bb.o ]
  %i.da = add i64 %i.cz, %.025.i.i                ; 2 uses
  store i64 %i.da, ptr %i.cc, align 8, !tbaa !429
  %.02732.i.i.add = add nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 128
  br i1 %.not.i.i, label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %bb.m, !llvm.loop !17

bb.p:                                             ; preds = %.lr.ph, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.041.i50 = phi i32 [ %i.ck, %.lr.ph ], [ %i.dk, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ] ; 2 uses
  %i.db = trunc i32 %.041.i50 to i8
  %i.dc = load i64, ptr %i.cc, align 8, !tbaa !429 ; 2 uses
  %i.dd = add i64 %i.dc, 1                        ; 3 uses
  %i.de = load i64, ptr %i.cf, align 8, !tbaa !427
  %i.df = icmp ugt i64 %i.dd, %i.de
  br i1 %i.df, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.q:                                             ; preds = %bb.p
  %i.dg = load ptr, ptr %i.cl, align 8, !tbaa !440
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dd) #26, !inline_history !15
  %.pre.i.i14 = load i64, ptr %i.cc, align 8, !tbaa !429 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i14, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.p, %bb.q
  %.pre-phi.i.i = phi i64 [ %i.dd, %bb.p ], [ %.pre2.i.i, %bb.q ]
  %i.dh = phi i64 [ %i.dc, %bb.p ], [ %.pre.i.i14, %bb.q ]
  %i.di = load ptr, ptr %0, align 8, !tbaa !428
  store i64 %.pre-phi.i.i, ptr %i.cc, align 8, !tbaa !429
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh
  store i8 %i.db, ptr %i.dj, align 1, !tbaa !253
  %i.dk = lshr i32 %.041.i50, 8                   ; 2 uses
  %.not.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i, label %._crit_edge, label %bb.p, !llvm.loop !1415

bb.r:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit
  %i.dl = and i32 %i.b, 56
  %i.dm = icmp eq i32 %i.dl, 32
  br i1 %i.dm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %i.bt, i32 %i.ca)
  %spec.select36 = tail call i32 @llvm.umax.i32(i32 %i.bt, i32 %i.ca)
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.t:                                             ; preds = %bb.r
  %i.dn = icmp sgt i32 %i.bv, %i.br
  br i1 %i.dn, label %bb.u, label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.u:                                             ; preds = %bb.t
  %i.do = add i32 %i.bv, %i.bz
  %i.dp = sub nsw i32 %i.bv, %i.br
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit: ; preds = %bb.s, %bb.t, %bb.u
  %.sroa.627.0 = phi i32 [ 0, %bb.t ], [ %spec.select, %bb.s ], [ %i.dp, %bb.u ] ; 2 uses
  %.sroa.026.0 = phi i32 [ %i.ca, %bb.t ], [ %spec.select36, %bb.s ], [ %i.do, %bb.u ]
  %i.dq = zext i32 %.sroa.026.0 to i64            ; 2 uses
  %i.dr = zext i32 %i.bt to i64
  %i.ds = tail call i64 @llvm.usub.sat.i64(i64 %i.dr, i64 %i.dq) ; 4 uses
  %i.dt = lshr i32 %i.b, 3
  %i.du = and i32 %i.dt, 7
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr @.str.52, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !253
  %i.dy = sext i8 %i.dx to i64
  %i.dz = and i64 %i.dy, 4294967295
  %i.ea = lshr i64 %i.ds, %i.dz                   ; 4 uses
  %i.eb = sub nsw i64 %i.ds, %i.ea
  %i.ec = lshr i32 %i.b, 15
  %i.ed = and i32 %i.ec, 7
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = mul nuw nsw i64 %i.ds, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !429
  %i.ei = add i64 %i.eh, %i.dq
  %i.ej = add i64 %i.ei, %i.ef                    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !427
  %i.em = icmp ugt i64 %i.ej, %i.el
  br i1 %i.em, label %bb.v, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.v:                                             ; preds = %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !440
  tail call void %i.eo(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ej) #26, !inline_history !1416
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.v, %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %.not.i.i15 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i15, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.ep = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.ea, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %.sroa.09.0.i.i = phi ptr [ %i.ep, %bb.w ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ] ; 17 uses
  %i.eq = and i32 %.0, 16777215                   ; 2 uses
  %.not8.i = icmp eq i32 %i.eq, 0
end_hunk_4
