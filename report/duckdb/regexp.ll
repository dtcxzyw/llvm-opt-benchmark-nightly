inline.NumInlined: 1249
inline.NumDeleted: 582
begin_hunk_0_@_ZN10duckdb_re26Regexp17ConcatOrAlternateENS_8RegexpOpEPPS0_iNS0_10ParseFlagsEb:bb.a

bb.u:                                             ; preds = %bb.s, %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.preheader136, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader136 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.059, i64 %indvars.iv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !42
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.0.i80134, i64 %indvars.iv
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !61

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.t, %bb.p
  %.058 = phi ptr [ %i.u, %bb.p ], [ %i.ba, %bb.t ], [ %i.ba, %middle.block ], [ %i.ba, %.lr.ph ] ; 2 uses
  %.not.i.i81 = icmp eq ptr %.sroa.596.0, null
  br i1 %.not.i.i81, label %_ZN10duckdb_re28PODArrayIPNS_6RegexpEED2Ev.exit82, label %bb.v

bb.v:                                             ; preds = %.thread, %.loopexit
  %.058107 = phi ptr [ %i.p, %.thread ], [ %.058, %.loopexit ]
  %.sroa.596.1106 = phi ptr [ %i.m, %.thread ], [ %.sroa.596.0, %.loopexit ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.596.1106) #27
  br label %_ZN10duckdb_re28PODArrayIPNS_6RegexpEED2Ev.exit82

.body:                                            ; preds = %bb.o, %bb.l, %bb.m, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.o ], [ %i.bv, %bb.u ], [ %i.an, %bb.m ], [ %i.am, %bb.l ] ; 2 uses
  %.not.i.i83 = icmp eq ptr %.sroa.596.0, null
  br i1 %.not.i.i83, label %_ZN10duckdb_re28PODArrayIPNS_6RegexpEED2Ev.exit84, label %bb.w

bb.w:                                             ; preds = %.body.thread113, %.body
  %.pn.pn.pn118 = phi { ptr, i32 } [ %i.q, %.body.thread113 ], [ %.pn.pn.pn, %.body ]
  %.sroa.596.2117 = phi ptr [ %i.m, %.body.thread113 ], [ %.sroa.596.0, %.body ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.596.2117) #27
  br label %_ZN10duckdb_re28PODArrayIPNS_6RegexpEED2Ev.exit84

_ZN10duckdb_re28PODArrayIPNS_6RegexpEED2Ev.exit84: ; preds = %.body, %bb.w
  %.pn.pn.pn112 = phi { ptr, i32 } [ %.pn.pn.pn118, %bb.w ], [ %.pn.pn.pn, %.body ]
  resume { ptr, i32 } %.pn.pn.pn112

_ZN10duckdb_re28PODArrayIPNS_6RegexpEED2Ev.exit82: ; preds = %bb.v, %.loopexit, %bb.e, %bb.d, %bb.b
  %.1 = phi ptr [ %i.a, %bb.b ], [ %i.c, %bb.d ], [ %i.c, %bb.e ], [ %.058, %.loopexit ], [ %.058107, %bb.v ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare noundef i32 @_ZN10duckdb_re26Regexp17FactorAlternationEPPS0_iNS0_10ParseFlagsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10duckdb_re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN10duckdb_re26Regexp17ConcatOrAlternateENS_8RegexpOpEPPS0_iNS0_10ParseFlagsEb(i32 noundef 5, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext false)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10duckdb_re26Regexp9AlternateEPPS0_iNS0_10ParseFlagsE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN10duckdb_re26Regexp17ConcatOrAlternateENS_8RegexpOpEPPS0_iNS0_10ParseFlagsEb(i32 noundef 6, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10duckdb_re26Regexp17AlternateNoFactorEPPS0_iNS0_10ParseFlagsE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN10duckdb_re26Regexp17ConcatOrAlternateENS_8RegexpOpEPPS0_iNS0_10ParseFlagsEb(i32 noundef 6, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext false)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN10duckdb_re26Regexp7CaptureEPS0_NS0_10ParseFlagsEi(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 9 uses
  store i8 11, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = trunc i32 %1 to i16
  store i16 %i.d, ptr %i.c, align 2, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 1, ptr %i.e, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store i16 1, ptr %i.f, align 2, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %2, ptr %i.i, align 8, !tbaa !33
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN10duckdb_re26Regexp6RepeatEPS0_NS0_10ParseFlagsEii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 10 uses
  store i8 10, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = trunc i32 %1 to i16
  store i16 %i.d, ptr %i.c, align 2, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 1, ptr %i.e, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store i16 1, ptr %i.f, align 2, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %2, ptr %i.j, align 4, !tbaa !33
  store i32 %3, ptr %i.i, align 8, !tbaa !33
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN10duckdb_re26Regexp10NewLiteralEiNS0_10ParseFlagsE(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 7 uses
  store i8 3, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = trunc i32 %1 to i16
  store i16 %i.d, ptr %i.c, align 2, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 1, ptr %i.e, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(34) %i.f, i8 0, i64 34, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %0, ptr %i.g, align 8, !tbaa !33
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN10duckdb_re26Regexp13LiteralStringEPiiNS0_10ParseFlagsE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 6 uses
  store i8 2, ptr %i.b, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.c, align 1, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.e = trunc i32 %2 to i16
  store i16 %i.e, ptr %i.d, align 2, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 1, ptr %i.f, align 4, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(34) %i.g, i8 0, i64 34, i1 false)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %1, 1
  br i1 %i.h, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %0, align 4, !tbaa !3
  %i.j = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 7 uses
  store i8 3, ptr %i.j, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.k, align 1, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.m = trunc i32 %2 to i16
  store i16 %i.m, ptr %i.l, align 2, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i16 1, ptr %i.n, align 4, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(34) %i.o, i8 0, i64 34, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 %i.i, ptr %i.p, align 8, !tbaa !33
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.q = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 8 uses
  store i8 4, ptr %i.q, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %i.r, align 1, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.t = trunc i32 %2 to i16
  store i16 %i.t, ptr %i.s, align 2, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i16 1, ptr %i.u, align 4, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(34) %i.v, i8 0, i64 34, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN10duckdb_re26Regexp15AddRuneToStringEi.exit
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.bl, %_ZN10duckdb_re26Regexp15AddRuneToStringEi.exit ] ; 9 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN10duckdb_re26Regexp15AddRuneToStringEi.exit ] ; 4 uses
  %i.z = phi i32 [ 0, %.lr.ph ], [ %i.bm, %_ZN10duckdb_re26Regexp15AddRuneToStringEi.exit ] ; 7 uses
  %i.aa = ptrtoaddr ptr %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = icmp eq i32 %i.z, 0
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #30 ; 2 uses
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !33
  br label %_ZN10duckdb_re26Regexp15AddRuneToStringEi.exit

bb.g:                                             ; preds = %bb.e
  %i.af = icmp samesign ugt i32 %i.z, 7
  %i.ag = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.z)
  %i.ah = icmp samesign ult i32 %i.ag, 2
  %or.cond.i = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %_ZN10duckdb_re26Regexp15AddRuneToStringEi.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.ai = shl nuw nsw i32 %i.z, 1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #30 ; 9 uses
  store ptr %i.al, ptr %i.x, align 8, !tbaa !33
  %i.am = zext nneg i32 %i.z to i64               ; 3 uses
  %i.an = ptrtoaddr ptr %i.al to i64
  %i.ao = sub i64 %i.an, %i.aa
  %diff.check = icmp ult i64 %i.ao, 32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.am, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !3
  %wide.load24 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <4 x i32> %wide.load, ptr %i.ar, align 4, !tbaa !3
  store <4 x i32> %wide.load24, ptr %i.as, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.am
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %indvars.iv, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i.prol
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i.prol
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !63

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ax = sub nsw i64 %indvars.iv.i.ph, %indvars.iv
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next.i
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.i.1
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next.i.1
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !3
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.i.2
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next.i.2
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.i.3, %i.am
  br i1 %exitcond.not.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !65

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #27
  br label %_ZN10duckdb_re26Regexp15AddRuneToStringEi.exit

_ZN10duckdb_re26Regexp15AddRuneToStringEi.exit:   ; preds = %bb.f, %bb.g, %._crit_edge.i
  %i.bl = phi ptr [ %i.ae, %bb.f ], [ %i.al, %._crit_edge.i ], [ %i.y, %bb.g ] ; 2 uses
  %i.bm = add nuw nsw i32 %i.z, 1                 ; 2 uses
  %i.bn = zext nneg i32 %i.z to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bn
  store i32 %i.ac, ptr %i.bo, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond21.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond21.not, label %..loopexit_crit_edge, label %bb.e, !llvm.loop !66

..loopexit_crit_edge:                             ; preds = %_ZN10duckdb_re26Regexp15AddRuneToStringEi.exit
  store i32 %i.bm, ptr %i.w, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %bb.d, %bb.b
  %.015 = phi ptr [ %i.b, %bb.b ], [ %i.j, %bb.d ], [ %i.q, %..loopexit_crit_edge ]
  ret ptr %.015
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN10duckdb_re26Regexp12NewCharClassEPNS_9CharClassENS0_10ParseFlagsE(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 7 uses
  store i8 20, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = trunc i32 %1 to i16
  store i16 %i.d, ptr %i.c, align 2, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 1, ptr %i.e, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(34) %i.f, i8 0, i64 34, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.g, align 8, !tbaa !33
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN10duckdb_re26Regexp4SwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %1, ptr noundef nonnull align 16 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re26Regexp5EqualEPS0_S1_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, %1
  br label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EED2Ev.exit59

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef zeroext i1 @_ZN10duckdb_re2L8TopEqualEPNS_6RegexpES1_(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br i1 %i.d, label %bb.d, label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EED2Ev.exit59

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %0, align 8, !tbaa !7       ; 2 uses
  %i.f = add i8 %i.e, -5
  %switch = icmp ult i8 %i.f, 7
  br i1 %switch, label %.preheader, label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EED2Ev.exit59

.preheader:                                       ; preds = %bb.d, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit
  %i.g = phi i8 [ %.pre, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit ], [ %i.e, %bb.d ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.4, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit ], [ null, %bb.d ] ; 6 uses
  %.sroa.16.0 = phi ptr [ %.sroa.16.3, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit ], [ null, %bb.d ] ; 4 uses
  %.sroa.28.0 = phi ptr [ %.sroa.28.3, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit ], [ null, %bb.d ] ; 4 uses
  %.035 = phi ptr [ %.237, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit ], [ %0, %bb.d ] ; 4 uses
  %.032 = phi ptr [ %.234, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit ], [ %1, %bb.d ] ; 4 uses
  switch i8 %i.g, label %.loopexit [
    i8 6, label %bb.f
    i8 5, label %bb.f
    i8 7, label %bb.t
    i8 8, label %bb.t
    i8 9, label %bb.t
    i8 10, label %bb.t
    i8 11, label %bb.t
  ]

bb.e:                                             ; preds = %bb.t
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.f:                                             ; preds = %.preheader, %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %.035, i64 6 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !15   ; 2 uses
  %.not130.not = icmp eq i16 %i.j, 0
  br i1 %.not130.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.032, i64 6
  %i.m = getelementptr inbounds nuw i8, ptr %.032, i64 8 ; 2 uses
  br label %bb.g

.loopexit109:                                     ; preds = %bb.g, %_ZNKSt6vectorIPN10duckdb_re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIPN10duckdb_re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i45
  %.sroa.0.2.ph = phi ptr [ %.sroa.0.1131, %bb.g ], [ %.sroa.0.1131, %_ZNKSt6vectorIPN10duckdb_re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0.6, %_ZNKSt6vectorIPN10duckdb_re26RegexpESaIS2_EE12_M_check_lenEmPKc.exit.i.i45 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.l, %bb.q
  %.sroa.0.2.ph110 = phi ptr [ %.sroa.0.6, %bb.q ], [ %.sroa.0.1131, %bb.l ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53 ] ; 3 uses
  %i.n = phi i16 [ %i.j, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53 ]
  %.sroa.28.1133 = phi ptr [ %.sroa.28.0, %.lr.ph ], [ %.sroa.28.5, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53 ] ; 3 uses
  %.sroa.16.1132 = phi ptr [ %.sroa.16.0, %.lr.ph ], [ %.sroa.16.5, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53 ] ; 3 uses
  %.sroa.0.1131 = phi ptr [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.7, %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE9push_backERKS2_.exit53 ] ; 9 uses
  %i.o = icmp ult i16 %i.n, 2
  %i.p = load ptr, ptr %i.k, align 8
  %.0.i = select i1 %i.o, ptr %i.k, ptr %i.p
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42   ; 3 uses
  %i.s = load i16, ptr %i.l, align 2, !tbaa !15
  %i.t = icmp ult i16 %i.s, 2
  %i.u = load ptr, ptr %i.m, align 8
  %.0.i42 = select i1 %i.t, ptr %i.m, ptr %i.u
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0.i42, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42   ; 3 uses
  %i.x = invoke fastcc noundef zeroext i1 @_ZN10duckdb_re2L8TopEqualEPNS_6RegexpES1_(ptr noundef %i.r, ptr noundef %i.w)
          to label %bb.h unwind label %.loopexit109

bb.h:                                             ; preds = %bb.g
  br i1 %i.x, label %bb.i, label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit.thread

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq ptr %.sroa.16.1132, %.sroa.28.1133
  br i1 %.not.i, label %bb.k, label %bb.j

end_hunk_0
