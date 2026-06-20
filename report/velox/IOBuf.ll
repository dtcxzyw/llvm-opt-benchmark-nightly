inline.NumInlined: 545
inline.NumDeleted: 270
begin_hunk_0_@_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE14skipAtMostSlowEm:bb.a

.lr.ph70:                                         ; preds = %.lr.ph
  %.promoted38 = load i64, ptr %i.j, align 8
  %.promoted37 = load ptr, ptr %i.i, align 8
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge43
  %i.o = add i64 %i.ar, %i.u                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3801 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.g
  %i.s = icmp eq i64 %i.an, 0
  %or.cond = select i1 %i.r, i1 true, i1 %i.s, !prof !3927
  br i1 %or.cond, label %.thread.loopexit, label %bb.c, !prof !3981, !llvm.loop !3982

bb.c:                                             ; preds = %.lr.ph70, %bb.b
  %i.t = phi ptr [ %i.l, %.lr.ph70 ], [ %i.q, %bb.b ] ; 5 uses
  %i.u = phi i64 [ %i.e, %.lr.ph70 ], [ %i.o, %bb.b ] ; 2 uses
  %.0143169 = phi i64 [ %1, %.lr.ph70 ], [ %i.ap, %bb.b ]
  %i.v = phi i64 [ %i.c, %.lr.ph70 ], [ %i.aq, %bb.b ]
  %i.w = phi i64 [ %i.e, %.lr.ph70 ], [ %i.ar, %bb.b ]
  %i.x = phi i64 [ %.promoted36, %.lr.ph70 ], [ %i.an, %bb.b ] ; 3 uses
  %i.y = phi ptr [ %.promoted37, %.lr.ph70 ], [ %i.ae, %bb.b ]
  %i.z = phi i64 [ %.promoted38, %.lr.ph70 ], [ %i.ac, %bb.b ]
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.v, %i.aa
  %i.ac = add i64 %i.ab, %i.z                     ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !3806 ; 7 uses
  %i.af = load i64, ptr %i.t, align 8, !tbaa !3809
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af ; 3 uses
  %.not.i = icmp eq i64 %i.x, -1
  %.pre = ptrtoint ptr %i.ae to i64               ; 2 uses
  br i1 %.not.i, label %._crit_edge43, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = add i64 %i.x, %.pre                     ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = icmp ult i64 %i.ah, %i.ai               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.x ; 2 uses
  %.pre.i = ptrtoint ptr %i.ak to i64
  %i.al = select i1 %i.aj, ptr %i.ak, ptr %i.ag
  %.pre-phi.i = select i1 %i.aj, i64 %.pre.i, i64 %i.ai
  %i.am = sub i64 %i.ah, %.pre-phi.i              ; 2 uses
  store i64 %i.am, ptr %i.h, align 8, !tbaa !3974
  br label %._crit_edge43

.thread.loopexit:                                 ; preds = %bb.b
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !3978
  store ptr %i.t, ptr %0, align 8, !tbaa !3971
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !3975
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !3977
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %.lr.ph
  %.lcssa63 = phi ptr [ %.promoted, %.lr.ph ], [ %i.ao, %.thread.loopexit ]
  %.lcssa = phi i64 [ %i.e, %.lr.ph ], [ %i.o, %.thread.loopexit ]
  store ptr %.lcssa63, ptr %i.b, align 8, !tbaa !3976
  br label %bb.l

._crit_edge43:                                    ; preds = %bb.c, %bb.d
  %i.an = phi i64 [ %i.am, %bb.d ], [ -1, %bb.c ] ; 2 uses
  %i.ao = phi ptr [ %i.al, %bb.d ], [ %i.ag, %bb.c ] ; 5 uses
  %i.ap = sub i64 %.0143169, %i.w                 ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.aq, %.pre                    ; 3 uses
  %.not = icmp ult i64 %i.ar, %i.ap
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !3982

._crit_edge.loopexit:                             ; preds = %._crit_edge43
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !3978
  store ptr %i.t, ptr %0, align 8, !tbaa !3971
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !3975
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !3977
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.as = phi ptr [ %.promoted, %bb.a ], [ %i.ao, %._crit_edge.loopexit ] ; 3 uses
  %i.at = phi ptr [ %.promoted28, %bb.a ], [ %i.ae, %._crit_edge.loopexit ]
  %.014.lcssa = phi i64 [ %1, %bb.a ], [ %i.ap, %._crit_edge.loopexit ] ; 2 uses
  %.012.lcssa = phi i64 [ 0, %bb.a ], [ %i.u, %._crit_edge.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.014.lcssa ; 2 uses
  store ptr %i.au, ptr %i.b, align 8, !tbaa !3976
  %i.av = icmp eq ptr %i.au, %i.as
  br i1 %i.av, label %bb.e, label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE20advanceBufferIfEmptyEv.exit

bb.e:                                             ; preds = %._crit_edge
  %i.aw = load ptr, ptr %0, align 8, !tbaa !3971
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !3801 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3973
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.f, !prof !3783

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !3974 ; 4 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.as, ptr %i.b, align 8, !tbaa !3976
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE20advanceBufferIfEmptyEv.exit

bb.h:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !3975
  %i.bh = ptrtoint ptr %i.as to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !3978
  %i.bm = add i64 %i.bj, %i.bl
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !3978
  store ptr %i.ay, ptr %0, align 8, !tbaa !3971
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !3806 ; 5 uses
  store ptr %i.bo, ptr %i.bf, align 8, !tbaa !3975
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !3976
  %i.bp = load i64, ptr %i.ay, align 8, !tbaa !3809
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp ; 2 uses
  store ptr %i.bq, ptr %i.a, align 8, !tbaa !3977
  %.not.i.i = icmp eq i64 %i.bd, -1
  br i1 %.not.i.i, label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE20advanceBufferIfEmptyEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = add i64 %i.bd, %i.br                    ; 2 uses
  %i.bt = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bu = icmp ult i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bd ; 2 uses
  store ptr %i.bv, ptr %i.a, align 8, !tbaa !3977
  %.pre.i.i = ptrtoint ptr %i.bv to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %bb.j ], [ %i.bt, %bb.i ]
  %i.bw = sub i64 %i.bs, %.pre-phi.i.i
  store i64 %i.bw, ptr %i.bc, align 8, !tbaa !3974
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE20advanceBufferIfEmptyEv.exit

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE20advanceBufferIfEmptyEv.exit: ; preds = %._crit_edge, %bb.g, %bb.h, %bb.k
  %i.bx = add i64 %.012.lcssa, %.014.lcssa
  br label %bb.l

bb.l:                                             ; preds = %.thread, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE20advanceBufferIfEmptyEv.exit
  %.1 = phi i64 [ %i.bx, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE20advanceBufferIfEmptyEv.exit ], [ %.lcssa, %.thread ]
  ret i64 %.1
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef %0) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  call void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  invoke void @_ZN5folly15throw_exceptionISt12out_of_rangeEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #15
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt12out_of_rangeEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 2 uses
  tail call void @_ZNSt12out_of_rangeC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #35
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #40
  unreachable
}

declare void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12out_of_rangeC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12out_of_range, i64 16), ptr %0, align 8, !tbaa !30
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define noundef signext range(i8 -1, 2) i8 @_ZNK5folly12IOBufCompare4implERKNS_5IOBufES3_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::io::Cursor", align 8 ; 11 uses
  %4 = alloca %"class.folly::io::Cursor", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr %1, ptr %3, align 8, !tbaa !3971
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !3973
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.d, align 8
  store i64 -1, ptr %i.c, align 8, !tbaa !3974
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3806 ; 4 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !3975
  store ptr %i.h, ptr %i.e, align 8, !tbaa !3976
  %i.i = load i64, ptr %1, align 8, !tbaa !3809
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !3977
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %2, ptr %4, align 8, !tbaa !3971
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.k, align 8, !tbaa !3973
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.n, align 8
  store i64 -1, ptr %i.m, align 8, !tbaa !3974
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !3806 ; 3 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !3975
  store ptr %i.r, ptr %i.o, align 8, !tbaa !3976
  %i.s = load i64, ptr %2, align 8, !tbaa !3809
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  store ptr %i.t, ptr %i.p, align 8, !tbaa !3977
  br label %bb.b

bb.b:                                             ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit23, %bb.a
  %i.u = phi ptr [ %.pre49, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit23 ], [ %i.h, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %.pre, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit23 ], [ %i.j, %bb.a ]
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !3783

bb.c:                                             ; preds = %bb.b
  %i.z = invoke noundef i64 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE13peekBytesSlowEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !3976
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b
  %i.aa = phi ptr [ %.pre.i, %.noexc ], [ %i.u, %bb.b ]
  %.0.i = phi i64 [ %i.z, %.noexc ], [ %i.y, %bb.b ] ; 2 uses
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !3977
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !3976 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %.not.i11 = icmp eq i64 %i.af, 0
  br i1 %.not.i11, label %bb.e, label %bb.f, !prof !3783

bb.e:                                             ; preds = %bb.d
  %i.ag = invoke noundef i64 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE13peekBytesSlowEv(ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %bb.e
  %.pre.i15 = load ptr, ptr %i.o, align 8, !tbaa !3976
  br label %bb.f

bb.f:                                             ; preds = %.noexc16, %bb.d
  %i.ah = phi ptr [ %.pre.i15, %.noexc16 ], [ %i.ac, %bb.d ] ; 2 uses
  %.0.i12 = phi i64 [ %i.ag, %.noexc16 ], [ %i.af, %bb.d ] ; 2 uses
  %i.ai = icmp samesign eq i64 %.0.i, 0           ; 2 uses
  %i.aj = icmp samesign eq i64 %.0.i12, 0         ; 2 uses
  %or.cond = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %5 = zext i1 %i.aj to i8
  %.neg = sext i1 %i.ai to i8
  %6 = add nsw i8 %5, %.neg
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.0.i12, i64 %.0.i) ; 7 uses
  %i.ak = call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.ah, i64 noundef %.sroa.speculated) #43 ; 2 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !3976 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = add i64 %.sroa.speculated, %i.am
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !3977
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.k, !prof !3779

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.speculated
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !3976
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit

bb.k:                                             ; preds = %bb.i
  invoke void @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8skipSlowEm(ptr noundef nonnull align 8 dereferenceable(56) %3, i64 noundef %.sroa.speculated)
          to label %._ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit_crit_edge unwind label %bb.o

._ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit_crit_edge: ; preds = %bb.k
  %.pre50 = load ptr, ptr %i.o, align 8, !tbaa !3976
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit: ; preds = %._ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit_crit_edge, %bb.j
  %i.as = phi ptr [ %.pre50, %._ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit_crit_edge ], [ %i.ah, %bb.j ] ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = add i64 %.sroa.speculated, %i.at
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !3977
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = icmp ult i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.l, label %bb.m, !prof !3779

bb.l:                                             ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.speculated
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !3976
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit23

bb.m:                                             ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit
  invoke void @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8skipSlowEm(ptr noundef nonnull align 8 dereferenceable(56) %4, i64 noundef %.sroa.speculated)
          to label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit23 unwind label %bb.o

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit23: ; preds = %bb.l, %bb.m
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !3977
  %.pre49 = load ptr, ptr %i.e, align 8, !tbaa !3976
  br label %bb.b, !llvm.loop !3983

.loopexit:                                        ; preds = %bb.h
  %7 = call noundef i8 @llvm.scmp.i8.i32(i32 %i.ak, i32 0)
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.g
  %.2.ph = phi i8 [ %6, %bb.g ], [ %7, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret i8 %.2.ph

bb.o:                                             ; preds = %bb.m, %bb.k, %bb.e, %bb.c
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #36
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { cold noreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #29 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #32 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #33 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { nounwind }
attributes #36 = { noreturn nounwind }
attributes #37 = { builtin nounwind }
attributes #38 = { cold nounwind }
attributes #39 = { nounwind allocsize(0) }
attributes #40 = { noreturn }
attributes #41 = { builtin allocsize(0) }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSN5folly5IOBuf10SharedInfoE", !13, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !17, i64 28, !18, i64 29, !19, i64 30}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTSN5folly5IOBuf27SharedInfoObserverEntryBaseE", !13, i64 0}
!15 = !{!"_ZTSSt6atomicIjE", !16, i64 0}
!16 = !{!"_ZTSSt13__atomic_baseIjE", !8, i64 0}
!17 = !{!"bool", !9, i64 0}
!18 = !{!"_ZTSN5folly5IOBuf10SharedInfo11StorageTypeE", !9, i64 0}
!19 = !{!"_ZTSN5folly13MicroSpinLockE", !9, i64 0}
!20 = !{!12, !13, i64 8}
!21 = !{!12, !14, i64 16}
!22 = !{!16, !8, i64 0}
!23 = !{!12, !17, i64 28}
!24 = !{!12, !18, i64 29}
!25 = !{!19, !9, i64 0}
!26 = !{!27, !14, i64 8}
!27 = !{!"_ZTSN5folly5IOBuf27SharedInfoObserverEntryBaseE", !14, i64 8, !14, i64 16}
!28 = !{!27, !14, i64 16}
!29 = distinct !{null}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !10, i64 0}
!32 = !DISubprogram(name: "~SharedInfoObserverEntryBase", linkageName: "_ZN5folly5IOBuf27SharedInfoObserverEntryBaseD4Ev", scope: !34, file: !33, line: 2097, type: !3762, scopeLine: 2097, containingType: !34, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!33 = !DIFile(filename: "_deps/folly-src/folly/io/IOBuf.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "1bef0b70bda764887e9ae48e3ff0f2f9")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SharedInfoObserverEntryBase", scope: !35, file: !33, line: 2093, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly5IOBuf27SharedInfoObserverEntryBaseE")
!35 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "IOBuf", scope: !36, file: !33, line: 292, size: 448, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !37, identifier: "_ZTSN5folly5IOBufE")
!36 = !DINamespace(name: "folly", scope: null)
!37 = !{!38, !43, !50, !51, !52, !54, !55, !477, !484, !837, !838, !839, !844, !852, !858, !861, !864, !867, !870, !876, !879, !882, !1926, !1929, !1932, !1935, !1938, !1941, !1947, !1950, !1953, !1956, !2163, !2166, !2167, !2170, !2173, !2178, !2183, !2186, !2187, !2188, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2200, !2204, !2205, !2206, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2219, !2220, !2223, !2224, !2225, !2228, !2229, !2230, !2231, !2234, !2235, !2238, !2239, !2242, !2245, !2246, !2247, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2262, !2265, !2266, !2269, !2272, !2273, !2274, !2275, !2278, !2279, !2282, !2285, !2286, !2287, !2290, !2612, !2615, !3078, !3082, !3089, !3092, !3095, !3102, !3105, !3106, !3109, !3112, !3115, !3116, !3593, !3666, !3667, !3668, !3669, !3670, !3674, !3677, !3681, !3684, !3690, !3691, !3692, !3724, !3728, !3732, !3733, !3734, !3735, !3736, !3739, !3742, !3745, !3746, !3747, !3748, !3751, !3756, !3760, !3761}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "length_", scope: !35, file: !33, line: 2216, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !41, file: !40, line: 308, baseType: !42)
!40 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "449d6dbeca4f3eea299d97c24eb9ed95")
!41 = !DINamespace(name: "std", scope: null)
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "data_", scope: !35, file: !33, line: 2217, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !46, line: 24, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !48, line: 38, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "capacity_", scope: !35, file: !33, line: 2219, baseType: !39, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "buf_", scope: !35, file: !33, line: 2220, baseType: !44, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next_", scope: !35, file: !33, line: 2229, baseType: !53, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "prev_", scope: !35, file: !33, line: 2230, baseType: !53, size: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "sharedInfo_", scope: !35, file: !33, line: 2232, baseType: !56, size: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SharedInfo", scope: !35, file: !33, line: 2120, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !58, identifier: "_ZTSN5folly5IOBuf10SharedInfoE")
!58 = !{!59, !65, !66, !68, !239, !240, !247, !423, !427, !430}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "freeFn", scope: !57, file: !33, line: 2139, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "FreeFunction", scope: !35, file: !33, line: 308, baseType: !61, flags: DIFlagPublic)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !64, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !57, file: !33, line: 2140, baseType: !64, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "observerListHead", scope: !57, file: !33, line: 2141, baseType: !67, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !57, file: !33, line: 2142, baseType: !69, size: 32, offset: 192)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<unsigned int>", scope: !41, file: !70, line: 845, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !71, templateParams: !237, identifier: "_ZTSSt6atomicIjE")
!70 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/atomic", directory: "")
!71 = !{!72, !212, !214, !218, !219, !224, !228, !233}
!72 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !69, baseType: !73, extraData: i32 0)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<unsigned int>", scope: !41, file: !74, line: 341, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !75, templateParams: !210, identifier: "_ZTSSt13__atomic_baseIjE")
!74 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/atomic_base.h", directory: "")
!75 = !{!76, !79, !82, !86, !87, !92, !96, !101, !104, !108, !113, !116, !119, !122, !125, !126, !127, !130, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !149, !152, !163, !166, !169, !172, !175, !178, !182, !185, !188, !191, !192, !193, !194, !195, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209}
!76 = !DIDerivedType(tag: DW_TAG_variable, name: "_S_alignment", scope: !73, file: !74, line: 349, baseType: !77, flags: DIFlagPrivate | DIFlagStaticMember, extraData: i32 4)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_M_i", scope: !73, file: !74, line: 352, baseType: !80, size: 32, align: 32, flags: DIFlagPrivate)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_type", scope: !73, file: !74, line: 347, baseType: !81, flags: DIFlagPrivate)
!81 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!82 = !DISubprogram(name: "__atomic_base", linkageName: "_ZNSt13__atomic_baseIjEC4Ev", scope: !73, file: !74, line: 355, type: !83, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!86 = !DISubprogram(name: "~__atomic_base", linkageName: "_ZNSt13__atomic_baseIjED4Ev", scope: !73, file: !74, line: 356, type: !83, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!87 = !DISubprogram(name: "__atomic_base", linkageName: "_ZNSt13__atomic_baseIjEC4ERKS0_", scope: !73, file: !74, line: 357, type: !88, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !85, !90}
!90 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!92 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseIjEaSERKS0_", scope: !73, file: !74, line: 358, type: !93, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !85, !90}
!95 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !73, size: 64)
!96 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt13__atomic_baseIjEaSERKS0_", scope: !73, file: !74, line: 359, type: !97, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!97 = !DISubroutineType(types: !98)
!98 = !{!95, !99, !90}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !73)
!101 = !DISubprogram(name: "__atomic_base", linkageName: "_ZNSt13__atomic_baseIjEC4Ej", scope: !73, file: !74, line: 362, type: !102, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !85, !80}
!104 = !DISubprogram(name: "operator unsigned int", linkageName: "_ZNKSt13__atomic_baseIjEcvjEv", scope: !73, file: !74, line: 364, type: !105, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!105 = !DISubroutineType(types: !106)
!106 = !{!80, !107}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!108 = !DISubprogram(name: "operator unsigned int", linkageName: "_ZNVKSt13__atomic_baseIjEcvjEv", scope: !73, file: !74, line: 367, type: !109, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!109 = !DISubroutineType(types: !110)
!110 = !{!80, !111}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!113 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseIjEaSEj", scope: !73, file: !74, line: 371, type: !114, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!114 = !DISubroutineType(types: !115)
!115 = !{!80, !85, !80}
!116 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt13__atomic_baseIjEaSEj", scope: !73, file: !74, line: 378, type: !117, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!117 = !DISubroutineType(types: !118)
!118 = !{!80, !99, !80}
!119 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseIjEppEi", scope: !73, file: !74, line: 385, type: !120, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!120 = !DISubroutineType(types: !121)
!121 = !{!80, !85, !78}
!122 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt13__atomic_baseIjEppEi", scope: !73, file: !74, line: 389, type: !123, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!123 = !DISubroutineType(types: !124)
!124 = !{!80, !99, !78}
!125 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseIjEmmEi", scope: !73, file: !74, line: 393, type: !120, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!126 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt13__atomic_baseIjEmmEi", scope: !73, file: !74, line: 397, type: !123, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!127 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseIjEppEv", scope: !73, file: !74, line: 401, type: !128, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!128 = !DISubroutineType(types: !129)
!129 = !{!80, !85}
!130 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt13__atomic_baseIjEppEv", scope: !73, file: !74, line: 405, type: !131, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!131 = !DISubroutineType(types: !132)
!132 = !{!80, !99}
!133 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseIjEmmEv", scope: !73, file: !74, line: 409, type: !128, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!134 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt13__atomic_baseIjEmmEv", scope: !73, file: !74, line: 413, type: !131, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!135 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt13__atomic_baseIjEpLEj", scope: !73, file: !74, line: 417, type: !114, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!136 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt13__atomic_baseIjEpLEj", scope: !73, file: !74, line: 421, type: !117, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!137 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt13__atomic_baseIjEmIEj", scope: !73, file: !74, line: 425, type: !114, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!138 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt13__atomic_baseIjEmIEj", scope: !73, file: !74, line: 429, type: !117, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt13__atomic_baseIjEaNEj", scope: !73, file: !74, line: 433, type: !114, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!140 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt13__atomic_baseIjEaNEj", scope: !73, file: !74, line: 437, type: !117, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!141 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt13__atomic_baseIjEoREj", scope: !73, file: !74, line: 441, type: !114, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!142 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt13__atomic_baseIjEoREj", scope: !73, file: !74, line: 445, type: !117, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!143 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt13__atomic_baseIjEeOEj", scope: !73, file: !74, line: 449, type: !114, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!144 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt13__atomic_baseIjEeOEj", scope: !73, file: !74, line: 453, type: !117, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!145 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt13__atomic_baseIjE12is_lock_freeEv", scope: !73, file: !74, line: 457, type: !146, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !107}
end_hunk_0
