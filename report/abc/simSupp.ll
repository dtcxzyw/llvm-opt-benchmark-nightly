Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/simSupp?download=true
inline.NumInlined: 118
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Sim_ComputeStrSupp:bb.a
  %i.cg = or i32 %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next85.2
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !38
  %indvars.iv.next85.3 = add nuw nsw i64 %indvars.iv84, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next85.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.critedge.us.loopexit, label %scalar.ph, !llvm.loop !73

.critedge.us.loopexit:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.val.us.pre = load i32, ptr %i.q, align 4, !tbaa !30
  br label %.critedge.us

.critedge.us:                                     ; preds = %.critedge.us.loopexit, %bb.b, %.lr.ph76.split.us
  %.val.us = phi i32 [ %.val.us.pre, %.critedge.us.loopexit ], [ %.val.us98, %bb.b ], [ %.val.us98, %.lr.ph76.split.us ] ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.ci = sext i32 %.val.us to i64
  %i.cj = icmp slt i64 %indvars.iv.next88, %i.ci
  br i1 %i.cj, label %.lr.ph76.split.us, label %.critedge2.preheader, !llvm.loop !74

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val62.val, i64 %indvars.iv
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !33
  %i.cm = trunc nuw nsw i64 %indvars.iv to i32
  %i.cn = and i32 %i.cm, 31
  %i.co = shl nuw i32 1, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !36
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !33
  %i.cu = lshr i64 %indvars.iv, 5
  %i.cv = and i64 %i.cu, 134217727
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !38
  %i.cy = or i32 %i.cx, %i.co
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val58.val = load i32, ptr %i.k, align 4, !tbaa !30
  %i.cz = sext i32 %.val58.val to i64
  %i.da = icmp slt i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %bb.c, label %.critedge.preheader, !llvm.loop !75

.critedge2.preheader:                             ; preds = %.critedge.us, %.lr.ph76, %.critedge.preheader
  %i.db = getelementptr i8, ptr %0, i64 64
  %.val68 = load ptr, ptr %i.db, align 8, !tbaa !41 ; 2 uses
  %i.dc = getelementptr i8, ptr %.val68, i64 4    ; 2 uses
  %.val68.val79 = load i32, ptr %i.dc, align 4, !tbaa !30
  %i.dd = icmp sgt i32 %.val68.val79, 0
  br i1 %i.dd, label %.lr.ph81, label %.critedge4

.lr.ph81:                                         ; preds = %.critedge2.preheader
  %i.de = getelementptr i8, ptr %.val68, i64 8
  %.val69.val = load ptr, ptr %i.de, align 8, !tbaa !32
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !32 ; 2 uses
  %i.dh = icmp sgt i32 %i.g, 0
  br i1 %i.dh, label %.lr.ph78.preheader, label %.critedge4

.lr.ph78.preheader:                               ; preds = %.lr.ph81
  %wide.trip.count93 = zext nneg i32 %i.g to i64  ; 5 uses
  %min.iters.check108 = icmp ult i32 %i.g, 8
  %n.vec110 = and i64 %wide.trip.count93, 2147483640 ; 3 uses
  %cmp.n117 = icmp eq i64 %n.vec110, %wide.trip.count93
  %xtraiter121 = and i64 %wide.trip.count93, 3    ; 2 uses
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %._crit_edge
  %indvars.iv95 = phi i64 [ 0, %.lr.ph78.preheader ], [ %indvars.iv.next96, %._crit_edge ] ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.val69.val, i64 %indvars.iv95
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !33 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !36
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !33 ; 7 uses
  %i.dp = getelementptr i8, ptr %i.dj, i64 32
  %.val65 = load ptr, ptr %i.dp, align 8, !tbaa !37
  %.val65.val = load i32, ptr %.val65, align 4, !tbaa !38
  %i.dq = sext i32 %.val65.val to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !33 ; 7 uses
  %i.dt = ptrtoaddr ptr %i.ds to i64
  %i.du = ptrtoaddr ptr %i.do to i64
  %i.dv = sub i64 %i.dt, %i.du
  %diff.check106 = icmp ugt i64 %i.dv, -32
  %or.cond = select i1 %min.iters.check108, i1 true, i1 %diff.check106
  br i1 %or.cond, label %scalar.ph107.preheader, label %vector.body111

vector.body111:                                   ; preds = %.lr.ph78, %vector.body111
  %index112 = phi i64 [ %index.next115, %vector.body111 ], [ 0, %.lr.ph78 ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %index112 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load113 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !38
  %wide.load114 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !38
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index112 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <4 x i32> %wide.load113, ptr %i.dy, align 4, !tbaa !38
  store <4 x i32> %wide.load114, ptr %i.dz, align 4, !tbaa !38
  %index.next115 = add nuw i64 %index112, 8       ; 2 uses
  %i.ea = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.ea, label %middle.block116, label %vector.body111, !llvm.loop !76

middle.block116:                                  ; preds = %vector.body111
  br i1 %cmp.n117, label %._crit_edge, label %scalar.ph107.preheader

scalar.ph107.preheader:                           ; preds = %.lr.ph78, %middle.block116
  %indvars.iv90.ph = phi i64 [ 0, %.lr.ph78 ], [ %n.vec110, %middle.block116 ] ; 3 uses
  br i1 %lcmp.mod122.not, label %scalar.ph107.prol.loopexit, label %scalar.ph107.prol

scalar.ph107.prol:                                ; preds = %scalar.ph107.preheader, %scalar.ph107.prol
  %indvars.iv90.prol = phi i64 [ %indvars.iv.next91.prol, %scalar.ph107.prol ], [ %indvars.iv90.ph, %scalar.ph107.preheader ] ; 3 uses
  %prol.iter123 = phi i64 [ %prol.iter123.next, %scalar.ph107.prol ], [ 0, %scalar.ph107.preheader ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv90.prol
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !38
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv90.prol
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !38
  %indvars.iv.next91.prol = add nuw nsw i64 %indvars.iv90.prol, 1 ; 2 uses
  %prol.iter123.next = add i64 %prol.iter123, 1   ; 2 uses
  %prol.iter123.cmp.not = icmp eq i64 %prol.iter123.next, %xtraiter121
  br i1 %prol.iter123.cmp.not, label %scalar.ph107.prol.loopexit, label %scalar.ph107.prol, !llvm.loop !77

scalar.ph107.prol.loopexit:                       ; preds = %scalar.ph107.prol, %scalar.ph107.preheader
  %indvars.iv90.unr = phi i64 [ %indvars.iv90.ph, %scalar.ph107.preheader ], [ %indvars.iv.next91.prol, %scalar.ph107.prol ]
  %i.ee = sub nsw i64 %indvars.iv90.ph, %wide.trip.count93
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %._crit_edge, label %scalar.ph107

scalar.ph107:                                     ; preds = %scalar.ph107.prol.loopexit, %scalar.ph107
  %indvars.iv90 = phi i64 [ %indvars.iv.next91.3, %scalar.ph107 ], [ %indvars.iv90.unr, %scalar.ph107.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv90
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !38
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv90
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !38
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.next91
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !38
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.next91
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !38
  %indvars.iv.next91.1 = add nuw nsw i64 %indvars.iv90, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.next91.1
  %i.en = load i32, ptr %i.em, align 4, !tbaa !38
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.next91.1
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !38
  %indvars.iv.next91.2 = add nuw nsw i64 %indvars.iv90, 3 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.next91.2
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !38
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.next91.2
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !38
  %indvars.iv.next91.3 = add nuw nsw i64 %indvars.iv90, 4 ; 2 uses
  %exitcond94.not.3 = icmp eq i64 %indvars.iv.next91.3, %wide.trip.count93
  br i1 %exitcond94.not.3, label %._crit_edge, label %scalar.ph107, !llvm.loop !78

._crit_edge:                                      ; preds = %scalar.ph107.prol.loopexit, %scalar.ph107, %middle.block116
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %.val68.val = load i32, ptr %i.dc, align 4, !tbaa !30
  %i.es = sext i32 %.val68.val to i64
  %i.et = icmp slt i64 %indvars.iv.next96, %i.es
  br i1 %i.et, label %.lr.ph78, label %.critedge4, !llvm.loop !79

.critedge4:                                       ; preds = %._crit_edge, %.lr.ph81, %.critedge2.preheader
  ret ptr %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @Sim_UtilInfoAlloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @Sim_ComputeFunSupp(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.Fraig_ParamsStruct_t_, align 8 ; 6 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #14
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %8, align 8, !tbaa !44
  %.neg131 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  %.neg = sdiv i64 %i.e, -1000
  %.neg132 = add i64 %.neg, %.neg131
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg132, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @srand(i32 noundef 2748) #14
  %i.f = call ptr @Sim_ManStart(ptr noundef %0, i32 noundef 0) #14 ; 39 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 56
  %.val14.i = load ptr, ptr %i.h, align 8, !tbaa !27 ; 2 uses
  %i.i = getelementptr i8, ptr %.val14.i, i64 4
  %.val.val15.i = load i32, ptr %i.i, align 4, !tbaa !30
  %i.j = icmp sgt i32 %.val.val15.i, 0
  br i1 %i.j, label %.lr.ph19.i, label %Sim_UtilAssignRandom.exit

.lr.ph19.i:                                       ; preds = %Abc_Clock.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !50   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph19.split.i, label %Sim_UtilAssignRandom.exit

.lr.ph19.split.i:                                 ; preds = %.lr.ph19.i, %._crit_edge.i
  %i.o = phi ptr [ %i.an, %._crit_edge.i ], [ %i.g, %.lr.ph19.i ]
  %i.p = phi i32 [ %i.ao, %._crit_edge.i ], [ %i.m, %.lr.ph19.i ] ; 2 uses
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i, %._crit_edge.i ], [ 0, %.lr.ph19.i ] ; 2 uses
  %.val17.i = phi ptr [ %.val.i, %._crit_edge.i ], [ %.val14.i, %.lr.ph19.i ]
  %i.q = getelementptr i8, ptr %.val17.i, i64 8
  %.val12.val.i = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val12.val.i, i64 %indvars.iv22.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !36
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ab = icmp sgt i32 %i.p, 0
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph19.split.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph19.split.i ] ; 2 uses
  %i.ac = call i32 @rand() #14
  %i.ad = shl i32 %i.ac, 24
  %i.ae = call i32 @rand() #14
  %i.af = shl i32 %i.ae, 12
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = call i32 @rand() #14
  %i.ai = xor i32 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = load i32, ptr %i.l, align 8, !tbaa !50  ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next.i, %i.al
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !82

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !49
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph19.split.i
  %i.an = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.o, %.lr.ph19.split.i ] ; 2 uses
  %i.ao = phi i32 [ %i.ak, %._crit_edge.loopexit.i ], [ %i.p, %.lr.ph19.split.i ]
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 56
  %.val.i = load ptr, ptr %i.ap, align 8, !tbaa !27 ; 2 uses
  %i.aq = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.aq, align 4, !tbaa !30
  %i.ar = sext i32 %.val.val.i to i64
  %i.as = icmp slt i64 %indvars.iv.next23.i, %i.ar
  br i1 %i.as, label %.lr.ph19.split.i, label %Sim_UtilAssignRandom.exit, !llvm.loop !83

Sim_UtilAssignRandom.exit:                        ; preds = %._crit_edge.i, %Abc_Clock.exit, %.lr.ph19.i
  %i.at = call fastcc i32 @Sim_ComputeSuppRound(ptr noundef nonnull %i.f, i32 noundef 0) ; 0 uses
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.av = getelementptr i8, ptr %i.au, i64 64
  %.val28.i = load ptr, ptr %i.av, align 8, !tbaa !41 ; 2 uses
  %i.aw = getelementptr i8, ptr %.val28.i, i64 4
  %.val.val29.i = load i32, ptr %i.aw, align 4, !tbaa !30
  %i.ax = icmp sgt i32 %.val.val29.i, 0
  br i1 %i.ax, label %.lr.ph32.i, label %Sim_ComputeSuppSetTargets.exit

.lr.ph32.i:                                       ; preds = %Sim_UtilAssignRandom.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.pre.i32 = load ptr, ptr %i.bb, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %.critedge2.i, %.lr.ph32.i
  %i.bd = phi ptr [ %.pre.i32, %.lr.ph32.i ], [ %i.eb, %.critedge2.i ]
  %indvars.iv34.i = phi i64 [ 0, %.lr.ph32.i ], [ %indvars.iv.next35.i, %.critedge2.i ] ; 4 uses
  %.val31.i = phi ptr [ %.val28.i, %.lr.ph32.i ], [ %.val.i33, %.critedge2.i ]
  %i.be = getelementptr i8, ptr %.val31.i, i64 8
  %.val23.val.i = load ptr, ptr %i.be, align 8, !tbaa !32
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.val23.val.i, i64 %indvars.iv34.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !33
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !102
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !36
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !33
  %i.bp = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !32
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv34.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !33
  %i.bu = load i32, ptr %i.ba, align 4, !tbaa !103
  call void @Sim_UtilInfoDetectNews(ptr noundef %i.bt, ptr noundef %i.bo, i32 noundef %i.bu, ptr noundef %i.bd) #14
  %i.bv = load ptr, ptr %i.bb, align 8, !tbaa !52 ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 4
  %.val2526.i = load i32, ptr %i.bw, align 4, !tbaa !54
  %i.bx = icmp sgt i32 %.val2526.i, 0
  br i1 %i.bx, label %.lr.ph.i35, label %.critedge2.i

.lr.ph.i35:                                       ; preds = %bb.c
  %i.by = inttoptr i64 %indvars.iv34.i to ptr
  br label %bb.d

bb.d:                                             ; preds = %Vec_VecPush.exit.i, %.lr.ph.i35
  %indvars.iv.i36 = phi i64 [ 0, %.lr.ph.i35 ], [ %indvars.iv.next.i37, %Vec_VecPush.exit.i ] ; 2 uses
  %i.bz = phi ptr [ %i.bv, %.lr.ph.i35 ], [ %i.dx, %Vec_VecPush.exit.i ]
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %.val24.i = load ptr, ptr %i.ca, align 8, !tbaa !55
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %indvars.iv.i36
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !38 ; 5 uses
  %i.cd = load ptr, ptr %i.bc, align 8, !tbaa !56 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !58 ; 3 uses
  %i.cg = add i32 %i.cc, 1                        ; 4 uses
  %.not.i.i = icmp sgt i32 %i.cf, %i.cc
  br i1 %.not.i.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ch = load i32, ptr %i.cd, align 8, !tbaa !59
  %.not.i.not.i.i = icmp sgt i32 %i.ch, %i.cc
  br i1 %.not.i.not.i.i, label %Vec_PtrGrow.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !32 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.cj, null
  %i.ck = sext i32 %i.cg to i64
  %i.cl = shl nsw i64 %i.ck, 3                    ; 2 uses
  br i1 %.not9.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cm = call ptr @realloc(ptr noundef nonnull %i.cj, i64 noundef %i.cl) #15
  %.pre.pre.i.i = load i32, ptr %i.ce, align 4, !tbaa !58
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cn = call noalias ptr @malloc(i64 noundef %i.cl) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %bb.g ], [ %i.cf, %bb.h ]
  %i.co = phi ptr [ %i.cm, %bb.g ], [ %i.cn, %bb.h ]
  store ptr %i.co, ptr %i.ci, align 8, !tbaa !32
  store i32 %i.cg, ptr %i.cd, align 8, !tbaa !59
  br label %Vec_PtrGrow.exit.i.i

Vec_PtrGrow.exit.i.i:                             ; preds = %bb.i, %bb.e
  %i.cp = phi i32 [ %i.cf, %bb.e ], [ %.pre.i.i, %bb.i ] ; 2 uses
  %.not1516.i.i = icmp sgt i32 %i.cp, %i.cc
  br i1 %.not1516.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %Vec_PtrGrow.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cr = sext i32 %i.cp to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.cr, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 2 uses
  %calloc.i.i.i = call noalias noundef dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !60
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %indvars.iv.i.i
  store ptr %calloc.i.i.i, ptr %i.ct, align 8, !tbaa !33
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %i.cg, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.j, !llvm.loop !84

._crit_edge.i.i:                                  ; preds = %bb.j, %Vec_PtrGrow.exit.i.i
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i, %bb.d
  %i.cu = getelementptr i8, ptr %i.cd, i64 8
  %.val.i.i = load ptr, ptr %i.cu, align 8, !tbaa !60
  %i.cv = sext i32 %i.cc to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !33 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !30 ; 7 uses
  %i.da = load i32, ptr %i.cx, align 8, !tbaa !59
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.l, label %Vec_VecPush.exit.i

end_hunk_0
begin_hunk_1_@Sim_ComputeFunSupp:bb.a
  br label %Vec_VecPush.exit.i

Vec_VecPush.exit.i:                               ; preds = %Vec_PtrGrow.exit12.sink.split.i.i.i, %bb.p, %bb.k
  %i.dr = phi i32 [ %i.cz, %bb.k ], [ %i.cz, %bb.p ], [ %.pre19.i.i, %Vec_PtrGrow.exit12.sink.split.i.i.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !32
  %i.du = add nsw i32 %i.dr, 1
  store i32 %i.du, ptr %i.cy, align 4, !tbaa !30
  %i.dv = sext i32 %i.dr to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.dv
  store ptr %i.by, ptr %i.dw, align 8, !tbaa !33
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %i.dx = load ptr, ptr %i.bb, align 8, !tbaa !52 ; 3 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  %.val25.i = load i32, ptr %i.dy, align 4, !tbaa !54
  %i.dz = sext i32 %.val25.i to i64
  %i.ea = icmp slt i64 %indvars.iv.next.i37, %i.dz
  br i1 %i.ea, label %bb.d, label %.critedge2.i, !llvm.loop !85

.critedge2.i:                                     ; preds = %Vec_VecPush.exit.i, %bb.c
  %i.eb = phi ptr [ %i.bv, %bb.c ], [ %i.dx, %Vec_VecPush.exit.i ]
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %i.ec = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.ed = getelementptr i8, ptr %i.ec, i64 64
  %.val.i33 = load ptr, ptr %i.ed, align 8, !tbaa !41 ; 2 uses
  %i.ee = getelementptr i8, ptr %.val.i33, i64 4
  %.val.val.i34 = load i32, ptr %i.ee, align 4, !tbaa !30
  %i.ef = sext i32 %.val.val.i34 to i64
  %i.eg = icmp slt i64 %indvars.iv.next35.i, %i.ef
  br i1 %i.eg, label %bb.c, label %Sim_ComputeSuppSetTargets.exit, !llvm.loop !86

Sim_ComputeSuppSetTargets.exit:                   ; preds = %.critedge2.i, %Sim_UtilAssignRandom.exit
  %.not = icmp eq i32 %1, 0                       ; 3 uses
  br i1 %.not, label %bb.x, label %bb.u

bb.u:                                             ; preds = %Sim_ComputeSuppSetTargets.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !56 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 4
  %.val.i38 = load i32, ptr %i.ej, align 4, !tbaa !58 ; 3 uses
  %i.ek = icmp sgt i32 %.val.i38, 0
  br i1 %i.ek, label %.lr.ph.i39, label %Vec_VecSizeSize.exit

.lr.ph.i39:                                       ; preds = %bb.u
  %i.el = getelementptr i8, ptr %i.ei, i64 8
  %.val8.i = load ptr, ptr %i.el, align 8, !tbaa !60 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %.val.i38 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.em = icmp ult i32 %.val.i38, 4
  br i1 %i.em, label %.epil.preheader, label %.lr.ph.i39.new

.lr.ph.i39.new:                                   ; preds = %.lr.ph.i39
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i39.new
  %indvars.iv.i40 = phi i64 [ 0, %.lr.ph.i39.new ], [ %indvars.iv.next.i41.3, %bb.v ] ; 5 uses
  %.010.i = phi i32 [ 0, %.lr.ph.i39.new ], [ %i.fj, %bb.v ]
  %niter = phi i64 [ 0, %.lr.ph.i39.new ], [ %niter.next.3, %bb.v ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.val8.i, i64 %indvars.iv.i40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !33
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !30
  %i.er = add nsw i32 %i.eq, %.010.i
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.val8.i, i64 %indvars.iv.i40
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !33
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !30
  %i.ex = add nsw i32 %i.ew, %i.er
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.val8.i, i64 %indvars.iv.i40
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !33
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !30
  %i.fd = add nsw i32 %i.fc, %i.ex
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.val8.i, i64 %indvars.iv.i40
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !33
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !30
  %i.fj = add nsw i32 %i.fi, %i.fd                ; 3 uses
  %indvars.iv.next.i41.3 = add nuw nsw i64 %indvars.iv.i40, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Vec_VecSizeSize.exit.loopexit.unr-lcssa, label %bb.v, !llvm.loop !87

Vec_VecSizeSize.exit.loopexit.unr-lcssa:          ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Vec_VecSizeSize.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %Vec_VecSizeSize.exit.loopexit.unr-lcssa, %.lr.ph.i39
  %indvars.iv.i40.epil.init = phi i64 [ 0, %.lr.ph.i39 ], [ %indvars.iv.next.i41.3, %Vec_VecSizeSize.exit.loopexit.unr-lcssa ]
  %.010.i.epil.init = phi i32 [ 0, %.lr.ph.i39 ], [ %i.fj, %Vec_VecSizeSize.exit.loopexit.unr-lcssa ]
  %lcmp.mod215 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod215)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader
  %indvars.iv.i40.epil = phi i64 [ %indvars.iv.i40.epil.init, %.epil.preheader ], [ %indvars.iv.next.i41.epil, %bb.w ] ; 2 uses
  %.010.i.epil = phi i32 [ %.010.i.epil.init, %.epil.preheader ], [ %i.fo, %bb.w ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.w ]
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.val8.i, i64 %indvars.iv.i40.epil
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !33
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !30
  %i.fo = add nsw i32 %i.fn, %.010.i.epil         ; 2 uses
  %indvars.iv.next.i41.epil = add nuw nsw i64 %indvars.iv.i40.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Vec_VecSizeSize.exit, label %bb.w, !llvm.loop !88

Vec_VecSizeSize.exit:                             ; preds = %Vec_VecSizeSize.exit.loopexit.unr-lcssa, %bb.w, %bb.u
  %.0.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.fj, %Vec_VecSizeSize.exit.loopexit.unr-lcssa ], [ %i.fo, %bb.w ]
  %i.fp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.0.lcssa.i) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %Vec_VecSizeSize.exit, %Sim_ComputeSuppSetTargets.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 8 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !56 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 4
  %.val.i42 = load i32, ptr %i.fs, align 4, !tbaa !58 ; 3 uses
  %i.ft = icmp sgt i32 %.val.i42, 0
  br i1 %i.ft, label %.lr.ph.i44, label %Vec_VecSizeSize.exit51.thread

.lr.ph.i44:                                       ; preds = %bb.x
  %i.fu = getelementptr i8, ptr %i.fr, i64 8
  %.val8.i45 = load ptr, ptr %i.fu, align 8, !tbaa !60 ; 5 uses
  %wide.trip.count.i46 = zext nneg i32 %.val.i42 to i64 ; 2 uses
  %xtraiter217 = and i64 %wide.trip.count.i46, 3  ; 3 uses
  %i.fv = icmp ult i32 %.val.i42, 4
  br i1 %i.fv, label %.epil.preheader216, label %.lr.ph.i44.new

.lr.ph.i44.new:                                   ; preds = %.lr.ph.i44
  %unroll_iter222 = and i64 %wide.trip.count.i46, 2147483644
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i44.new
  %indvars.iv.i47 = phi i64 [ 0, %.lr.ph.i44.new ], [ %indvars.iv.next.i49.3, %bb.y ] ; 5 uses
  %.010.i48 = phi i32 [ 0, %.lr.ph.i44.new ], [ %i.gs, %bb.y ]
  %niter223 = phi i64 [ 0, %.lr.ph.i44.new ], [ %niter223.next.3, %bb.y ]
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.val8.i45, i64 %indvars.iv.i47
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !33
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !30
  %i.ga = add nsw i32 %i.fz, %.010.i48
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.val8.i45, i64 %indvars.iv.i47
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !33
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !30
  %i.gg = add nsw i32 %i.gf, %i.ga
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.val8.i45, i64 %indvars.iv.i47
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !33
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !30
  %i.gm = add nsw i32 %i.gl, %i.gg
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.val8.i45, i64 %indvars.iv.i47
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !33
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !30
  %i.gs = add nsw i32 %i.gr, %i.gm                ; 3 uses
  %indvars.iv.next.i49.3 = add nuw nsw i64 %indvars.iv.i47, 4 ; 2 uses
  %niter223.next.3 = add i64 %niter223, 4         ; 2 uses
  %niter223.ncmp.3 = icmp eq i64 %niter223.next.3, %unroll_iter222
  br i1 %niter223.ncmp.3, label %Vec_VecSizeSize.exit51.unr-lcssa, label %bb.y, !llvm.loop !87

Vec_VecSizeSize.exit51.unr-lcssa:                 ; preds = %bb.y
  %lcmp.mod219.not = icmp eq i64 %xtraiter217, 0
  br i1 %lcmp.mod219.not, label %Vec_VecSizeSize.exit51, label %.epil.preheader216

.epil.preheader216:                               ; preds = %Vec_VecSizeSize.exit51.unr-lcssa, %.lr.ph.i44
  %indvars.iv.i47.epil.init = phi i64 [ 0, %.lr.ph.i44 ], [ %indvars.iv.next.i49.3, %Vec_VecSizeSize.exit51.unr-lcssa ]
  %.010.i48.epil.init = phi i32 [ 0, %.lr.ph.i44 ], [ %i.gs, %Vec_VecSizeSize.exit51.unr-lcssa ]
  %lcmp.mod221 = icmp ne i64 %xtraiter217, 0
  call void @llvm.assume(i1 %lcmp.mod221)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader216
  %indvars.iv.i47.epil = phi i64 [ %indvars.iv.i47.epil.init, %.epil.preheader216 ], [ %indvars.iv.next.i49.epil, %bb.z ] ; 2 uses
  %.010.i48.epil = phi i32 [ %.010.i48.epil.init, %.epil.preheader216 ], [ %i.gx, %bb.z ]
  %epil.iter218 = phi i64 [ 0, %.epil.preheader216 ], [ %epil.iter218.next, %bb.z ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.val8.i45, i64 %indvars.iv.i47.epil
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !33
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !30
  %i.gx = add nsw i32 %i.gw, %.010.i48.epil       ; 2 uses
  %indvars.iv.next.i49.epil = add nuw nsw i64 %indvars.iv.i47.epil, 1
  %epil.iter218.next = add i64 %epil.iter218, 1   ; 2 uses
  %epil.iter218.cmp.not = icmp eq i64 %epil.iter218.next, %xtraiter217
  br i1 %epil.iter218.cmp.not, label %Vec_VecSizeSize.exit51, label %bb.z, !llvm.loop !89

Vec_VecSizeSize.exit51:                           ; preds = %bb.z, %Vec_VecSizeSize.exit51.unr-lcssa
  %.lcssa210 = phi i32 [ %i.gs, %Vec_VecSizeSize.exit51.unr-lcssa ], [ %i.gx, %bb.z ]
  %i.gy = icmp eq i32 %.lcssa210, 0
  br i1 %i.gy, label %Vec_VecSizeSize.exit51.thread, label %.preheader135

.preheader135:                                    ; preds = %Vec_VecSizeSize.exit51
  %i.gz = load ptr, ptr %i.f, align 8, !tbaa !49  ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 56
  %.val14.i52 = load ptr, ptr %i.ha, align 8, !tbaa !27 ; 2 uses
  %i.hb = getelementptr i8, ptr %.val14.i52, i64 4
  %.val.val15.i53 = load i32, ptr %i.hb, align 4, !tbaa !30
  %i.hc = icmp sgt i32 %.val.val15.i53, 0
  br i1 %i.hc, label %.lr.ph.i91.lr.ph.a, label %Sim_UtilAssignRandom.exit68

.lr.ph.i91.lr.ph.a:                               ; preds = %.preheader135
  %i.hd = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %9 = load i32, ptr %i.he, align 8, !tbaa !50    ; 2 uses
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %.lr.ph19.split.i55, label %Sim_UtilAssignRandom.exit68

.lr.ph19.split.i55:                               ; preds = %.lr.ph.i91.lr.ph.a, %._crit_edge.i59
  %i.hf = phi ptr [ %i.ie, %._crit_edge.i59 ], [ %i.gz, %.lr.ph.i91.lr.ph.a ]
  %i.hg = phi i32 [ %i.if, %._crit_edge.i59 ], [ %9, %.lr.ph.i91.lr.ph.a ] ; 2 uses
  %indvars.iv22.i56 = phi i64 [ %indvars.iv.next23.i60, %._crit_edge.i59 ], [ 0, %.lr.ph.i91.lr.ph.a ] ; 2 uses
  %.val17.i57 = phi ptr [ %.val.i61, %._crit_edge.i59 ], [ %.val14.i52, %.lr.ph.i91.lr.ph.a ]
  %i.hh = getelementptr i8, ptr %.val17.i57, i64 8
  %.val12.val.i58 = load ptr, ptr %i.hh, align 8, !tbaa !32
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.val12.val.i58, i64 %indvars.iv22.i56
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !33
  %i.hk = load ptr, ptr %i.hd, align 8, !tbaa !51
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !36
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.hp
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !33
  %i.hs = icmp sgt i32 %i.hg, 0
  br i1 %i.hs, label %.lr.ph.i63, label %._crit_edge.i59

.lr.ph.i63:                                       ; preds = %.lr.ph19.split.i55, %.lr.ph.i63
  %indvars.iv.i64 = phi i64 [ %indvars.iv.next.i65, %.lr.ph.i63 ], [ 0, %.lr.ph19.split.i55 ] ; 2 uses
  %i.ht = call i32 @rand() #14
  %i.hu = shl i32 %i.ht, 24
  %i.hv = call i32 @rand() #14
  %i.hw = shl i32 %i.hv, 12
  %i.hx = xor i32 %i.hw, %i.hu
  %i.hy = call i32 @rand() #14
  %i.hz = xor i32 %i.hx, %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv.i64
  store i32 %i.hz, ptr %i.ia, align 4, !tbaa !38
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %i.ib = load i32, ptr %i.he, align 8, !tbaa !50 ; 2 uses
  %i.ic = sext i32 %i.ib to i64
  %i.id = icmp slt i64 %indvars.iv.next.i65, %i.ic
  br i1 %i.id, label %.lr.ph.i63, label %._crit_edge.loopexit.i66, !llvm.loop !82

._crit_edge.loopexit.i66:                         ; preds = %.lr.ph.i63
  %.pre.i67 = load ptr, ptr %i.f, align 8, !tbaa !49
  br label %._crit_edge.i59

._crit_edge.i59:                                  ; preds = %._crit_edge.loopexit.i66, %.lr.ph19.split.i55
  %i.ie = phi ptr [ %.pre.i67, %._crit_edge.loopexit.i66 ], [ %i.hf, %.lr.ph19.split.i55 ] ; 2 uses
  %i.if = phi i32 [ %i.ib, %._crit_edge.loopexit.i66 ], [ %i.hg, %.lr.ph19.split.i55 ]
  %indvars.iv.next23.i60 = add nuw nsw i64 %indvars.iv22.i56, 1 ; 2 uses
  %i.ig = getelementptr i8, ptr %i.ie, i64 56
  %.val.i61 = load ptr, ptr %i.ig, align 8, !tbaa !27 ; 2 uses
  %i.ih = getelementptr i8, ptr %.val.i61, i64 4
  %.val.val.i62 = load i32, ptr %i.ih, align 4, !tbaa !30
  %i.ii = sext i32 %.val.val.i62 to i64
  %i.ij = icmp slt i64 %indvars.iv.next23.i60, %i.ii
  br i1 %i.ij, label %.lr.ph19.split.i55, label %Sim_UtilAssignRandom.exit68, !llvm.loop !83

Sim_UtilAssignRandom.exit68:                      ; preds = %._crit_edge.i59, %.preheader135, %.lr.ph.i91.lr.ph.a
  %i.ik = call fastcc i32 @Sim_ComputeSuppRound(ptr noundef nonnull %i.f, i32 noundef 1)
  %i.il = load ptr, ptr %i.fq, align 8, !tbaa !56 ; 3 uses
  %i.im = getelementptr i8, ptr %i.il, i64 4
  %.val.i69 = load i32, ptr %i.im, align 4, !tbaa !58 ; 5 uses
  %i.in = icmp sgt i32 %.val.i69, 0
  br i1 %i.in, label %.lr.ph.i71, label %Vec_VecSizeSize.exit51.thread

.lr.ph.i71:                                       ; preds = %Sim_UtilAssignRandom.exit68
  %i.io = getelementptr i8, ptr %i.il, i64 8
  %.val8.i72 = load ptr, ptr %i.io, align 8, !tbaa !60 ; 10 uses
  %wide.trip.count.i73 = zext nneg i32 %.val.i69 to i64 ; 4 uses
  %xtraiter225 = and i64 %wide.trip.count.i73, 3  ; 3 uses
  %i.ip = icmp ult i32 %.val.i69, 4
  br i1 %i.ip, label %.epil.preheader224, label %.lr.ph.i71.new

.lr.ph.i71.new:                                   ; preds = %.lr.ph.i71
  %unroll_iter230 = and i64 %wide.trip.count.i73, 2147483644
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i71.new
  %indvars.iv.i74 = phi i64 [ 0, %.lr.ph.i71.new ], [ %indvars.iv.next.i76.3, %bb.aa ] ; 5 uses
  %.010.i75 = phi i32 [ 0, %.lr.ph.i71.new ], [ %i.jm, %bb.aa ]
  %niter231 = phi i64 [ 0, %.lr.ph.i71.new ], [ %niter231.next.3, %bb.aa ]
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %.val8.i72, i64 %indvars.iv.i74
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !33
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !30
  %i.iu = add nsw i32 %i.it, %.010.i75
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.val8.i72, i64 %indvars.iv.i74
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !33
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !30
  %i.ja = add nsw i32 %i.iz, %i.iu
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.val8.i72, i64 %indvars.iv.i74
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !33
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !30
  %i.jg = add nsw i32 %i.jf, %i.ja
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %.val8.i72, i64 %indvars.iv.i74
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !33
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !30
  %i.jm = add nsw i32 %i.jl, %i.jg                ; 3 uses
  %indvars.iv.next.i76.3 = add nuw nsw i64 %indvars.iv.i74, 4 ; 2 uses
  %niter231.next.3 = add i64 %niter231, 4         ; 2 uses
  %niter231.ncmp.3 = icmp eq i64 %niter231.next.3, %unroll_iter230
  br i1 %niter231.ncmp.3, label %Vec_VecSizeSize.exit78.unr-lcssa, label %bb.aa, !llvm.loop !87

Vec_VecSizeSize.exit78.unr-lcssa:                 ; preds = %bb.aa
  %lcmp.mod227.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod227.not, label %Vec_VecSizeSize.exit78, label %.epil.preheader224

.epil.preheader224:                               ; preds = %Vec_VecSizeSize.exit78.unr-lcssa, %.lr.ph.i71
  %indvars.iv.i74.epil.init = phi i64 [ 0, %.lr.ph.i71 ], [ %indvars.iv.next.i76.3, %Vec_VecSizeSize.exit78.unr-lcssa ]
  %.010.i75.epil.init = phi i32 [ 0, %.lr.ph.i71 ], [ %i.jm, %Vec_VecSizeSize.exit78.unr-lcssa ]
  %lcmp.mod229 = icmp ne i64 %xtraiter225, 0
  call void @llvm.assume(i1 %lcmp.mod229)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader224
  %indvars.iv.i74.epil = phi i64 [ %indvars.iv.i74.epil.init, %.epil.preheader224 ], [ %indvars.iv.next.i76.epil, %bb.ab ] ; 2 uses
  %.010.i75.epil = phi i32 [ %.010.i75.epil.init, %.epil.preheader224 ], [ %i.jr, %bb.ab ]
  %epil.iter226 = phi i64 [ 0, %.epil.preheader224 ], [ %epil.iter226.next, %bb.ab ]
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.val8.i72, i64 %indvars.iv.i74.epil
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !33
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !30
  %i.jr = add nsw i32 %i.jq, %.010.i75.epil       ; 2 uses
  %indvars.iv.next.i76.epil = add nuw nsw i64 %indvars.iv.i74.epil, 1
  %epil.iter226.next = add i64 %epil.iter226, 1   ; 2 uses
  %epil.iter226.cmp.not = icmp eq i64 %epil.iter226.next, %xtraiter225
  br i1 %epil.iter226.cmp.not, label %Vec_VecSizeSize.exit78, label %bb.ab, !llvm.loop !90

Vec_VecSizeSize.exit78:                           ; preds = %bb.ab, %Vec_VecSizeSize.exit78.unr-lcssa
  %.lcssa208 = phi i32 [ %i.jm, %Vec_VecSizeSize.exit78.unr-lcssa ], [ %i.jr, %bb.ab ]
  %i.js = icmp eq i32 %.lcssa208, 0
  br i1 %i.js, label %Vec_VecSizeSize.exit51.thread, label %bb.ac

bb.ac:                                            ; preds = %Vec_VecSizeSize.exit78
  br i1 %.not, label %.lr.ph.i91.lr.ph, label %.lr.ph.i81.preheader

.lr.ph.i81.preheader:                             ; preds = %bb.ac
  %xtraiter232 = and i64 %wide.trip.count.i73, 3  ; 3 uses
  %i.jt = icmp ult i32 %.val.i69, 4
  br i1 %i.jt, label %.lr.ph.i81.epil.preheader, label %.lr.ph.i81.preheader.new

.lr.ph.i81.preheader.new:                         ; preds = %.lr.ph.i81.preheader
  %unroll_iter237 = and i64 %wide.trip.count.i73, 2147483644
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81, %.lr.ph.i81.preheader.new
  %indvars.iv.i84 = phi i64 [ 0, %.lr.ph.i81.preheader.new ], [ %indvars.iv.next.i86.3, %.lr.ph.i81 ] ; 5 uses
  %.010.i85 = phi i32 [ 0, %.lr.ph.i81.preheader.new ], [ %i.kq, %.lr.ph.i81 ]
  %niter238 = phi i64 [ 0, %.lr.ph.i81.preheader.new ], [ %niter238.next.3, %.lr.ph.i81 ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.val8.i72, i64 %indvars.iv.i84
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !33
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !30
  %i.jy = add nsw i32 %i.jx, %.010.i85
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.val8.i72, i64 %indvars.iv.i84
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !33
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !30
  %i.ke = add nsw i32 %i.kd, %i.jy
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.val8.i72, i64 %indvars.iv.i84
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !33
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !30
  %i.kk = add nsw i32 %i.kj, %i.ke
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.val8.i72, i64 %indvars.iv.i84
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !33
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !30
  %i.kq = add nsw i32 %i.kp, %i.kk                ; 3 uses
  %indvars.iv.next.i86.3 = add nuw nsw i64 %indvars.iv.i84, 4 ; 2 uses
  %niter238.next.3 = add i64 %niter238, 4         ; 2 uses
  %niter238.ncmp.3 = icmp eq i64 %niter238.next.3, %unroll_iter237
  br i1 %niter238.ncmp.3, label %.preheader.unr-lcssa, label %.lr.ph.i81, !llvm.loop !87

.preheader.unr-lcssa:                             ; preds = %.lr.ph.i81
  %lcmp.mod234.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod234.not, label %.preheader, label %.lr.ph.i81.epil.preheader

.lr.ph.i81.epil.preheader:                        ; preds = %.preheader.unr-lcssa, %.lr.ph.i81.preheader
  %indvars.iv.i84.epil.init = phi i64 [ 0, %.lr.ph.i81.preheader ], [ %indvars.iv.next.i86.3, %.preheader.unr-lcssa ]
  %.010.i85.epil.init = phi i32 [ 0, %.lr.ph.i81.preheader ], [ %i.kq, %.preheader.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter232, 0
  call void @llvm.assume(i1 %lcmp.mod236)
  br label %.lr.ph.i81.epil

.lr.ph.i81.epil:                                  ; preds = %.lr.ph.i81.epil, %.lr.ph.i81.epil.preheader
  %indvars.iv.i84.epil = phi i64 [ %indvars.iv.next.i86.epil, %.lr.ph.i81.epil ], [ %indvars.iv.i84.epil.init, %.lr.ph.i81.epil.preheader ] ; 2 uses
  %.010.i85.epil = phi i32 [ %i.kv, %.lr.ph.i81.epil ], [ %.010.i85.epil.init, %.lr.ph.i81.epil.preheader ]
  %epil.iter233 = phi i64 [ %epil.iter233.next, %.lr.ph.i81.epil ], [ 0, %.lr.ph.i81.epil.preheader ]
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %.val8.i72, i64 %indvars.iv.i84.epil
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !33
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !30
  %i.kv = add nsw i32 %i.ku, %.010.i85.epil       ; 2 uses
  %indvars.iv.next.i86.epil = add nuw nsw i64 %indvars.iv.i84.epil, 1
  %epil.iter233.next = add i64 %epil.iter233, 1   ; 2 uses
  %epil.iter233.cmp.not = icmp eq i64 %epil.iter233.next, %xtraiter232
  br i1 %epil.iter233.cmp.not, label %.preheader, label %.lr.ph.i81.epil, !llvm.loop !91

.preheader:                                       ; preds = %.lr.ph.i81.epil, %.preheader.unr-lcssa
  %.lcssa207 = phi i32 [ %i.kq, %.preheader.unr-lcssa ], [ %i.kv, %.lr.ph.i81.epil ]
  %11 = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.kw = load ptr, ptr %11, align 8, !tbaa !61
  %i.kx = getelementptr i8, ptr %i.kw, i64 4
  %.val31 = load i32, ptr %i.kx, align 4, !tbaa !30
  %i.ky = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %.lcssa207, i32 noundef %i.ik, i32 noundef %.val31) ; 0 uses
  %.pre = load ptr, ptr %i.fq, align 8, !tbaa !56 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 4
  %.val.i89145.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !58 ; 2 uses
  %i.kz = icmp sgt i32 %.val.i89145.pre, 0
  br i1 %i.kz, label %.lr.ph.i91.lr.ph, label %Vec_VecSizeSize.exit51.thread

.lr.ph.i91.lr.ph:                                 ; preds = %bb.ac, %.preheader
  %12 = phi ptr [ %.pre, %.preheader ], [ %i.il, %bb.ac ] ; 2 uses
  %.val.i89143175 = phi i32 [ %.val.i89145.pre, %.preheader ], [ %.val.i69, %bb.ac ]
  %13 = getelementptr i8, ptr %12, i64 4
  %14 = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %16 = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 4 uses
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %24 = getelementptr inbounds nuw i8, ptr %i.f, i64 152 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %i.f, i64 116 ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 3 uses
  %27 = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %29 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.lr.ph.i91.lr.ph, %bb.bi
  %.val.i89146 = phi i32 [ %.val.i89143175, %.lr.ph.i91.lr.ph ], [ %.val.i89, %bb.bi ] ; 2 uses
  %i.la = phi ptr [ %13, %.lr.ph.i91.lr.ph ], [ %i.wr, %bb.bi ]
  %i.lb = phi ptr [ %12, %.lr.ph.i91.lr.ph ], [ %i.wq, %bb.bi ] ; 2 uses
  %i.lc = getelementptr i8, ptr %i.lb, i64 8
  %.val8.i92 = load ptr, ptr %i.lc, align 8, !tbaa !60 ; 5 uses
  %wide.trip.count.i93 = zext nneg i32 %.val.i89146 to i64 ; 2 uses
  %xtraiter240 = and i64 %wide.trip.count.i93, 3  ; 3 uses
  %i.ld = add i32 %.val.i89146, -1
  %i.le = icmp ult i32 %i.ld, 3
  br i1 %i.le, label %.epil.preheader239, label %.lr.ph.i91.new

.lr.ph.i91.new:                                   ; preds = %.lr.ph.i91
  %unroll_iter245 = and i64 %wide.trip.count.i93, 2147483644
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i91.new
  %indvars.iv.i94 = phi i64 [ 0, %.lr.ph.i91.new ], [ %indvars.iv.next.i96.3, %bb.ad ] ; 5 uses
  %.010.i95 = phi i32 [ 0, %.lr.ph.i91.new ], [ %i.mb, %bb.ad ]
  %niter246 = phi i64 [ 0, %.lr.ph.i91.new ], [ %niter246.next.3, %bb.ad ]
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.val8.i92, i64 %indvars.iv.i94
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !33
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !30
  %i.lj = add nsw i32 %i.li, %.010.i95
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %.val8.i92, i64 %indvars.iv.i94
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !33
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !30
  %i.lp = add nsw i32 %i.lo, %i.lj
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.val8.i92, i64 %indvars.iv.i94
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !33
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !30
  %i.lv = add nsw i32 %i.lu, %i.lp
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %.val8.i92, i64 %indvars.iv.i94
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !33
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !30
  %i.mb = add nsw i32 %i.ma, %i.lv                ; 3 uses
  %indvars.iv.next.i96.3 = add nuw nsw i64 %indvars.iv.i94, 4 ; 2 uses
  %niter246.next.3 = add i64 %niter246, 4         ; 2 uses
  %niter246.ncmp.3 = icmp eq i64 %niter246.next.3, %unroll_iter245
  br i1 %niter246.ncmp.3, label %Vec_VecSizeSize.exit98.unr-lcssa, label %bb.ad, !llvm.loop !87

Vec_VecSizeSize.exit98.unr-lcssa:                 ; preds = %bb.ad
  %lcmp.mod242.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod242.not, label %Vec_VecSizeSize.exit98, label %.epil.preheader239

.epil.preheader239:                               ; preds = %Vec_VecSizeSize.exit98.unr-lcssa, %.lr.ph.i91
  %indvars.iv.i94.epil.init = phi i64 [ 0, %.lr.ph.i91 ], [ %indvars.iv.next.i96.3, %Vec_VecSizeSize.exit98.unr-lcssa ]
  %.010.i95.epil.init = phi i32 [ 0, %.lr.ph.i91 ], [ %i.mb, %Vec_VecSizeSize.exit98.unr-lcssa ]
  %lcmp.mod244 = icmp ne i64 %xtraiter240, 0
  call void @llvm.assume(i1 %lcmp.mod244)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader239
  %indvars.iv.i94.epil = phi i64 [ %indvars.iv.i94.epil.init, %.epil.preheader239 ], [ %indvars.iv.next.i96.epil, %bb.ae ] ; 2 uses
  %.010.i95.epil = phi i32 [ %.010.i95.epil.init, %.epil.preheader239 ], [ %i.mg, %bb.ae ]
  %epil.iter241 = phi i64 [ 0, %.epil.preheader239 ], [ %epil.iter241.next, %bb.ae ]
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %.val8.i92, i64 %indvars.iv.i94.epil
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !33
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !30
  %i.mg = add nsw i32 %i.mf, %.010.i95.epil       ; 2 uses
  %indvars.iv.next.i96.epil = add nuw nsw i64 %indvars.iv.i94.epil, 1
  %epil.iter241.next = add i64 %epil.iter241, 1   ; 2 uses
  %epil.iter241.cmp.not = icmp eq i64 %epil.iter241.next, %xtraiter240
  br i1 %epil.iter241.cmp.not, label %Vec_VecSizeSize.exit98, label %bb.ae, !llvm.loop !92

Vec_VecSizeSize.exit98:                           ; preds = %bb.ae, %Vec_VecSizeSize.exit98.unr-lcssa
  %.lcssa = phi i32 [ %i.mb, %Vec_VecSizeSize.exit98.unr-lcssa ], [ %i.mg, %bb.ae ]
  %i.mh = icmp sgt i32 %.lcssa, 0
  br i1 %i.mh, label %bb.af, label %Vec_VecSizeSize.exit51.thread

bb.af:                                            ; preds = %Vec_VecSizeSize.exit98
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store i32 0, ptr %16, align 8, !tbaa !104
  %.val6178.i = load i32, ptr %i.la, align 4, !tbaa !58
  %i.mi = icmp sgt i32 %.val6178.i, 0
  br i1 %i.mi, label %.lr.ph80.i, label %Sim_SolveTargetsUsingSat.exit

.lr.ph80.i:                                       ; preds = %bb.af, %.critedge.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i, %.critedge.i ], [ 0, %bb.af ] ; 5 uses
  %i.mj = phi ptr [ %i.se, %.critedge.i ], [ %i.lb, %bb.af ]
  %i.mk = getelementptr i8, ptr %i.mj, i64 8
  %.val63.i = load ptr, ptr %i.mk, align 8, !tbaa !60
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %.val63.i, i64 %indvars.iv87.i
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !33
  %i.mn = getelementptr i8, ptr %i.mm, i64 4
  %.val.i99 = load i32, ptr %i.mn, align 4, !tbaa !30 ; 2 uses
  %i.mo = trunc nuw nsw i64 %indvars.iv87.i to i32 ; 3 uses
  %i.mp = icmp sgt i32 %.val.i99, 0
  br i1 %i.mp, label %.lr.ph201, label %.critedge.i

.lr.ph201:                                        ; preds = %.lr.ph80.i
  %i.mq = zext nneg i32 %.val.i99 to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.bc
  %i.mr = trunc nuw i64 %i.mt to i32
  %i.ms = icmp sgt i32 %i.mr, 0
  br i1 %i.ms, label %bb.ah, label %.critedge.i, !llvm.loop !93

bb.ah:                                            ; preds = %.lr.ph201, %bb.ag
  %.in = phi i64 [ %i.mq, %.lr.ph201 ], [ %i.mt, %bb.ag ]
  %i.mt = add nsw i64 %.in, -1                    ; 3 uses
  %i.mu = load ptr, ptr %i.fq, align 8, !tbaa !56
  %i.mv = getelementptr i8, ptr %i.mu, i64 8
  %.val62.i = load ptr, ptr %i.mv, align 8, !tbaa !60
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %.val62.i, i64 %indvars.iv87.i
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !33
  %i.my = getelementptr i8, ptr %i.mx, i64 8
  %.val59.i = load ptr, ptr %i.my, align 8, !tbaa !32
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %.val59.i, i64 %i.mt
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !33 ; 2 uses
  %i.nb = load i32, ptr %16, align 8, !tbaa !104
  %i.nc = add nsw i32 %i.nb, 1
  store i32 %i.nc, ptr %16, align 8, !tbaa !104
  %i.nd = ptrtoint ptr %i.na to i64
  %i.ne = trunc i64 %i.nd to i32                  ; 2 uses
  %i.nf = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.ng = call ptr @Abc_NtkMiterForCofactors(ptr noundef %i.nf, i32 noundef %i.ne, i32 noundef %i.mo, i32 noundef -1) #14 ; 2 uses
  call void @Fraig_ParamsSetDefault(ptr noundef nonnull %7) #14
  store i32 1000000000, ptr %17, align 4, !tbaa !106
  store i32 1, ptr %18, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.nh = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #14
  %i.ni = icmp slt i32 %i.nh, 0
  br i1 %i.ni, label %Abc_Clock.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.nj = load i64, ptr %6, align 8, !tbaa !44
  %.neg70.i = mul i64 %i.nj, -1000000
  %i.nk = load i64, ptr %19, align 8, !tbaa !45
  %.neg.i = sdiv i64 %i.nk, -1000
  %.neg71.i = add i64 %.neg.i, %.neg70.i
  br label %Abc_Clock.exit.i

Abc_Clock.exit.i:                                 ; preds = %bb.ai, %bb.ah
  %.0.i.neg.i = phi i64 [ %.neg71.i, %bb.ai ], [ 1, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.nl = call ptr @Abc_NtkToFraig(ptr noundef %i.ng, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.nm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #14
  %i.nn = icmp slt i32 %i.nm, 0
  br i1 %i.nn, label %Abc_Clock.exit65.i, label %bb.aj

bb.aj:                                            ; preds = %Abc_Clock.exit.i
  %i.no = load i64, ptr %5, align 8, !tbaa !44
  %i.np = mul nsw i64 %i.no, 1000000
  %i.nq = load i64, ptr %20, align 8, !tbaa !45
  %i.nr = sdiv i64 %i.nq, 1000
  %i.ns = add nsw i64 %i.nr, %i.np
  br label %Abc_Clock.exit65.i

Abc_Clock.exit65.i:                               ; preds = %bb.aj, %Abc_Clock.exit.i
  %.0.i64.i = phi i64 [ %i.ns, %bb.aj ], [ -1, %Abc_Clock.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.nt = add i64 %.0.i64.i, %.0.i.neg.i
  %i.nu = load i64, ptr %21, align 8, !tbaa !108
  %i.nv = add nsw i64 %i.nt, %i.nu
  store i64 %i.nv, ptr %21, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.nw = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #14
  %i.nx = icmp slt i32 %i.nw, 0
  br i1 %i.nx, label %Abc_Clock.exit67.i, label %bb.ak

bb.ak:                                            ; preds = %Abc_Clock.exit65.i
  %i.ny = load i64, ptr %4, align 8, !tbaa !44
  %.neg73.i = mul i64 %i.ny, -1000000
  %i.nz = load i64, ptr %22, align 8, !tbaa !45
  %.neg72.i = sdiv i64 %i.nz, -1000
  %.neg74.i = add i64 %.neg72.i, %.neg73.i
  br label %Abc_Clock.exit67.i

Abc_Clock.exit67.i:                               ; preds = %bb.ak, %Abc_Clock.exit65.i
  %.0.i66.neg.i = phi i64 [ %.neg74.i, %bb.ak ], [ 1, %Abc_Clock.exit65.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @Fraig_ManProveMiter(ptr noundef %i.nl) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.oa = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #14
  %i.ob = icmp slt i32 %i.oa, 0
  br i1 %i.ob, label %Abc_Clock.exit69.i, label %bb.al

bb.al:                                            ; preds = %Abc_Clock.exit67.i
  %i.oc = load i64, ptr %3, align 8, !tbaa !44
  %i.od = mul nsw i64 %i.oc, 1000000
  %i.oe = load i64, ptr %23, align 8, !tbaa !45
  %i.of = sdiv i64 %i.oe, 1000
  %i.og = add nsw i64 %i.of, %i.od
  br label %Abc_Clock.exit69.i

Abc_Clock.exit69.i:                               ; preds = %bb.al, %Abc_Clock.exit67.i
  %.0.i68.i = phi i64 [ %i.og, %bb.al ], [ -1, %Abc_Clock.exit67.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.oh = add i64 %.0.i68.i, %.0.i66.neg.i
  %i.oi = load i64, ptr %24, align 8, !tbaa !109
  %i.oj = add nsw i64 %i.oh, %i.oi
  store i64 %i.oj, ptr %24, align 8, !tbaa !109
  %i.ok = call i32 @Fraig_ManCheckMiter(ptr noundef %i.nl) #14
  %.not57.i = icmp eq i32 %i.ok, 1                ; 2 uses
  br i1 %.not57.i, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %Abc_Clock.exit69.i
  %i.ol = load i32, ptr %27, align 8, !tbaa !110
  %i.om = add nsw i32 %i.ol, 1
  store i32 %i.om, ptr %27, align 8, !tbaa !110
  %i.on = load ptr, ptr %i.fq, align 8, !tbaa !56
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !60
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %indvars.iv87.i
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !33 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !30 ; 7 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 6 uses
  %smin.i.i = call i32 @llvm.smin.i32(i32 %i.ot, i32 0) ; 2 uses
  %i.ov = icmp sgt i32 %i.ot, 0
  br i1 %i.ov, label %.lr.ph, label %._crit_edge199

.lr.ph:                                           ; preds = %bb.am
  %i.ow = zext nneg i32 %i.ot to i64
  %i.ox = load ptr, ptr %i.ou, align 8, !tbaa !32
  br label %bb.ao

bb.an:                                            ; preds = %bb.ao
  %i.oy = trunc nuw i64 %i.pb to i32              ; 2 uses
  %i.oz = icmp sgt i32 %i.oy, 0
  br i1 %i.oz, label %bb.ao, label %._crit_edge199, !llvm.loop !0

bb.ao:                                            ; preds = %.lr.ph, %bb.an
  %i.pa = phi i32 [ %i.ot, %.lr.ph ], [ %i.oy, %bb.an ]
  %indvars.iv.i.i107198 = phi i64 [ %i.ow, %.lr.ph ], [ %i.pb, %bb.an ]
  %i.pb = add nsw i64 %indvars.iv.i.i107198, -1   ; 3 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %i.pb
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !33
  %i.pe = icmp eq ptr %i.pd, %i.na
  br i1 %i.pe, label %._crit_edge, label %bb.an, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.ao
  br label %._crit_edge199, !llvm.loop !0

._crit_edge199:                                   ; preds = %bb.an, %._crit_edge, %bb.am
  %.0.in.lcssa.i.i = phi i32 [ %i.pa, %._crit_edge ], [ %smin.i.i, %bb.am ], [ %smin.i.i, %bb.an ] ; 2 uses
  %i.pf = icmp slt i32 %.0.in.lcssa.i.i, %i.ot
  br i1 %i.pf, label %.lr.ph.i.i108, label %Vec_PtrRemove.exit.i

.lr.ph.i.i108:                                    ; preds = %._crit_edge199
  %i.pg = sext i32 %.0.in.lcssa.i.i to i64        ; 4 uses
  %wide.trip.count.i.i = sext i32 %i.ot to i64    ; 3 uses
  %i.ph = sub nsw i64 %wide.trip.count.i.i, %i.pg
  %xtraiter247 = and i64 %i.ph, 3                 ; 2 uses
  %lcmp.mod248.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod248.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i108, %.prol.preheader
  %indvars.iv18.i.i.prol = phi i64 [ %indvars.iv.next19.i.i.prol, %.prol.preheader ], [ %i.pg, %.lr.ph.i.i108 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i108 ]
  %i.pi = load ptr, ptr %i.ou, align 8, !tbaa !32
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.pi, i64 %indvars.iv18.i.i.prol ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !33
  %i.pl = getelementptr i8, ptr %i.pj, i64 -8
  store ptr %i.pk, ptr %i.pl, align 8, !tbaa !33
  %indvars.iv.next19.i.i.prol = add nsw i64 %indvars.iv18.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter247
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !94

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i108
  %indvars.iv18.i.i.unr = phi i64 [ %i.pg, %.lr.ph.i.i108 ], [ %indvars.iv.next19.i.i.prol, %.prol.preheader ]
  %i.pm = sub nsw i64 %i.pg, %wide.trip.count.i.i
  %i.pn = icmp ugt i64 %i.pm, -4
  br i1 %i.pn, label %Vec_PtrRemove.exit.i, label %.lr.ph.i.i108.new

.lr.ph.i.i108.new:                                ; preds = %.prol.loopexit, %.lr.ph.i.i108.new
  %indvars.iv18.i.i = phi i64 [ %indvars.iv.next19.i.i.3, %.lr.ph.i.i108.new ], [ %indvars.iv18.i.i.unr, %.prol.loopexit ] ; 5 uses
  %i.po = load ptr, ptr %i.ou, align 8, !tbaa !32
  %i.pp = getelementptr inbounds [8 x i8], ptr %i.po, i64 %indvars.iv18.i.i ; 2 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !33
  %i.pr = getelementptr i8, ptr %i.pp, i64 -8
  store ptr %i.pq, ptr %i.pr, align 8, !tbaa !33
  %i.ps = load ptr, ptr %i.ou, align 8, !tbaa !32
  %i.pt = getelementptr [8 x i8], ptr %i.ps, i64 %indvars.iv18.i.i ; 2 uses
  %i.pu = getelementptr i8, ptr %i.pt, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !33
  store ptr %i.pv, ptr %i.pt, align 8, !tbaa !33
  %i.pw = load ptr, ptr %i.ou, align 8, !tbaa !32
  %i.px = getelementptr [8 x i8], ptr %i.pw, i64 %indvars.iv18.i.i ; 2 uses
  %i.py = getelementptr i8, ptr %i.px, i64 16
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !33
  %i.qa = getelementptr i8, ptr %i.px, i64 8
  store ptr %i.pz, ptr %i.qa, align 8, !tbaa !33
  %i.qb = load ptr, ptr %i.ou, align 8, !tbaa !32
  %i.qc = getelementptr [8 x i8], ptr %i.qb, i64 %indvars.iv18.i.i ; 2 uses
  %i.qd = getelementptr i8, ptr %i.qc, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !33
  %i.qf = getelementptr i8, ptr %i.qc, i64 16
  store ptr %i.qe, ptr %i.qf, align 8, !tbaa !33
  %indvars.iv.next19.i.i.3 = add nsw i64 %indvars.iv18.i.i, 4 ; 2 uses
  %exitcond.not.i.i109.3 = icmp eq i64 %indvars.iv.next19.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i109.3, label %Vec_PtrRemove.exit.i, label %.lr.ph.i.i108.new, !llvm.loop !1

Vec_PtrRemove.exit.i:                             ; preds = %.prol.loopexit, %.lr.ph.i.i108.new, %._crit_edge199
  %i.qg = add nsw i32 %i.ot, -1
  store i32 %i.qg, ptr %i.os, align 4, !tbaa !30
  br label %bb.bc

bb.ap:                                            ; preds = %Abc_Clock.exit69.i
  %i.qh = load i32, ptr %25, align 4, !tbaa !111
  %i.qi = add nsw i32 %i.qh, 1
  store i32 %i.qi, ptr %25, align 4, !tbaa !111
  %i.qj = call ptr @Fraig_ManReadModel(ptr noundef %i.nl) #14
  %i.qk = call ptr @Sim_ManPatAlloc(ptr noundef nonnull %i.f) #14 ; 4 uses
  store i32 %i.mo, ptr %i.qk, align 8, !tbaa !63
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  store i32 %i.ne, ptr %i.ql, align 4, !tbaa !64
  %i.qm = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.qn = getelementptr i8, ptr %i.qm, i64 56
  %.val58.i = load ptr, ptr %i.qn, align 8, !tbaa !27
  %i.qo = getelementptr i8, ptr %.val58.i, i64 4  ; 2 uses
  %.val58.val76.i = load i32, ptr %i.qo, align 4, !tbaa !30 ; 2 uses
  %i.qp = icmp sgt i32 %.val58.val76.i, 0
  br i1 %i.qp, label %.lr.ph.i104, label %.critedge2.i100

.lr.ph.i104:                                      ; preds = %bb.ap
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %.lr.ph.i104
  %.val58.val90.i = phi i32 [ %.val58.val76.i, %.lr.ph.i104 ], [ %.val58.val.i, %bb.as ]
  %indvars.iv.i105 = phi i64 [ 0, %.lr.ph.i104 ], [ %indvars.iv.next.i106, %bb.as ] ; 4 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %indvars.iv.i105
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !38
  %.not.i = icmp eq i32 %i.qs, 0
  br i1 %.not.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qt = trunc nuw nsw i64 %indvars.iv.i105 to i32
  %i.qu = and i32 %i.qt, 31
  %i.qv = shl nuw i32 1, %i.qu
  %i.qw = load ptr, ptr %i.qq, align 8, !tbaa !65
  %i.qx = lshr i64 %indvars.iv.i105, 5
  %i.qy = and i64 %i.qx, 134217727
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %i.qy ; 2 uses
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !38
  %i.rb = or i32 %i.ra, %i.qv
  store i32 %i.rb, ptr %i.qz, align 4, !tbaa !38
  %.val58.val.pre.i = load i32, ptr %i.qo, align 4, !tbaa !30
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.val58.val.i = phi i32 [ %.val58.val90.i, %bb.aq ], [ %.val58.val.pre.i, %bb.ar ] ; 2 uses
  %indvars.iv.next.i106 = add nuw nsw i64 %indvars.iv.i105, 1 ; 2 uses
  %i.rc = sext i32 %.val58.val.i to i64
  %i.rd = icmp slt i64 %indvars.iv.next.i106, %i.rc
  br i1 %i.rd, label %bb.aq, label %.critedge2.i100, !llvm.loop !95

.critedge2.i100:                                  ; preds = %bb.as, %bb.ap
  %i.re = load ptr, ptr %26, align 8, !tbaa !61   ; 6 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 4 ; 3 uses
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !30 ; 7 uses
  %i.rh = load i32, ptr %i.re, align 8, !tbaa !59
  %i.ri = icmp eq i32 %i.rg, %i.rh
  br i1 %i.ri, label %bb.at, label %Vec_PtrPush.exit.i

bb.at:                                            ; preds = %.critedge2.i100
  %i.rj = icmp slt i32 %i.rg, 16
  br i1 %i.rj, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.rk = getelementptr inbounds nuw i8, ptr %i.re, i64 8 ; 2 uses
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !32 ; 2 uses
  %.not9.i.i.i102 = icmp eq ptr %i.rl, null
  br i1 %.not9.i.i.i102, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.rm = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.rl, i64 noundef 128) #15
  br label %Vec_PtrGrow.exit.i.i103

bb.aw:                                            ; preds = %bb.au
  %i.rn = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #16
  br label %Vec_PtrGrow.exit.i.i103

Vec_PtrGrow.exit.i.i103:                          ; preds = %bb.aw, %bb.av
  %i.ro = phi ptr [ %i.rm, %bb.av ], [ %i.rn, %bb.aw ]
  store ptr %i.ro, ptr %i.rk, align 8, !tbaa !32
  br label %Vec_PtrGrow.exit12.sink.split.i.i

bb.ax:                                            ; preds = %bb.at
  %i.rp = icmp samesign ult i32 %i.rg, 1073741823
  %i.rq = shl nuw nsw i32 %i.rg, 1
  %spec.select.i.i = select i1 %i.rp, i32 %i.rq, i32 2147483647 ; 3 uses
  %.not.i10.i.i = icmp samesign ult i32 %i.rg, %spec.select.i.i
  br i1 %.not.i10.i.i, label %bb.ay, label %Vec_PtrPush.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.rr = getelementptr inbounds nuw i8, ptr %i.re, i64 8 ; 2 uses
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !32 ; 2 uses
  %.not9.i11.i.i = icmp eq ptr %i.rs, null
  %i.rt = zext nneg i32 %spec.select.i.i to i64
  %i.ru = shl nuw nsw i64 %i.rt, 3                ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.rv = call ptr @realloc(ptr noundef nonnull %i.rs, i64 noundef %i.ru) #15
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.rw = call noalias ptr @malloc(i64 noundef %i.ru) #16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.rx = phi ptr [ %i.rv, %bb.az ], [ %i.rw, %bb.ba ]
  store ptr %i.rx, ptr %i.rr, align 8, !tbaa !32
  br label %Vec_PtrGrow.exit12.sink.split.i.i

Vec_PtrGrow.exit12.sink.split.i.i:                ; preds = %bb.bb, %Vec_PtrGrow.exit.i.i103
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.bb ], [ 16, %Vec_PtrGrow.exit.i.i103 ]
  store i32 %spec.select.sink.i.i, ptr %i.re, align 8, !tbaa !59
  %.pre.i101 = load i32, ptr %i.rf, align 4, !tbaa !30
  br label %Vec_PtrPush.exit.i

Vec_PtrPush.exit.i:                               ; preds = %Vec_PtrGrow.exit12.sink.split.i.i, %bb.ax, %.critedge2.i100
  %i.ry = phi i32 [ %i.rg, %.critedge2.i100 ], [ %i.rg, %bb.ax ], [ %.pre.i101, %Vec_PtrGrow.exit12.sink.split.i.i ] ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !32
  %i.sb = add nsw i32 %i.ry, 1
  store i32 %i.sb, ptr %i.rf, align 4, !tbaa !30
  %i.sc = sext i32 %i.ry to i64
  %i.sd = getelementptr inbounds [8 x i8], ptr %i.sa, i64 %i.sc
  store ptr %i.qk, ptr %i.sd, align 8, !tbaa !33
  br label %bb.bc

bb.bc:                                            ; preds = %Vec_PtrPush.exit.i, %Vec_PtrRemove.exit.i
  call void @Fraig_ManFree(ptr noundef %i.nl) #14
  call void @Abc_NtkDelete(ptr noundef %i.ng) #14
  store i32 %i.mo, ptr %28, align 8, !tbaa !66
  br i1 %.not57.i, label %bb.ag, label %Sim_SolveTargetsUsingSat.exit, !llvm.loop !93

.critedge.i:                                      ; preds = %bb.ag, %.lr.ph80.i
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %i.se = load ptr, ptr %i.fq, align 8, !tbaa !56 ; 2 uses
  %i.sf = getelementptr i8, ptr %i.se, i64 4
  %.val61.i = load i32, ptr %i.sf, align 4, !tbaa !58
  %i.sg = sext i32 %.val61.i to i64
  %i.sh = icmp slt i64 %indvars.iv.next88.i, %i.sg
  br i1 %i.sh, label %.lr.ph80.i, label %Sim_SolveTargetsUsingSat.exit, !llvm.loop !96

Sim_SolveTargetsUsingSat.exit:                    ; preds = %.critedge.i, %bb.bc, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.bd

bb.bd:                                            ; preds = %.critedge.i111, %Sim_SolveTargetsUsingSat.exit
  %.077.i = phi i32 [ 0, %Sim_SolveTargetsUsingSat.exit ], [ %i.sv, %.critedge.i111 ] ; 5 uses
  %i.si = load ptr, ptr %26, align 8, !tbaa !61   ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 4 ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !30 ; 2 uses
  %i.sl = icmp sgt i32 %i.sk, 0
  br i1 %i.sl, label %bb.be, label %Sim_UtilAssignFromFifo.exit

bb.be:                                            ; preds = %bb.bd
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !32
  %i.so = add nsw i32 %i.sk, -1                   ; 2 uses
  store i32 %i.so, ptr %i.sj, align 4, !tbaa !30
  %i.sp = zext nneg i32 %i.so to i64
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.sp
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !33 ; 2 uses
  %i.ss = load i32, ptr %15, align 4, !tbaa !103
  %i.st = add i32 %i.ss, %.077.i
  %i.su = load i32, ptr %14, align 8, !tbaa !50
  %i.sv = call i32 @llvm.smin.i32(i32 %i.st, i32 %i.su) ; 4 uses
  %i.sw = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.sx = getelementptr i8, ptr %i.sw, i64 56
  %.val.i110 = load ptr, ptr %i.sx, align 8, !tbaa !27 ; 2 uses
  %i.sy = getelementptr i8, ptr %.val.i110, i64 4 ; 3 uses
  %.val.val87.i = load i32, ptr %i.sy, align 4, !tbaa !30
  %i.sz = icmp sgt i32 %.val.val87.i, 0
  br i1 %i.sz, label %.lr.ph89.i, label %.critedge.i111

.lr.ph89.i:                                       ; preds = %bb.be
  %i.ta = getelementptr i8, ptr %.val.i110, i64 8
  %.val81.val.i = load ptr, ptr %i.ta, align 8, !tbaa !32 ; 2 uses
  %i.tb = load ptr, ptr %29, align 8, !tbaa !51
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !32 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !65
  %i.tg = icmp slt i32 %.077.i, %i.sv
  %.fr99.i = freeze i1 %i.tg
  %i.th = sext i32 %.077.i to i64                 ; 3 uses
  br i1 %.fr99.i, label %.lr.ph89.split.us.preheader.i, label %.lr.ph89.split.split.i

.lr.ph89.split.us.preheader.i:                    ; preds = %.lr.ph89.i
  %i.ti = shl nsw i64 %i.th, 2
  %i.tj = add i32 %.077.i, 1
  %smax111.i = call i32 @llvm.smax.i32(i32 %i.sv, i32 %i.tj)
  %i.tk = xor i32 %.077.i, -1
  %i.tl = add i32 %smax111.i, %i.tk
  %i.tm = zext i32 %i.tl to i64
  %i.tn = shl nuw nsw i64 %i.tm, 2
  %i.to = add nuw nsw i64 %i.tn, 4                ; 2 uses
  br label %.lr.ph89.split.us.i

.lr.ph89.split.us.i:                              ; preds = %.loopexit83.us.i, %.lr.ph89.split.us.preheader.i
  %indvars.iv120.i = phi i64 [ 0, %.lr.ph89.split.us.preheader.i ], [ %indvars.iv.next121.i, %.loopexit83.us.i ] ; 4 uses
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %.val81.val.i, i64 %indvars.iv120.i
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !33
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !36
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [8 x i8], ptr %i.td, i64 %i.tt
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !33 ; 2 uses
  %i.tw = trunc nuw nsw i64 %indvars.iv120.i to i32
  %i.tx = lshr i64 %indvars.iv120.i, 5
  %i.ty = and i64 %i.tx, 134217727                ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %i.ty
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !38
  %i.ub = and i32 %i.tw, 31
  %i.uc = shl nuw i32 1, %i.ub                    ; 2 uses
  %i.ud = and i32 %i.ua, %i.uc
  %.not.us.i = icmp eq i32 %i.ud, 0
  %scevgep115.i = getelementptr i8, ptr %i.tv, i64 %i.ti ; 2 uses
  br i1 %.not.us.i, label %.preheader.us.preheader.i, label %.lr.ph.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.lr.ph89.split.us.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep115.i, i8 0, i64 %i.to, i1 false), !tbaa !38
  br label %.loopexit83.us.i

.loopexit83.us.i:                                 ; preds = %.lr.ph.us.preheader.i, %.preheader.us.preheader.i
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.th
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.ty ; 2 uses
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !38
  %i.uh = xor i32 %i.ug, %i.uc
  store i32 %i.uh, ptr %i.uf, align 4, !tbaa !38
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1 ; 2 uses
  %.val.val.us.i = load i32, ptr %i.sy, align 4, !tbaa !30
  %i.ui = sext i32 %.val.val.us.i to i64
  %i.uj = icmp slt i64 %indvars.iv.next121.i, %i.ui
  br i1 %i.uj, label %.lr.ph89.split.us.i, label %.critedge.i111, !llvm.loop !97

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph89.split.us.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep115.i, i8 -1, i64 %i.to, i1 false), !tbaa !38
  br label %.loopexit83.us.i

.lr.ph89.split.split.i:                           ; preds = %.lr.ph89.i, %.lr.ph89.split.split.i
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i113, %.lr.ph89.split.split.i ], [ 0, %.lr.ph89.i ] ; 4 uses
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %.val81.val.i, i64 %indvars.iv.i112
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !33
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %i.un = load i32, ptr %i.um, align 8, !tbaa !36
  %i.uo = sext i32 %i.un to i64
  %i.up = getelementptr inbounds [8 x i8], ptr %i.td, i64 %i.uo
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !33
  %i.ur = trunc nuw nsw i64 %indvars.iv.i112 to i32
  %i.us = lshr i64 %indvars.iv.i112, 5
  %i.ut = and i64 %i.us, 134217727
  %i.uu = and i32 %i.ur, 31
  %i.uv = shl nuw i32 1, %i.uu
  %i.uw = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.th
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.ut ; 2 uses
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !38
  %i.uz = xor i32 %i.uy, %i.uv
  store i32 %i.uz, ptr %i.ux, align 4, !tbaa !38
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %.val.val.i114 = load i32, ptr %i.sy, align 4, !tbaa !30
  %i.va = sext i32 %.val.val.i114 to i64
  %i.vb = icmp slt i64 %indvars.iv.next.i113, %i.va
  br i1 %i.vb, label %.lr.ph89.split.split.i, label %.critedge.i111, !llvm.loop !97

.critedge.i111:                                   ; preds = %.lr.ph89.split.split.i, %.loopexit83.us.i, %bb.be
  call void @Sim_ManPatFree(ptr noundef nonnull %i.f, ptr noundef %i.sr) #14
  %i.vc = load i32, ptr %14, align 8, !tbaa !50
  %i.vd = icmp eq i32 %i.sv, %i.vc
  br i1 %i.vd, label %Sim_UtilAssignFromFifo.exit, label %bb.bd, !llvm.loop !98

Sim_UtilAssignFromFifo.exit:                      ; preds = %bb.bd, %.critedge.i111
  %i.ve = call fastcc i32 @Sim_ComputeSuppRound(ptr noundef nonnull %i.f, i32 noundef 1)
  br i1 %.not, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %Sim_UtilAssignFromFifo.exit
  %i.vf = load ptr, ptr %i.fq, align 8, !tbaa !56 ; 2 uses
  %i.vg = getelementptr i8, ptr %i.vf, i64 4
  %.val.i115 = load i32, ptr %i.vg, align 4, !tbaa !58 ; 3 uses
  %i.vh = icmp sgt i32 %.val.i115, 0
  br i1 %i.vh, label %.lr.ph.i118, label %Vec_VecSizeSize.exit125

.lr.ph.i118:                                      ; preds = %bb.bf
  %i.vi = getelementptr i8, ptr %i.vf, i64 8
  %.val8.i119 = load ptr, ptr %i.vi, align 8, !tbaa !60 ; 5 uses
  %wide.trip.count.i120 = zext nneg i32 %.val.i115 to i64 ; 2 uses
  %xtraiter250 = and i64 %wide.trip.count.i120, 3 ; 3 uses
  %i.vj = icmp ult i32 %.val.i115, 4
  br i1 %i.vj, label %.epil.preheader249, label %.lr.ph.i118.new

.lr.ph.i118.new:                                  ; preds = %.lr.ph.i118
  %unroll_iter255 = and i64 %wide.trip.count.i120, 2147483644
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.lr.ph.i118.new
  %indvars.iv.i121 = phi i64 [ 0, %.lr.ph.i118.new ], [ %indvars.iv.next.i123.3, %bb.bg ] ; 5 uses
  %.010.i122 = phi i32 [ 0, %.lr.ph.i118.new ], [ %i.wg, %bb.bg ]
  %niter256 = phi i64 [ 0, %.lr.ph.i118.new ], [ %niter256.next.3, %bb.bg ]
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %.val8.i119, i64 %indvars.iv.i121
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !33
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 4
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !30
  %i.vo = add nsw i32 %i.vn, %.010.i122
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %.val8.i119, i64 %indvars.iv.i121
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !33
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 4
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !30
  %i.vu = add nsw i32 %i.vt, %i.vo
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %.val8.i119, i64 %indvars.iv.i121
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !33
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 4
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !30
  %i.wa = add nsw i32 %i.vz, %i.vu
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %.val8.i119, i64 %indvars.iv.i121
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 24
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !33
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 4
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !30
  %i.wg = add nsw i32 %i.wf, %i.wa                ; 3 uses
  %indvars.iv.next.i123.3 = add nuw nsw i64 %indvars.iv.i121, 4 ; 2 uses
  %niter256.next.3 = add i64 %niter256, 4         ; 2 uses
  %niter256.ncmp.3 = icmp eq i64 %niter256.next.3, %unroll_iter255
  br i1 %niter256.ncmp.3, label %Vec_VecSizeSize.exit125.loopexit.unr-lcssa, label %bb.bg, !llvm.loop !87

Vec_VecSizeSize.exit125.loopexit.unr-lcssa:       ; preds = %bb.bg
  %lcmp.mod252.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod252.not, label %Vec_VecSizeSize.exit125, label %.epil.preheader249

.epil.preheader249:                               ; preds = %Vec_VecSizeSize.exit125.loopexit.unr-lcssa, %.lr.ph.i118
  %indvars.iv.i121.epil.init = phi i64 [ 0, %.lr.ph.i118 ], [ %indvars.iv.next.i123.3, %Vec_VecSizeSize.exit125.loopexit.unr-lcssa ]
  %.010.i122.epil.init = phi i32 [ 0, %.lr.ph.i118 ], [ %i.wg, %Vec_VecSizeSize.exit125.loopexit.unr-lcssa ]
  %lcmp.mod254 = icmp ne i64 %xtraiter250, 0
  call void @llvm.assume(i1 %lcmp.mod254)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.epil.preheader249
  %indvars.iv.i121.epil = phi i64 [ %indvars.iv.i121.epil.init, %.epil.preheader249 ], [ %indvars.iv.next.i123.epil, %bb.bh ] ; 2 uses
  %.010.i122.epil = phi i32 [ %.010.i122.epil.init, %.epil.preheader249 ], [ %i.wl, %bb.bh ]
  %epil.iter251 = phi i64 [ 0, %.epil.preheader249 ], [ %epil.iter251.next, %bb.bh ]
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %.val8.i119, i64 %indvars.iv.i121.epil
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !33
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !30
  %i.wl = add nsw i32 %i.wk, %.010.i122.epil      ; 2 uses
  %indvars.iv.next.i123.epil = add nuw nsw i64 %indvars.iv.i121.epil, 1
  %epil.iter251.next = add i64 %epil.iter251, 1   ; 2 uses
  %epil.iter251.cmp.not = icmp eq i64 %epil.iter251.next, %xtraiter250
  br i1 %epil.iter251.cmp.not, label %Vec_VecSizeSize.exit125, label %bb.bh, !llvm.loop !99

Vec_VecSizeSize.exit125:                          ; preds = %Vec_VecSizeSize.exit125.loopexit.unr-lcssa, %bb.bh, %bb.bf
  %.0.lcssa.i117 = phi i32 [ 0, %bb.bf ], [ %i.wg, %Vec_VecSizeSize.exit125.loopexit.unr-lcssa ], [ %i.wl, %bb.bh ]
  %i.wm = load ptr, ptr %26, align 8, !tbaa !61
  %i.wn = getelementptr i8, ptr %i.wm, i64 4
  %.val = load i32, ptr %i.wn, align 4, !tbaa !30
  %i.wo = load i32, ptr %16, align 8, !tbaa !104
  %i.wp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.0.lcssa.i117, i32 noundef %i.ve, i32 noundef %.val, i32 noundef %i.wo) ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %Vec_VecSizeSize.exit125, %Sim_UtilAssignFromFifo.exit
  %i.wq = load ptr, ptr %i.fq, align 8, !tbaa !56 ; 2 uses
  %i.wr = getelementptr i8, ptr %i.wq, i64 4      ; 2 uses
  %.val.i89 = load i32, ptr %i.wr, align 4, !tbaa !58 ; 2 uses
  %i.ws = icmp sgt i32 %.val.i89, 0
  br i1 %i.ws, label %.lr.ph.i91, label %Vec_VecSizeSize.exit51.thread, !llvm.loop !100

Vec_VecSizeSize.exit51.thread:                    ; preds = %Vec_VecSizeSize.exit98, %bb.bi, %.preheader, %Sim_UtilAssignRandom.exit68, %bb.x, %Vec_VecSizeSize.exit78, %Vec_VecSizeSize.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.wt = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #14
  %i.wu = icmp slt i32 %i.wt, 0
  br i1 %i.wu, label %Abc_Clock.exit127, label %bb.bj

bb.bj:                                            ; preds = %Vec_VecSizeSize.exit51.thread
  %i.wv = load i64, ptr %2, align 8, !tbaa !44
  %i.ww = mul nsw i64 %i.wv, 1000000
  %i.wx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !45
  %i.wz = sdiv i64 %i.wy, 1000
  %i.xa = add nsw i64 %i.wz, %i.ww
  br label %Abc_Clock.exit127

Abc_Clock.exit127:                                ; preds = %Vec_VecSizeSize.exit51.thread, %bb.bj
  %.0.i126 = phi i64 [ %i.xa, %bb.bj ], [ -1, %Vec_VecSizeSize.exit51.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.xb = add i64 %.0.i126, %.0.i.neg
  %i.xc = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store i64 %i.xb, ptr %i.xc, align 8, !tbaa !112
  %i.xd = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !53
  call void @Sim_ManStop(ptr noundef nonnull %i.f) #14
  ret ptr %i.xe
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #3

declare ptr @Sim_ManStart(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Sim_ComputeSuppRound(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #14
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !44
  %.neg20 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  %.neg = sdiv i64 %i.e, -1000
  %.neg21 = add i64 %.neg, %.neg20
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg21, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @Sim_UtilSimulate(ptr noundef %0, i32 noundef 0) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.f = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #14
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %Abc_Clock.exit19, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.h = load i64, ptr %2, align 8, !tbaa !44
  %i.i = mul nsw i64 %i.h, 1000000
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !45
  %i.l = sdiv i64 %i.k, 1000
  %i.m = add nsw i64 %i.l, %i.i
  br label %Abc_Clock.exit19

Abc_Clock.exit19:                                 ; preds = %Abc_Clock.exit, %bb.c
  %.0.i18 = phi i64 [ %i.m, %bb.c ], [ -1, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.n = add i64 %.0.i18, %.0.i.neg
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !67
  %i.q = add nsw i64 %i.n, %i.p
  store i64 %i.q, ptr %i.o, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load i32, ptr %i.r, align 8, !tbaa !66   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !114  ; 2 uses
  %i.v = icmp slt i32 %i.s, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Abc_Clock.exit19
  %.not = icmp eq i32 %1, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  br i1 %.not, label %.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.x = sext i32 %i.s to i64
  br label %.lr.ph.split

.split.us:                                        ; preds = %.lr.ph, %.split.us
  %.024.us = phi i32 [ %i.z, %.split.us ], [ 0, %.lr.ph ]
  %.01522.us = phi i32 [ %i.aa, %.split.us ], [ %i.s, %.lr.ph ] ; 2 uses
  %i.y = call fastcc i32 @Sim_ComputeSuppRoundNode(ptr noundef nonnull %0, i32 noundef %.01522.us, i32 noundef 0)
  %i.z = add nsw i32 %i.y, %.024.us               ; 2 uses
  %i.aa = add nsw i32 %.01522.us, 1               ; 2 uses
  %i.ab = load i32, ptr %i.t, align 8, !tbaa !114
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.split.us, label %._crit_edge, !llvm.loop !113

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.d
  %i.ad = phi i32 [ %i.u, %.lr.ph.split.preheader ], [ %i.ap, %bb.d ]
  %indvars.iv = phi i64 [ %i.x, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.024 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %.1, %bb.d ] ; 2 uses
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !56
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !60
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !30
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.d, label %.split16

.split16:                                         ; preds = %.lr.ph.split
  %i.am = trunc nsw i64 %indvars.iv to i32
  %i.an = call fastcc i32 @Sim_ComputeSuppRoundNode(ptr noundef nonnull %0, i32 noundef %i.am, i32 noundef 1)
  %i.ao = add nsw i32 %i.an, %.024
  %.pre = load i32, ptr %i.t, align 8, !tbaa !114
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %.split16
  %i.ap = phi i32 [ %i.ad, %.lr.ph.split ], [ %.pre, %.split16 ] ; 2 uses
  %.1 = phi i32 [ %.024, %.lr.ph.split ], [ %i.ao, %.split16 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %.lr.ph.split, label %._crit_edge, !llvm.loop !113

._crit_edge:                                      ; preds = %bb.d, %.split.us, %Abc_Clock.exit19
  %.0.lcssa = phi i32 [ 0, %Abc_Clock.exit19 ], [ %i.z, %.split.us ], [ %.1, %bb.d ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @Sim_ManStop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Sim_NtkSimTwoPats_rec(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc i32 @Abc_NodeIsTravIdCurrent(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !115
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = trunc i64 %i.d to i32
  br label %common.ret33

bb.b:                                             ; preds = %bb.a
  %.val21 = load ptr, ptr %0, align 8, !tbaa !68  ; 8 uses
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val22 = load i32, ptr %i.f, align 8, !tbaa !36 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val21, i64 216
  %i.h = load i32, ptr %i.g, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %.val21, i64 224 ; 2 uses
  %i.j = add nsw i32 %.val22, 1                   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val21, i64 228 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !54   ; 4 uses
  %.not.i.not.i.i.i = icmp slt i32 %.val22, %i.l
  br i1 %.not.i.not.i.i.i, label %Abc_NodeSetTravIdCurrent.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.i, align 8, !tbaa !70   ; 4 uses
  %i.n = shl nsw i32 %i.m, 1                      ; 2 uses
  %.not.i.i.i = icmp slt i32 %.val22, %i.n
  %.not.i.i.not.i.i.i = icmp sgt i32 %i.m, %.val22 ; 2 uses
  br i1 %.not.i.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.val21, i64 232 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !55   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.p, null
  %i.q = sext i32 %i.j to i64
  %i.r = shl nsw i64 %i.q, 2                      ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.r) #15
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.r) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi ptr [ %i.s, %bb.f ], [ %i.t, %bb.g ]
  store ptr %i.u, ptr %i.o, align 8, !tbaa !55
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.i:                                             ; preds = %bb.c
end_hunk_1
