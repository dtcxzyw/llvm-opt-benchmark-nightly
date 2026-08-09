inline.NumInlined: 334
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv6base6418make_base64_headerB5cxx11EPKc:bb.a
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.n ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ap, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.r

bb.p:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 24)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.p
  %i.av = load i64, ptr %i.t, align 8, !tbaa !33  ; 2 uses
  %i.aw = icmp ult i64 %i.av, 24
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.ax = phi i64 [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.av, %.preheader ] ; 5 uses
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.s
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %.lr.ph
  %i.bb = icmp samesign ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.bb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph
  %i.bc = load i64, ptr %i.s, align 8, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bd = phi i64 [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not = icmp ult i64 %i.ax, %i.bd
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ax, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc14 unwind label %.loopexit

.noexc14:                                         ; preds = %bb.q
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc14
  %i.be = phi ptr [ %.pre.i.i, %.noexc14 ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ax
  store i8 32, ptr %i.bf, align 1, !tbaa !21
  store i64 %i.ay, ptr %i.t, align 8, !tbaa !33
  %i.bg = load ptr, ptr %0, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store i8 0, ptr %i.bh, align 1, !tbaa !21
  %i.bi = load i64, ptr %i.t, align 8, !tbaa !33  ; 2 uses
  %i.bj = icmp ult i64 %i.bi, 24
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.loopexit:                                        ; preds = %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %.preheader
  %i.bk = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bk, ptr %2, align 8, !tbaa !8
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bm = getelementptr i8, ptr %i.bk, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %i.bn
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bp, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !38 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %._crit_edge
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !21
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bp, align 8, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bw) #20
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bx) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.r:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn7 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.s
  br i1 %i.bz, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.r
  %i.ca = load i64, ptr %i.s, align 8, !tbaa !21
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #21
  br label %.body

.body:                                            ; preds = %bb.r, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.pn = phi { ptr, i32 } [ %.pn7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.an, %bb.j ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.af, %bb.h ], [ %.pn7, %bb.r ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn7.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !29
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.12) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.d, ptr %i.a, align 8, !tbaa !39
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !38
  %i.g = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.g, ptr %i.b, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !21
  store i8 %i.i, ptr %i.h, align 1, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !33
  %i.l = load ptr, ptr %0, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZN2cv6base6413base64_encodeEPKhPhmm(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %3, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 4 uses
  %i.e = urem i64 %3, 3
  %i.f = sub nuw i64 %3, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %.not = icmp ult i64 %3, 3
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.05364 = phi ptr [ %i.ap, %.lr.ph ], [ %1, %bb.b ] ; 5 uses
  %.05463 = phi ptr [ %i.l, %.lr.ph ], [ %i.d, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05463, i64 1
  %i.i = load i8, ptr %.05463, align 1, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %.05463, i64 2
  %i.k = load i8, ptr %i.h, align 1, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %.05463, i64 3 ; 3 uses
  %i.m = load i8, ptr %i.j, align 1, !tbaa !21
  %i.n = zext i8 %i.i to i32                      ; 2 uses
  %i.o = lshr i32 %i.n, 2
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %.05364, i64 1
  store i8 %i.r, ptr %.05364, align 1, !tbaa !21
  %i.t = zext i8 %i.k to i32                      ; 2 uses
  %i.u = lshr i32 %i.t, 4
  %i.v = shl nuw nsw i32 %i.n, 4
  %i.w = and i32 %i.v, 48
  %i.x = or disjoint i32 %i.u, %i.w
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %.05364, i64 2
  store i8 %i.aa, ptr %i.s, align 1, !tbaa !21
  %i.ac = zext i8 %i.m to i32                     ; 2 uses
  %i.ad = lshr i32 %i.ac, 6
  %i.ae = shl nuw nsw i32 %i.t, 2
  %i.af = and i32 %i.ae, 60
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %.05364, i64 3
  store i8 %i.aj, ptr %i.ab, align 1, !tbaa !21
  %i.al = and i32 %i.ac, 63
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %.05364, i64 4 ; 2 uses
  store i8 %i.ao, ptr %i.ak, align 1, !tbaa !21
  %i.aq = icmp ult ptr %i.l, %i.g
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.054.lcssa = phi ptr [ %i.d, %bb.b ], [ %i.l, %.lr.ph ] ; 4 uses
  %.053.lcssa = phi ptr [ %1, %bb.b ], [ %i.ap, %.lr.ph ] ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %3
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %.054.lcssa to i64
  %i.au = sub i64 %i.as, %i.at
  switch i64 %i.au, label %bb.d [
    i64 1, label %.thread
    i64 2, label %.thread61
  ]

.thread:                                          ; preds = %._crit_edge
  %i.av = load i8, ptr %.054.lcssa, align 1, !tbaa !21
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = lshr i32 %i.aw, 2
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 1
  store i8 %i.ba, ptr %.053.lcssa, align 1, !tbaa !21
  %i.bc = shl nuw nsw i32 %i.aw, 4
  %i.bd = and i32 %i.bc, 48
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 16, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 2
  store i8 %i.bg, ptr %i.bb, align 1, !tbaa !21
  store i8 61, ptr %i.bh, align 1, !tbaa !21
  br label %bb.c

.thread61:                                        ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 1
  %i.bj = load i8, ptr %.054.lcssa, align 1, !tbaa !21
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !21
  %i.bl = zext i8 %i.bj to i32                    ; 2 uses
  %i.bm = lshr i32 %i.bl, 2
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 1
  store i8 %i.bp, ptr %.053.lcssa, align 1, !tbaa !21
  %i.br = shl nuw nsw i32 %i.bl, 4
  %i.bs = and i32 %i.br, 48
  %i.bt = zext i8 %i.bk to i32                    ; 2 uses
  %i.bu = lshr i32 %i.bt, 4
  %i.bv = or disjoint i32 %i.bs, %i.bu
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 2
  store i8 %i.by, ptr %i.bq, align 1, !tbaa !21
  %i.ca = shl nuw nsw i32 %i.bt, 2
  %i.cb = and i32 %i.ca, 60
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !21
  store i8 %i.ce, ptr %i.bz, align 1, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %.thread61, %.thread
  %.2 = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 3
  %i.cf = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 4
  store i8 61, ptr %.2, align 1, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.3 = phi ptr [ %i.cf, %bb.c ], [ %.053.lcssa, %._crit_edge ] ; 2 uses
  store i8 0, ptr %.3, align 1, !tbaa !21
  %i.cg = ptrtoint ptr %.3 to i64
  %i.ch = ptrtoint ptr %1 to i64
  %i.ci = sub i64 %i.cg, %i.ch
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i64 [ %i.ci, %bb.d ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv6base6417icvCalcStructSizeEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN2cv2fs12calcElemSizeEPKci(ptr noundef %0, i32 noundef %1)
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  %.082 = phi i64 [ 0, %bb.a ], [ %.1, %bb.m ]    ; 10 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.h, %bb.m ]    ; 2 uses
  %i.b = load i8, ptr %.0, align 1, !tbaa !21
  switch i8 %i.b, label %bb.m [
    i8 0, label %bb.c
    i8 117, label %bb.d
    i8 98, label %bb.e
    i8 99, label %bb.f
    i8 119, label %bb.g
    i8 115, label %bb.h
    i8 105, label %bb.i
    i8 110, label %bb.j
    i8 102, label %bb.k
    i8 100, label %bb.l
    i8 73, label %bb.l
    i8 85, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw nsw i64 %.082 to i32           ; 2 uses
  %i.d = add i32 %i.a, -1
  %i.e = add i32 %i.d, %i.c
  %i.f = sub nsw i32 0, %i.c
  %i.g = and i32 %i.e, %i.f
  ret i32 %i.g

bb.d:                                             ; preds = %bb.b
  %.sroa.speculated56 = tail call i64 @llvm.umax.i64(i64 %.082, i64 1)
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %.sroa.speculated52 = tail call i64 @llvm.umax.i64(i64 %.082, i64 1)
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  %.sroa.speculated48 = tail call i64 @llvm.umax.i64(i64 %.082, i64 1)
  br label %bb.m

bb.g:                                             ; preds = %bb.b
  %.sroa.speculated44 = tail call i64 @llvm.umax.i64(i64 %.082, i64 2)
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %.sroa.speculated40 = tail call i64 @llvm.umax.i64(i64 %.082, i64 2)
  br label %bb.m

bb.i:                                             ; preds = %bb.b
  %.sroa.speculated36 = tail call i64 @llvm.umax.i64(i64 %.082, i64 4)
  br label %bb.m

bb.j:                                             ; preds = %bb.b
  %.sroa.speculated32 = tail call i64 @llvm.umax.i64(i64 %.082, i64 4)
  br label %bb.m

bb.k:                                             ; preds = %bb.b
  %.sroa.speculated28 = tail call i64 @llvm.umax.i64(i64 %.082, i64 4)
  br label %bb.m

bb.l:                                             ; preds = %bb.b, %bb.b, %bb.b
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.1 = phi i64 [ %.082, %bb.b ], [ %.sroa.speculated56, %bb.d ], [ %.sroa.speculated52, %bb.e ], [ %.sroa.speculated48, %bb.f ], [ %.sroa.speculated44, %bb.g ], [ %.sroa.speculated40, %bb.h ], [ %.sroa.speculated36, %bb.i ], [ %.sroa.speculated32, %bb.j ], [ %.sroa.speculated28, %bb.k ], [ 8, %bb.l ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !42
}

end_hunk_0
begin_hunk_1_@_ZN2cv6base6412Base64Writer8check_dtEPKc:bb.a
  %i.aj = phi ptr [ %.pre, %_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit.loopexit ], [ %i.o, %bb.h ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !21
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %4, align 8, !tbaa !38    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.k
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !21
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.r

bb.l:                                             ; preds = %bb.g
  %i.au = icmp eq i64 %i.k, %i.m
  br i1 %i.au, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.l
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !38
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.av, ptr nonnull %1, i64 %i.k)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %bb.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.l, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv6base6412Base64Writer8check_dtEPKc, ptr noundef nonnull @.str.1, i32 noundef 267) #22
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.p:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.p
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !21
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.o
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.o ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.ax, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  resume { ptr, i32 } %.pn14.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(88) ptr @_ZN2cv6base6420Base64ContextEmitter5writeINS0_24RawDataToBinaryConvertorEEERS1_RT_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [80 x i8], align 16               ; 5 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #23 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !132  ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !137
  %i.h = icmp ult ptr %i.f, %i.g
  br i1 %i.h, label %.lr.ph, label %_ZNSt6vectorIhSaIhEED2Ev.exit12

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit
  %i.r = phi ptr [ %i.f, %.lr.ph ], [ %i.fy, %_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit ]
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !138  ; 2 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !127  ; 2 uses
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %.lr.ph.i
  %.09.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aj, %.noexc ] ; 2 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !127
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.09.i ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !139
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !132
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !141
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !142
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag
  %i.ai = invoke noundef i64 %i.ab(ptr noundef %i.ae, ptr noundef nonnull %i.ah)
          to label %.noexc unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp, !inline_history !143 ; 0 uses

.noexc:                                           ; preds = %bb.c
  %i.aj = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aj, %i.x
  br i1 %exitcond.not.i, label %.loopexit.loopexit, label %bb.c, !llvm.loop !144

.loopexit.loopexit:                               ; preds = %.noexc
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !132
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.ak = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.r, %bb.b ]
  %i.al = load i64, ptr %i.k, align 8, !tbaa !145
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al ; 2 uses
  store ptr %i.am, ptr %i.d, align 8, !tbaa !132
  %i.an = load i64, ptr %i.l, align 8, !tbaa !146 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.an ; 2 uses
  %.not.i9.not = icmp eq i64 %i.an, 0
  br i1 %.not.i9.not, label %_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit
  %i.ap = ptrtoint ptr %i.ao to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc10, %.preheader.i
  %.01218.i = phi ptr [ %i.c, %.preheader.i ], [ %i.ax, %.noexc10 ] ; 3 uses
  %i.aq = ptrtoint ptr %.01218.i to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !125
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !126 ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %i.aw, i64 %i.ar) ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %.01218.i, i64 %.sroa.speculated.i, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.01218.i, i64 %.sroa.speculated.i ; 2 uses
  %i.ay = load ptr, ptr %i.n, align 8, !tbaa !126
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.speculated.i ; 4 uses
  store ptr %i.az, ptr %i.n, align 8, !tbaa !126
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !125
  %.not14.i = icmp ult ptr %i.az, %i.ba
  br i1 %.not14.i, label %.noexc10, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !124 ; 6 uses
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !121 ; 4 uses
  %i.bd = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.be = icmp ne ptr %i.bb, null
  %i.bf = icmp ne ptr %i.bc, null
  %or.cond.i = and i1 %i.be, %i.bf
  %i.bg = icmp ne ptr %i.az, %i.bb
  %or.cond3.i = and i1 %i.bg, %or.cond.i
  br i1 %or.cond3.i, label %bb.f, label %.noexc10

bb.f:                                             ; preds = %bb.e
  %i.bh = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bi = sub i64 %i.bd, %i.bh                    ; 3 uses
  %i.bj = urem i64 %i.bi, 3
  %i.bk = sub nuw i64 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %.not.i18 = icmp ult i64 %i.bi, 3
  br i1 %.not.i18, label %._crit_edge.i, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.f, %.lr.ph.i19
  %.05364.i = phi ptr [ %i.cu, %.lr.ph.i19 ], [ %i.bc, %bb.f ] ; 5 uses
  %.05463.i = phi ptr [ %i.bq, %.lr.ph.i19 ], [ %i.bb, %bb.f ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.05463.i, i64 1
  %i.bn = load i8, ptr %.05463.i, align 1, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.bp = load i8, ptr %i.bm, align 1, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %.05463.i, i64 3 ; 4 uses
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !21
  %i.bs = zext i8 %i.bn to i32                    ; 2 uses
  %i.bt = lshr i32 %i.bs, 2
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %.05364.i, i64 1
  store i8 %i.bw, ptr %.05364.i, align 1, !tbaa !21
  %i.by = zext i8 %i.bp to i32                    ; 2 uses
  %i.bz = lshr i32 %i.by, 4
  %i.ca = shl nuw nsw i32 %i.bs, 4
  %i.cb = and i32 %i.ca, 48
  %i.cc = or disjoint i32 %i.bz, %i.cb
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %.05364.i, i64 2
  store i8 %i.cf, ptr %i.bx, align 1, !tbaa !21
  %i.ch = zext i8 %i.br to i32                    ; 2 uses
  %i.ci = lshr i32 %i.ch, 6
  %i.cj = shl nuw nsw i32 %i.by, 2
  %i.ck = and i32 %i.cj, 60
  %i.cl = or disjoint i32 %i.ci, %i.ck
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !21
  %i.cp = getelementptr inbounds nuw i8, ptr %.05364.i, i64 3
  store i8 %i.co, ptr %i.cg, align 1, !tbaa !21
  %i.cq = and i32 %i.ch, 63
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !21
  %i.cu = getelementptr inbounds nuw i8, ptr %.05364.i, i64 4 ; 2 uses
  store i8 %i.ct, ptr %i.cp, align 1, !tbaa !21
  %i.cv = icmp ult ptr %i.bq, %i.bl
  br i1 %i.cv, label %.lr.ph.i19, label %._crit_edge.i.loopexit, !llvm.loop !40

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i19
  %.pre30 = ptrtoint ptr %i.bq to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.f
  %.pre-phi = phi i64 [ %.pre30, %._crit_edge.i.loopexit ], [ %i.bh, %bb.f ]
  %.054.lcssa.i = phi ptr [ %i.bq, %._crit_edge.i.loopexit ], [ %i.bb, %bb.f ] ; 3 uses
  %.053.lcssa.i = phi ptr [ %i.cu, %._crit_edge.i.loopexit ], [ %i.bc, %bb.f ] ; 9 uses
  %i.cw = sub i64 %i.bd, %.pre-phi
  switch i64 %i.cw, label %_ZN2cv6base6413base64_encodeEPKhPhmm.exit [
    i64 1, label %.thread.i
    i64 2, label %.thread61.i
  ]

.thread.i:                                        ; preds = %._crit_edge.i
  %i.cx = load i8, ptr %.054.lcssa.i, align 1, !tbaa !21
  %i.cy = zext i8 %i.cx to i32                    ; 2 uses
  %i.cz = lshr i32 %i.cy, 2
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !21
  %i.dd = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 1
  store i8 %i.dc, ptr %.053.lcssa.i, align 1, !tbaa !21
  %i.de = shl nuw nsw i32 %i.cy, 4
  %i.df = and i32 %i.de, 48
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 16, !tbaa !21
  %i.dj = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 2
  store i8 %i.di, ptr %i.dd, align 1, !tbaa !21
  store i8 61, ptr %i.dj, align 1, !tbaa !21
  br label %bb.g

.thread61.i:                                      ; preds = %._crit_edge.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 1
  %i.dl = load i8, ptr %.054.lcssa.i, align 1, !tbaa !21
  %i.dm = load i8, ptr %i.dk, align 1, !tbaa !21
  %i.dn = zext i8 %i.dl to i32                    ; 2 uses
  %i.do = lshr i32 %i.dn, 2
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !21
  %i.ds = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 1
  store i8 %i.dr, ptr %.053.lcssa.i, align 1, !tbaa !21
  %i.dt = shl nuw nsw i32 %i.dn, 4
  %i.du = and i32 %i.dt, 48
  %i.dv = zext i8 %i.dm to i32                    ; 2 uses
  %i.dw = lshr i32 %i.dv, 4
  %i.dx = or disjoint i32 %i.du, %i.dw
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !21
  %i.eb = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 2
  store i8 %i.ea, ptr %i.ds, align 1, !tbaa !21
  %i.ec = shl nuw nsw i32 %i.dv, 2
  %i.ed = and i32 %i.ec, 60
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 4, !tbaa !21
  store i8 %i.eg, ptr %i.eb, align 1, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %.thread61.i, %.thread.i
  %.2.i = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 3
  %i.eh = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 4
  store i8 61, ptr %.2.i, align 1, !tbaa !21
  br label %_ZN2cv6base6413base64_encodeEPKhPhmm.exit

_ZN2cv6base6413base64_encodeEPKhPhmm.exit:        ; preds = %._crit_edge.i, %bb.g
  %.3.i = phi ptr [ %i.eh, %bb.g ], [ %.053.lcssa.i, %._crit_edge.i ] ; 2 uses
  store i8 0, ptr %.3.i, align 1, !tbaa !21
  %.not = icmp eq ptr %.3.i, %i.bc
  br i1 %.not, label %.noexc10, label %bb.h

bb.h:                                             ; preds = %_ZN2cv6base6413base64_encodeEPKhPhmm.exit
  %i.ei = load ptr, ptr %i.o, align 8, !tbaa !124
  store ptr %i.ei, ptr %i.n, align 8, !tbaa !126
  %i.ej = load i8, ptr %i.q, align 8, !tbaa !119, !range !115, !noundef !116
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.el = load ptr, ptr %0, align 8, !tbaa !147, !nonnull !116, !align !148 ; 2 uses
  %i.em = load ptr, ptr %i.p, align 8, !tbaa !121
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8
  invoke void %i.ep(ptr noundef nonnull align 8 dereferenceable(700) %i.el, ptr noundef %i.em)
          to label %.noexc10 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit, !inline_history !149

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i16 10, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.eq = load ptr, ptr %0, align 8, !tbaa !147, !nonnull !116, !align !148 ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 176
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !150, !noalias !151 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 184
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !154, !noalias !151
  %i.ev = icmp eq ptr %i.es, %i.eu
  br i1 %i.ev, label %bb.k, label %_ZNSt5dequeIN2cv11FStructDataESaIS1_EE4backEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 200
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !155, !noalias !151
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !156
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 480
  br label %_ZNSt5dequeIN2cv11FStructDataESaIS1_EE4backEv.exit.i

_ZNSt5dequeIN2cv11FStructDataESaIS1_EE4backEv.exit.i: ; preds = %bb.k, %bb.j
  %i.fb = phi ptr [ %i.fa, %bb.k ], [ %i.es, %bb.j ]
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !157
  %i.fe = sext i32 %i.fd to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 32, i64 %i.fe, i1 false)
  %i.ff = getelementptr inbounds i8, ptr %i.b, i64 %i.fe
  store i8 0, ptr %i.ff, align 1, !tbaa !21
  %i.fg = load ptr, ptr %i.eq, align 8, !tbaa !8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8
  invoke void %i.fi(ptr noundef nonnull align 8 dereferenceable(700) %i.eq, ptr noundef nonnull %i.b)
          to label %.noexc14 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit, !inline_history !149

.noexc14:                                         ; preds = %_ZNSt5dequeIN2cv11FStructDataESaIS1_EE4backEv.exit.i
  %i.fj = load ptr, ptr %0, align 8, !tbaa !147, !nonnull !116, !align !148 ; 2 uses
  %i.fk = load ptr, ptr %i.p, align 8, !tbaa !121
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8
  invoke void %i.fn(ptr noundef nonnull align 8 dereferenceable(700) %i.fj, ptr noundef %i.fk)
          to label %.noexc15 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit, !inline_history !149

.noexc15:                                         ; preds = %.noexc14
  %i.fo = load ptr, ptr %0, align 8, !tbaa !147, !nonnull !116, !align !148 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8
  invoke void %i.fr(ptr noundef nonnull align 8 dereferenceable(700) %i.fo, ptr noundef nonnull %i.a)
          to label %.noexc16 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit, !inline_history !149

.noexc16:                                         ; preds = %.noexc15
  %i.fs = load ptr, ptr %0, align 8, !tbaa !147, !nonnull !116, !align !148 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 120
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = invoke noundef ptr %i.fv(ptr noundef nonnull align 8 dereferenceable(700) %i.fs)
          to label %.noexc17 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit, !inline_history !149 ; 0 uses

.noexc17:                                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.noexc10
end_hunk_1
