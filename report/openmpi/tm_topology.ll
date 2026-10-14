Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/tm_topology?download=true
inline.NumInlined: 24
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@tm_optimize_topology:bb.a

bb.n:                                             ; preds = %.lr.ph.i22
  %putchar8.i26 = call i32 @putchar(i32 58)       ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.next.i25, %i.ca
  br i1 %i.ch, label %.lr.ph.i22, label %tm_display_arity.exit27, !llvm.loop !3

tm_display_arity.exit27:                          ; preds = %bb.o, %bb.l
  %putchar.i21 = call i32 @putchar(i32 10)        ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %tm_display_arity.exit27, %topology_constraints_cpy.exit
  call void @free(ptr noundef %i.bh) #23
  call void @free(ptr noundef %i.ao) #23
  %i.ci = load ptr, ptr %0, align 8, !tbaa !81    ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !47
  call void @free(ptr noundef %i.ck) #23
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !48
  call void @free(ptr noundef %i.cm) #23
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !39
  call void @free(ptr noundef %i.co) #23
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !41
  call void @free(ptr noundef %i.cq) #23
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !42
  call void @free(ptr noundef %i.cr) #23
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !44
  call void @free(ptr noundef %i.ct) #23
  call void @free(ptr noundef %i.ci) #23
  store ptr %i.bj, ptr %0, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @optimize_arity(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull %2, i32 noundef %3) unnamed_addr #16 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = icmp slt i32 %3, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !59     ; 15 uses
  %i.e = zext nneg i32 %3 to i64                  ; 17 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13   ; 6 uses
  %i.h = srem i32 %i.g, 3
  %i.i = icmp eq i32 %i.h, 0
  %i.j = icmp sgt i32 %i.g, 3
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %2, align 4, !tbaa !13
  %i.l = add nsw i32 %i.k, 1                      ; 2 uses
  store i32 %i.l, ptr %2, align 4, !tbaa !13
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #27 ; 9 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !59
  %i.p = load i32, ptr %2, align 4, !tbaa !13
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #27 ; 10 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 2 uses
  store ptr %i.s, ptr %i.b, align 8, !tbaa !60
  %.not109 = icmp eq i32 %3, 0
  %.pre122 = load ptr, ptr %1, align 8, !tbaa !60 ; 8 uses
  %.pre122151 = ptrtoaddr ptr %.pre122 to i64     ; 2 uses
  br i1 %.not109, label %._crit_edge104, label %.lr.ph103.preheader

.lr.ph103.preheader:                              ; preds = %bb.c
  %min.iters.check154 = icmp ult i32 %3, 6
  %i.u = sub i64 %.pre122151, %i.t
  %diff.check152 = icmp ugt i64 %i.u, -32
  %or.cond186 = select i1 %min.iters.check154, i1 true, i1 %diff.check152
  br i1 %or.cond186, label %.lr.ph103.preheader191, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph103.preheader
  %n.vec156 = and i64 %i.e, 2147483644            ; 3 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next163, %vector.body157 ] ; 5 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index158 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %wide.load159 = load <2 x i32>, ptr %i.v, align 4, !tbaa !13
  %wide.load160 = load <2 x i32>, ptr %i.w, align 4, !tbaa !13
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index158 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store <2 x i32> %wide.load159, ptr %i.x, align 4, !tbaa !13
  store <2 x i32> %wide.load160, ptr %i.y, align 4, !tbaa !13
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %index158 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load161 = load <2 x double>, ptr %i.z, align 8, !tbaa !58
  %wide.load162 = load <2 x double>, ptr %i.aa, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index158 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x double> %wide.load161, ptr %i.ab, align 8, !tbaa !58
  store <2 x double> %wide.load162, ptr %i.ac, align 8, !tbaa !58
  %index.next163 = add nuw i64 %index158, 4       ; 2 uses
  %i.ad = icmp eq i64 %index.next163, %n.vec156
  br i1 %i.ad, label %middle.block164, label %vector.body157, !llvm.loop !82

middle.block164:                                  ; preds = %vector.body157
  %cmp.n165 = icmp eq i64 %n.vec156, %i.e
  br i1 %cmp.n165, label %._crit_edge104, label %.lr.ph103.preheader191

.lr.ph103.preheader191:                           ; preds = %.lr.ph103.preheader, %middle.block164
  %indvars.iv114.ph = phi i64 [ 0, %.lr.ph103.preheader ], [ %n.vec156, %middle.block164 ] ; 7 uses
  %xtraiter194 = and i64 %i.e, 1
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.lr.ph103.prol.loopexit, label %.lr.ph103.prol

.lr.ph103.prol:                                   ; preds = %.lr.ph103.preheader191
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv114.ph
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !13
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv114.ph
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !13
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %indvars.iv114.ph
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv114.ph
  store double %i.ai, ptr %i.aj, align 8, !tbaa !58
  %indvars.iv.next115.prol = or disjoint i64 %indvars.iv114.ph, 1
  br label %.lr.ph103.prol.loopexit

.lr.ph103.prol.loopexit:                          ; preds = %.lr.ph103.prol, %.lr.ph103.preheader191
  %indvars.iv114.unr = phi i64 [ %indvars.iv114.ph, %.lr.ph103.preheader191 ], [ %indvars.iv.next115.prol, %.lr.ph103.prol ]
  %i.ak = add nsw i64 %i.e, -1
  %i.al = icmp eq i64 %indvars.iv114.ph, %i.ak
  br i1 %i.al, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.prol.loopexit, %.lr.ph103
  %indvars.iv114 = phi i64 [ %indvars.iv.next115.1, %.lr.ph103 ], [ %indvars.iv114.unr, %.lr.ph103.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv114
  %i.an = load i32, ptr %i.am, align 4, !tbaa !13
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv114
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !13
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %indvars.iv114
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv114
  store double %i.aq, ptr %i.ar, align 8, !tbaa !58
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next115
  %i.at = load i32, ptr %i.as, align 4, !tbaa !13
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next115
  store i32 %i.at, ptr %i.au, align 4, !tbaa !13
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %indvars.iv.next115
  %i.aw = load double, ptr %i.av, align 8, !tbaa !58
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next115
  store double %i.aw, ptr %i.ax, align 8, !tbaa !58
  %indvars.iv.next115.1 = add nuw nsw i64 %indvars.iv114, 2 ; 2 uses
  %exitcond118.not.1 = icmp eq i64 %indvars.iv.next115.1, %i.e
  br i1 %exitcond118.not.1, label %._crit_edge104, label %.lr.ph103, !llvm.loop !83

._crit_edge104:                                   ; preds = %.lr.ph103.prol.loopexit, %.lr.ph103, %middle.block164, %bb.c
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.e
  store i32 3, ptr %i.ay, align 4, !tbaa !13
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %i.e
  %i.ba = load double, ptr %i.az, align 8, !tbaa !58 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.e
  store double %i.ba, ptr %i.bb, align 8, !tbaa !58
  %i.bc = udiv i32 %i.g, 3
  %i.bd = add nuw nsw i32 %3, 1                   ; 2 uses
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.be ; 2 uses
  store i32 %i.bc, ptr %i.bf, align 4, !tbaa !13
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.be
  store double %i.ba, ptr %i.bg, align 8, !tbaa !58
  %i.bh = add nuw nsw i32 %3, 2                   ; 2 uses
  %i.bi = load i32, ptr %2, align 4, !tbaa !13    ; 4 uses
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph107.preheader, label %._crit_edge108

.lr.ph107.preheader:                              ; preds = %._crit_edge104
  %i.bk = zext nneg i32 %i.bh to i64              ; 5 uses
  %i.bl = add i32 %i.bi, -3
  %i.bm = sub i32 %i.bl, %3                       ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check171 = icmp ugt i32 %i.bm, 16
  %i.bp = add i32 %i.bi, -2
  %.not185 = icmp ugt i32 %i.bp, %3
  %or.cond187 = and i1 %min.iters.check171, %.not185
  br i1 %or.cond187, label %vector.memcheck168, label %.lr.ph107.preheader190

vector.memcheck168:                               ; preds = %.lr.ph107.preheader
  %i.bq = shl nuw nsw i64 %i.bk, 3
  %4 = add i64 %i.bq, %i.t
  %i.br = add nuw i32 %3, 1
  %i.bs = zext i32 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = add i64 %i.bt, %.pre122151
  %i.bv = sub i64 %i.bu, %4
  %diff.check169 = icmp ugt i64 %i.bv, -32
  br i1 %diff.check169, label %.lr.ph107.preheader190, label %vector.ph172

vector.ph172:                                     ; preds = %vector.memcheck168
  %n.vec173 = and i64 %i.bo, 8589934588           ; 3 uses
  %i.bw = add nuw nsw i64 %n.vec173, %i.bk
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next180, %vector.body174 ] ; 2 uses
  %i.bx = add nuw i64 %index175, %i.bk            ; 3 uses
  %i.by = add nuw i64 %i.bx, 4294967295
  %i.bz = and i64 %i.by, 4294967295               ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %wide.load176 = load <2 x i32>, ptr %i.ca, align 4, !tbaa !13
  %wide.load177 = load <2 x i32>, ptr %i.cb, align 4, !tbaa !13
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bx ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store <2 x i32> %wide.load176, ptr %i.cc, align 4, !tbaa !13
  store <2 x i32> %wide.load177, ptr %i.cd, align 4, !tbaa !13
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %i.bz ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load178 = load <2 x double>, ptr %i.ce, align 8, !tbaa !58
  %wide.load179 = load <2 x double>, ptr %i.cf, align 8, !tbaa !58
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bx ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x double> %wide.load178, ptr %i.cg, align 8, !tbaa !58
  store <2 x double> %wide.load179, ptr %i.ch, align 8, !tbaa !58
  %index.next180 = add nuw i64 %index175, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.ci, label %middle.block181, label %vector.body174, !llvm.loop !84

middle.block181:                                  ; preds = %vector.body174
  %cmp.n182 = icmp eq i64 %i.bo, %n.vec173
  br i1 %cmp.n182, label %._crit_edge108, label %.lr.ph107.preheader190

.lr.ph107.preheader190:                           ; preds = %vector.memcheck168, %.lr.ph107.preheader, %middle.block181
  %indvars.iv119.ph = phi i64 [ %i.bk, %vector.memcheck168 ], [ %i.bk, %.lr.ph107.preheader ], [ %i.bw, %middle.block181 ]
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader190, %.lr.ph107
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %.lr.ph107 ], [ %indvars.iv119.ph, %.lr.ph107.preheader190 ] ; 4 uses
  %i.cj = add nuw i64 %indvars.iv119, 4294967295
  %i.ck = and i64 %i.cj, 4294967295               ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !13
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv119
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !13
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %i.ck
  %i.cp = load double, ptr %i.co, align 8, !tbaa !58
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv119
  store double %i.cp, ptr %i.cq, align 8, !tbaa !58
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.cr = trunc nuw i64 %indvars.iv.next120 to i32
  %i.cs = icmp sgt i32 %i.bi, %i.cr
  br i1 %i.cs, label %.lr.ph107, label %._crit_edge108, !llvm.loop !85

._crit_edge108:                                   ; preds = %.lr.ph107, %middle.block181, %._crit_edge104
  tail call void @free(ptr noundef nonnull %i.d) #23
  %i.ct = load ptr, ptr %1, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.ct) #23
  %i.cu = load i32, ptr %i.bf, align 4, !tbaa !13
  %i.cv = icmp eq i32 %i.cu, 3
  %. = select i1 %i.cv, i32 %3, i32 %i.bd
  call fastcc void @optimize_arity(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %2, i32 noundef %.)
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !59
  store ptr %i.cw, ptr %0, align 8, !tbaa !59
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !60
  store ptr %i.cx, ptr %1, align 8, !tbaa !60
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.cy = and i32 %i.g, 1
  %i.cz = icmp eq i32 %i.cy, 0
  %i.da = icmp sgt i32 %i.g, 2
  %or.cond3 = and i1 %i.da, %i.cz
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.db = load i32, ptr %2, align 4, !tbaa !13
  %i.dc = add nsw i32 %i.db, 1                    ; 2 uses
  store i32 %i.dc, ptr %2, align 4, !tbaa !13
  %i.dd = sext i32 %i.dc to i64
  %i.de = shl nsw i64 %i.dd, 2
  %i.df = tail call noalias ptr @malloc(i64 noundef %i.de) #27 ; 9 uses
  store ptr %i.df, ptr %i.a, align 8, !tbaa !59
  %i.dg = load i32, ptr %2, align 4, !tbaa !13
  %i.dh = sext i32 %i.dg to i64
  %i.di = shl nsw i64 %i.dh, 3
  %i.dj = tail call noalias ptr @malloc(i64 noundef %i.di) #27 ; 10 uses
  %i.dk = ptrtoaddr ptr %i.dj to i64              ; 2 uses
  store ptr %i.dj, ptr %i.b, align 8, !tbaa !60
  %.not = icmp eq i32 %3, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !60    ; 8 uses
  %.pre130 = ptrtoaddr ptr %.pre to i64           ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %min.iters.check = icmp ult i32 %3, 6
  %i.dl = sub i64 %.pre130, %i.dk
  %diff.check = icmp ugt i64 %i.dl, -32
  %or.cond188 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond188, label %.lr.ph.preheader193, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %wide.load = load <2 x i32>, ptr %i.dm, align 4, !tbaa !13
  %wide.load131 = load <2 x i32>, ptr %i.dn, align 4, !tbaa !13
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store <2 x i32> %wide.load, ptr %i.do, align 4, !tbaa !13
  store <2 x i32> %wide.load131, ptr %i.dp, align 4, !tbaa !13
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load132 = load <2 x double>, ptr %i.dq, align 8, !tbaa !58
  %wide.load133 = load <2 x double>, ptr %i.dr, align 8, !tbaa !58
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <2 x double> %wide.load132, ptr %i.ds, align 8, !tbaa !58
  store <2 x double> %wide.load133, ptr %i.dt, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader193

.lr.ph.preheader193:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %i.e, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader193
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.ph
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !13
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.ph
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !13
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.ph
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !58
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.ph
  store double %i.dz, ptr %i.ea, align 8, !tbaa !58
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader193
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader193 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.eb = add nsw i64 %i.e, -1
  %i.ec = icmp eq i64 %indvars.iv.ph, %i.eb
  br i1 %i.ec, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !13
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !13
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !58
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv
  store double %i.eh, ptr %i.ei, align 8, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !13
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !13
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.next
  %i.en = load double, ptr %i.em, align 8, !tbaa !58
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next
  store double %i.en, ptr %i.eo, align 8, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.e
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.e
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.e
  store i32 2, ptr %i.ep, align 4, !tbaa !13
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.e
  %i.er = load double, ptr %i.eq, align 8, !tbaa !58 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.e
  store double %i.er, ptr %i.es, align 8, !tbaa !58
  %i.et = lshr exact i32 %i.g, 1
  %i.eu = add nuw nsw i32 %3, 1                   ; 2 uses
  %i.ev = zext nneg i32 %i.eu to i64              ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.ev ; 2 uses
  store i32 %i.et, ptr %i.ew, align 4, !tbaa !13
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ev
  store double %i.er, ptr %i.ex, align 8, !tbaa !58
  %i.ey = add nuw nsw i32 %3, 2                   ; 2 uses
  %i.ez = load i32, ptr %2, align 4, !tbaa !13    ; 4 uses
  %i.fa = icmp slt i32 %i.ey, %i.ez
  br i1 %i.fa, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %._crit_edge
  %i.fb = zext nneg i32 %i.ey to i64              ; 5 uses
  %i.fc = add i32 %i.ez, -3
  %i.fd = sub i32 %i.fc, %3                       ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %min.iters.check137 = icmp ugt i32 %i.fd, 16
  %i.fg = add i32 %i.ez, -2
  %.not184 = icmp ugt i32 %i.fg, %3
  %or.cond189 = and i1 %min.iters.check137, %.not184
  br i1 %or.cond189, label %vector.memcheck134, label %.lr.ph99.preheader192

vector.memcheck134:                               ; preds = %.lr.ph99.preheader
  %i.fh = shl nuw nsw i64 %i.fb, 3
  %5 = add i64 %i.fh, %i.dk
  %i.fi = add nuw i32 %3, 1
  %i.fj = zext i32 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, 3
  %i.fl = add i64 %i.fk, %.pre130
  %i.fm = sub i64 %i.fl, %5
  %diff.check135 = icmp ugt i64 %i.fm, -32
  br i1 %diff.check135, label %.lr.ph99.preheader192, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck134
  %n.vec139 = and i64 %i.ff, 8589934588           ; 3 uses
  %i.fn = add nuw nsw i64 %n.vec139, %i.fb
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next146, %vector.body140 ] ; 2 uses
  %i.fo = add nuw i64 %index141, %i.fb            ; 3 uses
  %i.fp = add nuw i64 %i.fo, 4294967295
  %i.fq = and i64 %i.fp, 4294967295               ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %wide.load142 = load <2 x i32>, ptr %i.fr, align 4, !tbaa !13
  %wide.load143 = load <2 x i32>, ptr %i.fs, align 4, !tbaa !13
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.fo ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store <2 x i32> %wide.load142, ptr %i.ft, align 4, !tbaa !13
  store <2 x i32> %wide.load143, ptr %i.fu, align 4, !tbaa !13
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.fq ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %wide.load144 = load <2 x double>, ptr %i.fv, align 8, !tbaa !58
  %wide.load145 = load <2 x double>, ptr %i.fw, align 8, !tbaa !58
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.fo ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store <2 x double> %wide.load144, ptr %i.fx, align 8, !tbaa !58
  store <2 x double> %wide.load145, ptr %i.fy, align 8, !tbaa !58
  %index.next146 = add nuw i64 %index141, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next146, %n.vec139
  br i1 %i.fz, label %middle.block147, label %vector.body140, !llvm.loop !88

middle.block147:                                  ; preds = %vector.body140
  %cmp.n148 = icmp eq i64 %i.ff, %n.vec139
  br i1 %cmp.n148, label %._crit_edge100, label %.lr.ph99.preheader192

.lr.ph99.preheader192:                            ; preds = %vector.memcheck134, %.lr.ph99.preheader, %middle.block147
  %indvars.iv111.ph = phi i64 [ %i.fb, %vector.memcheck134 ], [ %i.fb, %.lr.ph99.preheader ], [ %i.fn, %middle.block147 ]
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader192, %.lr.ph99
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %.lr.ph99 ], [ %indvars.iv111.ph, %.lr.ph99.preheader192 ] ; 4 uses
  %i.ga = add nuw i64 %indvars.iv111, 4294967295
  %i.gb = and i64 %i.ga, 4294967295               ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !13
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv111
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !13
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.gb
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !58
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv111
  store double %i.gg, ptr %i.gh, align 8, !tbaa !58
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.gi = trunc nuw i64 %indvars.iv.next112 to i32
  %i.gj = icmp sgt i32 %i.ez, %i.gi
  br i1 %i.gj, label %.lr.ph99, label %._crit_edge100, !llvm.loop !89

._crit_edge100:                                   ; preds = %.lr.ph99, %middle.block147, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.d) #23
  %i.gk = load ptr, ptr %1, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.gk) #23
  %i.gl = load i32, ptr %i.ew, align 4, !tbaa !13
  %i.gm = icmp eq i32 %i.gl, 2
  %.129 = select i1 %i.gm, i32 %3, i32 %i.eu
  call fastcc void @optimize_arity(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %2, i32 noundef %.129)
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !59
  store ptr %i.gn, ptr %0, align 8, !tbaa !59
  %i.go = load ptr, ptr %i.b, align 8, !tbaa !60
  store ptr %i.go, ptr %1, align 8, !tbaa !60
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.gp = add nsw i32 %3, -1
  tail call fastcc void @optimize_arity(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.gp)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge108, %bb.f, %._crit_edge100, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @tm_build_synthetic_topology(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #27 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store i32 1, ptr %i.c, align 4, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %2, ptr %i.e, align 8, !tbaa !40
  %i.f = sext i32 %2 to i64                       ; 3 uses
  %i.g = shl nsw i64 %i.f, 2                      ; 3 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #27 ; 4 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !42
  %i.i = shl nsw i64 %i.f, 3                      ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #27 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !41
  %.not = icmp ne ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %0, i64 %i.g, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 8) #30 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %0, i64 %i.g, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr nonnull align 8 %1, i64 %i.i, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.m = phi ptr [ null, %.thread ], [ %i.l, %bb.b ] ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.m, ptr %i.n, align 8, !tbaa !44
  %i.o = icmp sgt i32 %2, 0
  br i1 %i.o, label %.lr.ph70, label %._crit_edge

.lr.ph70:                                         ; preds = %bb.c
  %i.p = add nsw i32 %2, -1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.t = zext nneg i32 %i.p to i64
  %wide.trip.count78 = zext nneg i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph70, %.loopexit66
  %indvars.iv75 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next76, %.loopexit66 ] ; 4 uses
  %.069 = phi i32 [ 1, %.lr.ph70 ], [ %i.bi, %.loopexit66 ] ; 8 uses
  %i.u = sext i32 %.069 to i64                    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv75
  store i64 %i.u, ptr %i.v, align 8, !tbaa !45
  %i.w = icmp eq i64 %indvars.iv75, %i.t
  br i1 %i.w, label %bb.e, label %.loopexit66

bb.e:                                             ; preds = %bb.d
  %i.x = shl nsw i64 %i.u, 2                      ; 2 uses
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #27 ; 4 uses
  store ptr %i.y, ptr %i.q, align 8, !tbaa !47
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.x) #27 ; 4 uses
  store ptr %i.z, ptr %i.r, align 8, !tbaa !48
  store i32 %.069, ptr %i.b, align 8, !tbaa !38
  store i32 %.069, ptr %i.s, align 8, !tbaa !21
  %i.aa = icmp sgt i32 %.069, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %.loopexit66

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %.069 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ab = icmp eq i32 %.069, 1
  br i1 %i.ab, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.ad = srem i32 %i.ac, %4                      ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !13
  %i.ah = sub nuw nsw i32 %i.ac, %i.ad
  %i.ai = add nsw i32 %i.ag, %i.ah                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !13
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ak
  store i32 %i.ac, ptr %i.al, align 4, !tbaa !13
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv.next to i32 ; 3 uses
  %i.an = srem i32 %i.am, %4                      ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !13
  %i.ar = sub nuw nsw i32 %i.am, %i.an
  %i.as = add nsw i32 %i.aq, %i.ar                ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next
  store i32 %i.as, ptr %i.at, align 4, !tbaa !13
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.au
  store i32 %i.am, ptr %i.av, align 4, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit66.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !90

.loopexit66.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit66, label %.lr.ph.epil.preheader
end_hunk_0
