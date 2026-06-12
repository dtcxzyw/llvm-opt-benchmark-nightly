inline.NumInlined: 439
inline.NumDeleted: 146
begin_hunk_0_@_ZN6Assimp20EmbedTexturesProcess15SetupPropertiesEPKNS_8ImporterE:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.aa, align 8
  store i8 0, ptr %i.z, align 1
  %i.ab = load ptr, ptr %2, align 8               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ag = load ptr, ptr %3, align 8               ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.b
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load i64, ptr %i.b, align 8
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ak = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull @.str.1, i64 noundef -1, i64 noundef 2) #19
  %i.al = add i64 %i.ak, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !4)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.an = load i64, ptr %i.am, align 8, !noalias !4
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.ao, ptr %4, align 8, !alias.scope !4
  %i.ap = load ptr, ptr %i.d, align 8, !noalias !4 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.al, i64 %i.an) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !4
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !noalias !4
  %i.aq = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.aq, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.ar = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ar, ptr %4, align 8, !alias.scope !4
  %i.as = load i64, ptr %i.a, align 8, !noalias !4
  store i64 %i.as, ptr %i.ao, align 8, !alias.scope !4
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.at = phi ptr [ %i.ar, %.noexc10.i.i ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.au = load i8, ptr %i.ap, align 1
  store i8 %i.au, ptr %i.at, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.ap, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.av = load i64, ptr %i.a, align 8, !noalias !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.av, ptr %i.aw, align 8, !alias.scope !4
  %i.ax = load ptr, ptr %4, align 8, !alias.scope !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !4
  %i.az = load ptr, ptr %i.d, align 8             ; 6 uses
  %i.ba = icmp eq ptr %i.az, %i.f
  %i.bb = load ptr, ptr %4, align 8               ; 6 uses
  %i.bc = icmp eq ptr %i.bb, %i.ao                ; 2 uses
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.bc, label %bb.k, label %.thread.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.bc, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i8

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.bd = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %.not21.i10 = icmp eq ptr %4, %i.d
  br i1 %.not21.i10, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15, label %bb.l, !prof !3

bb.l:                                             ; preds = %bb.k
  switch i64 %i.bd, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bf = load i8, ptr %i.bb, align 1
  store i8 %i.bf, ptr %i.az, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.bb, i64 %i.bd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11: ; preds = %bb.n, %bb.m, %bb.l
  %i.bg = load i64, ptr %i.aw, align 8            ; 2 uses
  store i64 %i.bg, ptr %i.am, align 8
  %i.bh = load ptr, ptr %i.d, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 0, ptr %i.bi, align 1
  %.pre.i12 = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15

.thread.i14:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  store ptr %i.bb, ptr %i.d, align 8
  %i.bj = load <2 x i64>, ptr %i.aw, align 8
  store <2 x i64> %i.bj, ptr %i.am, align 8
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i7
  %i.bk = load i64, ptr %i.f, align 8
  store ptr %i.bb, ptr %i.d, align 8
  %i.bl = load <2 x i64>, ptr %i.aw, align 8
  store <2 x i64> %i.bl, ptr %i.am, align 8
  %.not.i9 = icmp eq ptr %i.az, null
  br i1 %.not.i9, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i8
  store ptr %i.az, ptr %4, align 8
  store i64 %i.bk, ptr %i.ao, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i8, %.thread.i14
  store ptr %i.ao, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11, %bb.o, %bb.p
  %i.bm = phi ptr [ %.pre.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i11 ], [ %i.az, %bb.o ], [ %i.ao, %bb.p ], [ %i.bb, %bb.k ]
  store i64 0, ptr %i.aw, align 8
  store i8 0, ptr %i.bm, align 1
  %i.bn = load ptr, ptr %4, align 8               ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ao
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15
  %i.bp = load i64, ptr %i.ao, align 8
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.br = call noundef ptr @_ZNK6Assimp8Importer12GetIOHandlerEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.br, ptr %i.bs, align 8
  ret void

bb.q:                                             ; preds = %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %3, align 8               ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.b
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.q
  %i.bw = load i64, ptr %i.b, align 8
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.bt
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZNK6Assimp8Importer17GetPropertyStringEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef ptr @_ZNK6Assimp8Importer12GetIOHandlerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp20EmbedTexturesProcess7ExecuteEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.aiString, align 4           ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %or.cond = select i1 %6, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %2, i8 0, i64 1028, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.d

._crit_edge43:                                    ; preds = %bb.e, %bb.c
  %i.n = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4infoIJRA41_KcRjRA11_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull align 1 dereferenceable(41) @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.o

bb.d:                                             ; preds = %.lr.ph42, %bb.e
  %i.o = phi i32 [ 0, %.lr.ph42 ], [ %i.x, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr %i.g, align 8
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %bb.d, label %._crit_edge43, !llvm.loop !7

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %i.v = phi i32 [ %i.o, %bb.d ], [ %i.x, %._crit_edge ] ; 2 uses
  %.02939 = phi i32 [ 1, %bb.d ], [ %i.y, %._crit_edge ] ; 4 uses
  %i.w = call noundef i32 @aiGetMaterialTextureCount(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i32 noundef %.02939) ; 2 uses
  %.not44 = icmp eq i32 %i.w, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.n, %bb.f
  %i.x = phi i32 [ %i.v, %bb.f ], [ %i.bb, %bb.n ] ; 2 uses
  %i.y = add nuw nsw i32 %.02939, 1               ; 2 uses
  %exitcond45.not = icmp eq i32 %i.y, 27
  br i1 %exitcond45.not, label %bb.e, label %bb.f, !llvm.loop !9

.lr.ph:                                           ; preds = %bb.f, %bb.n
  %i.z = phi i32 [ %i.bb, %bb.n ], [ %i.v, %bb.f ] ; 3 uses
  %.02838 = phi i32 [ %i.bc, %bb.n ], [ 0, %bb.f ] ; 3 uses
  %i.aa = call noundef i32 @aiGetMaterialTexture(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i32 noundef %.02939, i32 noundef %.02838, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  %i.ab = load i8, ptr %i.j, align 4
  %i.ac = icmp eq i8 %i.ab, 42
  br i1 %i.ac, label %bb.n, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.k, ptr %3, align 8
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.ad, ptr %i.a, align 8
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.af, ptr %3, align 8
  %i.ag = load i64, ptr %i.a, align 8
  store i64 %i.ag, ptr %i.k, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.g
  %i.ah = phi ptr [ %i.af, %.noexc.i ], [ %i.k, %bb.g ] ; 2 uses
  switch i64 %i.ad, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %i.j, align 4
  store i8 %i.ai, ptr %i.ah, align 1
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 4 %i.j, i64 %i.ad, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.aj = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.aj, ptr %i.l, align 8
  %i.ak = load ptr, ptr %3, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 0, ptr %i.al, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.am = invoke noundef zeroext i1 @_ZNK6Assimp20EmbedTexturesProcess10addTextureEP7aiSceneRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %3, align 8               ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.k
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ap = load i64, ptr %i.k, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %i.am, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = load i32, ptr %i.m, align 8
  %i.as = add i32 %i.ar, -1
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %i.as) #19
  store i32 %i.at, ptr %2, align 4
  %i.au = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull %2, ptr noundef nonnull @.str.3, i32 noundef %.02939, i32 noundef %.02838) ; 0 uses
  %i.av = add i32 %i.z, 1                         ; 2 uses
  store i32 %i.av, ptr %i.b, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %3, align 8               ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.k
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.m
  %i.az = load i64, ptr %i.k, align 8
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.aw

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.l, %.lr.ph
  %i.bb = phi i32 [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.av, %bb.l ], [ %i.z, %.lr.ph ] ; 2 uses
  %i.bc = add nuw i32 %.02838, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bc, %i.w
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

bb.o:                                             ; preds = %bb.a, %bb.b, %._crit_edge43
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6Assimp20EmbedTexturesProcess10addTextureEP7aiSceneRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNK6Assimp20EmbedTexturesProcess18tryToFindValidPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.ai, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8
  store i16 25202, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.i, align 2
  %i.j = load ptr, ptr %3, align 8
  %i.k = load ptr, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef %i.j, ptr noundef nonnull %i.g)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.d, !inline_history !11 ; 8 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  %i.o = load ptr, ptr %4, align 8                ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.g
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.q = load i64, ptr %i.g, align 8
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp6Logger5errorIJRA48_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull align 1 dereferenceable(48) @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) @.str.11)
          to label %bb.ai unwind label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %4, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.g
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.d
  %i.w = load i64, ptr %i.g, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ah

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = load ptr, ptr %i.n, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef i64 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.g unwind label %bb.z       ; 4 uses

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp ugt i64 %i.ac, -5
  %i.ae = and i64 %i.ac, -4
  %i.af = add i64 %i.ae, 4
  %i.ag = select i1 %i.ad, i64 -1, i64 %i.af
  %i.ah = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #21
          to label %bb.h unwind label %bb.aa      ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.n, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0, i32 noundef 0)
          to label %bb.i unwind label %bb.aa      ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.n, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.ah, i64 noundef %i.ac, i64 noundef 1)
          to label %bb.j unwind label %bb.aa      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8            ; 2 uses
  %i.aw = add i32 %i.av, 1                        ; 2 uses
  store i32 %i.aw, ptr %i.au, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  %i.az = zext i32 %i.aw to i64
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ba) #21
          to label %bb.l unwind label %bb.ab      ; 2 uses

bb.l:                                             ; preds = %bb.k
  store ptr %i.bb, ptr %i.ax, align 8
  %i.bc = zext i32 %i.av to i64                   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.ay, i64 %i.bd, i1 false)
  %i.be = icmp eq ptr %i.ay, null
  br i1 %i.be, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bf = invoke noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #21
          to label %bb.o unwind label %bb.ac      ; 6 uses

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1028) %i.bh, i8 0, i64 1028, i1 false)
  %i.bi = trunc i64 %i.ac to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bf, i8 0, i64 17, i1 false)
  store i32 %i.bi, ptr %i.bf, align 8
  store ptr %i.ah, ptr %i.bg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bj = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 46, i64 noundef -1) #19
  %i.bk = add i64 %i.bj, 1                        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !12 ; 3 uses
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i64 noundef %i.bk, i64 noundef %i.bm) #22
          to label %.noexc55 unwind label %bb.ad

.noexc55:                                         ; preds = %bb.p
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.bo, ptr %5, align 8, !alias.scope !12
  %i.bp = load ptr, ptr %2, align 8, !noalias !12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bk ; 2 uses
  %i.br = sub nuw i64 %i.bm, %i.bk                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !12
  store i64 %i.br, ptr %i.a, align 8, !noalias !12
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc56 unwind label %bb.ad  ; 2 uses

.noexc56:                                         ; preds = %.noexc10.i.i
  store ptr %i.bt, ptr %5, align 8, !alias.scope !12
  %i.bu = load i64, ptr %i.a, align 8, !noalias !12
  store i64 %i.bu, ptr %i.bo, align 8, !alias.scope !12
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bv = phi ptr [ %i.bt, %.noexc56 ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.br, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i
end_hunk_0
