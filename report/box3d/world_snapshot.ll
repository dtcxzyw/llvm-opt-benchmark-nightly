Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/world_snapshot?download=true
inline.NumInlined: 267
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@b3DeserializeIntoShell:bb.a
  %i.arg = shl nuw nsw i32 %.0.copyload.i97.i, 2  ; 3 uses
  %i.arh = zext nneg i32 %i.arg to i64            ; 3 uses
  %.not126.i = icmp slt i64 %i.arf, %i.arh
  br i1 %.not126.i, label %b3SnapCheckCount.exit101.thread.i, label %bb.fy

b3SnapCheckCount.exit101.thread.i:                ; preds = %b3SnapCheckCount.exit101.i, %bb.fx
  store i8 0, ptr %i.h, align 8, !tbaa !201
  br label %b3SnapR_Bytes.exit106.i

bb.fy:                                            ; preds = %b3SnapCheckCount.exit101.i
  %.not178.i = icmp eq i32 %.0.copyload.i97.i, 0
  br i1 %.not178.i, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ari = getelementptr inbounds nuw i8, ptr %i.apd, i64 32 ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %i.apd, i64 44 ; 2 uses
  %i.ark = load i32, ptr %i.arj, align 4, !tbaa !267 ; 2 uses
  %i.arl = icmp slt i32 %i.ark, %.0.copyload.i97.i
  %.pre132.i900 = load ptr, ptr %i.ari, align 8, !tbaa !193 ; 2 uses
  br i1 %i.arl, label %bb.ga, label %._crit_edge148.i

bb.ga:                                            ; preds = %bb.fz
  %i.arm = shl i32 %i.ark, 2
  %i.arn = tail call ptr @b3GrowAlloc(ptr noundef %.pre132.i900, i32 noundef %i.arm, i32 noundef %i.arg) #7 ; 2 uses
  store ptr %i.arn, ptr %i.ari, align 8, !tbaa !193
  store i32 %.0.copyload.i97.i, ptr %i.arj, align 4, !tbaa !267
  br label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.fz, %bb.ga
  %i.aro = phi ptr [ %i.arn, %bb.ga ], [ %.pre132.i900, %bb.fz ]
  %i.arp = getelementptr inbounds nuw i8, ptr %i.apd, i64 40
  store i32 %.0.copyload.i97.i, ptr %i.arp, align 8, !tbaa !192
  %i.arq = add nsw i64 %i.are, %i.arh
  %i.arr = icmp sgt i64 %i.arq, %i.aox
  br i1 %i.arr, label %b3SnapRCheck.exit.thread.i105.i, label %b3SnapRCheck.exit.i102.i

b3SnapRCheck.exit.thread.i105.i:                  ; preds = %._crit_edge148.i
  store i8 0, ptr %i.h, align 8, !tbaa !201
  br label %b3SnapR_Bytes.exit106.i

b3SnapRCheck.exit.i102.i:                         ; preds = %._crit_edge148.i
  %i.ars = getelementptr inbounds i8, ptr %i.aoy, i64 %i.are
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aro, ptr align 1 %i.ars, i64 %i.arh, i1 false)
  %i.art = add nsw i32 %i.ard, %i.arg             ; 2 uses
  store i32 %i.art, ptr %i.f, align 8, !tbaa !199
  br label %b3SnapR_Bytes.exit106.i

bb.gb:                                            ; preds = %bb.fy
  %i.aru = getelementptr inbounds nuw i8, ptr %i.apd, i64 40
  store i32 0, ptr %i.aru, align 8, !tbaa !192
  br label %b3SnapR_Bytes.exit106.i

b3SnapR_Bytes.exit106.i:                          ; preds = %bb.gb, %b3SnapRCheck.exit.i102.i, %b3SnapRCheck.exit.thread.i105.i, %b3SnapCheckCount.exit101.thread.i, %b3SnapRCheck.exit.i.i94.i, %b3SnapRCheck.exit.thread.i.i98.i
  %.pre.i.i.i9191070 = phi i1 [ true, %b3SnapRCheck.exit.i102.i ], [ false, %b3SnapRCheck.exit.i.i94.i ], [ false, %b3SnapRCheck.exit.thread.i105.i ], [ true, %bb.gb ], [ false, %b3SnapCheckCount.exit101.thread.i ], [ false, %b3SnapRCheck.exit.thread.i.i98.i ]
  %i.arv = phi i32 [ %i.art, %b3SnapRCheck.exit.i102.i ], [ %i.aqz, %b3SnapRCheck.exit.i.i94.i ], [ %i.ard, %b3SnapRCheck.exit.thread.i105.i ], [ %i.ard, %bb.gb ], [ %i.ard, %b3SnapCheckCount.exit101.thread.i ], [ %i.aqz, %b3SnapRCheck.exit.thread.i.i98.i ] ; 4 uses
  %i.arw = sext i32 %i.arv to i64                 ; 2 uses
  %i.arx = icmp slt i64 %invariant.op1446, %i.arw
  br i1 %i.arx, label %b3SnapRCheck.exit.thread.i.i111.i, label %b3SnapRCheck.exit.i.i107.i

b3SnapRCheck.exit.thread.i.i111.i:                ; preds = %b3SnapR_Bytes.exit106.i
  store i8 0, ptr %i.h, align 8, !tbaa !201
  br label %b3DesGraphColor.exit

b3SnapRCheck.exit.i.i107.i:                       ; preds = %b3SnapR_Bytes.exit106.i
  br i1 %.pre.i.i.i9191070, label %bb.gc, label %b3DesGraphColor.exit

bb.gc:                                            ; preds = %b3SnapRCheck.exit.i.i107.i
  %i.ary = getelementptr inbounds i8, ptr %i.aoy, i64 %i.arw
  %.0.copyload.i110.i = load i32, ptr %i.ary, align 1 ; 6 uses
  %i.arz = add nsw i32 %i.arv, 4                  ; 6 uses
  store i32 %i.arz, ptr %i.f, align 8, !tbaa !199
  %or.cond125.i = icmp ugt i32 %.0.copyload.i110.i, 178956970
  br i1 %or.cond125.i, label %b3SnapCheckCount.exit114.thread.i, label %b3SnapCheckCount.exit114.i

b3SnapCheckCount.exit114.i:                       ; preds = %bb.gc
  %i.asa = sext i32 %i.arz to i64                 ; 3 uses
  %i.asb = sub nsw i64 %i.aox, %i.asa
  %narrow127.i = mul nuw nsw i32 %.0.copyload.i110.i, 12 ; 3 uses
  %i.asc = zext nneg i32 %narrow127.i to i64      ; 3 uses
  %.not128.i = icmp slt i64 %i.asb, %i.asc
  br i1 %.not128.i, label %b3SnapCheckCount.exit114.thread.i, label %bb.gd

b3SnapCheckCount.exit114.thread.i:                ; preds = %b3SnapCheckCount.exit114.i, %bb.gc
  store i8 0, ptr %i.h, align 8, !tbaa !201
  br label %b3DesGraphColor.exit

bb.gd:                                            ; preds = %b3SnapCheckCount.exit114.i
  %.not179.i = icmp eq i32 %.0.copyload.i110.i, 0
  br i1 %.not179.i, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.asd = getelementptr inbounds nuw i8, ptr %i.apd, i64 48 ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.apd, i64 60 ; 2 uses
  %i.asf = load i32, ptr %i.ase, align 4, !tbaa !268 ; 2 uses
  %i.asg = icmp slt i32 %i.asf, %.0.copyload.i110.i
  %.pre136.i894 = load ptr, ptr %i.asd, align 8, !tbaa !195 ; 2 uses
  br i1 %i.asg, label %bb.gf, label %._crit_edge.i895

bb.gf:                                            ; preds = %bb.ge
  %i.ash = mul i32 %i.asf, 12
  %i.asi = tail call ptr @b3GrowAlloc(ptr noundef %.pre136.i894, i32 noundef %i.ash, i32 noundef %narrow127.i) #7 ; 2 uses
  store ptr %i.asi, ptr %i.asd, align 8, !tbaa !195
  store i32 %.0.copyload.i110.i, ptr %i.ase, align 4, !tbaa !268
  br label %._crit_edge.i895

._crit_edge.i895:                                 ; preds = %bb.ge, %bb.gf
  %i.asj = phi ptr [ %i.asi, %bb.gf ], [ %.pre136.i894, %bb.ge ]
  %i.ask = getelementptr inbounds nuw i8, ptr %i.apd, i64 56
  store i32 %.0.copyload.i110.i, ptr %i.ask, align 8, !tbaa !194
  %i.asl = add nsw i64 %i.asa, %i.asc
  %i.asm = icmp sgt i64 %i.asl, %i.aox
  br i1 %i.asm, label %b3SnapRCheck.exit.thread.i118.i, label %b3SnapRCheck.exit.i115.i

b3SnapRCheck.exit.thread.i118.i:                  ; preds = %._crit_edge.i895
  store i8 0, ptr %i.h, align 8, !tbaa !201
  br label %b3DesGraphColor.exit

b3SnapRCheck.exit.i115.i:                         ; preds = %._crit_edge.i895
  %i.asn = getelementptr inbounds i8, ptr %i.aoy, i64 %i.asa
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.asj, ptr align 1 %i.asn, i64 %i.asc, i1 false)
  %i.aso = add nsw i32 %i.arz, %narrow127.i       ; 2 uses
  store i32 %i.aso, ptr %i.f, align 8, !tbaa !199
  br label %b3DesGraphColor.exit

bb.gg:                                            ; preds = %bb.gd
  %i.asp = getelementptr inbounds nuw i8, ptr %i.apd, i64 56
  store i32 0, ptr %i.asp, align 8, !tbaa !194
  br label %b3DesGraphColor.exit

b3DesGraphColor.exit:                             ; preds = %b3SnapRCheck.exit.thread.i.i111.i, %b3SnapRCheck.exit.i.i107.i, %b3SnapCheckCount.exit114.thread.i, %b3SnapRCheck.exit.thread.i118.i, %b3SnapRCheck.exit.i115.i, %bb.gg
  %.pre.i.i.i9191069 = phi i8 [ 0, %b3SnapRCheck.exit.thread.i.i111.i ], [ 0, %b3SnapRCheck.exit.i.i107.i ], [ 0, %b3SnapCheckCount.exit114.thread.i ], [ 0, %b3SnapRCheck.exit.thread.i118.i ], [ 1, %bb.gg ], [ 1, %b3SnapRCheck.exit.i115.i ]
  %i.asq = phi i32 [ %i.arv, %b3SnapRCheck.exit.thread.i.i111.i ], [ %i.arv, %b3SnapRCheck.exit.i.i107.i ], [ %i.arz, %b3SnapCheckCount.exit114.thread.i ], [ %i.arz, %b3SnapRCheck.exit.thread.i118.i ], [ %i.arz, %bb.gg ], [ %i.aso, %b3SnapRCheck.exit.i115.i ]
  %indvars.iv.next1106 = add nuw nsw i64 %indvars.iv1105, 1 ; 2 uses
  %exitcond1107.not = icmp eq i64 %indvars.iv.next1106, 24
  br i1 %exitcond1107.not, label %bb.fm, label %bb.fn, !llvm.loop !240

.loopexit1022.thread1299:                         ; preds = %b3SnapCheckCount.exit702, %bb.ci, %.loopexit1022.thread, %b3SnapCheckCount.exit, %bb.bd, %._crit_edge, %bb.co, %.loopexit1021.thread, %.loopexit1021, %.loopexit1022, %bb.fm
  %.0479 = phi i1 [ %i.apb, %bb.fm ], [ false, %.loopexit1021.thread ], [ false, %.loopexit1021 ], [ false, %.loopexit1022 ], [ false, %bb.co ], [ false, %.loopexit1022.thread ], [ false, %._crit_edge ], [ false, %b3SnapCheckCount.exit ], [ false, %bb.bd ], [ false, %bb.ci ], [ false, %b3SnapCheckCount.exit702 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.gh

bb.gh:                                            ; preds = %bb.c, %.loopexit1022.thread1299, %bb.g, %bb.e, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ %.0479, %.loopexit1022.thread1299 ]
  ret i1 %.3
}

declare void @b3Free(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @b3GrowAlloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @b3DesShapes(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !199  ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = add nsw i64 %i.c, 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !200
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp sgt i64 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 23 uses
  br i1 %i.h, label %b3SnapRCheck.exit.thread.i.i, label %b3SnapRCheck.exit.i.i

b3SnapRCheck.exit.thread.i.i:                     ; preds = %bb.a
  store i8 0, ptr %i.i, align 8, !tbaa !201
  br label %.thread

b3SnapRCheck.exit.i.i:                            ; preds = %bb.a
  %.pre.i.i = load i8, ptr %i.i, align 8, !tbaa !201, !range !71
  %i.j = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.j, label %bb.b, label %.thread

bb.b:                                             ; preds = %b3SnapRCheck.exit.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !198
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.l, align 1    ; 9 uses
  %i.m = add nsw i32 %i.b, 4                      ; 2 uses
  store i32 %i.m, ptr %i.a, align 8, !tbaa !199
  %or.cond249 = icmp ugt i32 %.0.copyload.i, 9256395
  br i1 %or.cond249, label %b3SnapCheckCount.exit.thread, label %b3SnapCheckCount.exit

b3SnapCheckCount.exit:                            ; preds = %bb.b
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 %i.g, %i.n
  %narrow = mul nuw nsw i32 %.0.copyload.i, 232
  %i.p = zext nneg i32 %narrow to i64
  %.not250 = icmp slt i64 %i.o, %i.p
  br i1 %.not250, label %b3SnapCheckCount.exit.thread, label %bb.c

b3SnapCheckCount.exit.thread:                     ; preds = %bb.b, %b3SnapCheckCount.exit
  store i8 0, ptr %i.i, align 8, !tbaa !201
  br label %.thread

bb.c:                                             ; preds = %b3SnapCheckCount.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4080 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4088 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !104  ; 8 uses
  %i.t = icmp sgt i32 %i.s, 0                     ; 2 uses
  br i1 %i.t, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.u = zext nneg i32 %i.s to i64                ; 3 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call ptr @b3Alloc(i64 noundef %i.v) #7 ; 5 uses
  %i.x = shl nuw nsw i64 %i.u, 1
  %i.y = tail call ptr @b3Alloc(i64 noundef %i.x) #7 ; 5 uses
  %i.z = icmp eq i32 %i.s, 1
  br i1 %i.z, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.d
  %unroll_iter = and i64 %i.u, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.i ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !105
  %i.ab = getelementptr inbounds nuw [232 x i8], ptr %i.aa, i64 %indvars.iv ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !114
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp eq i64 %indvars.iv, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 184
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !272
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ah = phi ptr [ %i.ag, %bb.f ], [ null, %bb.e ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !108
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 196
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !273
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !109
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !105
  %i.an = getelementptr inbounds nuw [232 x i8], ptr %i.am, i64 %indvars.iv.next ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !114
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp eq i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 184
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !272
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = phi ptr [ %i.as, %bb.h ], [ null, %bb.g ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next
  store ptr %i.at, ptr %i.au, align 8, !tbaa !108
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 196
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !273
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.next
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !109
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !269

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = trunc i32 %i.s to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %.loopexit

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.d
  %indvars.iv.epil.init = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod319 = trunc i32 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod319)
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !105
  %i.az = getelementptr inbounds nuw [232 x i8], ptr %i.ay, i64 %indvars.iv.epil.init ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !114
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp eq i64 %indvars.iv.epil.init, %i.bb
  br i1 %i.bc, label %bb.j, label %.loopexit.loopexit.epilog-lcssa

bb.j:                                             ; preds = %.epil.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 184
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !272
  br label %.loopexit.loopexit.epilog-lcssa

.loopexit.loopexit.epilog-lcssa:                  ; preds = %bb.j, %.epil.preheader
  %i.bf = phi ptr [ %i.be, %bb.j ], [ null, %.epil.preheader ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.epil.init
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !108
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 196
  %i.bi = load i16, ptr %i.bh, align 4, !tbaa !273
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.epil.init
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.epilog-lcssa, %.loopexit.loopexit.unr-lcssa, %bb.c
  %.0159 = phi ptr [ null, %bb.c ], [ %i.y, %.loopexit.loopexit.unr-lcssa ], [ %i.y, %.loopexit.loopexit.epilog-lcssa ] ; 2 uses
  %.0158 = phi ptr [ null, %bb.c ], [ %i.w, %.loopexit.loopexit.unr-lcssa ], [ %i.w, %.loopexit.loopexit.epilog-lcssa ] ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4092 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !274 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %.0.copyload.i
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !105 ; 2 uses
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.bn = mul i32 %i.bl, 232
  %i.bo = mul nuw i32 %.0.copyload.i, 232
  %i.bp = tail call ptr @b3GrowAlloc(ptr noundef %.pre, i32 noundef %i.bn, i32 noundef %i.bo) #7 ; 2 uses
  store ptr %i.bp, ptr %i.q, align 8, !tbaa !105
  store i32 %.0.copyload.i, ptr %i.bk, align 4, !tbaa !274
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.bq = phi ptr [ %i.bp, %bb.k ], [ %.pre, %.loopexit ]
  store i32 %.0.copyload.i, ptr %i.r, align 8, !tbaa !104
  %narrow317 = mul nuw i32 %.0.copyload.i, 232
  %i.br = zext i32 %narrow317 to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bq, i8 0, i64 %i.br, i1 false)
  %.not318 = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not318, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.bs = icmp ne ptr %.0158, null
  %i.bt = icmp eq ptr %2, null                    ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 1088 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 1080 ; 4 uses
  %i.bw = sext i32 %i.s to i64
  %wide.trip.count264 = zext nneg i32 %.0.copyload.i to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %b3SnapRCheck.exit.i212
  %indvars.iv261 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next262, %b3SnapRCheck.exit.i212 ] ; 6 uses
  %i.bx = load i8, ptr %i.i, align 8, !tbaa !201, !range !71, !noundef !72
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !105
  %i.ca = getelementptr inbounds nuw [232 x i8], ptr %i.bz, i64 %indvars.iv261 ; 9 uses
  %i.cb = load i32, ptr %i.a, align 8, !tbaa !199
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = add nsw i64 %i.cc, 232
  %i.ce = load i32, ptr %i.e, align 4, !tbaa !200
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp sgt i64 %i.cd, %i.cf
  br i1 %i.cg, label %b3SnapRCheck.exit.thread.i, label %b3SnapRCheck.exit.i

b3SnapRCheck.exit.thread.i:                       ; preds = %bb.n
  store i8 0, ptr %i.i, align 8, !tbaa !201
  br label %b3SnapR_Bytes.exit

b3SnapRCheck.exit.i:                              ; preds = %bb.n
  %i.ch = load ptr, ptr %0, align 8, !tbaa !198
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.cc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(232) %i.ca, ptr noundef nonnull align 1 dereferenceable(232) %i.ci, i64 232, i1 false)
  %i.cj = load i32, ptr %i.a, align 8, !tbaa !199
  %i.ck = add nsw i32 %i.cj, 232
  store i32 %i.ck, ptr %i.a, align 8, !tbaa !199
  br label %b3SnapR_Bytes.exit

b3SnapR_Bytes.exit:                               ; preds = %b3SnapRCheck.exit.thread.i, %b3SnapRCheck.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 144 ; 3 uses
  store ptr null, ptr %i.cl, align 8, !tbaa !115
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 176
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 184
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 200 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.co, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  %i.cp = load i32, ptr %i.ca, align 8, !tbaa !114
  %i.cq = zext i32 %i.cp to i64
  %i.cr = icmp eq i64 %indvars.iv261, %i.cq       ; 2 uses
  %i.cs = icmp slt i64 %indvars.iv261, %i.bw
  %i.ct = and i1 %i.cr, %i.cs
  %or.cond259 = select i1 %i.ct, i1 %i.bs, i1 false
  br i1 %or.cond259, label %bb.o, label %bb.r

bb.o:                                             ; preds = %b3SnapR_Bytes.exit
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.0158, i64 %indvars.iv261 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !108 ; 2 uses
  %.not = icmp eq ptr %i.cv, null
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.0159, i64 %indvars.iv261
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !109
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 196
  %i.cz = load i16, ptr %i.cy, align 4, !tbaa !273
  %i.da = icmp eq i16 %i.cx, %i.cz
  br i1 %i.da, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %i.cv, ptr %i.cn, align 8, !tbaa !272
  store ptr null, ptr %i.cu, align 8, !tbaa !108
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %b3SnapR_Bytes.exit
  %i.db = load i32, ptr %i.a, align 8, !tbaa !199 ; 4 uses
  %i.dc = sext i32 %i.db to i64                   ; 2 uses
  %i.dd = add nsw i64 %i.dc, 4
  %i.de = load i32, ptr %i.e, align 4, !tbaa !200
  %i.df = sext i32 %i.de to i64                   ; 4 uses
  %i.dg = icmp sgt i64 %i.dd, %i.df
  br i1 %i.dg, label %.critedge.sink.split, label %b3SnapRCheck.exit.i.i182

b3SnapRCheck.exit.i.i182:                         ; preds = %bb.r
  %.pre.i.i183 = load i8, ptr %i.i, align 8, !tbaa !201, !range !71
  %i.dh = trunc nuw i8 %.pre.i.i183 to i1
  br i1 %i.dh, label %bb.s, label %.critedge

bb.s:                                             ; preds = %b3SnapRCheck.exit.i.i182
  %i.di = load ptr, ptr %0, align 8, !tbaa !198
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %i.dc
  %.0.copyload.i185 = load i32, ptr %i.dj, align 1 ; 4 uses
  %i.dk = add nsw i32 %i.db, 4                    ; 3 uses
  store i32 %i.dk, ptr %i.a, align 8, !tbaa !199
  br i1 %i.cr, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dl = sext i32 %i.db to i64
  %i.dm = add nsw i64 %i.dl, 8
  %i.dn = icmp sgt i64 %i.dm, %i.df
  br i1 %i.dn, label %b3SnapRCheck.exit.thread.i.i192, label %b3SnapRCheck.exit.i.i188

b3SnapRCheck.exit.thread.i.i192:                  ; preds = %bb.t
  store i8 0, ptr %i.i, align 8, !tbaa !201
  br label %b3SnapRCheck.exit.i212

b3SnapRCheck.exit.i.i188:                         ; preds = %bb.t
  %i.do = add nsw i32 %i.db, 8
  store i32 %i.do, ptr %i.a, align 8, !tbaa !199
  br label %b3SnapRCheck.exit.i212

bb.u:                                             ; preds = %bb.s
  %i.dp = icmp sgt i32 %.0.copyload.i185, 0
  br i1 %i.dp, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dq = icmp samesign ugt i32 %.0.copyload.i185, 53687091
  br i1 %i.dq, label %.critedge.sink.split, label %b3SnapCheckCount.exit195

b3SnapCheckCount.exit195:                         ; preds = %bb.v
  %i.dr = sext i32 %i.dk to i64
  %i.ds = sub nsw i64 %i.df, %i.dr
  %narrow251 = mul nuw nsw i32 %.0.copyload.i185, 40 ; 2 uses
  %i.dt = zext nneg i32 %narrow251 to i64         ; 4 uses
  %.not252 = icmp slt i64 %i.ds, %i.dt
  br i1 %.not252, label %.critedge.sink.split, label %bb.w

bb.w:                                             ; preds = %b3SnapCheckCount.exit195
  %i.du = getelementptr inbounds nuw i8, ptr %i.ca, i64 100
  store i32 %.0.copyload.i185, ptr %i.du, align 4, !tbaa !116
  %i.dv = tail call ptr @b3Alloc(i64 noundef %i.dt) #7 ; 2 uses
  store ptr %i.dv, ptr %i.cl, align 8, !tbaa !115
  %i.dw = load i32, ptr %i.a, align 8, !tbaa !199 ; 3 uses
  %i.dx = sext i32 %i.dw to i64                   ; 2 uses
  %i.dy = add nsw i64 %i.dx, %i.dt
  %i.dz = load i32, ptr %i.e, align 4, !tbaa !200
  %i.ea = sext i32 %i.dz to i64                   ; 3 uses
  %i.eb = icmp sgt i64 %i.dy, %i.ea
  br i1 %i.eb, label %b3SnapRCheck.exit.thread.i199, label %b3SnapRCheck.exit.i196

b3SnapRCheck.exit.thread.i199:                    ; preds = %bb.w
  store i8 0, ptr %i.i, align 8, !tbaa !201
  br label %b3SnapR_Bytes.exit200

b3SnapRCheck.exit.i196:                           ; preds = %bb.w
  %.pre.i198 = load i8, ptr %i.i, align 8, !tbaa !201, !range !71
  %i.ec = trunc nuw i8 %.pre.i198 to i1
end_hunk_0
begin_hunk_1_@b3DesContacts:bb.a
  br i1 %i.ei, label %b3SnapRCheck.exit.thread.i113, label %b3SnapRCheck.exit.i110

b3SnapRCheck.exit.thread.i113:                    ; preds = %bb.w
  store i8 0, ptr %i.i, align 8, !tbaa !201
  br label %b3SnapR_Bytes.exit114

b3SnapRCheck.exit.i110:                           ; preds = %bb.w
  %.pre.i112 = load i8, ptr %i.i, align 8, !tbaa !201, !range !71
  %i.ej = trunc nuw i8 %.pre.i112 to i1
  br i1 %i.ej, label %bb.x, label %b3SnapR_Bytes.exit114

bb.x:                                             ; preds = %b3SnapRCheck.exit.i110
  %i.ek = load ptr, ptr %0, align 8, !tbaa !198
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr align 1 %i.el, i64 %i.du, i1 false)
  %i.em = load i32, ptr %i.a, align 8, !tbaa !199
  %i.en = add nsw i32 %i.em, %narrow128
  store i32 %i.en, ptr %i.a, align 8, !tbaa !199
  br label %b3SnapR_Bytes.exit114

b3SnapR_Bytes.exit114:                            ; preds = %bb.x, %b3SnapRCheck.exit.i110, %b3SnapRCheck.exit.thread.i113, %bb.s, %bb.q, %b3SnapR_Bytes.exit101
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.f, !llvm.loop !290

.critedge.sink.split:                             ; preds = %b3SnapCheckCount.exit109, %bb.t, %bb.r, %b3SnapCheckCount.exit95, %bb.k, %bb.i, %b3SnapCheckCount.exit, %bb.b, %bb.a
  store i8 0, ptr %i.i, align 8, !tbaa !201
  br label %.critedge

.critedge:                                        ; preds = %b3SnapRCheck.exit.i.i102, %b3SnapRCheck.exit.i.i88, %bb.f, %b3SnapR_Bytes.exit114, %.critedge.sink.split, %b3SnapRCheck.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3DesHashSet(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !199  ; 5 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = add nsw i64 %i.c, 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !200
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp sgt i64 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  br i1 %i.h, label %b3SnapRCheck.exit.thread.i.i37, label %b3SnapRCheck.exit.i.i

b3SnapRCheck.exit.i.i:                            ; preds = %bb.a
  %.pre.i.i = load i8, ptr %i.i, align 8, !tbaa !201, !range !71
  %i.j = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.j, label %b3SnapR_U32.exit, label %b3SnapR_U32.exit38.thread

b3SnapR_U32.exit:                                 ; preds = %b3SnapRCheck.exit.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !198
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.l, align 1    ; 2 uses
  %i.m = add nsw i32 %i.b, 4                      ; 3 uses
  store i32 %i.m, ptr %i.a, align 8, !tbaa !199
  %.pre = sext i32 %i.m to i64                    ; 2 uses
  %.pre44 = add nsw i64 %.pre, 4
  %i.n = icmp sgt i64 %.pre44, %i.g
  br i1 %i.n, label %b3SnapRCheck.exit.thread.i.i37, label %bb.b

b3SnapRCheck.exit.thread.i.i37:                   ; preds = %bb.a, %b3SnapR_U32.exit
  %.0.i52 = phi i32 [ %.0.copyload.i, %b3SnapR_U32.exit ], [ 0, %bb.a ]
  %i.o = phi i32 [ %i.m, %b3SnapR_U32.exit ], [ %i.b, %bb.a ]
  store i8 0, ptr %i.i, align 8, !tbaa !201
  br label %b3SnapR_U32.exit38

bb.b:                                             ; preds = %b3SnapR_U32.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !198
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %.pre
  %.0.copyload.i36 = load i32, ptr %i.q, align 1
  %i.r = add nsw i32 %i.b, 8                      ; 2 uses
  store i32 %i.r, ptr %i.a, align 8, !tbaa !199
  br label %b3SnapR_U32.exit38

b3SnapR_U32.exit38:                               ; preds = %b3SnapRCheck.exit.thread.i.i37, %bb.b
  %.0.i51 = phi i32 [ %.0.i52, %b3SnapRCheck.exit.thread.i.i37 ], [ %.0.copyload.i, %bb.b ] ; 3 uses
  %.not31 = phi i1 [ true, %b3SnapRCheck.exit.thread.i.i37 ], [ false, %bb.b ] ; 2 uses
  %i.s = phi i32 [ %i.o, %b3SnapRCheck.exit.thread.i.i37 ], [ %i.r, %bb.b ]
  %.0.i35 = phi i32 [ 0, %b3SnapRCheck.exit.thread.i.i37 ], [ %.0.copyload.i36, %bb.b ] ; 2 uses
  %or.cond42.not = icmp ult i32 %.0.i51, 134217728
  br i1 %or.cond42.not, label %b3SnapR_U32.exit38.thread, label %b3SnapCheckCount.exit

b3SnapR_U32.exit38.thread:                        ; preds = %b3SnapRCheck.exit.i.i, %b3SnapR_U32.exit38
  %.0.i3575 = phi i32 [ %.0.i35, %b3SnapR_U32.exit38 ], [ 0, %b3SnapRCheck.exit.i.i ]
  %i.t = phi i32 [ %i.s, %b3SnapR_U32.exit38 ], [ %i.b, %b3SnapRCheck.exit.i.i ]
  %.not3173 = phi i1 [ %.not31, %b3SnapR_U32.exit38 ], [ true, %b3SnapRCheck.exit.i.i ]
  %.0.i5171 = phi i32 [ %.0.i51, %b3SnapR_U32.exit38 ], [ 0, %b3SnapRCheck.exit.i.i ] ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = sub nsw i64 %i.g, %i.u
  %i.w = shl nuw nsw i32 %.0.i5171, 4
  %i.x = zext nneg i32 %i.w to i64
  %i.y = icmp sge i64 %i.v, %i.x
  br label %b3SnapCheckCount.exit

b3SnapCheckCount.exit:                            ; preds = %b3SnapR_U32.exit38, %b3SnapR_U32.exit38.thread
  %.0.i3574 = phi i32 [ %.0.i3575, %b3SnapR_U32.exit38.thread ], [ %.0.i35, %b3SnapR_U32.exit38 ] ; 3 uses
  %.not3172 = phi i1 [ %.not3173, %b3SnapR_U32.exit38.thread ], [ %.not31, %b3SnapR_U32.exit38 ]
  %.0.i5170 = phi i32 [ %.0.i5171, %b3SnapR_U32.exit38.thread ], [ %.0.i51, %b3SnapR_U32.exit38 ] ; 6 uses
  %.0.i39 = phi i1 [ %i.y, %b3SnapR_U32.exit38.thread ], [ false, %b3SnapR_U32.exit38 ]
  %i.z = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.0.i5170)
  %i.aa = icmp samesign ult i32 %i.z, 2
  %or.cond30 = select i1 %.0.i39, i1 %i.aa, i1 false
  %.not.a = icmp ule i32 %.0.i3574, %.0.i5170
  %i.ab = select i1 %or.cond30, i1 %.not.a, i1 false
  %brmerge = select i1 %.not3172, i1 true, i1 %i.ab
  br i1 %brmerge, label %bb.e, label %bb.c

bb.c:                                             ; preds = %b3SnapCheckCount.exit
  %i.ac = icmp ne i32 %.0.i5170, 0
  %i.ad = icmp ne i32 %.0.i3574, 0
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.i, align 8, !tbaa !201
  br label %bb.e

bb.e:                                             ; preds = %b3SnapCheckCount.exit, %bb.d
  tail call void @b3DestroySet(ptr noundef %1) #7
  %i.ae = load i8, ptr %i.i, align 8, !tbaa !201, !range !71, !noundef !72
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %b3SnapR_Bytes.exit

.thread:                                          ; preds = %bb.c
  tail call void @b3DestroySet(ptr noundef %1) #7
  %i.ag = load i8, ptr %i.i, align 8, !tbaa !201, !range !71, !noundef !72
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.thread40, label %b3SnapR_Bytes.exit

bb.f:                                             ; preds = %bb.e
  %.not28 = icmp eq i32 %.0.i5170, 0
  br i1 %.not28, label %.thread40, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = zext i32 %.0.i5170 to i64
  %i.aj = shl nuw nsw i64 %i.ai, 4                ; 3 uses
  %i.ak = tail call ptr @b3Alloc(i64 noundef %i.aj) #7 ; 2 uses
  store ptr %i.ak, ptr %1, align 8, !tbaa !183
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.0.i5170, ptr %i.al, align 8, !tbaa !181
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.0.i3574, ptr %i.am, align 4, !tbaa !182
  %i.an = trunc i64 %i.aj to i32                  ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %b3SnapRCheck.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !199
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = and i64 %i.aj, 2147483632               ; 2 uses
  %i.as = add nsw i64 %i.ar, %i.aq
  %i.at = load i32, ptr %i.e, align 4, !tbaa !200
  %i.au = sext i32 %i.at to i64
  %i.av = icmp sgt i64 %i.as, %i.au
  br i1 %i.av, label %b3SnapRCheck.exit.thread.i, label %b3SnapRCheck.exit.i

b3SnapRCheck.exit.thread.i:                       ; preds = %bb.h, %bb.g
  store i8 0, ptr %i.i, align 8, !tbaa !201
  br label %b3SnapR_Bytes.exit

b3SnapRCheck.exit.i:                              ; preds = %bb.h
  %.pre.i = load i8, ptr %i.i, align 8, !tbaa !201, !range !71
  %i.aw = trunc nuw i8 %.pre.i to i1
  br i1 %i.aw, label %bb.i, label %b3SnapR_Bytes.exit

bb.i:                                             ; preds = %b3SnapRCheck.exit.i
  %i.ax = load ptr, ptr %0, align 8, !tbaa !198
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.ay, i64 %i.ar, i1 false)
  %i.az = load i32, ptr %i.a, align 8, !tbaa !199
  %i.ba = add nsw i32 %i.az, %i.an
  store i32 %i.ba, ptr %i.a, align 8, !tbaa !199
  br label %b3SnapR_Bytes.exit

.thread40:                                        ; preds = %.thread, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %b3SnapR_Bytes.exit

b3SnapR_Bytes.exit:                               ; preds = %bb.i, %b3SnapRCheck.exit.i, %b3SnapRCheck.exit.thread.i, %.thread, %.thread40, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3DesNames(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !199  ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = add nsw i64 %i.c, 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !200
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp sgt i64 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br i1 %i.h, label %.thread.sink.split, label %b3SnapRCheck.exit.i.i

b3SnapRCheck.exit.i.i:                            ; preds = %bb.a
  %.pre.i.i = load i8, ptr %i.i, align 8, !tbaa !201, !range !71
  %i.j = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.j, label %bb.b, label %.thread

bb.b:                                             ; preds = %b3SnapRCheck.exit.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !198
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.l, align 1    ; 7 uses
  %i.m = add nsw i32 %i.b, 4                      ; 2 uses
  store i32 %i.m, ptr %i.a, align 8, !tbaa !199
  %or.cond57.not = icmp ult i32 %.0.copyload.i, 134217728
  br i1 %or.cond57.not, label %b3SnapCheckCount.exit, label %.thread.sink.split

b3SnapCheckCount.exit:                            ; preds = %bb.b
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 %i.g, %i.n
  %i.p = shl nuw nsw i32 %.0.copyload.i, 3
  %i.q = zext nneg i32 %i.p to i64
  %.not = icmp slt i64 %i.o, %i.q
  br i1 %.not, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %b3SnapCheckCount.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !298  ; 2 uses
  %i.t = icmp slt i32 %i.s, %.0.copyload.i
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = shl i32 %i.s, 4
  %i.v = shl nuw nsw i32 %.0.copyload.i, 4
  %i.w = load ptr, ptr %1, align 8, !tbaa !196
  %i.x = tail call ptr @b3GrowAlloc(ptr noundef %i.w, i32 noundef %i.u, i32 noundef %i.v) #7
  store ptr %i.x, ptr %1, align 8, !tbaa !196
  store i32 %.0.copyload.i, ptr %i.r, align 4, !tbaa !298
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not59 = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not59, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %b3SnapR_Bytes.exit
  %.058 = phi i32 [ %i.bf, %b3SnapR_Bytes.exit ], [ 0, %bb.e ]
  %i.y = load i32, ptr %i.a, align 8, !tbaa !199  ; 3 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = add nsw i64 %i.z, 4
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !200 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = icmp sgt i64 %i.aa, %i.ac
  br i1 %i.ad, label %.thread.sink.split, label %b3SnapRCheck.exit.i.i45

b3SnapRCheck.exit.i.i45:                          ; preds = %.lr.ph
  %.pre.i.i46 = load i8, ptr %i.i, align 8, !tbaa !201, !range !71
  %i.ae = trunc nuw i8 %.pre.i.i46 to i1
  br i1 %i.ae, label %b3SnapR_U32.exit, label %.thread.sink.split

b3SnapR_U32.exit:                                 ; preds = %b3SnapRCheck.exit.i.i45
  %i.af = load ptr, ptr %0, align 8, !tbaa !198
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.z
  %.0.copyload.i48 = load i32, ptr %i.ag, align 1
  %i.ah = add nsw i32 %i.y, 4                     ; 2 uses
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !199
  %.pre = sext i32 %i.ah to i64                   ; 2 uses
  %.pre61 = add nsw i64 %.pre, 4
  %i.ai = icmp sgt i64 %.pre61, %i.ac
  br i1 %i.ai, label %.thread.sink.split, label %b3SnapR_I32.exit55

b3SnapR_I32.exit55:                               ; preds = %b3SnapR_U32.exit
  %i.aj = load ptr, ptr %0, align 8, !tbaa !198
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %.pre
  %.0.copyload.i53 = load i32, ptr %i.ak, align 1 ; 6 uses
  %i.al = add nsw i32 %i.y, 8                     ; 2 uses
  store i32 %i.al, ptr %i.a, align 8, !tbaa !199
  %i.am = icmp slt i32 %.0.copyload.i53, 0
  %i.an = sub nsw i32 %i.ab, %i.al
  %i.ao = icmp sgt i32 %.0.copyload.i53, %i.an
  %or.cond90 = select i1 %i.am, i1 true, i1 %i.ao
  br i1 %or.cond90, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %b3SnapR_I32.exit55
  %i.ap = add nuw nsw i32 %.0.copyload.i53, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = tail call ptr @b3Alloc(i64 noundef %i.aq) #7 ; 3 uses
  %i.as = load i32, ptr %i.a, align 8, !tbaa !199
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = zext nneg i32 %.0.copyload.i53 to i64   ; 3 uses
  %i.av = add nsw i64 %i.at, %i.au
  %i.aw = load i32, ptr %i.e, align 4, !tbaa !200
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp sgt i64 %i.av, %i.ax
  br i1 %i.ay, label %b3SnapRCheck.exit.thread.i, label %b3SnapRCheck.exit.i

b3SnapRCheck.exit.thread.i:                       ; preds = %bb.f
  store i8 0, ptr %i.i, align 8, !tbaa !201
  br label %b3SnapR_Bytes.exit

b3SnapRCheck.exit.i:                              ; preds = %bb.f
  %.pre.i = load i8, ptr %i.i, align 8, !tbaa !201, !range !71
  %i.az = trunc nuw i8 %.pre.i to i1
  br i1 %i.az, label %bb.g, label %b3SnapR_Bytes.exit

bb.g:                                             ; preds = %b3SnapRCheck.exit.i
  %i.ba = load ptr, ptr %0, align 8, !tbaa !198
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.bb, i64 %i.au, i1 false)
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !199
  %i.bd = add nsw i32 %i.bc, %.0.copyload.i53
  store i32 %i.bd, ptr %i.a, align 8, !tbaa !199
  br label %b3SnapR_Bytes.exit

b3SnapR_Bytes.exit:                               ; preds = %b3SnapRCheck.exit.thread.i, %b3SnapRCheck.exit.i, %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.au
  store i8 0, ptr %i.be, align 1, !tbaa !76
  tail call void @b3LoadName(ptr noundef %1, i32 noundef %.0.copyload.i48, ptr noundef %i.ar, i32 noundef %.0.copyload.i53) #7
  %i.bf = add nuw nsw i32 %.058, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bf, %.0.copyload.i
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !297

.thread.sink.split:                               ; preds = %b3SnapR_U32.exit, %.lr.ph, %b3SnapR_I32.exit55, %b3SnapRCheck.exit.i.i45, %b3SnapCheckCount.exit, %bb.b, %bb.a
  store i8 0, ptr %i.i, align 8, !tbaa !201
  br label %.thread

.thread:                                          ; preds = %b3SnapR_Bytes.exit, %.thread.sink.split, %b3SnapRCheck.exit.i.i, %bb.e
  ret void
}

declare void @b3RecBufAppend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @b3RecInternHull(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @b3RecInternMesh(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @b3RecInternHeightField(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @b3RecInternCompound(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3RemoveHullFromDatabase(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3LockMutex(ptr noundef) local_unnamed_addr #2

declare void @b3FreeElement(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3UnlockMutex(ptr noundef) local_unnamed_addr #2

declare ptr @b3Alloc(i64 noundef) local_unnamed_addr #2

declare ptr @b3AddHullToDatabase(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @b3ConvertBytesToCompound(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @b3CreateBlockAllocator(ptr dead_on_unwind writable sret(%struct.b3BlockAllocator) align 8, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @b3AllocateElement(ptr noundef) local_unnamed_addr #2

declare void @b3DestroyBitSet(ptr noundef) local_unnamed_addr #2

declare void @b3DestroySet(ptr noundef) local_unnamed_addr #2

declare void @b3LoadName(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_Bool", !4, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"b3Stack", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !4, i64 24, !5, i64 792}
!13 = !{!"p1 int", !8, i64 0}
!14 = !{!"b3DynamicArray_int", !13, i64 0, !5, i64 8, !5, i64 12}
!15 = !{!"p1 _ZTS12b3MoveResult", !8, i64 0}
!16 = !{!"p1 _ZTS10b3MovePair", !8, i64 0}
end_hunk_1
