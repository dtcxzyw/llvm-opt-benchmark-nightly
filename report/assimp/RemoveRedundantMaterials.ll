inline.NumInlined: 261
inline.NumDeleted: 143
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp26RemoveRedundantMatsProcessC2Ev:bb.a
  tail call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp26RemoveRedundantMatsProcessE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.c, align 8
  store i8 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK6Assimp26RemoveRedundantMatsProcess8IsActiveEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = and i32 %1, 4096
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp26RemoveRedundantMatsProcess15SetupPropertiesEPKNS_8ImporterE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  invoke void @_ZNK6Assimp8Importer17GetPropertyStringEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.a unwind label %bb.g

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  %i.g = load ptr, ptr %2, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.i, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.l)
  switch i64 %i.k, label %bb.d [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.g, align 1
  store i8 %i.m, ptr %i.d, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.n = load i64, ptr %i.j, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1
  %.pre.i = load ptr, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.g, ptr %i.c, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load <2 x i64>, ptr %i.s, align 8
  store <2 x i64> %i.t, ptr %i.r, align 8
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.u = load i64, ptr %i.e, align 8
  store ptr %i.g, ptr %i.c, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load <2 x i64>, ptr %i.v, align 8
  store <2 x i64> %i.x, ptr %i.w, align 8
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.d, ptr %2, align 8
  store i64 %i.u, ptr %i.h, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.e, %bb.f
  %i.y = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.d, %bb.e ], [ %i.h, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.z, align 8
  store i8 0, ptr %i.y, align 1
  %i.aa = load ptr, ptr %2, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.af = load ptr, ptr %3, align 8               ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load i64, ptr %i.a, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %3, align 8               ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.a
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.g
  %i.am = load i64, ptr %i.a, align 8
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.aj
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZNK6Assimp8Importer17GetPropertyStringEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp26RemoveRedundantMatsProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::list", align 8 ; 18 uses
  %3 = alloca %struct.aiString, align 4           ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.aiString, align 4           ; 8 uses
  %i.d = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.d, ptr noundef nonnull @.str.2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64                     ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 63                 ; 2 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = and i64 %i.j, 1073741816
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #17 ; 10 uses
  %i.m = lshr i64 %i.i, 3
  %.idx.i = and i64 %i.m, 1073741816              ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %.idx.i, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8              ; 4 uses
  %.not240 = icmp eq i32 %i.o, 0
  br i1 %.not240, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %wide.trip.count = zext i32 %i.o to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod321 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod321)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.epil.init
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 232
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = lshr i32 %i.v, 6
  %.zext197.epil = zext nneg i32 %i.w to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.zext197.epil ; 2 uses
  %i.y = and i32 %i.v, 63
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = load i64, ptr %i.x, align 8
  %i.ac = or i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %i.x, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i64, ptr %i.ad, align 8
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %bb.p, label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 232
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.aj = lshr i32 %i.ai, 6
  %.zext197 = zext nneg i32 %i.aj to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.zext197 ; 2 uses
  %i.al = and i32 %i.ai, 63
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw i64 1, %i.am
  %i.ao = load i64, ptr %i.ak, align 8
  %i.ap = or i64 %i.an, %i.ao
  store i64 %i.ap, ptr %i.ak, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 232
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %i.av = lshr i32 %i.au, 6
  %.zext197.1 = zext nneg i32 %i.av to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.zext197.1 ; 2 uses
  %i.ax = and i32 %i.au, 63
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = load i64, ptr %i.aw, align 8
  %i.bb = or i64 %i.az, %i.ba
  store i64 %i.bb, ptr %i.aw, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !3

bb.d:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.bd, align 8
  store ptr %2, ptr %2, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.be, align 8
  invoke void @_ZN6Assimp20ConvertListToStringsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_4listIS5_SaIS5_EEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.preheader213 unwind label %bb.e

.preheader213:                                    ; preds = %bb.d
  %i.bf = load i32, ptr %i.e, align 8
  %.not241 = icmp eq i32 %i.bf, 0
  br i1 %.not241, label %._crit_edge221, label %.lr.ph220

.lr.ph220:                                        ; preds = %.preheader213
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  br label %bb.f

._crit_edge221:                                   ; preds = %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEA1024_cET_S9_S9_RKT0_.exit.thread, %.preheader213
  %.pre276 = phi i32 [ 0, %.preheader213 ], [ %i.cv, %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEA1024_cET_S9_S9_RKT0_.exit.thread ]
  %i.bi = load ptr, ptr %2, align 8               ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bi, %2
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bi, %._crit_edge221 ] ; 4 uses
  %i.bj = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.bo = load i64, ptr %i.bm, align 8
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 48) #16
  %.not.i.i150 = icmp eq ptr %i.bj, %2
  br i1 %.not.i.i150, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !5

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pre.pre = load i32, ptr %i.e, align 8
  br label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.loopexit, %._crit_edge221
  %.pre = phi i32 [ %.pre.pre, %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.loopexit ], [ %.pre276, %._crit_edge221 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %.pre277 = zext i32 %.pre to i64
  %i.bq = icmp eq i32 %.pre, 0
  br label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.f:                                             ; preds = %.lr.ph220, %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEA1024_cET_S9_S9_RKT0_.exit.thread
  %indvars.iv252 = phi i64 [ 0, %.lr.ph220 ], [ %indvars.iv.next253, %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEA1024_cET_S9_S9_RKT0_.exit.thread ] ; 4 uses
  %i.bs = load ptr, ptr %i.bg, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv252
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %3, i8 0, i64 1028, i1 false)
  %i.bv = invoke noundef i32 @aiGetMaterialString(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(1028) %3)
          to label %_ZNK10aiMaterial3GetEPKcjjR8aiString.exit unwind label %bb.l ; 0 uses

_ZNK10aiMaterial3GetEPKcjjR8aiString.exit:        ; preds = %bb.f
  %i.bw = load i32, ptr %3, align 4
  %.not137 = icmp eq i32 %i.bw, 0
  br i1 %.not137, label %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEA1024_cET_S9_S9_RKT0_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK10aiMaterial3GetEPKcjjR8aiString.exit
  %i.bx = load ptr, ptr %2, align 8               ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.bx, %2
  br i1 %.not6.i.i.i, label %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEA1024_cET_S9_S9_RKT0_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.by = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(1024) %i.bh) #15 ; 3 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i.split.us.i.i, label %.lr.ph.i.split.i.i

.lr.ph.i.split.us.i.i:                            ; preds = %.lr.ph.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIA1024_KcEclISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbT_.exit.thread5.i.us.i.i
  %.sroa.03.07.i.us.i.i = phi ptr [ %i.cd, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIA1024_KcEclISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbT_.exit.thread5.i.us.i.i ], [ %i.bx, %.lr.ph.i.i.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.us.i.i, i64 24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEA1024_cET_S9_S9_RKT0_.exit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIA1024_KcEclISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbT_.exit.thread5.i.us.i.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIA1024_KcEclISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbT_.exit.thread5.i.us.i.i: ; preds = %.lr.ph.i.split.us.i.i
  %i.cd = load ptr, ptr %.sroa.03.07.i.us.i.i, align 8 ; 2 uses
  %.not.i.us.i.i = icmp eq ptr %i.cd, %2
  br i1 %.not.i.us.i.i, label %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEA1024_cET_S9_S9_RKT0_.exit.thread, label %.lr.ph.i.split.us.i.i, !llvm.loop !6

.lr.ph.i.split.i.i:                               ; preds = %.lr.ph.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIA1024_KcEclISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbT_.exit.thread5.i.i.i
  %.sroa.03.07.i.i.i = phi ptr [ %i.ck, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIA1024_KcEclISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbT_.exit.thread5.i.i.i ], [ %i.bx, %.lr.ph.i.i.i ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = icmp eq i64 %i.cf, %i.by
  br i1 %i.cg, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIA1024_KcEclISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbT_.exit.i.i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIA1024_KcEclISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbT_.exit.thread5.i.i.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIA1024_KcEclISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbT_.exit.i.i.i: ; preds = %.lr.ph.i.split.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ci, ptr nonnull align 1 dereferenceable(1024) %i.bh, i64 %i.by)
  %i.cj = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cj, label %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEA1024_cET_S9_S9_RKT0_.exit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIA1024_KcEclISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbT_.exit.thread5.i.i.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIA1024_KcEclISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbT_.exit.thread5.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIA1024_KcEclISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbT_.exit.i.i.i, %.lr.ph.i.split.i.i
  %i.ck = load ptr, ptr %.sroa.03.07.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ck, %2
  br i1 %.not.i.i.i, label %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEA1024_cET_S9_S9_RKT0_.exit.thread, label %.lr.ph.i.split.i.i, !llvm.loop !6

_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEA1024_cET_S9_S9_RKT0_.exit: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIA1024_KcEclISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbT_.exit.i.i.i, %.lr.ph.i.split.us.i.i
  %.sroa.03.0.lcssa.i.i.i = phi ptr [ %.sroa.03.07.i.us.i.i, %.lr.ph.i.split.us.i.i ], [ %.sroa.03.07.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIA1024_KcEclISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbT_.exit.i.i.i ]
  %.not204 = icmp eq ptr %.sroa.03.0.lcssa.i.i.i, %2
  br i1 %.not204, label %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEA1024_cET_S9_S9_RKT0_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEA1024_cET_S9_S9_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 1, ptr %i.c, align 4
  %i.cl = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %bb.i unwind label %bb.m       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.cm = lshr i64 %indvars.iv252, 6
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cm ; 2 uses
  %i.co = and i64 %indvars.iv252, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = load i64, ptr %i.cn, align 8
  %i.cr = or i64 %i.cq, %i.cp
  store i64 %i.cr, ptr %i.cn, align 8
  %i.cs = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
end_hunk_0
