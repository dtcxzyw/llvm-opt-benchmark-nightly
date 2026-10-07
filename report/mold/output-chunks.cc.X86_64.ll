Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/output-chunks.cc.X86_64?download=true
inline.NumInlined: 10657
inline.NumDeleted: 4361
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_ZN4mold13RelDynSectionINS_6X86_64EEC2ERNS_7ContextIS1_EE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2682
  %i.i = load i8, ptr %i.h, align 2, !tbaa !581, !range !350, !noundef !351
  %i.j = trunc nuw i8 %i.i to i1                  ; 3 uses
  %.sink = select i1 %i.j, i32 1610612738, i32 4
  %storemerge2 = select i1 %i.j, i64 0, i64 24
  %storemerge = select i1 %i.j, i64 1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sink, ptr %i.k, align 4
  store i64 %storemerge2, ptr %i.d, align 8
  store i64 %storemerge, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold13RelDynSectionINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"struct.mold::ElfRel", align 1     ; 4 uses
  %3 = alloca %"struct.mold::ElfRel", align 1     ; 4 uses
  %4 = alloca %class.anon.348, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2683
  %i.b = load i8, ptr %i.a, align 1, !tbaa !479, !range !350, !noundef !351
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 13192
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %1, ptr %4, align 8, !tbaa !490
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !395
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 13200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !395
  call void @_ZN3tbb6detail2d217parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_13RelDynSectionIS7_E11update_shdrERNS5_7ContextIS7_EEEUlS9_E_EEvT_SL_RKT0_(ptr %i.e, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 13192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !395  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 13200 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !395  ; 5 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.m = extractelement <2 x i64> %i.v, i64 1
  %i.n = extractelement <2 x i64> %i.v, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.021.lcssa = phi i64 [ 0, %bb.c ], [ %i.m, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.n, %._crit_edge.loopexit ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2682
  %i.p = load i8, ptr %i.o, align 2, !tbaa !581, !range !350, !noundef !351
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.bn

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.0126.0137 = phi ptr [ %i.w, %.lr.ph ], [ %i.i, %bb.c ] ; 2 uses
  %i.r = phi <2 x i64> [ %i.v, %.lr.ph ], [ zeroinitializer, %bb.c ]
  %i.s = load ptr, ptr %.sroa.0126.0137, align 8, !tbaa !397
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load <2 x i64>, ptr %i.t, align 8, !tbaa !71
  %i.v = add nsw <2 x i64> %i.u, %i.r             ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0126.0137, i64 8 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.k
  br i1 %i.x, label %._crit_edge.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.z = sub nsw i64 %.0.lcssa, %.021.lcssa       ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !583 ; 2 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !584 ; 5 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 24                ; 3 uses
  %i.ah = icmp ugt i64 %i.z, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = sub nuw i64 %i.z, %i.ag
  call void @_ZNSt6vectorIN4mold6ElfRelINS0_6X86_64EEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef %i.ai)
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !584
  %.pre144.a = load ptr, ptr %i.h, align 8, !tbaa !395
  %.pre145.a = load ptr, ptr %i.j, align 8, !tbaa !395
  br label %_ZNSt6vectorIN4mold6ElfRelINS0_6X86_64EEESaIS3_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = icmp ult i64 %i.z, %i.ag
  br i1 %i.aj, label %bb.g, label %_ZNSt6vectorIN4mold6ElfRelINS0_6X86_64EEESaIS3_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.z ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.ak
  br i1 %.not.i.i, label %_ZNSt6vectorIN4mold6ElfRelINS0_6X86_64EEESaIS3_EE6resizeEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !583
  br label %_ZNSt6vectorIN4mold6ElfRelINS0_6X86_64EEESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN4mold6ElfRelINS0_6X86_64EEESaIS3_EE6resizeEm.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.al = phi ptr [ %.pre145.a, %bb.e ], [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.k, %bb.h ] ; 2 uses
  %i.am = phi ptr [ %.pre144.a, %bb.e ], [ %i.i, %bb.f ], [ %i.i, %bb.g ], [ %i.i, %bb.h ] ; 2 uses
  %i.an = phi ptr [ %.pre, %bb.e ], [ %i.ac, %bb.f ], [ %i.ac, %bb.g ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.al
  br i1 %i.ao, label %_ZN4mold13RelDynSectionINS_6X86_64EE12write_relocsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN4mold6ElfRelINS0_6X86_64EEESaIS3_EE6resizeEm.exit, %bb.j
  %.015.i = phi ptr [ %.1.i, %bb.j ], [ %i.an, %_ZNSt6vectorIN4mold6ElfRelINS0_6X86_64EEESaIS3_EE6resizeEm.exit ] ; 3 uses
  %.sroa.011.014.i = phi ptr [ %i.az, %bb.j ], [ %i.am, %_ZNSt6vectorIN4mold6ElfRelINS0_6X86_64EEESaIS3_EE6resizeEm.exit ] ; 2 uses
  %i.ap = load ptr, ptr %.sroa.011.014.i, align 8, !tbaa !397 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !432 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  %i.at = load i64, ptr %i.as, align 8, !tbaa !480 ; 2 uses
  %.not.i = icmp eq i64 %i.ar, %i.at
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.au = sub nsw i64 %i.ar, %i.at
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(184) %i.ap, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef %.015.i) #15, !inline_history !585
  %i.ay = getelementptr inbounds [24 x i8], ptr %.015.i, i64 %i.au
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %.1.i = phi ptr [ %i.ay, %bb.i ], [ %.015.i, %.lr.ph.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.011.014.i, i64 8 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.al
  br i1 %i.ba, label %_ZN4mold13RelDynSectionINS_6X86_64EE12write_relocsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE.exit.loopexit, label %.lr.ph.i

_ZN4mold13RelDynSectionINS_6X86_64EE12write_relocsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE.exit.loopexit: ; preds = %bb.j
  %.pre146.a = load ptr, ptr %i.y, align 8, !tbaa !584
  br label %_ZN4mold13RelDynSectionINS_6X86_64EE12write_relocsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE.exit

_ZN4mold13RelDynSectionINS_6X86_64EE12write_relocsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE.exit: ; preds = %_ZN4mold13RelDynSectionINS_6X86_64EE12write_relocsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE.exit.loopexit, %_ZNSt6vectorIN4mold6ElfRelINS0_6X86_64EEESaIS3_EE6resizeEm.exit
  %i.bb = phi ptr [ %.pre146.a, %_ZN4mold13RelDynSectionINS_6X86_64EE12write_relocsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE.exit.loopexit ], [ %i.an, %_ZNSt6vectorIN4mold6ElfRelINS0_6X86_64EEESaIS3_EE6resizeEm.exit ] ; 26 uses
  %i.bc = load ptr, ptr %i.aa, align 8, !tbaa !583 ; 4 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %i.bg = sdiv exact i64 %i.bf, 24                ; 5 uses
  %i.bh = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #34, !noalias !1408 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  store <4 x i8> <i8 65, i8 80, i8 83, i8 50>, ptr %i.bh, align 1, !noalias !1408
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i92, %_ZN4mold13RelDynSectionINS_6X86_64EE12write_relocsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE.exit
  %.sroa.0102.16 = phi ptr [ %i.bh, %_ZN4mold13RelDynSectionINS_6X86_64EE12write_relocsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE.exit ], [ %.sroa.0102.17, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i92 ] ; 4 uses
  %i.bj = phi ptr [ %i.bi, %_ZN4mold13RelDynSectionINS_6X86_64EE12write_relocsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE.exit ], [ %.sroa.50.17, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i92 ] ; 3 uses
  %i.bk = phi ptr [ %i.bi, %_ZN4mold13RelDynSectionINS_6X86_64EE12write_relocsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE.exit ], [ %.sroa.20.17, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i92 ] ; 3 uses
  %.0.i89 = phi i64 [ %i.bg, %_ZN4mold13RelDynSectionINS_6X86_64EE12write_relocsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE.exit ], [ %i.ca, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i92 ] ; 3 uses
  %i.bl = trunc i64 %.0.i89 to i8
  %i.bm = or i8 %i.bl, -128                       ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %i.bk, %i.bj
  br i1 %.not.i.i.i90, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !348
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i92

bb.m:                                             ; preds = %bb.k
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = ptrtoint ptr %.sroa.0102.16 to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 8 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775807
  br i1 %i.bq, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i95

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i95: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.i96 = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.br = add i64 %.sroa.speculated.i.i.i.i.i96, %i.bp ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bp
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 9223372036854775807)
  %i.bu = select i1 %i.bs, i64 9223372036854775807, i64 %i.bt ; 3 uses
  %.not.i.i.i.i.i97 = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i97)
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #34 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bp ; 2 uses
  store i8 %i.bm, ptr %i.bw, align 1, !tbaa !348
  %i.bx = icmp sgt i64 %i.bp, 0
  br i1 %i.bx, label %bb.o, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i100

bb.o:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i95
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr align 1 %.sroa.0102.16, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i100

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i100: ; preds = %bb.o, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i95
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.16, i64 noundef %i.bp) #31
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i92

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i92:       ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i100, %bb.l
  %.sroa.0102.17 = phi ptr [ %i.bv, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i100 ], [ %.sroa.0102.16, %bb.l ] ; 5 uses
  %.pn = phi ptr [ %i.bw, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i100 ], [ %i.bk, %bb.l ] ; 3 uses
  %.sroa.50.17 = phi ptr [ %i.by, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i100 ], [ %i.bj, %bb.l ] ; 4 uses
  %.sroa.20.17 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 4 uses
  %i.bz = ashr i64 %.0.i89, 6
  %.off.i93 = add nsw i64 %i.bz, -1
  %switch.i94 = icmp ult i64 %.off.i93, -2
  %i.ca = ashr i64 %.0.i89, 7
  br i1 %switch.i94, label %bb.k, label %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit101, !llvm.loop !1359

_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit101: ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i92
  %i.cb = load i8, ptr %.pn, align 1, !tbaa !348
  %i.cc = and i8 %i.cb, 127
  store i8 %i.cc, ptr %.pn, align 1, !tbaa !348
  %.not.i.i.i75 = icmp eq ptr %.sroa.20.17, %.sroa.50.17
  br i1 %.not.i.i.i75, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit101
  store i8 -128, ptr %.sroa.20.17, align 1, !tbaa !348
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i77

bb.q:                                             ; preds = %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit101
  %i.cd = ptrtoint ptr %.sroa.50.17 to i64
  %i.ce = ptrtoint ptr %.sroa.0102.17 to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 8 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775807
  br i1 %i.cg, label %bb.r, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i80

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i80: ; preds = %bb.q
  %.sroa.speculated.i.i.i.i.i81 = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.ch = add i64 %.sroa.speculated.i.i.i.i.i81, %i.cf ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cf
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 9223372036854775807)
  %i.ck = select i1 %i.ci, i64 9223372036854775807, i64 %i.cj ; 3 uses
  %.not.i.i.i.i.i82 = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i82)
  %i.cl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #34 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cf ; 3 uses
  store i8 -128, ptr %i.cm, align 1, !tbaa !348
  %i.cn = icmp sgt i64 %i.cf, 0
  br i1 %i.cn, label %bb.s, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i85

bb.s:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr align 1 %.sroa.0102.17, i64 %i.cf, i1 false)
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i85

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i85: ; preds = %bb.s, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i80
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.17, i64 noundef %i.cf) #31
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  %.pre147 = load i8, ptr %i.cm, align 1, !tbaa !348
  %5 = and i8 %.pre147, 127
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i77

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i77:       ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i85, %bb.p
  %6 = phi i8 [ %5, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i85 ], [ 0, %bb.p ]
  %.sroa.0102.15 = phi ptr [ %i.cl, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i85 ], [ %.sroa.0102.17, %bb.p ] ; 3 uses
  %.pn129.a = phi ptr [ %i.cm, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i85 ], [ %.sroa.20.17, %bb.p ] ; 2 uses
  %.sroa.50.15 = phi ptr [ %i.co, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i85 ], [ %.sroa.50.17, %bb.p ] ; 3 uses
  %.sroa.20.15 = getelementptr inbounds nuw i8, ptr %.pn129.a, i64 1 ; 3 uses
  store i8 %6, ptr %.pn129.a, align 1, !tbaa !348
  %i.cp = icmp eq ptr %i.bc, %i.bb
  br i1 %i.cp, label %_ZN4moldL14encode_androidINS_6X86_64EEESt6vectorIhSaIhEESt4spanINS_6ElfRelIT_EELm18446744073709551615EE.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i77
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bf
  %i.cr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.cs = shl nuw nsw i64 %i.cr, 1
  %i.ct = xor i64 %i.cs, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SR_T1_(ptr %i.bb, ptr nonnull %i.cq, i64 noundef %i.ct), !noalias !1408
  %i.cu = icmp ugt i64 %i.bg, 16
  br i1 %i.cu, label %bb.u, label %.preheader.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bb, i64 24
  br label %bb.v

bb.v:                                             ; preds = %bb.aa, %bb.u
  %.sroa.0.021.i.idx.i.i.i.i.i = phi i64 [ 24, %bb.u ], [ %.sroa.0.021.i.add.i.i.i.i.i, %bb.aa ] ; 4 uses
  %.pn20.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.u ], [ %.sroa.0.021.i.ptr.i.i.i.i.i, %bb.aa ] ; 8 uses
  %.sroa.0.021.i.ptr.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.0.021.i.idx.i.i.i.i.i ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i, i64 36
  %i.cz = load i64, ptr %.sroa.0.021.i.ptr.i.i.i.i.i, align 1, !tbaa !348, !noalias !1409 ; 4 uses
  %i.da = load i32, ptr %i.cy, align 1, !tbaa !348, !noalias !1409 ; 7 uses
  %i.db = load i32, ptr %i.cx, align 1, !tbaa !348, !noalias !1409 ; 7 uses
  %i.dc = load i64, ptr %i.bb, align 1, !tbaa !348, !noalias !1410
  %i.dd = load i32, ptr %i.cw, align 1, !tbaa !348, !noalias !1410 ; 2 uses
  %i.de = load i32, ptr %i.cv, align 1, !tbaa !348, !noalias !1410 ; 2 uses
  %i.df = icmp eq i32 %i.db, %i.de
  %i.dg = icmp ult i32 %i.db, %i.de
  %i.dh = icmp eq i32 %i.da, %i.dd
  %i.di = icmp ult i32 %i.da, %i.dd
  %i.dj = icmp ult i64 %i.cz, %i.dc
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.dh, i1 %i.dj, i1 %i.di
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.df, i1 %spec.select.i.i.i.i.i.i.i.i, i1 %i.dg
  br i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.021.i.ptr.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !586, !noalias !1408
  %i.dk = icmp samesign ugt i64 %.sroa.0.021.i.idx.i.i.i.i.i, 24
  br i1 %i.dk, label %bb.x, label %bb.y, !prof !400

bb.x:                                             ; preds = %bb.w
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i64 %.sroa.0.021.i.idx.i.i.i.i.i, i1 false), !noalias !1408
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dl, ptr noundef nonnull align 1 dereferenceable(24) %i.bb, i64 24, i1 false), !tbaa.struct !586, !noalias !1408
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bb, ptr noundef nonnull align 1 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !586, !noalias !1408
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i, i64 40
  %.sroa.7.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %i.dm = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i, i64 12
  %i.do = load i64, ptr %.pn20.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1411
  %i.dp = load i32, ptr %i.dn, align 1, !tbaa !348, !noalias !1411 ; 2 uses
  %i.dq = load i32, ptr %i.dm, align 1, !tbaa !348, !noalias !1411 ; 2 uses
  %i.dr = icmp eq i32 %i.db, %i.dq
  %i.ds = icmp ult i32 %i.db, %i.dq
  %i.dt = icmp eq i32 %i.da, %i.dp
  %i.du = icmp ult i32 %i.da, %i.dp
  %i.dv = icmp ult i64 %i.cz, %i.do
  %spec.select.i.i16.i.i.i.i.i.i.i = select i1 %i.dt, i1 %i.dv, i1 %i.du
  %.sroa.06.0.i.i.i.i.i.i.i17.i.i.i.i.i.i.i = select i1 %i.dr, i1 %spec.select.i.i16.i.i.i.i.i.i.i, i1 %i.ds
  br i1 %.sroa.06.0.i.i.i.i.i.i.i17.i.i.i.i.i.i.i, label %.lr.ph.i.i8.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i

.lr.ph.i.i8.i.i.i.i.i:                            ; preds = %bb.z, %.lr.ph.i.i8.i.i.i.i.i
  %.sroa.0.019.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i8.i.i.i.i.i ], [ %.pn20.i.i.i.i.i.i, %bb.z ] ; 6 uses
  %.sroa.012.018.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.i.i.i.i.i.i, %.lr.ph.i.i8.i.i.i.i.i ], [ %.sroa.0.021.i.ptr.i.i.i.i.i, %bb.z ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.012.018.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.019.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !586, !noalias !1408
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.019.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.019.i.i.i.i.i.i.i, i64 -16
  %i.dx = getelementptr inbounds i8, ptr %.sroa.0.019.i.i.i.i.i.i.i, i64 -12
  %i.dy = load i64, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1411
  %i.dz = load i32, ptr %i.dx, align 1, !tbaa !348, !noalias !1411 ; 2 uses
  %i.ea = load i32, ptr %i.dw, align 1, !tbaa !348, !noalias !1411 ; 2 uses
  %i.eb = icmp eq i32 %i.db, %i.ea
  %i.ec = icmp ult i32 %i.db, %i.ea
  %i.ed = icmp eq i32 %i.da, %i.dz
  %i.ee = icmp ult i32 %i.da, %i.dz
  %i.ef = icmp ult i64 %i.cz, %i.dy
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.ed, i1 %i.ef, i1 %i.ee
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.eb, i1 %spec.select.i.i.i.i.i.i.i.i.i, i1 %i.ec
  br i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i8.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i, !llvm.loop !1378

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i8.i.i.i.i.i, %bb.z
  %.sroa.012.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.021.i.ptr.i.i.i.i.i, %bb.z ], [ %.sroa.0.019.i.i.i.i.i.i.i, %.lr.ph.i.i8.i.i.i.i.i ] ; 4 uses
  store i64 %i.cz, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i.i, i64 8
  store i32 %i.db, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i.i, i64 12
  store i32 %i.da, ptr %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.7.0..sroa_idx9.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx9.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i
  %.sroa.0.021.i.add.i.i.i.i.i = add nuw nsw i64 %.sroa.0.021.i.idx.i.i.i.i.i, 24 ; 2 uses
  %i.eg = icmp eq i64 %.sroa.0.021.i.add.i.i.i.i.i, 384
  br i1 %i.eg, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SR_.exit.i.i.i.i.i, label %bb.v, !llvm.loop !1379

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SR_.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bb, i64 384
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SR_.exit.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i = phi ptr [ %i.fc, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i.i ], [ %i.eh, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SR_.exit.i.i.i.i.i ] ; 10 uses
  %.sroa.03.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.09.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408 ; 5 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 12
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408 ; 5 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 16
  %.sroa.7.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.0.015.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 -16
  %i.ej = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 -12
  %i.ek = load i64, ptr %.sroa.0.015.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1412
  %i.el = load i32, ptr %i.ej, align 1, !tbaa !348, !noalias !1412 ; 2 uses
  %i.em = load i32, ptr %i.ei, align 1, !tbaa !348, !noalias !1412 ; 2 uses
  %i.en = icmp eq i32 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, %i.em
  %i.eo = icmp ult i32 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, %i.em
  %i.ep = icmp eq i32 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, %i.el
  %i.eq = icmp ult i32 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, %i.el
  %i.er = icmp ult i64 %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, %i.ek
  %spec.select.i.i16.i.i.i.i.i.i.i.i = select i1 %i.ep, i1 %i.er, i1 %i.eq
  %.sroa.06.0.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i = select i1 %i.en, i1 %spec.select.i.i16.i.i.i.i.i.i.i.i, i1 %i.eo
  br i1 %.sroa.06.0.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.019.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.015.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.012.018.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.012.018.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.019.i.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !586, !noalias !1408
  %.sroa.0.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.019.i.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %.sroa.0.019.i.i.i.i.i.i.i.i, i64 -16
  %i.et = getelementptr inbounds i8, ptr %.sroa.0.019.i.i.i.i.i.i.i.i, i64 -12
  %i.eu = load i64, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1412
  %i.ev = load i32, ptr %i.et, align 1, !tbaa !348, !noalias !1412 ; 2 uses
  %i.ew = load i32, ptr %i.es, align 1, !tbaa !348, !noalias !1412 ; 2 uses
  %i.ex = icmp eq i32 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, %i.ew
  %i.ey = icmp ult i32 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, %i.ew
  %i.ez = icmp eq i32 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, %i.ev
  %i.fa = icmp ult i32 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, %i.ev
  %i.fb = icmp ult i64 %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, %i.eu
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.ez, i1 %i.fb, i1 %i.fa
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ex, i1 %spec.select.i.i.i.i.i.i.i.i.i.i, i1 %i.ey
  br i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i.i, !llvm.loop !1378

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.012.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.09.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.019.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 4 uses
  store i64 %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i.i.i, i64 12
  store i32 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.7.0..sroa_idx9.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx9.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.bc
  br i1 %i.fd, label %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold6ElfRelINS3_6X86_64EEELm18446744073709551615EENS_4lessEZNS3_L14encode_androidIS5_EESt6vectorIhSaIhEES2_INS4_IT_EELm18446744073709551615EEEUlRKS6_E0_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISL_NS_8danglingEEEOSE_SM_SN_.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1386

.preheader.i.i.i.i.i:                             ; preds = %bb.t
  %i.fe = icmp eq i64 %i.bf, 24
  br i1 %i.fe, label %.lr.ph68.i.preheader, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i
  %.sroa.0.019.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ah, %.lr.ph.i.i.i.i.i
  %.sroa.0.021.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.ah ] ; 7 uses
  %.pn20.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.021.i.i.i.i.i, %bb.ah ] ; 9 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 36
  %i.fj = load i64, ptr %.sroa.0.021.i.i.i.i.i, align 1, !tbaa !348, !noalias !1413 ; 4 uses
  %i.fk = load i32, ptr %i.fi, align 1, !tbaa !348, !noalias !1413 ; 7 uses
  %i.fl = load i32, ptr %i.fh, align 1, !tbaa !348, !noalias !1413 ; 7 uses
  %i.fm = load i64, ptr %i.bb, align 1, !tbaa !348, !noalias !1414
  %i.fn = load i32, ptr %i.fg, align 1, !tbaa !348, !noalias !1414 ; 2 uses
  %i.fo = load i32, ptr %i.ff, align 1, !tbaa !348, !noalias !1414 ; 2 uses
  %i.fp = icmp eq i32 %i.fl, %i.fo
  %i.fq = icmp ult i32 %i.fl, %i.fo
  %i.fr = icmp eq i32 %i.fk, %i.fn
  %i.fs = icmp ult i32 %i.fk, %i.fn
  %i.ft = icmp ult i64 %i.fj, %i.fm
  %spec.select.i.i.i.i.i.i.i = select i1 %i.fr, i1 %i.ft, i1 %i.fs
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.fp, i1 %spec.select.i.i.i.i.i.i.i, i1 %i.fq
  br i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.021.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !586, !noalias !1408
  %i.fu = ptrtoint ptr %.sroa.0.021.i.i.i.i.i to i64
  %i.fv = sub i64 %i.fu, %i.be                    ; 4 uses
  %i.fw = icmp sgt i64 %i.fv, 24
  br i1 %i.fw, label %bb.ad, label %bb.ae, !prof !400

bb.ad:                                            ; preds = %bb.ac
  %i.fx = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 48
  %.neg25.i.i.i.i.i = udiv exact i64 %i.fv, 24
  %.neg25.neg.i.i.i.i.i = sub nsw i64 0, %.neg25.i.i.i.i.i
  %i.fy = getelementptr inbounds [24 x i8], ptr %i.fx, i64 %.neg25.neg.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fy, ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i64 %i.fv, i1 false), !noalias !1408
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.fz = icmp eq i64 %i.fv, 24
  br i1 %i.fz, label %bb.af, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ga = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ga, ptr noundef nonnull align 1 dereferenceable(24) %i.bb, i64 24, i1 false), !tbaa.struct !586, !noalias !1408
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bb, ptr noundef nonnull align 1 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !586, !noalias !1408
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ab
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 40
  %.sroa.7.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %i.gb = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 12
  %i.gd = load i64, ptr %.pn20.i.i.i.i.i, align 1, !tbaa !348, !noalias !1415
  %i.ge = load i32, ptr %i.gc, align 1, !tbaa !348, !noalias !1415 ; 2 uses
  %i.gf = load i32, ptr %i.gb, align 1, !tbaa !348, !noalias !1415 ; 2 uses
  %i.gg = icmp eq i32 %i.fl, %i.gf
  %i.gh = icmp ult i32 %i.fl, %i.gf
  %i.gi = icmp eq i32 %i.fk, %i.ge
  %i.gj = icmp ult i32 %i.fk, %i.ge
  %i.gk = icmp ult i64 %i.fj, %i.gd
  %spec.select.i.i16.i.i.i.i.i.i = select i1 %i.gi, i1 %i.gk, i1 %i.gj
  %.sroa.06.0.i.i.i.i.i.i.i17.i.i.i.i.i.i = select i1 %i.gg, i1 %spec.select.i.i16.i.i.i.i.i.i, i1 %i.gh
  br i1 %.sroa.06.0.i.i.i.i.i.i.i17.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.019.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.pn20.i.i.i.i.i, %bb.ag ] ; 6 uses
  %.sroa.012.018.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.021.i.i.i.i.i, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.012.018.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.019.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !586, !noalias !1408
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.019.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %.sroa.0.019.i.i.i.i.i.i, i64 -16
  %i.gm = getelementptr inbounds i8, ptr %.sroa.0.019.i.i.i.i.i.i, i64 -12
  %i.gn = load i64, ptr %.sroa.0.0.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1415
  %i.go = load i32, ptr %i.gm, align 1, !tbaa !348, !noalias !1415 ; 2 uses
  %i.gp = load i32, ptr %i.gl, align 1, !tbaa !348, !noalias !1415 ; 2 uses
  %i.gq = icmp eq i32 %i.fl, %i.gp
  %i.gr = icmp ult i32 %i.fl, %i.gp
  %i.gs = icmp eq i32 %i.fk, %i.go
  %i.gt = icmp ult i32 %i.fk, %i.go
  %i.gu = icmp ult i64 %i.fj, %i.gn
  %spec.select.i.i.i.i9.i.i.i.i = select i1 %i.gs, i1 %i.gu, i1 %i.gt
  %.sroa.06.0.i.i.i.i.i.i.i.i.i10.i.i.i.i = select i1 %i.gq, i1 %spec.select.i.i.i.i9.i.i.i.i, i1 %i.gr
  br i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i10.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i, !llvm.loop !1378

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ag
  %.sroa.012.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.021.i.i.i.i.i, %bb.ag ], [ %.sroa.0.019.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  store i64 %i.fj, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i, i64 8
  store i32 %i.fl, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i, i64 12
  store i32 %i.fk, ptr %.sroa.6.0..sroa_idx7.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.7.0..sroa_idx9.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i, i64 16
  store i64 %.sroa.7.0.copyload.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx9.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  br label %bb.ah

bb.ah:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i.i.i, i64 24 ; 2 uses
  %i.gv = icmp eq ptr %.sroa.0.0.i.i.i.i.i, %i.bc
  br i1 %i.gv, label %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold6ElfRelINS3_6X86_64EEELm18446744073709551615EENS_4lessEZNS3_L14encode_androidIS5_EESt6vectorIhSaIhEES2_INS4_IT_EELm18446744073709551615EEEUlRKS6_E0_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISL_NS_8danglingEEEOSE_SM_SN_.exit.i, label %bb.ab, !llvm.loop !1379

_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold6ElfRelINS3_6X86_64EEELm18446744073709551615EENS_4lessEZNS3_L14encode_androidIS5_EESt6vectorIhSaIhEES2_INS4_IT_EELm18446744073709551615EEEUlRKS6_E0_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISL_NS_8danglingEEEOSE_SM_SN_.exit.i: ; preds = %bb.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i.i
  %i.gw = icmp sgt i64 %i.bf, 0
  br i1 %i.gw, label %.lr.ph68.i.preheader, label %_ZN4moldL14encode_androidINS_6X86_64EEESt6vectorIhSaIhEESt4spanINS_6ElfRelIT_EELm18446744073709551615EE.exit

.lr.ph68.i.preheader:                             ; preds = %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold6ElfRelINS3_6X86_64EEELm18446744073709551615EENS_4lessEZNS3_L14encode_androidIS5_EESt6vectorIhSaIhEES2_INS4_IT_EELm18446744073709551615EEEUlRKS6_E0_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISL_NS_8danglingEEEOSE_SM_SN_.exit.i, %.preheader.i.i.i.i.i
  br label %.lr.ph68.i

.lr.ph68.i:                                       ; preds = %.lr.ph68.i.preheader, %._crit_edge.i
  %.sroa.0102.0 = phi ptr [ %.sroa.0102.4, %._crit_edge.i ], [ %.sroa.0102.15, %.lr.ph68.i.preheader ]
  %.sroa.20.0 = phi ptr [ %.sroa.20.4, %._crit_edge.i ], [ %.sroa.20.15, %.lr.ph68.i.preheader ]
  %.sroa.50.0 = phi ptr [ %.sroa.50.4, %._crit_edge.i ], [ %.sroa.50.15, %.lr.ph68.i.preheader ]
  %.03267.i = phi i64 [ %.031.lcssa.i, %._crit_edge.i ], [ 0, %.lr.ph68.i.preheader ] ; 7 uses
  %.03366.i = phi i64 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %.lr.ph68.i.preheader ] ; 2 uses
  %.03465.i = phi i64 [ %.0.copyload.i43.i, %._crit_edge.i ], [ 0, %.lr.ph68.i.preheader ]
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.03267.i ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.gx, align 1, !noalias !1408 ; 2 uses
  %i.gy = sub nsw i64 %.0.copyload.i.i, %.03465.i ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gx, i64 8
  %.val38.i = load i64, ptr %i.gz, align 1, !tbaa !348, !noalias !1408 ; 2 uses
  %i.ha = add nuw nsw i64 %.03267.i, 1
  %smax.i = call i64 @llvm.smax.i64(i64 %i.bg, i64 %i.ha) ; 3 uses
  %i.hb = add nsw i64 %smax.i, -1                 ; 4 uses
  %exitcond.not.i203 = icmp eq i64 %.03267.i, %i.hb
  br i1 %exitcond.not.i203, label %.critedge.i, label %.lr.ph207

bb.ai:                                            ; preds = %bb.aj
  %exitcond.not.i = icmp eq i64 %.031.i206, %i.hb
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph207, !llvm.loop !1405

.lr.ph207:                                        ; preds = %.lr.ph68.i, %bb.ai
  %.031.in.i205 = phi i64 [ %.031.i206, %bb.ai ], [ %.03267.i, %.lr.ph68.i ] ; 3 uses
  %.0.copyload.i42.i204 = phi i64 [ %.0.copyload.i41.i, %bb.ai ], [ %.0.copyload.i.i, %.lr.ph68.i ]
  %.031.i206 = add nuw nsw i64 %.031.in.i205, 1   ; 5 uses
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.031.i206 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 8
  %.val37.i = load i64, ptr %i.hd, align 1, !tbaa !348, !noalias !1408
  %i.he = icmp eq i64 %.val37.i, %.val38.i
  br i1 %i.he, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %.lr.ph207
  %.0.copyload.i41.i = load i64, ptr %i.hc, align 1, !noalias !1408 ; 2 uses
  %i.hf = sub nsw i64 %.0.copyload.i41.i, %.0.copyload.i42.i204
  %i.hg = icmp eq i64 %i.hf, %i.gy
  br i1 %i.hg, label %bb.ai, label %..critedge.i_crit_edge, !llvm.loop !1405

..critedge.i_crit_edge:                           ; preds = %bb.aj
  br label %.critedge.i, !llvm.loop !1405

.critedge.i:                                      ; preds = %bb.ai, %.lr.ph207, %..critedge.i_crit_edge, %.lr.ph68.i
  %.031.in.lcssa.i = phi i64 [ %i.hb, %.lr.ph68.i ], [ %.031.in.i205, %..critedge.i_crit_edge ], [ %i.hb, %bb.ai ], [ %.031.in.i205, %.lr.ph207 ] ; 3 uses
  %.031.lcssa.i = phi i64 [ %smax.i, %.lr.ph68.i ], [ %.031.i206, %..critedge.i_crit_edge ], [ %smax.i, %bb.ai ], [ %.031.i206, %.lr.ph207 ] ; 3 uses
  %i.hh = sub nsw i64 %.031.lcssa.i, %.03267.i    ; 2 uses
  %i.hi = icmp sgt i64 %i.hh, 1
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62, %.critedge.i
  %.sroa.0102.12 = phi ptr [ %.sroa.0102.0, %.critedge.i ], [ %.sroa.0102.13, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62 ] ; 4 uses
  %i.hj = phi ptr [ %.sroa.50.0, %.critedge.i ], [ %.sroa.50.13, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62 ] ; 3 uses
  %i.hk = phi ptr [ %.sroa.20.0, %.critedge.i ], [ %.sroa.20.13, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62 ] ; 3 uses
  %.0.i59 = phi i64 [ %i.hh, %.critedge.i ], [ %i.ia, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62 ] ; 3 uses
  %i.hl = trunc i64 %.0.i59 to i8
  %i.hm = or i8 %i.hl, -128                       ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.hk, %i.hj
  br i1 %.not.i.i.i60, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i8 %i.hm, ptr %i.hk, align 1, !tbaa !348
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62

bb.am:                                            ; preds = %bb.ak
  %i.hn = ptrtoint ptr %i.hj to i64
  %i.ho = ptrtoint ptr %.sroa.0102.12 to i64
  %i.hp = sub i64 %i.hn, %i.ho                    ; 8 uses
  %i.hq = icmp eq i64 %i.hp, 9223372036854775807
  br i1 %i.hq, label %bb.an, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i65

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i65: ; preds = %bb.am
  %.sroa.speculated.i.i.i.i.i66 = call i64 @llvm.umax.i64(i64 %i.hp, i64 1)
  %i.hr = add i64 %.sroa.speculated.i.i.i.i.i66, %i.hp ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.hp
  %i.ht = call i64 @llvm.umin.i64(i64 %i.hr, i64 9223372036854775807)
  %i.hu = select i1 %i.hs, i64 9223372036854775807, i64 %i.ht ; 3 uses
  %.not.i.i.i.i.i67 = icmp ne i64 %i.hu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i67)
  %i.hv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #34 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hp ; 2 uses
  store i8 %i.hm, ptr %i.hw, align 1, !tbaa !348
  %i.hx = icmp sgt i64 %i.hp, 0
  br i1 %i.hx, label %bb.ao, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i70

bb.ao:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i65
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hv, ptr align 1 %.sroa.0102.12, i64 %i.hp, i1 false)
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i70

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i70: ; preds = %bb.ao, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i65
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.12, i64 noundef %i.hp) #31
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hu
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62:       ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i70, %bb.al
  %.sroa.0102.13 = phi ptr [ %i.hv, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i70 ], [ %.sroa.0102.12, %bb.al ] ; 5 uses
  %.pn130.a = phi ptr [ %i.hw, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i70 ], [ %i.hk, %bb.al ] ; 3 uses
  %.sroa.50.13 = phi ptr [ %i.hy, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i70 ], [ %i.hj, %bb.al ] ; 4 uses
  %.sroa.20.13 = getelementptr inbounds nuw i8, ptr %.pn130.a, i64 1 ; 4 uses
  %i.hz = ashr i64 %.0.i59, 6
  %.off.i63 = add nsw i64 %i.hz, -1
  %switch.i64 = icmp ult i64 %.off.i63, -2
  %i.ia = ashr i64 %.0.i59, 7
  br i1 %switch.i64, label %bb.ak, label %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit71, !llvm.loop !1359

_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit71: ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62
  %i.ib = load i8, ptr %.pn130.a, align 1, !tbaa !348
  %i.ic = and i8 %i.ib, 127
  store i8 %i.ic, ptr %.pn130.a, align 1, !tbaa !348
  %i.id = select i1 %i.hi, i8 -117, i8 -120       ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %.sroa.20.13, %.sroa.50.13
  br i1 %.not.i.i.i45, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit71
  store i8 %i.id, ptr %.sroa.20.13, align 1, !tbaa !348
  br label %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit56

bb.aq:                                            ; preds = %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit71
  %i.ie = ptrtoint ptr %.sroa.50.13 to i64
  %i.if = ptrtoint ptr %.sroa.0102.13 to i64
  %i.ig = sub i64 %i.ie, %i.if                    ; 8 uses
  %i.ih = icmp eq i64 %i.ig, 9223372036854775807
  br i1 %i.ih, label %bb.ar, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i50

bb.ar:                                            ; preds = %bb.aq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i50: ; preds = %bb.aq
  %.sroa.speculated.i.i.i.i.i51 = call i64 @llvm.umax.i64(i64 %i.ig, i64 1)
  %i.ii = add i64 %.sroa.speculated.i.i.i.i.i51, %i.ig ; 2 uses
  %i.ij = icmp ult i64 %i.ii, %i.ig
  %i.ik = call i64 @llvm.umin.i64(i64 %i.ii, i64 9223372036854775807)
  %i.il = select i1 %i.ij, i64 9223372036854775807, i64 %i.ik ; 3 uses
  %.not.i.i.i.i.i52 = icmp ne i64 %i.il, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i52)
  %i.im = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.il) #34 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ig ; 3 uses
  store i8 %i.id, ptr %i.in, align 1, !tbaa !348
  %i.io = icmp sgt i64 %i.ig, 0
  br i1 %i.io, label %bb.as, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i55

bb.as:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i50
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.im, ptr align 1 %.sroa.0102.13, i64 %i.ig, i1 false)
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i55

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i55: ; preds = %bb.as, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i50
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.13, i64 noundef %i.ig) #31
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.il
  %.pre148 = load i8, ptr %i.in, align 1, !tbaa !348
  br label %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit56

_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit56: ; preds = %bb.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i55
  %i.iq = phi i8 [ %.pre148, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i55 ], [ %i.id, %bb.ap ]
  %.sroa.0102.11 = phi ptr [ %i.im, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i55 ], [ %.sroa.0102.13, %bb.ap ]
  %.pn131.a = phi ptr [ %i.in, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i55 ], [ %.sroa.20.13, %bb.ap ] ; 2 uses
  %.sroa.50.11 = phi ptr [ %i.ip, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i55 ], [ %.sroa.50.13, %bb.ap ]
  %.sroa.20.11 = getelementptr inbounds nuw i8, ptr %.pn131.a, i64 1
  %i.ir = and i8 %i.iq, 127
  store i8 %i.ir, ptr %.pn131.a, align 1, !tbaa !348
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit56
  %.sroa.0102.8 = phi ptr [ %.sroa.0102.11, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit56 ], [ %.sroa.0102.9, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32 ] ; 4 uses
  %i.is = phi ptr [ %.sroa.50.11, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit56 ], [ %.sroa.50.9, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32 ] ; 3 uses
  %i.it = phi ptr [ %.sroa.20.11, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit56 ], [ %.sroa.20.9, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32 ] ; 3 uses
  %.0.i29 = phi i64 [ %i.gy, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit56 ], [ %i.jj, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32 ] ; 3 uses
  %i.iu = trunc i64 %.0.i29 to i8
  %i.iv = or i8 %i.iu, -128                       ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.it, %i.is
  br i1 %.not.i.i.i30, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i8 %i.iv, ptr %i.it, align 1, !tbaa !348
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32

bb.av:                                            ; preds = %bb.at
  %i.iw = ptrtoint ptr %i.is to i64
  %i.ix = ptrtoint ptr %.sroa.0102.8 to i64
  %i.iy = sub i64 %i.iw, %i.ix                    ; 8 uses
  %i.iz = icmp eq i64 %i.iy, 9223372036854775807
  br i1 %i.iz, label %bb.aw, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i35

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i35: ; preds = %bb.av
  %.sroa.speculated.i.i.i.i.i36 = call i64 @llvm.umax.i64(i64 %i.iy, i64 1)
  %i.ja = add i64 %.sroa.speculated.i.i.i.i.i36, %i.iy ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.iy
  %i.jc = call i64 @llvm.umin.i64(i64 %i.ja, i64 9223372036854775807)
  %i.jd = select i1 %i.jb, i64 9223372036854775807, i64 %i.jc ; 3 uses
  %.not.i.i.i.i.i37 = icmp ne i64 %i.jd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i37)
  %i.je = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jd) #34 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.iy ; 2 uses
  store i8 %i.iv, ptr %i.jf, align 1, !tbaa !348
  %i.jg = icmp sgt i64 %i.iy, 0
  br i1 %i.jg, label %bb.ax, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i40

bb.ax:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i35
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.je, ptr align 1 %.sroa.0102.8, i64 %i.iy, i1 false)
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i40

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i40: ; preds = %bb.ax, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i35
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.8, i64 noundef %i.iy) #31
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jd
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32:       ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i40, %bb.au
  %.sroa.0102.9 = phi ptr [ %i.je, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i40 ], [ %.sroa.0102.8, %bb.au ] ; 2 uses
  %.pn132.a = phi ptr [ %i.jf, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i40 ], [ %i.it, %bb.au ] ; 3 uses
  %.sroa.50.9 = phi ptr [ %i.jh, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i40 ], [ %i.is, %bb.au ] ; 2 uses
  %.sroa.20.9 = getelementptr inbounds nuw i8, ptr %.pn132.a, i64 1 ; 2 uses
  %i.ji = ashr i64 %.0.i29, 6
  %.off.i33 = add nsw i64 %i.ji, -1
  %switch.i34 = icmp ult i64 %.off.i33, -2
  %i.jj = ashr i64 %.0.i29, 7
  br i1 %switch.i34, label %bb.at, label %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit41, !llvm.loop !1359

_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit41: ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32
  %i.jk = load i8, ptr %.pn132.a, align 1, !tbaa !348
  %i.jl = and i8 %i.jk, 127
  store i8 %i.jl, ptr %.pn132.a, align 1, !tbaa !348
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit41
  %.sroa.0102.6 = phi ptr [ %.sroa.0102.9, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit41 ], [ %.sroa.0102.7, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ] ; 4 uses
  %i.jm = phi ptr [ %.sroa.50.9, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit41 ], [ %.sroa.50.7, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ] ; 3 uses
  %i.jn = phi ptr [ %.sroa.20.9, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit41 ], [ %.sroa.20.7, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ] ; 3 uses
  %.0.i = phi i64 [ %.val38.i, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit41 ], [ %i.kd, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ] ; 3 uses
  %i.jo = trunc i64 %.0.i to i8
  %i.jp = or i8 %i.jo, -128                       ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.jn, %i.jm
  br i1 %.not.i.i.i25, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i8 %i.jp, ptr %i.jn, align 1, !tbaa !348
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.jq = ptrtoint ptr %i.jm to i64
  %i.jr = ptrtoint ptr %.sroa.0102.6 to i64
  %i.js = sub i64 %i.jq, %i.jr                    ; 8 uses
  %i.jt = icmp eq i64 %i.js, 9223372036854775807
  br i1 %i.jt, label %bb.bb, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ba
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.js, i64 1)
  %i.ju = add i64 %.sroa.speculated.i.i.i.i.i, %i.js ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.js
  %i.jw = call i64 @llvm.umin.i64(i64 %i.ju, i64 9223372036854775807)
  %i.jx = select i1 %i.jv, i64 9223372036854775807, i64 %i.jw ; 3 uses
  %.not.i.i.i.i.i26 = icmp ne i64 %i.jx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i26)
  %i.jy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jx) #34 ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.js ; 2 uses
  store i8 %i.jp, ptr %i.jz, align 1, !tbaa !348
  %i.ka = icmp sgt i64 %i.js, 0
  br i1 %i.ka, label %bb.bc, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

bb.bc:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.jy, ptr align 1 %.sroa.0102.6, i64 %i.js, i1 false)
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i: ; preds = %bb.bc, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.6, i64 noundef %i.js) #31
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jx
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i:         ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, %bb.az
  %.sroa.0102.7 = phi ptr [ %i.jy, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0102.6, %bb.az ] ; 3 uses
  %.pn133.a = phi ptr [ %i.jz, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %i.jn, %bb.az ] ; 3 uses
  %.sroa.50.7 = phi ptr [ %i.kb, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %i.jm, %bb.az ] ; 3 uses
  %.sroa.20.7 = getelementptr inbounds nuw i8, ptr %.pn133.a, i64 1 ; 3 uses
  %i.kc = ashr i64 %.0.i, 6
  %.off.i = add nsw i64 %i.kc, -1
  %switch.i = icmp ult i64 %.off.i, -2
  %i.kd = ashr i64 %.0.i, 7
  br i1 %switch.i, label %bb.ay, label %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit, !llvm.loop !1359

_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit: ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i
  %i.ke = load i8, ptr %.pn133.a, align 1, !tbaa !348
  %i.kf = and i8 %i.ke, 127
  store i8 %i.kf, ptr %.pn133.a, align 1, !tbaa !348
  %.not62.i = icmp sgt i64 %.03267.i, %.031.in.lcssa.i
  br i1 %.not62.i, label %._crit_edge.i, label %.lr.ph.i23

._crit_edge.i:                                    ; preds = %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit
  %.sroa.0102.4 = phi ptr [ %.sroa.0102.7, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit ], [ %.sroa.0102.3, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ] ; 2 uses
  %.sroa.20.4 = phi ptr [ %.sroa.20.7, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit ], [ %.sroa.20.3, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ] ; 2 uses
  %.sroa.50.4 = phi ptr [ %.sroa.50.7, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit ], [ %.sroa.50.3, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ] ; 2 uses
  %.1.lcssa.i = phi i64 [ %.03366.i, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit ], [ %.0.copyload.i44.i, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ]
  %i.kg = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.031.in.lcssa.i
  %.0.copyload.i43.i = load i64, ptr %i.kg, align 1, !noalias !1408
  %i.kh = icmp slt i64 %.031.lcssa.i, %i.bg
  br i1 %i.kh, label %.lr.ph68.i, label %_ZN4moldL14encode_androidINS_6X86_64EEESt6vectorIhSaIhEESt4spanINS_6ElfRelIT_EELm18446744073709551615EE.exit, !llvm.loop !1406

.lr.ph.i23:                                       ; preds = %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i
  %.sroa.0102.1 = phi ptr [ %.sroa.0102.3, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ], [ %.sroa.0102.7, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit ]
  %.sroa.50.1 = phi ptr [ %.sroa.50.3, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ], [ %.sroa.50.7, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit ]
  %.pre.i.i = phi ptr [ %.sroa.20.3, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ], [ %.sroa.20.7, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit ]
  %.064.i = phi i64 [ %i.le, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ], [ %.03267.i, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit ] ; 3 uses
  %.163.i = phi i64 [ %.0.copyload.i44.i, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ], [ %.03366.i, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit ]
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.064.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %.0.copyload.i44.i = load i64, ptr %i.kj, align 1, !noalias !1408 ; 3 uses
  %i.kk = sub nsw i64 %.0.copyload.i44.i, %.163.i
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i, %.lr.ph.i23
  %.sroa.0102.2 = phi ptr [ %.sroa.0102.1, %.lr.ph.i23 ], [ %.sroa.0102.3, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ] ; 4 uses
  %.sroa.50.2 = phi ptr [ %.sroa.50.1, %.lr.ph.i23 ], [ %.sroa.50.3, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ] ; 3 uses
  %i.kl = phi ptr [ %.pre.i.i, %.lr.ph.i23 ], [ %.sroa.20.3, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ] ; 3 uses
  %.0.i.i = phi i64 [ %i.kk, %.lr.ph.i23 ], [ %i.lb, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ] ; 3 uses
  %i.km = trunc i64 %.0.i.i to i8
  %i.kn = or i8 %i.km, -128                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.kl, %.sroa.50.2
  br i1 %.not.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i8 %i.kn, ptr %i.kl, align 1, !tbaa !348, !noalias !1408
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.ko = ptrtoint ptr %.sroa.50.2 to i64
  %i.kp = ptrtoint ptr %.sroa.0102.2 to i64
  %i.kq = sub i64 %i.ko, %i.kp                    ; 8 uses
  %i.kr = icmp eq i64 %i.kq, 9223372036854775807
  br i1 %i.kr, label %bb.bg, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33, !noalias !1408
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.bf
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kq, i64 1)
  %i.ks = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.kq ; 2 uses
  %i.kt = icmp ult i64 %i.ks, %i.kq
  %i.ku = call i64 @llvm.umin.i64(i64 %i.ks, i64 9223372036854775807)
  %i.kv = select i1 %i.kt, i64 9223372036854775807, i64 %i.ku ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.kv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.kw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kv) #34, !noalias !1408 ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.kq ; 2 uses
  store i8 %i.kn, ptr %i.kx, align 1, !tbaa !348, !noalias !1408
  %i.ky = icmp sgt i64 %i.kq, 0
  br i1 %i.ky, label %bb.bh, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

bb.bh:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.kw, ptr align 1 %.sroa.0102.2, i64 %i.kq, i1 false), !noalias !1408
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.bh, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.2, i64 noundef %i.kq) #31, !noalias !1408
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.kv
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i:       ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, %bb.be
  %.sroa.0102.3 = phi ptr [ %i.kw, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0102.2, %bb.be ] ; 3 uses
  %.pn134 = phi ptr [ %i.kx, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ], [ %i.kl, %bb.be ] ; 3 uses
  %.sroa.50.3 = phi ptr [ %i.kz, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.50.2, %bb.be ] ; 3 uses
  %.sroa.20.3 = getelementptr inbounds nuw i8, ptr %.pn134, i64 1 ; 3 uses
  %i.la = ashr i64 %.0.i.i, 6
  %.off.i.i = add nsw i64 %i.la, -1
  %switch.i.i = icmp ult i64 %.off.i.i, -2
  %i.lb = ashr i64 %.0.i.i, 7
  br i1 %switch.i.i, label %bb.bd, label %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i, !llvm.loop !1359

_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i: ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i
  %i.lc = load i8, ptr %.pn134, align 1, !tbaa !348, !noalias !1408
  %i.ld = and i8 %i.lc, 127
  store i8 %i.ld, ptr %.pn134, align 1, !tbaa !348, !noalias !1408
  %i.le = add i64 %.064.i, 1
  %exitcond71.not.i = icmp eq i64 %.064.i, %.031.in.lcssa.i
  br i1 %exitcond71.not.i, label %._crit_edge.i, label %.lr.ph.i23, !llvm.loop !1407

_ZN4moldL14encode_androidINS_6X86_64EEESt6vectorIhSaIhEESt4spanINS_6ElfRelIT_EELm18446744073709551615EE.exit: ; preds = %._crit_edge.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i77, %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold6ElfRelINS3_6X86_64EEELm18446744073709551615EENS_4lessEZNS3_L14encode_androidIS5_EESt6vectorIhSaIhEES2_INS4_IT_EELm18446744073709551615EEEUlRKS6_E0_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISL_NS_8danglingEEEOSE_SM_SN_.exit.i
  %.sroa.0102.5 = phi ptr [ %.sroa.0102.15, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i77 ], [ %.sroa.0102.15, %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold6ElfRelINS3_6X86_64EEELm18446744073709551615EENS_4lessEZNS3_L14encode_androidIS5_EESt6vectorIhSaIhEES2_INS4_IT_EELm18446744073709551615EEEUlRKS6_E0_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISL_NS_8danglingEEEOSE_SM_SN_.exit.i ], [ %.sroa.0102.4, %._crit_edge.i ] ; 2 uses
  %.sroa.20.5 = phi ptr [ %.sroa.20.15, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i77 ], [ %.sroa.20.15, %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold6ElfRelINS3_6X86_64EEELm18446744073709551615EENS_4lessEZNS3_L14encode_androidIS5_EESt6vectorIhSaIhEES2_INS4_IT_EELm18446744073709551615EEEUlRKS6_E0_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISL_NS_8danglingEEEOSE_SM_SN_.exit.i ], [ %.sroa.20.4, %._crit_edge.i ] ; 2 uses
  %.sroa.50.5 = phi ptr [ %.sroa.50.15, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i77 ], [ %.sroa.50.15, %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold6ElfRelINS3_6X86_64EEELm18446744073709551615EENS_4lessEZNS3_L14encode_androidIS5_EESt6vectorIhSaIhEES2_INS4_IT_EELm18446744073709551615EEEUlRKS6_E0_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISL_NS_8danglingEEEOSE_SM_SN_.exit.i ], [ %.sroa.50.4, %._crit_edge.i ]
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !587 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !588
  store ptr %.sroa.0102.5, ptr %i.lf, align 8, !tbaa !587
  store ptr %.sroa.20.5, ptr %i.lh, align 8, !tbaa !589
  store ptr %.sroa.50.5, ptr %i.li, align 8, !tbaa !588
  %.not.i.i.i.i.i = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZN4moldL14encode_androidINS_6X86_64EEESt6vectorIhSaIhEESt4spanINS_6ElfRelIT_EELm18446744073709551615EE.exit
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.lg to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef %i.lm) #31
  %.pre150.pre.pre.a = load ptr, ptr %i.lh, align 8, !tbaa !589
  %.pre152.pre.pre = load ptr, ptr %i.lf, align 8, !tbaa !587
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.bi, %_ZN4moldL14encode_androidINS_6X86_64EEESt6vectorIhSaIhEESt4spanINS_6ElfRelIT_EELm18446744073709551615EE.exit
  %.pre152.pre = phi ptr [ %.pre152.pre.pre, %bb.bi ], [ %.sroa.0102.5, %_ZN4moldL14encode_androidINS_6X86_64EEESt6vectorIhSaIhEESt4spanINS_6ElfRelIT_EELm18446744073709551615EE.exit ] ; 4 uses
  %.pre150.pre = phi ptr [ %.pre150.pre.pre.a, %bb.bi ], [ %.sroa.20.5, %_ZN4moldL14encode_androidINS_6X86_64EEESt6vectorIhSaIhEESt4spanINS_6ElfRelIT_EELm18446744073709551615EE.exit ] ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.ln, align 8   ; 4 uses
  %.not = icmp ne i64 %.0.copyload.i, 0
  %i.lo = ptrtoint ptr %.pre150.pre to i64
  %i.lp = ptrtoint ptr %.pre152.pre to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = icmp slt i64 %.0.copyload.i, %i.lq
  %or.cond = select i1 %.not, i1 %i.lr, i1 false
  br i1 %or.cond, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.ls, align 8, !tbaa !1420
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.lu = load i8, ptr %i.lt, align 8, !tbaa !1420, !range !350, !noundef !351
  %i.lv = trunc nuw i8 %i.lu to i1
  br i1 %i.lv, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.lw = ptrtoint ptr %.pre150.pre to i64
  %i.lx = ptrtoint ptr %.pre152.pre to i64
  %i.ly = sub i64 %i.lw, %i.lx                    ; 2 uses
  %i.lz = icmp ult i64 %i.ly, %.0.copyload.i
  br i1 %i.lz, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.bm

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.bl
  %i.ma = sub nuw i64 %.0.copyload.i, %i.ly
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.lf, i64 noundef %i.ma)
  %.pre149.a = load ptr, ptr %i.lh, align 8, !tbaa !589
  %.pre151 = load ptr, ptr %i.lf, align 8, !tbaa !587
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %bb.bl, %bb.bk
  %i.mb = phi ptr [ %.pre151, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ %.pre152.pre, %bb.bl ], [ %.pre152.pre, %bb.bk ]
  %i.mc = phi ptr [ %.pre149.a, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ %.pre150.pre, %bb.bl ], [ %.pre150.pre, %bb.bk ]
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %i.mb to i64
  %i.mf = sub i64 %i.md, %i.me
  store i64 %i.mf, ptr %i.ln, align 8
  br label %bb.bo

bb.bn:                                            ; preds = %._crit_edge
  %i.mg = sub nsw i64 %.0.lcssa, %.021.lcssa
  %i.mh = mul i64 %i.mg, 24
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.mh, ptr %i.mi, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 13984
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !579
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 88
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !389
  %i.mn = trunc i64 %i.mm to i32
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.mn, ptr %i.mo, align 8
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold13RelDynSectionINS_6X86_64EE12write_relocsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 13192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !395  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 13200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !395  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.015 = phi ptr [ %.1, %bb.c ], [ %2, %bb.a ]   ; 3 uses
  %.sroa.011.014 = phi ptr [ %i.p, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.011.014, align 8, !tbaa !397 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load i64, ptr %i.g, align 8, !tbaa !432  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.j = load i64, ptr %i.i, align 8, !tbaa !480  ; 2 uses
  %.not = icmp eq i64 %i.h, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = sub nsw i64 %i.h, %i.j
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(184) %i.f, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef %.015) #15
  %i.o = getelementptr inbounds [24 x i8], ptr %.015, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi ptr [ %i.o, %bb.b ], [ %.015, %.lr.ph ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.011.014, i64 8 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold13RelDynSectionINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2682
  %i.b = load i8, ptr %i.a, align 2, !tbaa !581, !range !350, !noundef !351
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73   ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZN4mold12write_vectorIhEEvPvRKSt6vectorIT_SaIS3_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 13176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !347
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i = load i64, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %.0.copyload.i
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.e, i64 %i.o, i1 false)
  br label %_ZN4mold12write_vectorIhEEvPvRKSt6vectorIT_SaIS3_EE.exit

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 13192
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !395  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 13200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !395  ; 2 uses
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %_ZN4mold12write_vectorIhEEvPvRKSt6vectorIT_SaIS3_EE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 13176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !347
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i5 = load i64, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.copyload.i5
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.015.i = phi ptr [ %.1.i, %bb.f ], [ %i.x, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.011.014.i = phi ptr [ %i.ai, %bb.f ], [ %i.q, %.lr.ph.i.preheader ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.011.014.i, align 8, !tbaa !397 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !432 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !480 ; 2 uses
  %.not.i = icmp eq i64 %i.aa, %i.ac
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ad = sub nsw i64 %i.aa, %i.ac
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !69
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(184) %i.y, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef %.015.i) #15, !inline_history !585
  %i.ah = getelementptr inbounds [24 x i8], ptr %.015.i, i64 %i.ad
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.1.i = phi ptr [ %i.ah, %bb.e ], [ %.015.i, %.lr.ph.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.011.014.i, i64 8 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.s
  br i1 %i.aj, label %_ZN4mold12write_vectorIhEEvPvRKSt6vectorIT_SaIS3_EE.exit, label %.lr.ph.i

_ZN4mold12write_vectorIhEEvPvRKSt6vectorIT_SaIS3_EE.exit: ; preds = %bb.f, %bb.d, %bb.c, %bb.b
  ret void
}

end_hunk_0
