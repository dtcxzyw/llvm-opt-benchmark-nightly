Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectionDAGDumper?download=true
inline.NumInlined: 1763
inline.NumDeleted: 749
begin_hunk_0_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_:bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !229
  %i.k = load i64, ptr %i.e, align 8, !tbaa !230
  store i64 %i.k, ptr %i.c, align 8, !tbaa !230
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !240
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !240
  store ptr %i.e, ptr %i.b, align 8, !tbaa !229
  store i64 0, ptr %i.m, align 8, !tbaa !240
  store i8 0, ptr %i.e, align 8, !tbaa !230
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6utostrB5cxx11Emb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [21 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 21 ; 2 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  store i8 48, ptr %i.e, align 4, !tbaa !230
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.111 = phi ptr [ %i.i, %.lr.ph ], [ %i.c, %bb.a ]
  %.0810 = phi i64 [ %i.j, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.f = urem i64 %.0810, 10
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = or disjoint i8 %i.g, 48
  %i.i = getelementptr inbounds i8, ptr %.111, i64 -1 ; 3 uses
  store i8 %i.h, ptr %i.i, align 1, !tbaa !230
  %i.j = udiv i64 %.0810, 10
  %.not = icmp ult i64 %.0810, 10
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !307

._crit_edge:                                      ; preds = %.lr.ph, %.thread
  %.1.lcssa = phi ptr [ %i.e, %.thread ], [ %i.i, %.lr.ph ] ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds i8, ptr %.1.lcssa, i64 -1 ; 2 uses
  store i8 45, ptr %i.k, align 1, !tbaa !230
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.2 = phi ptr [ %i.k, %bb.b ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !238
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.n = ptrtoint ptr %i.c to i64
  %i.o = ptrtoint ptr %.2 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  store i64 %i.p, ptr %i.a, align 8, !tbaa !239
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !229
  %i.s = load i64, ptr %i.a, align 8, !tbaa !239
  store i64 %i.s, ptr %i.l, align 8, !tbaa !230
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.t = phi ptr [ %i.r, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  switch i64 %i.p, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %.2, align 1, !tbaa !230
  store i8 %i.u, ptr %i.t, align 1, !tbaa !230
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %.2, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.v = load i64, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  store i64 %i.v, ptr %i.m, align 8, !tbaa !240
  %i.w = load ptr, ptr %0, align 8, !tbaa !229
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 0, ptr %i.x, align 1, !tbaa !230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret void
}

declare { ptr, i64 } @_ZN4llvm9Intrinsic11getBaseNameEj(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm9StringRef3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !242    ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !238
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !240
  store i8 0, ptr %i.c, align 8, !tbaa !230
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !243  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.f, ptr %i.a, align 8, !tbaa !239
  %i.h = icmp ugt i64 %i.f, 15
  br i1 %i.h, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !229
  %i.j = load i64, ptr %i.a, align 8, !tbaa !239
  store i64 %i.j, ptr %i.g, align 8, !tbaa !230
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !230
  store i8 %i.l, ptr %i.k, align 1, !tbaa !230
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.b, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.m = load i64, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !240
  %i.o = load ptr, ptr %0, align 8, !tbaa !229
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN4llvm6SDNode18getIndexedModeNameENS_3ISD14MemIndexedModeE(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm6SDNode13print_detailsERNS_11raw_ostreamEPKNS_12SelectionDAGE.20, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi ptr [ @.str.563, %bb.a ], [ %switch.load, %switch.lookup ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm6SDNode11print_typesERNS_11raw_ostreamEPKNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.b = load i16, ptr %i.a, align 2, !tbaa !309  ; 3 uses
  %.not27 = icmp eq i16 %i.b, 0
  br i1 %.not27, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.i = zext i16 %i.b to i64
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !245  ; 2 uses
  %.sroa.21.0.copyload.i.pn.in.peel = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.21.0.copyload.i.pn.peel = load ptr, ptr %.sroa.21.0.copyload.i.pn.in.peel, align 8, !tbaa !247 ; 2 uses
  %.sroa.0.0.copyload.i.pn.peel = load i16, ptr %i.j, align 8, !tbaa !249 ; 2 uses
  %.not.i.i.peel = icmp eq i16 %.sroa.0.0.copyload.i.pn.peel, 1
  %i.k = icmp eq ptr %.sroa.21.0.copyload.i.pn.peel, null
  %.not4.i.peel = select i1 %.not.i.i.peel, i1 %i.k, i1 false
  br i1 %.not4.i.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i16 %.sroa.0.0.copyload.i.pn.peel, ptr %4, align 8
  store ptr %.sroa.21.0.copyload.i.pn.peel, ptr %i.f, align 8
  call void @_ZNK4llvm3EVT12getEVTStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #17
  %i.l = load ptr, ptr %3, align 8, !tbaa !229
  %i.m = load i64, ptr %i.g, align 8, !tbaa !240
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.l, i64 noundef %i.m) #17 ; 0 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !229    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.h
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !230
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %bb.c
  %5 = load i64, ptr %i.g, align 8, !tbaa !240
  %6 = icmp ult i64 %5, 16
  call void @llvm.assume(i1 %6)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit19.peel

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !253
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !254  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 2
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i16 26723, ptr %i.t, align 1
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !254
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store ptr %i.z, ptr %i.d, align 8, !tbaa !254
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit19.peel

bb.f:                                             ; preds = %bb.d
  %i.aa = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.569, i64 noundef 2) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit19.peel

_ZN4llvm11raw_ostreamlsEPKc.exit19.peel:          ; preds = %bb.f, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %.not.peel = icmp eq i16 %i.b, 1
  br i1 %.not.peel, label %._crit_edge, label %.split10

._crit_edge:                                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit19, %_ZN4llvm11raw_ostreamlsEPKc.exit19.peel, %bb.a
  ret void

.split10:                                         ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit19.peel, %_ZN4llvm11raw_ostreamlsEPKc.exit19
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4llvm11raw_ostreamlsEPKc.exit19 ], [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit19.peel ] ; 3 uses
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !253
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !254 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split10
  %i.ae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.568, i64 noundef 1) #17 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %.split10
  store i8 44, ptr %i.ac, align 1
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !254
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.d, align 8, !tbaa !254
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !245 ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %.sroa.21.0.copyload.i.pn.in = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.21.0.copyload.i.pn = load ptr, ptr %.sroa.21.0.copyload.i.pn.in, align 8, !tbaa !247
  %.sroa.0.0.copyload.i.pn = load i16, ptr %i.ai, align 8, !tbaa !249
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.pn, 1
  %i.aj = icmp eq ptr %.sroa.21.0.copyload.i.pn, null
  %.not4.i = select i1 %.not.i.i, i1 %i.aj, i1 false
  br i1 %.not4.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !253
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !254 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ult i64 %i.ao, 2
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.569, i64 noundef 2) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit19

bb.l:                                             ; preds = %bb.j
  store i16 26723, ptr %i.al, align 1
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !254
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store ptr %i.as, ptr %i.d, align 8, !tbaa !254
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit19

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload.i20 = load i16, ptr %i.at, align 8, !tbaa !249
  %.sroa.21.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.21.0.copyload.i22 = load ptr, ptr %.sroa.21.0..sroa_idx.i21, align 8, !tbaa !247
  store i16 %.sroa.0.0.copyload.i20, ptr %4, align 8
  store ptr %.sroa.21.0.copyload.i22, ptr %i.f, align 8
  call void @_ZNK4llvm3EVT12getEVTStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #17
  %i.au = load ptr, ptr %3, align 8, !tbaa !229
  %i.av = load i64, ptr %i.g, align 8, !tbaa !240
  %i.aw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.au, i64 noundef %i.av) #17 ; 0 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !229   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.h
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.az = load i64, ptr %i.h, align 8, !tbaa !230
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit19

_ZN4llvm11raw_ostreamlsEPKc.exit19:               ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not, label %._crit_edge, label %.split10, !llvm.loop !308
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !253
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !254  ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i64 noundef %i.a) #17
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.c:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %.not.i2 = icmp eq i64 %i.a, 0
  br i1 %.not.i2, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !254
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.a
  store ptr %i.l, ptr %i.d, align 8, !tbaa !254
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %0, %bb.d ], [ %0, %bb.c ], [ %0, %bb.a ]
  ret ptr %.0.i
}

declare void @_ZNK4llvm3EVT12getEVTStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm6SDNode13print_detailsERNS_11raw_ostreamEPKNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %4 = alloca %"class.llvm::Printable", align 8   ; 8 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %12 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 16 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 4, !tbaa !226
  %i.b = trunc i32 %.sroa.0.0.copyload.i to i1
  br i1 %i.b, label %bb.b, label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !253
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !254  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ult i64 %i.i, 4
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.570, i64 noundef 4) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  store i32 2004184608, ptr %i.f, align 1
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !254
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store ptr %i.m, ptr %i.e, align 8, !tbaa !254
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.0.0.copyload.i414 = load i32, ptr %i.a, align 4, !tbaa !226
  %i.n = and i32 %.sroa.0.0.copyload.i414, 2
  %.not785 = icmp eq i32 %i.n, 0
  br i1 %.not785, label %_ZN4llvm11raw_ostreamlsEPKc.exit417, label %bb.e

end_hunk_0
