inline.NumInlined: 1249
inline.NumDeleted: 582
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN10duckdb_re219ConvertRunesToBytesEbPiiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.ab = phi ptr [ %i.z, %bb.c ], [ %.pre, %._crit_edge.loopexit ]
  %.023.lcssa = phi ptr [ %i.z, %bb.c ], [ %i.ak, %._crit_edge.loopexit ]
  %i.ac = ptrtoint ptr %.023.lcssa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ae, i8 noundef signext 0)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit unwind label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #28
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02325 = phi ptr [ %i.z, %.lr.ph.preheader ], [ %i.ak, %.lr.ph ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ai = tail call noundef i32 @_ZN10duckdb_re210runetocharEPcPKi(ptr noundef %.02325, ptr noundef %i.ah)
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %.02325, i64 %i.aj ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph29
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit, label %.lr.ph29.epil.preheader

.lr.ph29.epil.preheader:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit.loopexit.unr-lcssa, %.lr.ph29.preheader
  %indvars.iv31.epil.init = phi i64 [ 0, %.lr.ph29.preheader ], [ %indvars.iv.next32.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod36 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod36)
  br label %.lr.ph29.epil

.lr.ph29.epil:                                    ; preds = %.lr.ph29.epil, %.lr.ph29.epil.preheader
  %indvars.iv31.epil = phi i64 [ %indvars.iv31.epil.init, %.lr.ph29.epil.preheader ], [ %indvars.iv.next32.epil, %.lr.ph29.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph29.epil.preheader ], [ %epil.iter.next, %.lr.ph29.epil ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv31.epil
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = trunc i32 %i.am to i8
  %i.ao = load ptr, ptr %3, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv31.epil
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !33
  %indvars.iv.next32.epil = add nuw nsw i64 %indvars.iv31.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit, label %.lr.ph29.epil, !llvm.loop !120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv.exit.loopexit.unr-lcssa, %.lr.ph29.epil, %bb.b, %._crit_edge
  ret void
}

declare noundef i32 @_ZN10duckdb_re210runetocharEPcPKi(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re26Regexp14RequiredPrefixEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPbPPS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef initializes((8, 16)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !77
  %i.b = load ptr, ptr %1, align 8, !tbaa !32
  store i8 0, ptr %i.b, align 1, !tbaa !33
  store i8 0, ptr %2, align 1, !tbaa !121
  store ptr null, ptr %3, align 8, !tbaa !42
  %i.c = load i8, ptr %0, align 8, !tbaa !7
  %.not = icmp eq i8 %i.c, 5
  br i1 %.not, label %.preheader49, label %.critedge.thread

.preheader49:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !15   ; 5 uses
  %i.f = zext i16 %i.e to i32
  %.not60 = icmp eq i16 %i.e, 0
  br i1 %.not60, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader49
  %i.g = icmp eq i16 %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.0.i = select i1 %i.g, ptr %i.h, ptr %i.i
  %wide.trip.count = zext i16 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv65 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next66, %bb.c ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = load i8, ptr %i.k, align 8, !tbaa !7
  %i.m = icmp eq i8 %i.l, 18
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br i1 %exitcond.not, label %.critedge.thread, label %bb.b, !llvm.loop !122

.critedge:                                        ; preds = %bb.b
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %.not48 = icmp eq i64 %indvars.iv, 0
  br i1 %.not48, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.o = and i64 %indvars.iv, 4294967295
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42   ; 6 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !7     ; 2 uses
  %.off = add i8 %i.r, -3
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %bb.d
  %i.s = add nuw nsw i32 %i.n, 1                  ; 3 uses
  %i.t = icmp samesign ult i32 %i.s, %i.f
  br i1 %i.t, label %.lr.ph58, label %bb.f

._crit_edge:                                      ; preds = %.lr.ph58
  %i.u = zext i16 %i.aj to i32
  %.pre = load ptr, ptr %i.h, align 8
  %i.v = icmp ult i16 %i.aj, 2
  %.0.i45.a = select i1 %i.v, ptr %i.h, ptr %.pre
  %i.w = zext nneg i32 %i.s to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.0.i45.a, i64 %i.w
  %i.y = sub nsw i32 %i.u, %i.s
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !13
  %i.ab = zext i16 %i.aa to i32
  %i.ac = tail call noundef ptr @_ZN10duckdb_re26Regexp17ConcatOrAlternateENS_8RegexpOpEPPS0_iNS0_10ParseFlagsEb(i32 noundef 5, ptr noundef nonnull readonly %i.x, i32 noundef %i.y, i32 noundef %i.ab, i1 noundef zeroext false)
  %.pre70 = load i8, ptr %i.q, align 8, !tbaa !7
  br label %bb.g

.lr.ph58:                                         ; preds = %bb.e, %.lr.ph58
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.lr.ph58 ], [ %indvars.iv65, %bb.e ] ; 2 uses
  %i.ad = phi i16 [ %i.aj, %.lr.ph58 ], [ %i.e, %bb.e ]
  %i.ae = icmp ult i16 %i.ad, 2
  %i.af = load ptr, ptr %i.h, align 8
  %.0.i46 = select i1 %i.ae, ptr %i.h, ptr %i.af
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i46, i64 %indvars.iv68
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !42
  %i.ai = tail call noundef ptr @_ZN10duckdb_re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) ; 0 uses
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %i.aj = load i16, ptr %i.d, align 2, !tbaa !15  ; 4 uses
  %i.ak = zext i16 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next69, %i.ak
  br i1 %i.al, label %.lr.ph58, label %._crit_edge, !llvm.loop !123

bb.f:                                             ; preds = %bb.e
  %i.am = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !13
  store i8 2, ptr %i.am, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 0, ptr %i.ap, align 1, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i16 %i.ao, ptr %i.aq, align 2, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i16 1, ptr %i.ar, align 4, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(34) %i.as, i8 0, i64 34, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.at = phi i8 [ %i.r, %bb.f ], [ %.pre70, %._crit_edge ]
  %storemerge = phi ptr [ %i.am, %bb.f ], [ %i.ac, %._crit_edge ]
  store ptr %storemerge, ptr %3, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !13
  %i.aw = and i16 %i.av, 32
  %i.ax = icmp ne i16 %i.aw, 0
  %i.ay = icmp eq i8 %i.at, 3
  br i1 %i.ay, label %.thread.a, label %bb.h

.thread.a:                                        ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %.thread.a, %bb.h
  %i.be = phi ptr [ %i.bb, %bb.h ], [ %i.az, %.thread.a ]
  %i.bf = phi i32 [ %i.bd, %bb.h ], [ 1, %.thread.a ]
  tail call void @_ZN10duckdb_re219ConvertRunesToBytesEbPiiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i1 noundef zeroext %i.ax, ptr noundef %i.be, i32 noundef %i.bf, ptr noundef nonnull %1)
  %i.bg = load i16, ptr %i.au, align 2, !tbaa !13
  %i.bh = trunc i16 %i.bg to i8
  %i.bi = and i8 %i.bh, 1
  store i8 %i.bi, ptr %2, align 1, !tbaa !121
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c, %.preheader49, %bb.d, %.critedge, %bb.i, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %.critedge ], [ true, %bb.i ], [ false, %bb.d ], [ false, %.preheader49 ], [ false, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re26Regexp22RequiredPrefixForAccelEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef initializes((8, 16)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !77
  %i.b = load ptr, ptr %1, align 8, !tbaa !32
  store i8 0, ptr %i.b, align 1, !tbaa !33
  store i8 0, ptr %2, align 1, !tbaa !121
  %i.c = load i8, ptr %0, align 8, !tbaa !7
  %i.d = icmp ne i8 %i.c, 5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.f = load i16, ptr %i.e, align 2              ; 2 uses
  %.not = icmp eq i16 %i.f, 0
  %or.cond = select i1 %i.d, i1 true, i1 %.not
  br i1 %or.cond, label %.preheader, label %3

3:                                                ; preds = %bb.a
  %4 = icmp ult i16 %i.f, 2
  br label %.sink.split

.sink.split:                                      ; preds = %3, %bb.e
  %.sink43.a = phi ptr [ %i.p, %bb.e ], [ %0, %3 ]
  %.sink = phi i1 [ %5, %bb.e ], [ %4, %3 ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sink43.a, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.0.i29 = select i1 %.sink, ptr %i.g, ptr %i.h
  %i.i = load ptr, ptr %.0.i29, align 8, !tbaa !42
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.sink.split
  %.022.ph = phi ptr [ %i.i, %.sink.split ], [ %0, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.preheader
  %.022 = phi ptr [ %.022.ph, %.preheader ], [ %i.p, %.backedge ] ; 7 uses
  %i.j = load i8, ptr %.022, align 8, !tbaa !7    ; 2 uses
  switch i8 %i.j, label %.loopexit [
    i8 11, label %bb.c
    i8 3, label %bb.f
    i8 4, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.022, i64 6
  %i.l = load i16, ptr %i.k, align 2, !tbaa !15
  %i.m = icmp ult i16 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %.022, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.0.i28 = select i1 %i.m, ptr %i.n, ptr %i.o
  %i.p = load ptr, ptr %.0.i28, align 8, !tbaa !42 ; 4 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !7
  %i.r = icmp eq i8 %i.q, 5
  br i1 %i.r, label %bb.d, label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.t = load i16, ptr %i.s, align 2, !tbaa !15   ; 2 uses
  %.not26 = icmp eq i16 %i.t, 0
  br i1 %.not26, label %.backedge, label %bb.e

.backedge:                                        ; preds = %bb.d, %bb.c
  br label %bb.b, !llvm.loop !124

bb.e:                                             ; preds = %bb.d
  %5 = icmp eq i16 %i.t, 1
  br label %.sink.split, !llvm.loop !124

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.022, i64 2 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !13
  %i.w = and i16 %i.v, 32
  %i.x = icmp ne i16 %i.w, 0
  %i.y = icmp eq i8 %i.j, 3
  br i1 %i.y, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.022, i64 24
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.022, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %.022, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.ae = phi ptr [ %i.ab, %bb.g ], [ %i.z, %.thread ]
  %i.af = phi i32 [ %i.ad, %bb.g ], [ 1, %.thread ]
  tail call void @_ZN10duckdb_re219ConvertRunesToBytesEbPiiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i1 noundef zeroext %i.x, ptr noundef %i.ae, i32 noundef %i.af, ptr noundef nonnull %1)
  %i.ag = load i16, ptr %i.u, align 2, !tbaa !13
  %i.ah = trunc i16 %i.ag to i8
  %i.ai = and i8 %i.ah, 1
  store i8 %i.ai, ptr %2, align 1, !tbaa !121
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.h
  %.0 = phi i1 [ true, %bb.h ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10duckdb_re216CharClassBuilderC2Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((24, 28), (32, 40)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !125
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.a, ptr %i.c, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %i.d, align 8, !tbaa !127
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.e, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !128
  store i32 0, ptr %0, align 8, !tbaa !135
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !136
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %2, %1
  br i1 %i.a, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 123
  %i.c = icmp sgt i32 %2, 64
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated116 = tail call i32 @llvm.smax.i32(i32 %1, i32 65) ; 3 uses
  %.sroa.speculated112 = tail call i32 @llvm.umin.i32(i32 %2, i32 90) ; 2 uses
  %.not = icmp samesign ugt i32 %.sroa.speculated116, %.sroa.speculated112
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = sub nuw nsw i32 %.sroa.speculated112, %.sroa.speculated116
  %i.e = shl nuw nsw i32 2, %i.d
  %i.f = add nsw i32 %i.e, -1
  %i.g = add nsw i32 %.sroa.speculated116, -65
  %i.h = shl i32 %i.f, %i.g
  %i.i = load i32, ptr %0, align 8, !tbaa !135
  %i.j = or i32 %i.i, %i.h
  store i32 %i.j, ptr %0, align 8, !tbaa !135
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.speculated108 = tail call i32 @llvm.smax.i32(i32 %1, i32 97) ; 3 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %2, i32 122) ; 2 uses
  %.not27 = icmp samesign ugt i32 %.sroa.speculated108, %.sroa.speculated
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = sub nuw nsw i32 %.sroa.speculated, %.sroa.speculated108
  %i.l = shl nuw nsw i32 2, %i.k
  %i.m = add nsw i32 %i.l, -1
  %i.n = add nsw i32 %.sroa.speculated108, -97
  %i.o = shl i32 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !136
  %i.r = or i32 %i.q, %i.o
  store i32 %i.r, ptr %i.p, align 4, !tbaa !136
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 14 uses
  %.not10.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not10.i.i.i, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.t, %bb.g ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.u, %bb.g ]
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 36
  %i.w = load i32, ptr %i.v, align 4, !tbaa !137
  %i.x = icmp slt i32 %i.w, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.x, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.x, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !139

_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.y = icmp eq ptr %.19.i.i.i, %i.u
  br i1 %i.y, label %.critedge, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit: ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !140
  %i.ab = icmp slt i32 %1, %i.aa
  br i1 %i.ab, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !137
  %.not29 = icmp sgt i32 %2, %i.ad
  br i1 %.not29, label %.critedge, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit

.critedge:                                        ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %bb.h, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit
  %i.ae = icmp sgt i32 %1, 0
  br i1 %i.ae, label %bb.i, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48.thread

bb.i:                                             ; preds = %.critedge
  %i.af = add nsw i32 %1, -1
  br label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %bb.i, %.lr.ph.i.i.i37
  %.012.i.i.i38 = phi ptr [ %.1.i.i.i43, %.lr.ph.i.i.i37 ], [ %i.t, %bb.i ] ; 3 uses
  %.0811.i.i.i39 = phi ptr [ %.19.i.i.i40, %.lr.ph.i.i.i37 ], [ %i.u, %bb.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i38, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !137
  %i.ai = icmp slt i32 %i.ah, %i.af               ; 2 uses
  %.19.i.i.i40 = select i1 %i.ai, ptr %.0811.i.i.i39, ptr %.012.i.i.i38 ; 6 uses
  %.1.in.v.i.i.i41 = select i1 %i.ai, i64 24, i64 16
  %.1.in.i.i.i42 = getelementptr inbounds nuw i8, ptr %.012.i.i.i38, i64 %.1.in.v.i.i.i41
  %.1.i.i.i43 = load ptr, ptr %.1.in.i.i.i42, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %.1.i.i.i43, null
  br i1 %.not.i.i.i44, label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i45, label %.lr.ph.i.i.i37, !llvm.loop !139

_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i45: ; preds = %.lr.ph.i.i.i37
  %i.aj = icmp eq ptr %.19.i.i.i40, %i.u
  br i1 %i.aj, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48.thread, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48: ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i45
  %i.ak = getelementptr inbounds nuw i8, ptr %.19.i.i.i40, i64 32
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !140
  %.not150.not = icmp sgt i32 %1, %i.al
  br i1 %.not150.not, label %bb.j, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48.thread

bb.j:                                             ; preds = %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i40, i64 32
  %i.an = load i32, ptr %i.am, align 4, !tbaa !140 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.19.i.i.i40, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !137 ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %2)
  %i.aq = xor i32 %i.ap, -1
  %.neg = add i32 %i.an, %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !128
  %i.at = add i32 %.neg, %i.as
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !128
  %i.au = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i40, ptr noundef nonnull align 8 dereferenceable(32) %i.u) #26
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #27
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !49
  %i.ax = add i64 %i.aw, -1
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !49
  br label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48.thread

_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48.thread: ; preds = %bb.g, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i45, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48, %bb.j, %.critedge
  %.2 = phi i32 [ %2, %.critedge ], [ %spec.select, %bb.j ], [ %2, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48 ], [ %2, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i45 ], [ %2, %bb.g ] ; 7 uses
  %.1141 = phi i32 [ %1, %.critedge ], [ %i.an, %bb.j ], [ %1, %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48 ], [ %1, %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i45 ], [ %1, %bb.g ] ; 5 uses
  %i.ay = icmp slt i32 %.2, 1114111
  br i1 %i.ay, label %bb.k, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61.thread

bb.k:                                             ; preds = %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit48.thread
  %i.az = add nsw i32 %.2, 1
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !34  ; 2 uses
  %.not10.i.i.i49 = icmp eq ptr %i.ba, null
  br i1 %.not10.i.i.i49, label %_ZNSt3setIN10duckdb_re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61.thread, label %.lr.ph.i.i.i50
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re26Regexp6WalkerIiE12WalkInternalEPS0_ib:bb.a
  %.pre87.pre = phi i32 [ 0, %bb.k ], [ %.pre87.pre.pre, %bb.m ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.y

bb.o:                                             ; preds = %.thread, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit
  %.pre87 = phi i32 [ %.pre87.pre, %.thread ], [ %i.av, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit ] ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 6 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !15 ; 3 uses
  %.not71 = icmp eq i16 %i.bw, 0
  br i1 %.not71, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = icmp eq i16 %i.bw, 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %.0.i = select i1 %i.bx, ptr %i.by, ptr %i.bz   ; 3 uses
  %i.ca = zext i16 %i.bw to i32
  %.not72 = icmp slt i32 %.pre87, %i.ca
  br i1 %.not72, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.cb = icmp sgt i32 %.pre87, 0
  %or.cond = and i1 %3, %i.cb
  br i1 %or.cond, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q
  %.phi.trans.insert = sext i32 %.pre87 to i64
  %.phi.trans.insert86 = getelementptr inbounds [8 x i8], ptr %.0.i, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert86, align 8, !tbaa !42
  br label %._crit_edge90

bb.r:                                             ; preds = %bb.q
  %i.cc = add nsw i32 %.pre87, -1
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !42
  %i.cg = zext nneg i32 %.pre87 to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !42 ; 2 uses
  %i.cj = icmp eq ptr %i.cf, %i.ci
  br i1 %i.cj, label %bb.s, label %._crit_edge90

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !183
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cd
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = load ptr, ptr %0, align 8, !tbaa !30
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef i32 %i.cq(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %i.cn)
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !183
  %i.ct = load i32, ptr %i.au, align 8, !tbaa !209
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cu
  store i32 %i.cr, ptr %i.cv, align 4, !tbaa !3
  %i.cw = load i32, ptr %i.au, align 8, !tbaa !209
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.au, align 8, !tbaa !209
  br label %.thread80.backedge

._crit_edge90:                                    ; preds = %bb.r, %._crit_edge
  %i.cy = phi ptr [ %.pre, %._crit_edge ], [ %i.ci, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.cz = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !216
  store ptr %i.cy, ptr %6, align 8, !tbaa !180
  store i32 -1, ptr %i.af, align 8, !tbaa !209
  store i32 %i.da, ptr %i.ag, align 4, !tbaa !210
  store ptr null, ptr %i.ah, align 8, !tbaa !183
  %i.db = load ptr, ptr %i.v, align 8, !tbaa !175 ; 2 uses
  %i.dc = load ptr, ptr %i.x, align 8, !tbaa !211
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -32
  %.not.i.i.i74 = icmp eq ptr %i.db, %i.dd
  br i1 %.not.i.i.i74, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !212
  %i.de = load ptr, ptr %i.v, align 8, !tbaa !175
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store ptr %i.df, ptr %i.v, align 8, !tbaa !175
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75

bb.u:                                             ; preds = %._crit_edge90
  call void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.thread80.backedge

.thread80.backedge:                               ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75, %bb.s, %bb.ad
  br label %.thread80, !llvm.loop !217

bb.v:                                             ; preds = %bb.p, %bb.o
  %i.dg = getelementptr inbounds i8, ptr %i.ar, i64 -20
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !210
  %i.di = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !216
  %i.dk = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !183
  %i.dm = load ptr, ptr %0, align 8, !tbaa !30
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = call noundef i32 %i.do(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %i.at, i32 noundef %i.dh, i32 noundef %i.dj, ptr noundef %i.dl, i32 noundef %.pre87) ; 3 uses
  %i.dq = load i16, ptr %i.bv, align 2, !tbaa !15
  %i.dr = icmp ugt i16 %i.dq, 1
  br i1 %i.dr, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ds = load ptr, ptr %i.dk, align 8, !tbaa !183 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.ds) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.n, %bb.v, %bb.x, %bb.w, %bb.i
  %.3 = phi i32 [ %i.be, %bb.i ], [ %i.dp, %bb.w ], [ %i.dp, %bb.x ], [ %i.dp, %bb.v ], [ %i.bk, %bb.n ] ; 4 uses
  %i.du = load ptr, ptr %i.v, align 8, !tbaa !175 ; 2 uses
  %i.dv = load ptr, ptr %i.ac, align 8, !tbaa !184 ; 3 uses
  %.not.i.i = icmp eq ptr %i.du, %i.dv
  br i1 %.not.i.i, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %bb.y
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 -32 ; 4 uses
  store ptr %i.dw, ptr %i.v, align 8, !tbaa !175
  %i.dx = load ptr, ptr %i.aj, align 8, !tbaa !176
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %.thread82, label %bb.z

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.dv) #27
  %i.dz = load ptr, ptr %i.ad, align 8, !tbaa !109
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -8 ; 2 uses
  store ptr %i.ea, ptr %i.ad, align 8, !tbaa !171
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !110 ; 3 uses
  store ptr %i.eb, ptr %i.ac, align 8, !tbaa !172
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 512
  store ptr %i.ec, ptr %i.x, align 8, !tbaa !173
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 480 ; 3 uses
  store ptr %i.ed, ptr %i.v, align 8, !tbaa !175
  %i.ee = load ptr, ptr %i.aj, align 8, !tbaa !176
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %.thread82, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76

bb.z:                                             ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.eg = icmp eq ptr %i.dw, %i.dv
  br i1 %i.eg, label %bb.aa, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76

bb.aa:                                            ; preds = %bb.z
  %i.eh = load ptr, ptr %i.ad, align 8, !tbaa !171, !noalias !218
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !110
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 512
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76: ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, %bb.z, %bb.aa
  %i.el = phi ptr [ %i.ek, %bb.aa ], [ %i.dw, %bb.z ], [ %i.ed, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread ] ; 4 uses
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !183 ; 2 uses
  %.not73 = icmp eq ptr %i.en, null
  br i1 %.not73, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 -24
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !209
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.eq
  store i32 %.3, ptr %i.er, align 4, !tbaa !3
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76
  %i.es = getelementptr inbounds i8, ptr %i.el, i64 -12
  store i32 %.3, ptr %i.es, align 4, !tbaa !221
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.et = getelementptr inbounds i8, ptr %i.el, i64 -24 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !209
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 8, !tbaa !209
  br label %.thread80.backedge

.thread82:                                        ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, %_ZN10LogMessageD2Ev.exit
  %.2 = phi i32 [ %2, %_ZN10LogMessageD2Ev.exit ], [ %.3, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread ], [ %.3, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !172
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 5
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !173
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !176
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 288230376151711743
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !169
  %i.ag = load ptr, ptr %0, align 8, !tbaa !107
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !109
  br label %_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %2 = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.d ]
  %3 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #30
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %3, ptr %i.am, align 8, !tbaa !110
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !175
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !212
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !171
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !110 ; 3 uses
  store ptr %i.aq, ptr %i.o, align 8, !tbaa !172
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !173
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !175
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !169  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !107
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !222

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !110
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !110
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !222

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !110
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !110
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE15_M_allocate_mapEm.exit, !prof !55

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #30 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !222

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !110
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !110
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit24

_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !107
  tail call void @_ZdlPv(ptr noundef %i.bc) #27
  store ptr %i.aq, ptr %0, align 8, !tbaa !107
  store i64 %i.am, ptr %i.k, align 8, !tbaa !169
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN10duckdb_re29WalkStateIiEES4_ET0_T_S6_S5_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !171
  %i.bd = load ptr, ptr %.0, align 8, !tbaa !110  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !172
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 512
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !173
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !171
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !110 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !172
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 512
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !173
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
