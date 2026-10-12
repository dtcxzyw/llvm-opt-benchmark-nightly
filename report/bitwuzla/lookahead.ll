Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/lookahead?download=true
inline.NumInlined: 908
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7CaDiCaL8Internal23lookahead_populate_loccEv:bb.a
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdlPv(ptr noundef nonnull %i.dt) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.thread, %bb.v, %bb.u, %bb.n
  %.pn31 = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.dp, %bb.n ], [ %.pn, %bb.u ], [ %i.dq, %.thread ]
  %.not.i.i.i43 = icmp eq ptr %.sroa.053.0115, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIN7CaDiCaL11literal_occESaIS1_EED2Ev.exit44, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.053.0115) #19
  br label %_ZNSt6vectorIN7CaDiCaL11literal_occESaIS1_EED2Ev.exit44

_ZNSt6vectorIN7CaDiCaL11literal_occESaIS1_EED2Ev.exit44: ; preds = %bb.w, %_ZNSt6vectorIiSaIiEED2Ev.exit
  resume { ptr, i32 } %.pn31
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN7CaDiCaL8Internal14lookahead_loccERKSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !178    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !178  ; 2 uses
  %.not2326 = icmp eq ptr %i.a, %i.c
  br i1 %.not2326, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.g = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.014.027 = phi ptr [ %i.a, %.lr.ph ], [ %i.w, %bb.f ] ; 2 uses
  %i.h = load i32, ptr %.sroa.014.027, align 4, !tbaa !164 ; 5 uses
  %i.i = tail call i32 @llvm.abs.i32(i32 %i.h, i1 true)
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.j
  %i.l = load i32, ptr %i.k, align 1              ; 2 uses
  %i.m = and i32 %i.l, 117440512
  %i.n = icmp eq i32 %i.m, 16777216
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.lobit.i.i = lshr i32 %i.h, 31
  %i.o = add nuw nsw i32 %.lobit.i.i, 1
  %i.p = lshr i32 %i.l, 18                        ; 2 uses
  %i.q = and i32 %i.p, %i.o
  %.not24 = icmp eq i32 %i.q, 0
  br i1 %.not24, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.inv = icmp slt i32 %i.h, 1
  %i.r = select i1 %.inv, i32 1, i32 2
  %i.s = and i32 %i.p, %i.r
  %.not25 = icmp eq i32 %i.s, 0
  br i1 %.not25, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = sext i32 %i.h to i64
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !179
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.027, i64 4 ; 2 uses
  %.not23 = icmp eq ptr %i.w, %i.c
  br i1 %.not23, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.f, %bb.a
  %i.x = phi i32 [ 0, %bb.a ], [ 0, %bb.f ], [ %i.h, %bb.e ]
  ret i32 %i.x
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7CaDiCaL8Internal22most_occurring_literalEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN7CaDiCaL8Internal10init_noccsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %.not5258 = icmp eq ptr %i.b, %i.d
  br i1 %.not5258, label %._crit_edge, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 880
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit55, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i8, ptr %i.g, align 4, !tbaa !180, !range !181, !noundef !182
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.m, label %bb.g

bb.b:                                             ; preds = %.lr.ph60, %.loopexit55
  %.sroa.049.059 = phi ptr [ %i.b, %.lr.ph60 ], [ %i.ah, %.loopexit55 ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.049.059, align 8, !tbaa !172 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 2048
  %.not46 = icmp eq i32 %i.m, 0
  br i1 %.not46, label %bb.c, label %.loopexit55

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !164  ; 2 uses
  %i.q = sext i32 %i.p to i64
  %.idx = shl nsw i64 %i.q, 2
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %.idx
  %.not4756 = icmp eq i32 %i.p, 0
  br i1 %.not4756, label %.loopexit55, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !173
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.03957 = phi ptr [ %i.n, %.lr.ph ], [ %i.ag, %bb.f ] ; 2 uses
  %i.t = load i32, ptr %.03957, align 4, !tbaa !164 ; 2 uses
  %i.u = tail call noundef i32 @llvm.abs.i32(i32 %i.t, i1 true) ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.v
  %i.x = load i32, ptr %i.w, align 1
  %i.y = and i32 %i.x, 117440512
  %i.z = icmp eq i32 %i.y, 16777216
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call noundef i32 @llvm.fshl.i32(i32 %i.u, i32 %i.t, i32 1)
  %i.ab = zext i32 %i.aa to i64
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !183
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !184
  %i.af = add nsw i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !184
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.03957, i64 4 ; 2 uses
  %.not47 = icmp eq ptr %i.ag, %i.r
  br i1 %.not47, label %.loopexit55, label %bb.d

.loopexit55:                                      ; preds = %bb.f, %bb.c, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.049.059, i64 8 ; 2 uses
  %.not52 = icmp eq ptr %i.ah, %i.d
  br i1 %.not52, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %._crit_edge
  %i.ai = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !163 ; 2 uses
  %.not64 = icmp slt i32 %i.ak, 1
  br i1 %.not64, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !173 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.ap = add nuw i32 %i.ak, 1
  %wide.trip.count = zext i32 %i.ap to i64
  br label %bb.h

._crit_edge70:                                    ; preds = %.loopexit, %bb.g
  %.034.lcssa = phi i64 [ 0, %bb.g ], [ %.438, %.loopexit ]
  %.033.lcssa = phi i32 [ 0, %bb.g ], [ %.4, %.loopexit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 7248
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !185 ; 2 uses
  %.not43 = icmp eq ptr %i.ar, null
  br i1 %.not43, label %bb.l, label %bb.k

bb.h:                                             ; preds = %.lr.ph69, %.loopexit
  %indvars.iv = phi i64 [ 1, %.lr.ph69 ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %.03366 = phi i32 [ 0, %.lr.ph69 ], [ %.4, %.loopexit ] ; 4 uses
  %.03465 = phi i64 [ 0, %.lr.ph69 ], [ %.438, %.loopexit ] ; 5 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 1
  %i.au = and i32 %i.at, 118226944
  %or.cond78 = icmp eq i32 %i.au, 16777216
  br i1 %or.cond78, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !226
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !179
  %.not44 = icmp eq i8 %i.ax, 0
  br i1 %.not44, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.i
  %i.ay = trunc i64 %indvars.iv to i32            ; 2 uses
  %i.az = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true) ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 1
  %i.bd = and i32 %i.bc, 117440512
  %i.be = icmp eq i32 %i.bd, 16777216
  br i1 %i.be, label %bb.j, label %.loopexit.loopexit

bb.j:                                             ; preds = %.preheader.preheader
  %i.bf = sub i32 0, %i.ay                        ; 2 uses
  %i.bg = tail call noundef i32 @llvm.fshl.i32(i32 %i.az, i32 %i.bf, i32 1)
  %i.bh = zext i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.ao, align 8, !tbaa !183
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !184 ; 2 uses
  %.not45 = icmp sgt i64 %i.bk, %.03465
  %..135 = tail call i64 @llvm.smax.i64(i64 %i.bk, i64 %.03465)
  %..1 = select i1 %.not45, i32 %i.bf, i32 %.03366
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.preheader.preheader, %bb.j
  %.337 = phi i64 [ %..135, %bb.j ], [ %.03465, %.preheader.preheader ] ; 2 uses
  %.3 = phi i32 [ %..1, %bb.j ], [ %.03366, %.preheader.preheader ]
  %i.bl = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %1 = tail call noundef i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 1)
  %2 = zext i32 %1 to i64
  %i.bm = load ptr, ptr %i.ao, align 8, !tbaa !183
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %2
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !184 ; 2 uses
  %.not45.1 = icmp sgt i64 %i.bo, %.337
  %..135.1 = tail call i64 @llvm.smax.i64(i64 %i.bo, i64 %.337)
  %..1.1 = select i1 %.not45.1, i32 %i.bl, i32 %.3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.h, %bb.i
  %.438 = phi i64 [ %.03465, %bb.h ], [ %..135.1, %.loopexit.loopexit ], [ %.03465, %bb.i ] ; 2 uses
  %.4 = phi i32 [ %.03366, %bb.h ], [ %..1.1, %.loopexit.loopexit ], [ %.03366, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge70, label %bb.h, !llvm.loop !225

bb.k:                                             ; preds = %._crit_edge70
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288) %i.ar, ptr noundef nonnull @.str, i64 noundef %.034.lcssa, i32 noundef %.033.lcssa)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge70
  tail call void @_ZN7CaDiCaL8Internal11reset_noccsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.040 = phi i32 [ %.033.lcssa, %bb.l ], [ -2147483648, %._crit_edge ]
  ret i32 %.040
}

declare void @_ZN7CaDiCaL8Internal10init_noccsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal7messageEPKcz(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef, ...) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal11reset_noccsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal22lookahead_flush_probesEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  tail call void @_ZN7CaDiCaL8Internal10init_noccsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171  ; 2 uses
  %.not4144 = icmp eq ptr %i.d, %i.f
  br i1 %.not4144, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 880
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2160 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2168 ; 8 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !178  ; 4 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !178  ; 4 uses
  %.not4246 = icmp eq ptr %i.k, %i.j
  br i1 %.not4246, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5456
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 7248
  br label %bb.m

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.038.045 = phi ptr [ %i.d, %.lr.ph ], [ %i.ah, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.q = load ptr, ptr %.sroa.038.045, align 8, !tbaa !172
  %i.r = call noundef zeroext i1 @_ZN7CaDiCaL8Internal16is_binary_clauseEPNS_6ClauseERiS3_(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr %i.a, align 4, !tbaa !164  ; 2 uses
  %i.t = call noundef i32 @llvm.abs.i32(i32 %i.s, i1 true)
  %i.u = call noundef i32 @llvm.fshl.i32(i32 %i.t, i32 %i.s, i32 1)
  %i.v = zext i32 %i.u to i64
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !183  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !184
  %i.z = add nsw i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !184
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !164 ; 2 uses
  %i.ab = call noundef i32 @llvm.abs.i32(i32 %i.aa, i1 true)
  %i.ac = call noundef i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.aa, i32 1)
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !184
  %i.ag = add nsw i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !184
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.038.045, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.ah, %i.f
  br i1 %.not41, label %._crit_edge, label %bb.b

._crit_edge51.loopexit:                           ; preds = %bb.s
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !178
  %.pre52 = load ptr, ptr %i.i, align 8, !tbaa !176
  br label %._crit_edge51

._crit_edge51:                                    ; preds = %._crit_edge51.loopexit, %._crit_edge
  %i.ai = phi ptr [ %i.j, %._crit_edge ], [ %.pre52, %._crit_edge51.loopexit ] ; 4 uses
  %i.aj = phi ptr [ %i.k, %._crit_edge ], [ %.pre, %._crit_edge51.loopexit ] ; 5 uses
  %.sroa.034.0.lcssa = phi ptr [ %i.j, %._crit_edge ], [ %.sroa.034.1, %._crit_edge51.loopexit ] ; 2 uses
  %i.ak = ptrtoint ptr %.sroa.034.0.lcssa to i64
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = ashr exact i64 %i.am, 2                 ; 5 uses
  %i.ao = ptrtoint ptr %i.ai to i64
  %i.ap = sub i64 %i.ao, %i.al
  %i.aq = ashr exact i64 %i.ap, 2                 ; 5 uses
  %i.ar = icmp ugt i64 %i.an, %i.aq
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge51
  %i.as = sub nuw nsw i64 %i.an, %i.aq
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.as)
  %.pre53 = load ptr, ptr %i.h, align 8, !tbaa !178
  %.pre54 = load ptr, ptr %i.i, align 8, !tbaa !178
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.f:                                             ; preds = %._crit_edge51
  %i.at = icmp uge i64 %i.an, %i.aq
  %.not.i.i = icmp eq ptr %i.ai, %.sroa.034.0.lcssa
  %or.cond = or i1 %i.at, %.not.i.i
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am ; 2 uses
  store ptr %i.au, ptr %i.i, align 8, !tbaa !176
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.e, %bb.f, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.av = phi ptr [ %.pre54, %bb.e ], [ %i.ai, %bb.f ], [ %i.au, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.aw = phi ptr [ %.pre53, %bb.e ], [ %i.aj, %bb.f ], [ %i.aj, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  call void @_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS_24probe_negated_noccs_rankEEEvT_S9_T0_(ptr %i.aw, ptr %i.av, ptr nonnull %0)
  call void @_ZN7CaDiCaL8Internal11reset_noccsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !177
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !175 ; 3 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64               ; 4 uses
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !176 ; 2 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.bb                    ; 4 uses
  %i.bg = icmp ugt i64 %i.bc, %i.bf
  br i1 %i.bg, label %bb.g, label %_ZN7CaDiCaL13shrink_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %i.az
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = icmp ugt i64 %i.bf, 9223372036854775804
  br i1 %i.bh, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !186

.noexc.i.i.i:                                     ; preds = %bb.h
  call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.bi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #18
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !178 ; 2 uses
  %.pre6.i = load ptr, ptr %i.i, align 8, !tbaa !178
  %.pre7.i = ptrtoint ptr %.pre6.i to i64
  %.pre8.i = ptrtoint ptr %.pre.i to i64
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.g
  %.pre-phi9.i = phi i64 [ %.pre8.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.bb, %bb.g ]
  %.pre-phi.i = phi i64 [ %.pre7.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.bb, %bb.g ]
  %i.bj = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.az, %bb.g ] ; 4 uses
  %i.bk = phi ptr [ %i.bi, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.g ] ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bf ; 2 uses
  %i.bm = sub i64 %.pre-phi.i, %.pre-phi9.i       ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 4
  br i1 %i.bn, label %bb.j, label %bb.k, !prof !187

bb.j:                                             ; preds = %bb.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %i.bj, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bo = icmp eq i64 %i.bm, 4
  br i1 %i.bo, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread.i, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread.i:       ; preds = %bb.k
  %i.bp = load i32, ptr %i.bj, align 4, !tbaa !164
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !164
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
end_hunk_0
