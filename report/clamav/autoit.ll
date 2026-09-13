Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/autoit?download=true
inline.NumInlined: 33
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0_@cli_scanautoit:bb.a
  %i.bqi = phi i32 [ %.pre557.i, %..thread401_crit_edge.i ], [ %i.bqc, %bb.hp ]
  %.20.i = phi ptr [ %i.bqh, %..thread401_crit_edge.i ], [ %.0223484.i, %bb.hp ] ; 2 uses
  store i32 %.pre-phi575.i, ptr %i.asd, align 8, !tbaa !74
  %i.bqj = zext i32 %i.bqi to i64
  %i.bqk = getelementptr inbounds nuw i8, ptr %.20.i, i64 %i.bqj
  store i8 10, ptr %i.bqk, align 1, !tbaa !10
  br label %bb.ht

bb.hs:                                            ; preds = %bb.fm
  %i.bql = zext i8 %i.bft to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.528, i32 noundef %i.bql) #14
  store i32 1, ptr %i.ash, align 8, !tbaa !19
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %.thread401.i, %bb.hr, %.thread398.i, %bb.ho, %bb.hl, %bb.hj, %.thread396.i, %bb.hc, %bb.ha, %bb.gy, %bb.gv, %bb.gs, %bb.gq, %.thread391.i, %bb.gn, %.thread388.i, %bb.gl, %bb.gi, %bb.gg, %.thread386.i, %bb.ga, %bb.fy, %bb.fw, %.thread384.i, %bb.fq, %bb.fo
  %.21.i = phi ptr [ %.0223484.i, %bb.hs ], [ %.0223484.i, %bb.hr ], [ %.0223484.i, %.thread384.i ], [ %.0223484.i, %bb.gi ], [ %.8231.i, %.thread388.i ], [ %.0223484.i, %bb.gl ], [ %.0223484.i, %.thread386.i ], [ %.0223484.i, %bb.gs ], [ %.13.i, %bb.gy ], [ %.0223484.i, %bb.gv ], [ %.0223484.i, %.thread391.i ], [ %.18.i, %.thread398.i ], [ %.0223484.i, %bb.ho ], [ %.20.i, %.thread401.i ], [ %.0223484.i, %bb.fo ], [ %.0223484.i, %bb.fq ], [ %.2225.i, %bb.fw ], [ %.0223484.i, %bb.fy ], [ %.0223484.i, %bb.ga ], [ %.5228.i, %bb.gg ], [ %.0223484.i, %bb.gn ], [ %.10.i, %bb.gq ], [ %.0223484.i, %bb.ha ], [ %.0223484.i, %bb.hc ], [ %.0223484.i, %.thread396.i ], [ %.15.i, %bb.hj ], [ %.15.i, %bb.hl ] ; 2 uses
  %i.bqm = load i32, ptr %i.ash, align 8, !tbaa !19
  %i.bqn = icmp eq i32 %i.bqm, 0                  ; 2 uses
  %i.bqo = load i32, ptr %i.asg, align 8          ; 2 uses
  %i.bqp = icmp ne i32 %i.bqo, 0
  %or.cond22.i = select i1 %i.bqn, i1 %i.bqp, i1 false
  br i1 %or.cond22.i, label %.lr.ph486.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ht, %bb.fl
  %.0223.lcssa.i = phi ptr [ %i.bfd, %bb.fl ], [ %.21.i, %bb.ht ] ; 2 uses
  %.lcssa441.i = phi i1 [ %i.bfi, %bb.fl ], [ %i.bqn, %bb.ht ]
  br i1 %.lcssa441.i, label %.critedge.thread.i, label %bb.hu

bb.hu:                                            ; preds = %.critedge.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.529) #14
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.lr.ph486.i, %bb.hu, %.critedge.i
  %.0223444.i = phi ptr [ %.0223.lcssa.i, %.critedge.i ], [ %.0223.lcssa.i, %bb.hu ], [ %.0223484.i, %.lr.ph486.i ]
  %i.bqq = load ptr, ptr %2, align 8, !tbaa !73
  call void @free(ptr noundef %i.bqq) #14
  br label %bb.hw

bb.hv:                                            ; preds = %bb.fi
  %i.bqr = load ptr, ptr %2, align 8, !tbaa !73
  store i32 %i.bez, ptr %i.asd, align 8, !tbaa !74
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %.critedge.thread.i
  %.22.i = phi ptr [ %.0223444.i, %.critedge.thread.i ], [ %i.bqr, %bb.hv ] ; 4 uses
  %i.bqs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 1023, ptr noundef nonnull @.str.474, ptr noundef nonnull %i.l, i32 noundef %i.baf) #14 ; 0 uses
  store i8 0, ptr %i.asi, align 1, !tbaa !10
  %i.bqt = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.b, i32 noundef 578, i32 noundef 384) #14 ; 7 uses
  %i.bqu = icmp slt i32 %i.bqt, 0
  br i1 %i.bqu, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.475, ptr noundef nonnull %i.b) #14
  call void @free(ptr noundef %.22.i) #14
  br label %ea06.exit

bb.hy:                                            ; preds = %bb.hw
  %i.bqv = load i32, ptr %i.asd, align 8, !tbaa !74
  %i.bqw = zext i32 %i.bqv to i64
  %i.bqx = call i64 @cli_writen(i32 noundef %i.bqt, ptr noundef %.22.i, i64 noundef %i.bqw) #14
  %i.bqy = load i32, ptr %i.asd, align 8, !tbaa !74
  %i.bqz = zext i32 %i.bqy to i64
  %.not313.i = icmp eq i64 %i.bqx, %i.bqz
  br i1 %.not313.i, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.bra = load i32, ptr %i.asc, align 8, !tbaa !72
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.476, i32 noundef %i.bra) #14
  %i.brb = call i32 @close(i32 noundef %i.bqt) #14 ; 0 uses
  call void @free(ptr noundef %.22.i) #14
  br label %ea06.exit

bb.ia:                                            ; preds = %bb.hy
  call void @free(ptr noundef %.22.i) #14
  %i.brc = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.brd = getelementptr inbounds nuw i8, ptr %i.brc, i64 48
  %i.bre = load i32, ptr %i.brd, align 8, !tbaa !67
  %.not314.i = icmp eq i32 %i.bre, 0
  %i.brf = select i1 %.0220.i, ptr @.str.531, ptr @.str.532 ; 2 uses
  br i1 %.not314.i, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.530, ptr noundef nonnull %i.brf, ptr noundef nonnull %i.b) #14
  br label %bb.id

bb.ic:                                            ; preds = %bb.ia
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.533, ptr noundef nonnull %i.brf) #14
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %i.brg = call i64 @lseek(i32 noundef %i.bqt, i64 noundef 0, i32 noundef 0) #14
  %i.brh = icmp eq i64 %i.brg, -1
  br i1 %i.brh, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.479) #14
  %i.bri = call i32 @close(i32 noundef %i.bqt) #14 ; 0 uses
  br label %ea06.exit

bb.if:                                            ; preds = %bb.id
  %i.brj = call i32 @cli_magic_scan_desc(i32 noundef %i.bqt, ptr noundef nonnull %i.b, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #14
  %.not315.i = icmp eq i32 %i.brj, 0
  %i.brk = call i32 @close(i32 noundef %i.bqt) #14 ; 0 uses
  %i.brl = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brl, i64 48
  %i.brn = load i32, ptr %i.brm, align 8, !tbaa !67
  %.not316.i = icmp eq i32 %i.brn, 0              ; 2 uses
  br i1 %.not315.i, label %bb.ij, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  br i1 %.not316.i, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.bro = call i32 @cli_unlink(ptr noundef nonnull %i.b) #14
  %.not319.i = icmp eq i32 %i.bro, 0
  br i1 %.not319.i, label %bb.ii, label %ea06.exit

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  br label %ea06.exit

bb.ij:                                            ; preds = %bb.if
  br i1 %.not316.i, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.brp = call i32 @cli_unlink(ptr noundef nonnull %i.b) #14
  %.not317.i = icmp eq i32 %i.brp, 0
  br i1 %.not317.i, label %bb.il, label %ea06.exit

bb.il:                                            ; preds = %bb.ik, %bb.ij, %bb.fh, %bb.er, %bb.en, %bb.eh, %bb.ef, %bb.ed
  %.1237.i = phi ptr [ %i.bav, %bb.er ], [ %i.bav, %bb.fh ], [ %i.azn, %bb.ed ], [ %i.bav, %bb.en ], [ %i.baa, %bb.ef ], [ %i.azu, %bb.eh ], [ %i.bav, %bb.ik ], [ %i.bav, %bb.ij ]
  %.1222.i = phi i32 [ %i.baf, %bb.er ], [ %i.baf, %bb.fh ], [ %.0221489.i, %bb.ed ], [ %i.baf, %bb.en ], [ %.0221489.i, %bb.ef ], [ %.0221489.i, %bb.eh ], [ %i.baf, %bb.ik ], [ %i.baf, %bb.ij ]
  %i.brq = call i32 @cli_checklimits(ptr noundef nonnull @.str.506, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #14 ; 2 uses
  %i.brr = icmp eq i32 %i.brq, 0
  br i1 %i.brr, label %bb.de, label %ea06.exit

ea06.exit:                                        ; preds = %bb.de, %bb.dh, %bb.dj, %bb.dr, %bb.ds, %bb.du, %._crit_edge576.i, %bb.ei, %bb.ik, %bb.il, %bb.dd, %bb.dg, %bb.eb, %bb.ek, %bb.et, %bb.fk, %bb.hx, %bb.hz, %bb.ie, %bb.ih, %bb.ii
  %.2235.i = phi i32 [ 10, %bb.ih ], [ 0, %bb.dg ], [ 1, %bb.ii ], [ 13, %bb.ie ], [ 14, %bb.hz ], [ 9, %bb.hx ], [ 0, %bb.eb ], [ 0, %bb.ek ], [ 20, %bb.et ], [ 20, %bb.fk ], [ %i.ars, %bb.dd ], [ 10, %bb.ik ], [ 0, %bb.dh ], [ 0, %bb.dj ], [ 0, %bb.ds ], [ 0, %bb.du ], [ 0, %._crit_edge576.i ], [ 20, %bb.ei ], [ 0, %bb.dr ], [ 0, %bb.de ], [ %i.brq, %bb.il ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.in

bb.im:                                            ; preds = %bb.g
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.456) #14
  br label %bb.in

bb.in:                                            ; preds = %bb.dc, %ea06.exit, %bb.im, %ea05.exit
  %.0 = phi i32 [ 0, %bb.im ], [ %.0120536544554.i, %ea05.exit ], [ 0, %bb.dc ], [ %.2235.i, %ea06.exit ]
  %i.brs = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.brt = getelementptr inbounds nuw i8, ptr %i.brs, i64 48
  %i.bru = load i32, ptr %i.brt, align 8, !tbaa !67
  %.not26 = icmp eq i32 %i.bru, 0
  br i1 %.not26, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  %i.brv = call i32 @cli_rmdirs(ptr noundef nonnull %i.l) #14 ; 0 uses
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in
  call void @free(ptr noundef %i.l) #14
  br label %bb.iq

bb.iq:                                            ; preds = %bb.b, %bb.a, %bb.ip, %bb.d
  %.020 = phi i32 [ 18, %bb.d ], [ %.0, %bb.ip ], [ 12, %bb.a ], [ 18, %bb.b ]
  ret i32 %.020
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

declare ptr @cli_gentemp_with_prefix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare i32 @get_fpu_endian() local_unnamed_addr #2

declare i32 @cli_rmdirs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @cli_checklimits(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @MT_decrypt(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.MT, align 8                 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 11 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = phi i32 [ %2, %bb.a ], [ %i.l, %bb.c ]   ; 2 uses
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %4 = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.c = lshr i32 %i.b, 30
  %i.d = xor i32 %i.c, %i.b
  %i.e = mul i32 %i.d, 1812433253
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  %i.g = add i32 %i.e, %i.f                       ; 3 uses
  store i32 %i.g, ptr %4, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 624
  br i1 %exitcond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %5 = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.h = lshr i32 %i.g, 30
  %i.i = xor i32 %i.h, %i.g
  %i.j = mul i32 %i.i, 1812433253
  %i.k = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.l = add i32 %i.j, %i.k                       ; 2 uses
  store i32 %i.l, ptr %5, align 4, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not16 = icmp eq i32 %1, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 920
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2504 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 1596
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 908
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 912
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 2496
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 912
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 916
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 2500
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 916
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 920
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 2504
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %MT_getnext.exit
  %.01218 = phi ptr [ %0, %.lr.ph ], [ %i.ec, %MT_getnext.exit ] ; 3 uses
  %.01317 = phi i32 [ %1, %.lr.ph ], [ %i.aa, %MT_getnext.exit ]
  %i.y = phi i32 [ 1, %.lr.ph ], [ %i.dm, %MT_getnext.exit ]
  %i.z = phi ptr [ %i.a, %.lr.ph ], [ %i.dp, %MT_getnext.exit ] ; 2 uses
  %i.aa = add i32 %.01317, -1                     ; 2 uses
  %i.ab = add nsw i32 %i.y, -1                    ; 3 uses
  store i32 %i.ab, ptr %i.m, align 8, !tbaa !82
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %vector.ph25, label %._crit_edge58.i

._crit_edge58.i:                                  ; preds = %bb.e
  %.pre60.i = load i32, ptr %i.z, align 4, !tbaa !11
  br label %MT_getnext.exit

vector.ph25:                                      ; preds = %bb.e
  store i32 624, ptr %i.m, align 8, !tbaa !82
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !11
  %vector.recur.init28 = insertelement <4 x i32> poison, i32 %.pre.i, i64 3
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph25
  %index27 = phi i64 [ 0, %vector.ph25 ], [ %index.next34, %vector.body26 ] ; 3 uses
  %vector.recur29 = phi <4 x i32> [ %vector.recur.init28, %vector.ph25 ], [ %wide.load31.a, %vector.body26 ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index27 ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index27 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %wide.load30.a = load <4 x i32>, ptr %i.ae, align 8, !tbaa !11 ; 4 uses
  %wide.load31.a = load <4 x i32>, ptr %i.af, align 8, !tbaa !11 ; 5 uses
  %i.ag = shufflevector <4 x i32> %vector.recur29, <4 x i32> %wide.load30.a, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ah = shufflevector <4 x i32> %wide.load30.a, <4 x i32> %wide.load31.a, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ai = and <4 x i32> %wide.load30.a, splat (i32 2147483646)
  %i.aj = and <4 x i32> %wide.load31.a, splat (i32 2147483646)
  %i.ak = and <4 x i32> %i.ag, splat (i32 -2147483648)
  %i.al = and <4 x i32> %i.ah, splat (i32 -2147483648)
  %i.am = or disjoint <4 x i32> %i.ai, %i.ak
  %i.an = or disjoint <4 x i32> %i.aj, %i.al
  %i.ao = lshr exact <4 x i32> %i.am, splat (i32 1)
  %i.ap = lshr exact <4 x i32> %i.an, splat (i32 1)
  %i.aq = and <4 x i32> %wide.load30.a, splat (i32 1)
  %i.ar = and <4 x i32> %wide.load31.a, splat (i32 1)
  %i.as = icmp eq <4 x i32> %i.aq, zeroinitializer
  %i.at = icmp eq <4 x i32> %i.ar, zeroinitializer
  %i.au = select <4 x i1> %i.as, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.av = select <4 x i1> %i.at, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 1588
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 1604
  %wide.load32 = load <4 x i32>, ptr %i.aw, align 8, !tbaa !11
  %wide.load33 = load <4 x i32>, ptr %i.ax, align 8, !tbaa !11
  %i.ay = xor <4 x i32> %i.au, %wide.load32
  %i.az = xor <4 x i32> %i.av, %wide.load33
  %i.ba = xor <4 x i32> %i.ay, %i.ao
  %i.bb = xor <4 x i32> %i.az, %i.ap
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x i32> %i.ba, ptr %i.ac, align 4, !tbaa !11
  store <4 x i32> %i.bb, ptr %i.bc, align 4, !tbaa !11
  %index.next34 = add nuw i64 %index27, 8         ; 2 uses
  %i.bd = icmp eq i64 %index.next34, 224
  br i1 %i.bd, label %vector.ph, label %vector.body26, !llvm.loop !78

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 908
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 912
  %wide.load = load <4 x i32>, ptr %i.bh, align 4, !tbaa !11 ; 4 uses
  %i.bi = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bj = and <4 x i32> %wide.load, splat (i32 2147483646)
  %i.bk = and <4 x i32> %i.bi, splat (i32 -2147483648)
  %i.bl = or disjoint <4 x i32> %i.bj, %i.bk
  %i.bm = lshr exact <4 x i32> %i.bl, splat (i32 1)
  %i.bn = and <4 x i32> %wide.load, splat (i32 1)
  %i.bo = icmp eq <4 x i32> %i.bn, zeroinitializer
  %i.bp = select <4 x i1> %i.bo, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -1727483681)
  %wide.load24 = load <4 x i32>, ptr %i.be, align 4, !tbaa !11
  %i.bq = xor <4 x i32> %i.bp, %wide.load24
  %i.br = xor <4 x i32> %i.bq, %i.bm
  store <4 x i32> %i.br, ptr %i.bf, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, 396
  br i1 %i.bs, label %._crit_edge.i, label %vector.body, !llvm.loop !79

vector.ph:                                        ; preds = %vector.body26
  %vector.recur.extract = extractelement <4 x i32> %wide.load31.a, i64 3
  %i.bt = load i32, ptr %i.q, align 8, !tbaa !11  ; 3 uses
  %i.bu = and i32 %i.bt, 2147483646
  %i.bv = and i32 %vector.recur.extract, -2147483648
  %i.bw = or disjoint i32 %i.bu, %i.bv
  %i.bx = lshr exact i32 %i.bw, 1
  %i.by = and i32 %i.bt, 1
  %i.bz = icmp eq i32 %i.by, 0
  %i.ca = select i1 %i.bz, i32 0, i32 -1727483681
  %i.cb = load i32, ptr %i.r, align 8, !tbaa !11
  %i.cc = xor i32 %i.ca, %i.cb
  %i.cd = xor i32 %i.cc, %i.bx
  store i32 %i.cd, ptr %i.p, align 4, !tbaa !11
  %i.ce = load i32, ptr %i.t, align 4, !tbaa !11  ; 3 uses
  %i.cf = and i32 %i.ce, 2147483646
  %i.cg = and i32 %i.bt, -2147483648
  %i.ch = or disjoint i32 %i.cf, %i.cg
  %i.ci = lshr exact i32 %i.ch, 1
  %i.cj = and i32 %i.ce, 1
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = select i1 %i.ck, i32 0, i32 -1727483681
  %i.cm = load i32, ptr %i.u, align 4, !tbaa !11
  %i.cn = xor i32 %i.cl, %i.cm
  %i.co = xor i32 %i.cn, %i.ci
  store i32 %i.co, ptr %i.s, align 8, !tbaa !11
  %i.cp = load i32, ptr %i.w, align 8, !tbaa !11  ; 2 uses
  %i.cq = and i32 %i.cp, 2147483646
  %i.cr = and i32 %i.ce, -2147483648
  %i.cs = or disjoint i32 %i.cq, %i.cr
  %i.ct = lshr exact i32 %i.cs, 1
  %i.cu = and i32 %i.cp, 1
  %i.cv = icmp eq i32 %i.cu, 0
  %i.cw = select i1 %i.cv, i32 0, i32 -1727483681
  %i.cx = load i32, ptr %i.x, align 8, !tbaa !11
  %i.cy = xor i32 %i.cw, %i.cx
  %i.cz = xor i32 %i.cy, %i.ct
  store i32 %i.cz, ptr %i.v, align 4, !tbaa !11
  %.pre57.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !11
  %vector.recur.init = insertelement <4 x i32> poison, i32 %.pre57.i, i64 3
  br label %vector.body

._crit_edge.i:                                    ; preds = %vector.body
  %i.da = load i32, ptr %i.n, align 8, !tbaa !11
  %i.db = load i32, ptr %i.a, align 4, !tbaa !11  ; 3 uses
  %i.dc = and i32 %i.db, 2147483646
  %i.dd = and i32 %i.da, -2147483648
  %i.de = or disjoint i32 %i.dc, %i.dd
  %i.df = lshr exact i32 %i.de, 1
  %i.dg = and i32 %i.db, 1
  %i.dh = icmp eq i32 %i.dg, 0
  %i.di = select i1 %i.dh, i32 0, i32 -1727483681
  %i.dj = load i32, ptr %i.o, align 4, !tbaa !11
  %i.dk = xor i32 %i.di, %i.dj
  %i.dl = xor i32 %i.dk, %i.df
  store i32 %i.dl, ptr %i.n, align 8, !tbaa !11
  br label %MT_getnext.exit

MT_getnext.exit:                                  ; preds = %._crit_edge58.i, %._crit_edge.i
  %i.dm = phi i32 [ %i.ab, %._crit_edge58.i ], [ 624, %._crit_edge.i ]
  %i.dn = phi i32 [ %.pre60.i, %._crit_edge58.i ], [ %i.db, %._crit_edge.i ] ; 2 uses
  %i.do = phi ptr [ %i.z, %._crit_edge58.i ], [ %i.a, %._crit_edge.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = lshr i32 %i.dn, 11
  %i.dr = xor i32 %i.dq, %i.dn                    ; 2 uses
  %i.ds = shl i32 %i.dr, 7
  %i.dt = and i32 %i.ds, -1658038656
  %i.du = xor i32 %i.dt, %i.dr                    ; 3 uses
  %i.dv = shl i32 %i.du, 15
  %i.dw = and i32 %i.dv, 130023424
  %i.dx = xor i32 %i.dw, %i.du
  %i.dy = lshr i32 %i.dx, 19
  %i.dz = lshr i32 %i.du, 1
  %i.ea = xor i32 %i.dy, %i.dz
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %.01218, i64 1
  %i.ed = load i8, ptr %.01218, align 1, !tbaa !10
  %i.ee = xor i8 %i.ed, %i.eb
  store i8 %i.ee, ptr %.01218, align 1, !tbaa !10
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %MT_getnext.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 65536) i32 @getbits(ptr nofree noundef nonnull captures(none) initializes((38, 40)) %0, i32 noundef range(i32 1, 16) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i16 0, ptr %i.b, align 2, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = icmp ugt i32 %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = xor i32 %i.d, -1
  %i.g = add nsw i32 %1, %i.f
  %i.h = lshr i32 %i.g, 3
  %i.i = and i32 %i.h, 536870910
  %i.j = add nuw nsw i32 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !17
  %i.o = sub i32 %i.l, %i.n
  %i.p = icmp ugt i32 %i.j, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.480) #14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.q, align 8, !tbaa !19
  br label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.g
  %.025 = phi i32 [ %1, %bb.d ], [ %i.ao, %bb.g ]
  %i.t = phi i32 [ %i.d, %bb.d ], [ %i.an, %bb.g ] ; 2 uses
  %.not24 = icmp eq i32 %i.t, 0
  br i1 %.not24, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !16   ; 2 uses
  %i.v = load i32, ptr %i.s, align 4, !tbaa !17   ; 3 uses
  %i.w = add i32 %i.v, 1                          ; 2 uses
  store i32 %i.w, ptr %i.s, align 4, !tbaa !17
  %i.x = zext i32 %i.v to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !10
  %i.aa = zext i8 %i.z to i16
  %i.ab = shl nuw i16 %i.aa, 8
  %i.ac = load i16, ptr %i.a, align 4, !tbaa !10
  %i.ad = or i16 %i.ab, %i.ac                     ; 2 uses
  store i16 %i.ad, ptr %i.a, align 4, !tbaa !10
  %i.ae = add i32 %i.v, 2
  store i32 %i.ae, ptr %i.s, align 4, !tbaa !17
  %i.af = zext i32 %i.w to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !10
  %i.ai = zext i8 %i.ah to i16
  %i.aj = or i16 %i.ad, %i.ai
  store i16 %i.aj, ptr %i.a, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = phi i32 [ 16, %bb.f ], [ %i.t, %bb.e ]
  %i.al = load i32, ptr %i.a, align 4, !tbaa !10
  %i.am = shl i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.a, align 4, !tbaa !10
  %i.an = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.an, ptr %i.c, align 8, !tbaa !18
  %i.ao = add nsw i32 %.025, -1                   ; 2 uses
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.ap = lshr i32 %i.am, 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.021 = phi i32 [ 0, %bb.c ], [ %i.ap, %bb.h ]
  ret i32 %.021
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #7

declare i64 @cli_writen(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

declare i32 @cli_magic_scan_desc(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare i32 @cli_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @LAME_decrypt(ptr nofree noundef captures(none) %0, i32 noundef %1, i16 noundef zeroext %2) unnamed_addr #9 {
bb.a:
  %3 = alloca %struct.LAME, align 4               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = zext i16 %2 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %.neg.i = mul i32 %i.a, -1403630843
  %i.c = add i32 %.neg.i, 1                       ; 3 uses
  %.neg.1.i = mul i32 %i.c, -1403630843
  %i.d = add i32 %.neg.1.i, 1                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.d, ptr %i.e, align 4, !tbaa !11
  %.neg.2.i = mul i32 %i.d, -1403630843
  %i.f = add i32 %.neg.2.i, 1                     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.f, ptr %i.g, align 4, !tbaa !11
  %.neg.3.i = mul i32 %i.f, -1403630843
  %i.h = add i32 %.neg.3.i, 1                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.h, ptr %i.i, align 4, !tbaa !11
  %.neg.4.i = mul i32 %i.h, -1403630843
  %i.j = add i32 %.neg.4.i, 1                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.j, ptr %i.k, align 4, !tbaa !11
  %.neg.5.i = mul i32 %i.j, -1403630843
  %i.l = add i32 %.neg.5.i, 1                     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.l, ptr %i.m, align 4, !tbaa !11
  %.neg.6.i = mul i32 %i.l, -1403630843
  %i.n = add i32 %.neg.6.i, 1                     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.n, ptr %i.o, align 4, !tbaa !11
  %.neg.7.i = mul i32 %i.n, -1403630843
  %i.p = add i32 %.neg.7.i, 1                     ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.p, ptr %i.q, align 4, !tbaa !11
  %.neg.8.i = mul i32 %i.p, -1403630843
  %i.r = add i32 %.neg.8.i, 1                     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.r, ptr %i.s, align 4, !tbaa !11
  %.neg.9.i = mul i32 %i.r, -1403630843
  %i.t = add i32 %.neg.9.i, 1                     ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 44
  %.neg.10.i = mul i32 %i.t, -1403630843
  %i.v = add i32 %.neg.10.i, 1                    ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.neg.11.i = mul i32 %i.v, -1403630843
  %i.x = add i32 %.neg.11.i, 1                    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.neg.12.i = mul i32 %i.x, -1403630843
  %i.z = add i32 %.neg.12.i, 1                    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.neg.13.i = mul i32 %i.z, -1403630843
  %i.ab = add i32 %.neg.13.i, 1                   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 60
  %.neg.14.i = mul i32 %i.ab, -1403630843
  %i.ad = add i32 %.neg.14.i, 1                   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.neg.15.i = mul i32 %i.ad, -1403630843
  %i.af = add i32 %.neg.15.i, 1                   ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 68
  %.neg.16.i = mul i32 %i.af, -1403630843
  %i.ah = add i32 %.neg.16.i, 1                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 9)
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.v, i32 %i.v, i32 13)
  %i.al = add i32 %i.ak, %i.aj
end_hunk_0
