Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFRecordSectionSplitter?download=true
inline.NumInlined: 1044
inline.NumDeleted: 586
begin_hunk_0_@_ZN4llvm7jitlink9LinkGraph10splitBlockIRSt6vectorIjSaIjEEEES3_IPNS0_5BlockESaIS8_EERS7_OT_PSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEE
define linkonce_odr hidden void @_ZN4llvm7jitlink9LinkGraph10splitBlockIRSt6vectorIjSaIjEEEES3_IPNS0_5BlockESaIS8_EERS7_OT_PSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.55") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4) local_unnamed_addr #2 comdat align 2 {
_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::vector.55", align 8    ; 5 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17 ; 5 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !201    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201  ; 3 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit
  store ptr %i.c, ptr %0, align 8, !tbaa !189
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.i, align 8, !tbaa !202
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.j, align 8, !tbaa !193
  br label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EED2Ev.exit54

bb.b:                                             ; preds = %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.lr.ph120, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.k

.lr.ph120:                                        ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !153
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

._crit_edge121:                                   ; preds = %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit42
  %i.u = load ptr, ptr %.pn100, align 8, !tbaa !53 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8, !tbaa !11
  %.sroa.0.0.copyload.i31 = load i64, ptr %2, align 8, !tbaa !11
  %.neg = sub i64 %i.q, %.sroa.0.0.copyload.i
  %i.v = add i64 %.neg, %.sroa.0.0.copyload.i31
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr null, ptr %i.w, align 8, !tbaa !128
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 %i.v, ptr %i.x, align 8, !tbaa !153
  store ptr %.sroa.075.4, ptr %0, align 8, !tbaa !189
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.16.3, ptr %i.y, align 8, !tbaa !202
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.32.4, ptr %i.z, align 8, !tbaa !193
  br label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EED2Ev.exit54

bb.c:                                             ; preds = %.lr.ph120, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit42
  %.sroa.075.0118 = phi ptr [ %i.c, %.lr.ph120 ], [ %.sroa.075.4, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit42 ] ; 4 uses
  %.sroa.16.0117 = phi ptr [ %i.d, %.lr.ph120 ], [ %.sroa.16.3, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit42 ] ; 5 uses
  %.sroa.32.0116 = phi ptr [ %i.d, %.lr.ph120 ], [ %.sroa.32.4, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit42 ] ; 2 uses
  %.sroa.070.0115 = phi ptr [ %i.e, %.lr.ph120 ], [ %i.bx, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit42 ] ; 2 uses
  %i.aa = load i32, ptr %.sroa.070.0115, align 4, !tbaa !30
  %i.ab = getelementptr inbounds i8, ptr %.sroa.16.0117, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !53 ; 3 uses
  %i.ad = zext i32 %i.aa to i64                   ; 3 uses
  %.sroa.0.0.copyload.i32 = load i64, ptr %i.ac, align 8, !tbaa !11
  %.sroa.0.0.copyload.i33 = load i64, ptr %2, align 8, !tbaa !11
  %.neg98 = sub i64 %i.ad, %.sroa.0.0.copyload.i32
  %i.ae = add i64 %.neg98, %.sroa.0.0.copyload.i33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr null, ptr %i.af, align 8, !tbaa !128
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !153
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !203 ; 2 uses
  %i.ai = load i64, ptr %i.p, align 8, !tbaa !153
  %.sroa.0.0.copyload.i34 = load i64, ptr %2, align 8, !tbaa !11
  %i.aj = add i64 %.sroa.0.0.copyload.i34, %i.ad
  %i.ak = load i64, ptr %i.s, align 8             ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 31                       ; 2 uses
  %i.an = lshr i64 %i.ak, 8
  %i.ao = add nuw nsw i64 %i.an, %i.ad
  %notmask99 = shl nsw i64 -1, %i.am
  %i.ap = xor i64 %notmask99, -1
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = load ptr, ptr %1, align 8, !tbaa !204   ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = add i64 %i.as, 64                       ; 2 uses
  %i.au = load i64, ptr %i.t, align 8, !tbaa !215
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %bb.d, label %bb.e, !prof !82

bb.d:                                             ; preds = %bb.c
  %i.aw = inttoptr i64 %i.at to ptr
  store ptr %i.aw, ptr %1, align 8, !tbaa !204
  br label %_ZN4llvm7jitlink9LinkGraph19createZeroFillBlockERNS0_7SectionEmNS_3orc12ExecutorAddrEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.ax = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(312) %1, i64 noundef 64, i64 noundef 64, i8 3)
  br label %_ZN4llvm7jitlink9LinkGraph19createZeroFillBlockERNS0_7SectionEmNS_3orc12ExecutorAddrEmm.exit

_ZN4llvm7jitlink9LinkGraph19createZeroFillBlockERNS0_7SectionEmNS_3orc12ExecutorAddrEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.ar, %bb.d ], [ %i.ax, %bb.e ] ; 9 uses
  store i64 %i.aj, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  store ptr %i.ah, ptr %i.az, align 8, !tbaa !203
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 24
  store ptr null, ptr %i.ba, align 8, !tbaa !128
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 32
  store i64 %i.ai, ptr %i.bb, align 8, !tbaa !153
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  %i.bd = shl nuw nsw i64 %i.am, 3
  %i.be = shl nuw nsw i64 %i.aq, 8
  %i.bf = or disjoint i64 %i.be, %i.bd
  %i.bg = or disjoint i64 %i.bf, 1
  store i64 %i.bg, ptr %i.ay, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr %.0.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !53
  %i.bi = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !216 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %.not.i.i35 = icmp eq ptr %.sroa.16.0117, %.sroa.32.0116
  br i1 %.not.i.i35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph19createZeroFillBlockERNS0_7SectionEmNS_3orc12ExecutorAddrEmm.exit
  store ptr %.0.i.i.i.i.i.i, ptr %.sroa.16.0117, align 8, !tbaa !53
  br label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit42

bb.g:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph19createZeroFillBlockERNS0_7SectionEmNS_3orc12ExecutorAddrEmm.exit
  %i.bj = ptrtoint ptr %.sroa.16.0117 to i64
  %i.bk = ptrtoint ptr %.sroa.075.0118 to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 6 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %bb.h, label %_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i36

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
  unreachable

_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i36: ; preds = %bb.g
  %i.bn = ashr exact i64 %i.bl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i37 = call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i.i37, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = call i64 @llvm.umin.i64(i64 %i.bo, i64 1152921504606846975)
  %i.br = select i1 %i.bp, i64 1152921504606846975, i64 %i.bq ; 3 uses
  %.not.i.i.i.i38 = icmp ne i64 %i.br, 0
  call void @llvm.assume(i1 %.not.i.i.i.i38)
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #17 ; 4 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.bl ; 2 uses
  store ptr %.0.i.i.i.i.i.i, ptr %i.bu, align 8, !tbaa !53
  %i.bv = icmp sgt i64 %i.bl, 0
  br i1 %i.bv, label %bb.i, label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i41

bb.i:                                             ; preds = %_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i36
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr align 8 %.sroa.075.0118, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i41

_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i41: ; preds = %bb.i, %_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i36
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.075.0118, i64 noundef %i.bl) #19
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br
  br label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit42

_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit42: ; preds = %bb.f, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i41
  %.sroa.32.4 = phi ptr [ %i.bw, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i41 ], [ %.sroa.32.0116, %bb.f ] ; 2 uses
  %.pn100 = phi ptr [ %i.bu, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i41 ], [ %.sroa.16.0117, %bb.f ] ; 2 uses
  %.sroa.075.4 = phi ptr [ %i.bt, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i41 ], [ %.sroa.075.0118, %bb.f ] ; 2 uses
  %.sroa.16.3 = getelementptr inbounds nuw i8, ptr %.pn100, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.070.0115, i64 4 ; 2 uses
  %.not97 = icmp eq ptr %i.bx, %i.g
  br i1 %.not97, label %._crit_edge121, label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit52
  store ptr %.sroa.075.5, ptr %5, align 8, !tbaa !189
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.16.4, ptr %i.by, align 8, !tbaa !202
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %.sroa.32.5, ptr %i.bz, align 8, !tbaa !193
  call void @_ZN4llvm7jitlink9LinkGraph14splitBlockImplESt6vectorIPNS0_5BlockESaIS4_EEPSt8optionalINS_11SmallVectorIPNS0_6SymbolELj8EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.55") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr nofree noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %4) #16
  %i.ca = load ptr, ptr %5, align 8, !tbaa !189   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EED2Ev.exit54, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !193
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.ce) #19
  br label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EED2Ev.exit54

bb.k:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit52
  %.sroa.075.1111 = phi ptr [ %i.c, %.lr.ph ], [ %.sroa.075.5, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit52 ] ; 4 uses
  %.sroa.16.1110 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.16.4, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit52 ] ; 4 uses
  %.sroa.32.1109 = phi ptr [ %i.e, %.lr.ph ], [ %i.du, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit52 ] ; 2 uses
  %.sroa.058.0108 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.32.5, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit52 ] ; 2 uses
  %i.cf = load i32, ptr %.sroa.32.1109, align 4, !tbaa !30
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !203 ; 2 uses
  %.sroa.0.0.copyload.i43 = load i64, ptr %2, align 8, !tbaa !11
  %i.ch = zext i32 %i.cf to i64                   ; 2 uses
  %i.ci = add i64 %.sroa.0.0.copyload.i43, %i.ch
  %i.cj = load i64, ptr %i.n, align 8             ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = and i64 %i.ck, 31                       ; 2 uses
  %i.cm = lshr i64 %i.cj, 8
  %i.cn = add nuw nsw i64 %i.cm, %i.ch
  %notmask = shl nsw i64 -1, %i.cl
  %i.co = xor i64 %notmask, -1
  %i.cp = and i64 %i.cn, %i.co
  %i.cq = load ptr, ptr %1, align 8, !tbaa !204   ; 2 uses
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = add i64 %i.cr, 64                       ; 2 uses
  %i.ct = load i64, ptr %i.o, align 8, !tbaa !215
  %i.cu = icmp ult i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.l, label %bb.m, !prof !82

bb.l:                                             ; preds = %bb.k
  %i.cv = inttoptr i64 %i.cs to ptr
  store ptr %i.cv, ptr %1, align 8, !tbaa !204
  br label %_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit

bb.m:                                             ; preds = %bb.k
  %i.cw = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(312) %1, i64 noundef 64, i64 noundef 64, i8 3)
  br label %_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit

_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i.i.i.i44 = phi ptr [ %i.cq, %bb.l ], [ %i.cw, %bb.m ] ; 7 uses
  store i64 %i.ci, ptr %.0.i.i.i.i.i.i44, align 8, !tbaa !11
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i44, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i44, i64 16
  store ptr %i.cg, ptr %i.cy, align 8, !tbaa !203
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i44, i64 24
  %i.da = shl nuw nsw i64 %i.cl, 3
  %i.db = shl nuw nsw i64 %i.cp, 8
  %i.dc = or disjoint i64 %i.db, %i.da
  %i.dd = or disjoint i64 %i.dc, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cz, i8 0, i64 40, i1 false)
  store i64 %i.dd, ptr %i.cx, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %.0.i.i.i.i.i.i44, ptr %i.a, align 8, !tbaa !53
  %i.df = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !223 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.not.i.i45 = icmp eq ptr %.sroa.16.1110, %.sroa.058.0108
  br i1 %.not.i.i45, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit
  store ptr %.0.i.i.i.i.i.i44, ptr %.sroa.16.1110, align 8, !tbaa !53
  br label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit52

bb.o:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit
  %i.dg = ptrtoint ptr %.sroa.16.1110 to i64
  %i.dh = ptrtoint ptr %.sroa.075.1111 to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 6 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775800
  br i1 %i.dj, label %bb.p, label %_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i46

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
  unreachable

_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i46: ; preds = %bb.o
  %i.dk = ashr exact i64 %i.di, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i47 = call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i.i47, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dl, i64 1152921504606846975)
  %i.do = select i1 %i.dm, i64 1152921504606846975, i64 %i.dn ; 3 uses
  %.not.i.i.i.i48 = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i.i.i48)
  %i.dp = shl nuw nsw i64 %i.do, 3
  %i.dq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #17 ; 4 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.di ; 2 uses
  store ptr %.0.i.i.i.i.i.i44, ptr %i.dr, align 8, !tbaa !53
  %i.ds = icmp sgt i64 %i.di, 0
  br i1 %i.ds, label %bb.q, label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i51

bb.q:                                             ; preds = %_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i46
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr align 8 %.sroa.075.1111, i64 %i.di, i1 false)
  br label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i51

_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i51: ; preds = %bb.q, %_ZNKSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i46
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.075.1111, i64 noundef %i.di) #19
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.do
  br label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit52

_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE9push_backEOS3_.exit52: ; preds = %bb.n, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i51
  %.sroa.32.5 = phi ptr [ %i.dt, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i51 ], [ %.sroa.058.0108, %bb.n ] ; 2 uses
  %.pn = phi ptr [ %i.dr, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i51 ], [ %.sroa.16.1110, %bb.n ]
  %.sroa.075.5 = phi ptr [ %i.dq, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i51 ], [ %.sroa.075.1111, %bb.n ] ; 2 uses
  %.sroa.16.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.32.1109, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.du, %i.g
  br i1 %.not, label %._crit_edge, label %bb.k

_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EED2Ev.exit54: ; preds = %bb.a, %._crit_edge121, %._crit_edge, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18BinaryStreamReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %0, align 8, !tbaa !151
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !195
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !197
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !151
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !230
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !151
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !230
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, !prof !199

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit

_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

declare noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

declare noundef zeroext i1 @_ZNK4llvm6Triple14isLittleEndianEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18BinaryStreamReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %0, align 8, !tbaa !151
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm18BinaryStreamReaderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !195
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !197
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !151
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !198
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !151
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !198
  br label %_ZN4llvm18BinaryStreamReaderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN4llvm18BinaryStreamReaderD2Ev.exit, !prof !199

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !200
  br label %_ZN4llvm18BinaryStreamReaderD2Ev.exit

_ZN4llvm18BinaryStreamReaderD2Ev.exit:            ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !151
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !231
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !30   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !151
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !231
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_7jitlink6SymbolELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #16
  %i.f = load ptr, ptr %0, align 8, !tbaa !55
  %i.g = load i32, ptr %i.a, align 8, !tbaa !57
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !57
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !57
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

end_hunk_0
