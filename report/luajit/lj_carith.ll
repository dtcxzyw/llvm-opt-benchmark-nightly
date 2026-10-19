Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_carith?download=true
inline.NumInlined: 9
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CDArith = type { [2 x ptr], [2 x ptr] }

@lj_obj_itypename = external hidden local_unnamed_addr constant [14 x ptr], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @lj_carith_op(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 15 uses
  %i.c = alloca i64, align 8                      ; 14 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %2 = alloca %struct.CDArith, align 8            ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.i = load i64, ptr %i.h, align 8, !tbaa !28
  %i.j = inttoptr i64 %i.i to ptr                 ; 31 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  store ptr %0, ptr %i.k, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %.not.i = icmp ult ptr %i.n, %i.p
  %.091123.lcssa.neg.i.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  br i1 %.not.i, label %.preheader115.i, label %bb.b

.preheader115.i:                                  ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !40   ; 4 uses
  %i.s = ashr i64 %i.r, 47                        ; 3 uses
  %i.t = icmp eq i64 %i.s, -11
  br i1 %i.t, label %bb.c, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @lj_err_argt(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 10) #9
  unreachable

bb.c:                                             ; preds = %.preheader115.i
  %i.u = and i64 %i.r, 140737488355327
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  %i.x = load i16, ptr %i.w, align 2, !tbaa !53   ; 2 uses
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !42   ; 5 uses
  %i.z = zext i16 %i.x to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.pn114.i = phi i64 [ %i.z, %bb.c ], [ %i.ad, %bb.d ]
  %.0.i102.i = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.pn114.i ; 4 uses
  %i.aa = load i32, ptr %.0.i102.i, align 8, !tbaa !44 ; 7 uses
  %i.ab = icmp slt i32 %i.aa, -1879048192
  %i.ac = and i32 %i.aa, 65535
  %i.ad = zext nneg i32 %i.ac to i64
  br i1 %i.ab, label %bb.d, label %ctype_raw.exit103.i, !llvm.loop !0

ctype_raw.exit103.i:                              ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.af = lshr i32 %i.aa, 28
  switch i32 %i.af, label %ctype_rawchild.exit.i [
    i32 2, label %bb.e
    i32 6, label %.ctype_rawchild.exit_crit_edge.i
  ]

bb.e:                                             ; preds = %ctype_raw.exit103.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i102.i, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !46
  %i.ai = icmp eq i32 %i.ah, 4
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %i.ae, align 4, !tbaa !47
  %i.ak = zext i32 %i.aj to i64
  %i.al = inttoptr i64 %i.ak to ptr
  br label %cdata_getptr.exit.i

bb.g:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !48
  br label %cdata_getptr.exit.i

cdata_getptr.exit.i:                              ; preds = %bb.g, %bb.f
  %.0.i104.i = phi ptr [ %i.al, %bb.f ], [ %i.am, %bb.g ] ; 2 uses
  %i.an = and i32 %i.aa, -260046848
  %i.ao = icmp eq i32 %i.an, 545259520
  br i1 %i.ao, label %.preheader.i, label %ctype_rawchild.exit.i

.preheader.i:                                     ; preds = %cdata_getptr.exit.i, %.preheader.i
  %i.ap = phi i32 [ %i.at, %.preheader.i ], [ %i.aa, %cdata_getptr.exit.i ]
  %i.aq = and i32 %i.ap, 65535
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !44 ; 3 uses
  %i.au = icmp slt i32 %i.at, -1879048192
  br i1 %i.au, label %.preheader.i, label %ctype_rawchild.exit.i, !llvm.loop !51

.ctype_rawchild.exit_crit_edge.i:                 ; preds = %ctype_raw.exit103.i
  %i.av = zext i16 %i.x to i32
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !48
  %i.ax = or disjoint i32 %i.av, 537067520
  %i.ay = tail call i32 @lj_ctype_intern(ptr noundef nonnull %i.j, i32 noundef %i.ax, i32 noundef 8) #8
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !42  ; 2 uses
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ba ; 2 uses
  %.pre.i = load i32, ptr %i.bb, align 8, !tbaa !44
  br label %ctype_rawchild.exit.i

ctype_rawchild.exit.i:                            ; preds = %.preheader.i, %.ctype_rawchild.exit_crit_edge.i, %cdata_getptr.exit.i, %ctype_raw.exit103.i
  %i.bc = phi ptr [ %i.az, %.ctype_rawchild.exit_crit_edge.i ], [ %i.y, %cdata_getptr.exit.i ], [ %i.y, %ctype_raw.exit103.i ], [ %i.y, %.preheader.i ]
  %i.bd = phi i32 [ %.pre.i, %.ctype_rawchild.exit_crit_edge.i ], [ %i.aa, %cdata_getptr.exit.i ], [ %i.aa, %ctype_raw.exit103.i ], [ %i.at, %.preheader.i ] ; 2 uses
  %.089.i = phi ptr [ %i.bb, %.ctype_rawchild.exit_crit_edge.i ], [ %.0.i102.i, %cdata_getptr.exit.i ], [ %.0.i102.i, %ctype_raw.exit103.i ], [ %i.as, %.preheader.i ]
  %.088.i = phi ptr [ %i.aw, %.ctype_rawchild.exit_crit_edge.i ], [ %.0.i104.i, %cdata_getptr.exit.i ], [ %i.ae, %ctype_raw.exit103.i ], [ %.0.i104.i, %.preheader.i ] ; 2 uses
  %.mask101.i = and i32 %i.bd, -268435456
  %i.be = icmp eq i32 %.mask101.i, 1342177280
  %i.bf = and i32 %i.bd, 65535
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bg
  %.190.i = select i1 %i.be, ptr %i.bh, ptr %.089.i ; 2 uses
  store ptr %.190.i, ptr %i.q, align 8, !tbaa !54
  store ptr %.088.i, ptr %2, align 8, !tbaa !55
  br label %.thread111.i

bb.h:                                             ; preds = %.preheader115.i
  %i.bi = icmp ult i64 %i.s, -14
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 384 ; 2 uses
  store ptr %i.bk, ptr %i.q, align 8, !tbaa !54
  store ptr %i.m, ptr %2, align 8, !tbaa !55
  br label %.thread111.i

bb.j:                                             ; preds = %bb.h
  %i.bl = icmp eq i64 %i.r, -1
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 456 ; 2 uses
  store ptr %i.bn, ptr %i.q, align 8, !tbaa !54
  store ptr null, ptr %2, align 8, !tbaa !55
  br label %.thread111.i

bb.l:                                             ; preds = %bb.j
  %i.bo = icmp eq i64 %i.s, -5
  br i1 %i.bo, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.bp = load i64, ptr %i.n, align 8, !tbaa !40
  %i.bq = and i64 %i.bp, 140737488355327
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !40
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.bv = zext i16 %i.bt to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.pn.i = phi i64 [ %i.bv, %bb.m ], [ %i.bz, %bb.n ]
  %.0.i.i = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %.pn.i ; 4 uses
  %i.bw = load i32, ptr %.0.i.i, align 8, !tbaa !44 ; 3 uses
  %i.bx = icmp slt i32 %i.bw, -1879048192
  %i.by = and i32 %i.bw, 65535
  %i.bz = zext nneg i32 %i.by to i64
  br i1 %i.bx, label %bb.n, label %ctype_raw.exit.i, !llvm.loop !0

ctype_raw.exit.i:                                 ; preds = %bb.n
  store ptr null, ptr %i.q, align 8, !tbaa !54
  %i.ca = and i64 %i.r, 140737488355327
  %i.cb = inttoptr i64 %i.ca to ptr               ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  store ptr %i.cc, ptr %2, align 8, !tbaa !55
  %.mask.i = and i32 %i.bw, -268435456
  %i.cd = icmp eq i32 %.mask.i, 1342177280
  br i1 %i.cd, label %bb.o, label %.thread111.i

bb.o:                                             ; preds = %ctype_raw.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ce = call ptr @lj_ctype_getfieldq(ptr noundef nonnull %i.j, ptr noundef nonnull %.0.i.i, ptr noundef %i.cb, ptr noundef nonnull %i.d, ptr noundef null) #8 ; 3 uses
  %.not98.i = icmp eq ptr %i.ce, null
  br i1 %.not98.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !44 ; 2 uses
  %.mask99.i = and i32 %i.cf, -268435456
  %i.cg = icmp eq i32 %.mask99.i, -1342177280
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ch = and i32 %i.cf, 65535
  %i.ci = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.cj = zext nneg i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cj ; 2 uses
  store ptr %i.ck, ptr %i.q, align 8, !tbaa !54
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 2 uses
  store ptr %i.cl, ptr %2, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread111.i

bb.r:                                             ; preds = %bb.aa, %bb.z, %bb.p, %bb.o
  %.091123.lcssa.neg.i.sroa.phi = phi ptr [ %.091123.lcssa.neg.i.sroa.gep, %bb.p ], [ %.091123.lcssa.neg.i.sroa.gep, %bb.o ], [ %2, %bb.z ], [ %2, %bb.aa ]
  %.091123.lcssa.neg.i = phi i64 [ 1, %bb.p ], [ 1, %bb.o ], [ 0, %bb.z ], [ 0, %bb.aa ]
  %.0.i.lcssa.lcssa.i = phi ptr [ %.0.i.i, %bb.p ], [ %.0.i.i, %bb.o ], [ %.0.i.1.i, %bb.z ], [ %.0.i.1.i, %bb.aa ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.091123.lcssa.neg.i
  store ptr %.0.i.lcssa.lcssa.i, ptr %i.cm, align 8, !tbaa !54
  store ptr null, ptr %.091123.lcssa.neg.i.sroa.phi, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %carith_checkarg.exit.thread

bb.s:                                             ; preds = %bb.l
  store ptr null, ptr %i.q, align 8, !tbaa !54
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8, !tbaa !55
  br label %.thread111.i

.thread111.i:                                     ; preds = %bb.s, %bb.q, %ctype_raw.exit.i, %bb.k, %bb.i, %ctype_rawchild.exit.i
  %i.cn = phi ptr [ %.088.i, %ctype_rawchild.exit.i ], [ %i.m, %bb.i ], [ null, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.s ], [ %i.cl, %bb.q ], [ %i.cc, %ctype_raw.exit.i ] ; 8 uses
  %i.co = phi ptr [ %.190.i, %ctype_rawchild.exit.i ], [ %i.bk, %bb.i ], [ %i.bn, %bb.k ], [ null, %bb.s ], [ %i.ck, %bb.q ], [ null, %ctype_raw.exit.i ] ; 7 uses
  %.not = phi i1 [ false, %ctype_rawchild.exit.i ], [ false, %bb.i ], [ false, %bb.k ], [ true, %bb.s ], [ false, %bb.q ], [ true, %ctype_raw.exit.i ]
  %i.cp = load i64, ptr %i.n, align 8, !tbaa !40  ; 4 uses
  %i.cq = ashr i64 %i.cp, 47                      ; 3 uses
  %i.cr = icmp eq i64 %i.cq, -11
  br i1 %i.cr, label %bb.ad, label %bb.t

bb.t:                                             ; preds = %.thread111.i
  %i.cs = icmp ult i64 %i.cq, -14
  br i1 %i.cs, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = icmp eq i64 %i.cp, -1
  br i1 %i.ct, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = icmp eq i64 %i.cq, -5
  br i1 %i.cu, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.cv, align 8, !tbaa !54
  store ptr inttoptr (i64 1 to ptr), ptr %.091123.lcssa.neg.i.sroa.gep, align 8, !tbaa !55
  br label %carith_checkarg.exit.thread

bb.x:                                             ; preds = %bb.v
  %i.cw = load i64, ptr %i.m, align 8, !tbaa !40
  %i.cx = and i64 %i.cw, 140737488355327
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 10
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !40
  %i.db = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.dc = zext i16 %i.da to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.pn.1.i = phi i64 [ %i.dc, %bb.x ], [ %i.dg, %bb.y ]
  %.0.i.1.i = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %.pn.1.i ; 4 uses
  %i.dd = load i32, ptr %.0.i.1.i, align 8, !tbaa !44 ; 3 uses
  %i.de = icmp slt i32 %i.dd, -1879048192
  %i.df = and i32 %i.dd, 65535
  %i.dg = zext nneg i32 %i.df to i64
  br i1 %i.de, label %bb.y, label %ctype_raw.exit.1.i, !llvm.loop !0

ctype_raw.exit.1.i:                               ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr null, ptr %i.dh, align 8, !tbaa !54
  %i.di = and i64 %i.cp, 140737488355327
  %i.dj = inttoptr i64 %i.di to ptr               ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store ptr %i.dk, ptr %.091123.lcssa.neg.i.sroa.gep, align 8, !tbaa !55
  %.mask.1.i = and i32 %i.dd, -268435456
  %i.dl = icmp eq i32 %.mask.1.i, 1342177280
  br i1 %i.dl, label %bb.z, label %carith_checkarg.exit.thread

bb.z:                                             ; preds = %ctype_raw.exit.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.dm = call ptr @lj_ctype_getfieldq(ptr noundef nonnull %i.j, ptr noundef nonnull %.0.i.1.i, ptr noundef %i.dj, ptr noundef nonnull %i.d, ptr noundef null) #8 ; 3 uses
  %.not98.1.i = icmp eq ptr %i.dm, null
  br i1 %.not98.1.i, label %bb.r, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !44 ; 2 uses
  %.mask99.1.i = and i32 %i.dn, -268435456
  %i.do = icmp eq i32 %.mask99.1.i, -1342177280
  br i1 %i.do, label %carith_checkarg.exit.thread40, label %bb.r

carith_checkarg.exit.thread40:                    ; preds = %bb.aa
  %i.dp = and i32 %i.dn, 65535
  %i.dq = load ptr, ptr %i.j, align 8, !tbaa !42  ; 2 uses
  %i.dr = zext nneg i32 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dr ; 2 uses
  store ptr %i.ds, ptr %i.dh, align 8, !tbaa !54
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 4 ; 2 uses
  store ptr %i.dt, ptr %.091123.lcssa.neg.i.sroa.gep, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %switch.early.test

bb.ab:                                            ; preds = %bb.u
  %i.du = load ptr, ptr %i.j, align 8, !tbaa !42  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 456
  br label %carith_checkarg.exit

bb.ac:                                            ; preds = %bb.t
  %i.dw = load ptr, ptr %i.j, align 8, !tbaa !42  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 384
  br label %carith_checkarg.exit

bb.ad:                                            ; preds = %.thread111.i
  %i.dy = and i64 %i.cp, 140737488355327
  %i.dz = inttoptr i64 %i.dy to ptr               ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 10
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !53 ; 2 uses
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !42  ; 6 uses
  %i.ed = zext i16 %i.eb to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %.pn114.1.i = phi i64 [ %i.ed, %bb.ad ], [ %i.eh, %bb.ae ]
  %.0.i102.1.i = getelementptr inbounds nuw [24 x i8], ptr %i.ec, i64 %.pn114.1.i ; 4 uses
  %i.ee = load i32, ptr %.0.i102.1.i, align 8, !tbaa !44 ; 7 uses
  %i.ef = icmp slt i32 %i.ee, -1879048192
  %i.eg = and i32 %i.ee, 65535
  %i.eh = zext nneg i32 %i.eg to i64
  br i1 %i.ef, label %bb.ae, label %ctype_raw.exit103.1.i, !llvm.loop !0

ctype_raw.exit103.1.i:                            ; preds = %bb.ae
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 4 uses
  %i.ej = lshr i32 %i.ee, 28
  switch i32 %i.ej, label %ctype_rawchild.exit.1.i [
    i32 2, label %bb.ag
    i32 6, label %bb.af
  ]

bb.af:                                            ; preds = %ctype_raw.exit103.1.i
  %i.ek = zext i16 %i.eb to i32
  %i.el = ptrtoint ptr %i.co to i64
  %i.em = ptrtoint ptr %i.ec to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = sdiv exact i64 %i.en, 24
  %i.ep = and i64 %i.eo, 4294967295
  %i.eq = load ptr, ptr %i.ei, align 8, !tbaa !48
  %i.er = or disjoint i32 %i.ek, 537067520
  %i.es = call i32 @lj_ctype_intern(ptr noundef nonnull %i.j, i32 noundef %i.er, i32 noundef 8) #8
  %i.et = load ptr, ptr %i.j, align 8, !tbaa !42  ; 3 uses
  %i.eu = zext i32 %i.es to i64
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.ep ; 2 uses
  store ptr %i.ew, ptr %i.q, align 8, !tbaa !54
  %.pre = load i32, ptr %i.ev, align 8, !tbaa !44
  br label %ctype_rawchild.exit.1.i

bb.ag:                                            ; preds = %ctype_raw.exit103.1.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i102.1.i, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !46
  %i.ez = icmp eq i32 %i.ey, 4
  br i1 %i.ez, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fa = load ptr, ptr %i.ei, align 8, !tbaa !48
  br label %cdata_getptr.exit.1.i

bb.ai:                                            ; preds = %bb.ag
  %i.fb = load i32, ptr %i.ei, align 4, !tbaa !47
  %i.fc = zext i32 %i.fb to i64
  %i.fd = inttoptr i64 %i.fc to ptr
  br label %cdata_getptr.exit.1.i

cdata_getptr.exit.1.i:                            ; preds = %bb.ai, %bb.ah
  %.0.i104.1.i = phi ptr [ %i.fd, %bb.ai ], [ %i.fa, %bb.ah ] ; 2 uses
  %i.fe = and i32 %i.ee, -260046848
  %i.ff = icmp eq i32 %i.fe, 545259520
  br i1 %i.ff, label %.preheader.1.i, label %ctype_rawchild.exit.1.i

.preheader.1.i:                                   ; preds = %cdata_getptr.exit.1.i, %.preheader.1.i
  %i.fg = phi i32 [ %i.fk, %.preheader.1.i ], [ %i.ee, %cdata_getptr.exit.1.i ]
  %i.fh = and i32 %i.fg, 65535
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.ec, i64 %i.fi ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !44 ; 3 uses
  %i.fl = icmp slt i32 %i.fk, -1879048192
  br i1 %i.fl, label %.preheader.1.i, label %ctype_rawchild.exit.1.i, !llvm.loop !51

ctype_rawchild.exit.1.i:                          ; preds = %.preheader.1.i, %cdata_getptr.exit.1.i, %bb.af, %ctype_raw.exit103.1.i
  %i.fm = phi ptr [ %i.ew, %bb.af ], [ %i.co, %cdata_getptr.exit.1.i ], [ %i.co, %ctype_raw.exit103.1.i ], [ %i.co, %.preheader.1.i ]
  %i.fn = phi ptr [ %i.et, %bb.af ], [ %i.ec, %cdata_getptr.exit.1.i ], [ %i.ec, %ctype_raw.exit103.1.i ], [ %i.ec, %.preheader.1.i ] ; 2 uses
  %i.fo = phi i32 [ %.pre, %bb.af ], [ %i.ee, %cdata_getptr.exit.1.i ], [ %i.ee, %ctype_raw.exit103.1.i ], [ %i.fk, %.preheader.1.i ] ; 2 uses
  %.089.1.i = phi ptr [ %i.ev, %bb.af ], [ %.0.i102.1.i, %cdata_getptr.exit.1.i ], [ %.0.i102.1.i, %ctype_raw.exit103.1.i ], [ %i.fj, %.preheader.1.i ]
  %.088.1.i = phi ptr [ %i.eq, %bb.af ], [ %.0.i104.1.i, %cdata_getptr.exit.1.i ], [ %i.ei, %ctype_raw.exit103.1.i ], [ %.0.i104.1.i, %.preheader.1.i ]
  %.mask101.1.i = and i32 %i.fo, -268435456
  %i.fp = icmp eq i32 %.mask101.1.i, 1342177280
  %i.fq = and i32 %i.fo, 65535
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.fr
  %.190.1.i = select i1 %i.fp, ptr %i.fs, ptr %.089.1.i
  br label %carith_checkarg.exit

carith_checkarg.exit:                             ; preds = %bb.ab, %bb.ac, %ctype_rawchild.exit.1.i
  %.sink109 = phi ptr [ %i.dv, %bb.ab ], [ %i.dx, %bb.ac ], [ %.190.1.i, %ctype_rawchild.exit.1.i ] ; 2 uses
  %.sink108 = phi ptr [ null, %bb.ab ], [ %i.n, %bb.ac ], [ %.088.1.i, %ctype_rawchild.exit.1.i ] ; 2 uses
  %i.ft = phi ptr [ %i.du, %bb.ab ], [ %i.dw, %bb.ac ], [ %i.fn, %ctype_rawchild.exit.1.i ]
  %i.fu = phi ptr [ %i.co, %bb.ab ], [ %i.co, %bb.ac ], [ %i.fm, %ctype_rawchild.exit.1.i ]
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.sink109, ptr %i.fv, align 8, !tbaa !54
  store ptr %.sink108, ptr %.091123.lcssa.neg.i.sroa.gep, align 8, !tbaa !55
  br i1 %.not, label %carith_checkarg.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %carith_checkarg.exit.thread40, %carith_checkarg.exit
  %i.fw = phi ptr [ %i.dq, %carith_checkarg.exit.thread40 ], [ %i.ft, %carith_checkarg.exit ] ; 3 uses
  %i.fx = phi ptr [ %i.dt, %carith_checkarg.exit.thread40 ], [ %.sink108, %carith_checkarg.exit ] ; 6 uses
  %i.fy = phi ptr [ %i.ds, %carith_checkarg.exit.thread40 ], [ %.sink109, %carith_checkarg.exit ] ; 9 uses
  %i.fz = phi ptr [ %i.co, %carith_checkarg.exit.thread40 ], [ %i.fu, %carith_checkarg.exit ] ; 9 uses
  switch i32 %1, label %bb.aj [
    i32 8, label %carith_checkarg.exit.thread
    i32 5, label %carith_checkarg.exit.thread
  ]

bb.aj:                                            ; preds = %switch.early.test
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !44 ; 2 uses
  %i.gb = icmp ult i32 %i.ga, 268435456
  br i1 %i.gb, label %bb.ak, label %bb.br

bb.ak:                                            ; preds = %bb.aj
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !46 ; 2 uses
  %i.ge = icmp ult i32 %i.gd, 9
  br i1 %i.ge, label %bb.al, label %bb.br

bb.al:                                            ; preds = %bb.ak
  %i.gf = load i32, ptr %i.fy, align 8, !tbaa !44 ; 2 uses
  %i.gg = icmp ult i32 %i.gf, 268435456
  br i1 %i.gg, label %bb.am, label %bb.br

bb.am:                                            ; preds = %bb.al
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !46 ; 2 uses
  %i.gj = icmp ult i32 %i.gi, 9
  br i1 %i.gj, label %bb.an, label %bb.br

bb.an:                                            ; preds = %bb.am
  %i.gk = and i32 %i.ga, 8388608
  %.not.i22 = icmp ne i32 %i.gk, 0
  %i.gl = icmp eq i32 %i.gd, 8
  %or.cond.i = and i1 %.not.i22, %i.gl
  br i1 %or.cond.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gm = and i32 %i.gf, 8388608
  %.not48.i = icmp eq i32 %i.gm, 0
  br i1 %.not48.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gn = icmp eq i32 %i.gi, 8
  %i.go = select i1 %i.gn, i32 12, i32 11
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.gp = phi i32 [ 12, %bb.an ], [ 11, %bb.ao ], [ %i.go, %bb.ap ] ; 8 uses
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.fw, i64 %i.gq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @lj_cconv_ct_ct(ptr noundef nonnull %i.j, ptr noundef nonnull %i.gr, ptr noundef nonnull %i.fz, ptr noundef nonnull %i.b, ptr noundef %i.cn, i32 noundef 0) #8
  %cond.i = icmp eq i32 %1, 16
  br i1 %cond.i, label %bb.bo, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gs = load ptr, ptr %.091123.lcssa.neg.i.sroa.gep, align 8, !tbaa !55
  call void @lj_cconv_ct_ct(ptr noundef nonnull %i.j, ptr noundef nonnull %i.gr, ptr noundef nonnull %i.fy, ptr noundef nonnull %i.c, ptr noundef %i.gs, i32 noundef 0) #8
  switch i32 %1, label %bb.av [
    i32 4, label %bb.as
    i32 6, label %bb.at
    i32 7, label %bb.au
  ]

bb.as:                                            ; preds = %bb.ar
  %i.gt = load i64, ptr %i.b, align 8, !tbaa !49
  %i.gu = load i64, ptr %i.c, align 8, !tbaa !49
  %i.gv = icmp eq i64 %i.gt, %i.gu
  %i.gw = select i1 %i.gv, i64 -281474976710657, i64 -140737488355329
  %i.gx = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -8
  store i64 %i.gw, ptr %i.gy, align 8, !tbaa !40
  br label %carith_int64.exit

bb.at:                                            ; preds = %bb.ar
  %i.gz = icmp eq i32 %i.gp, 11
  %i.ha = load i64, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  %i.hb = load i64, ptr %i.c, align 8, !tbaa !49  ; 2 uses
  %i.hc = icmp slt i64 %i.ha, %i.hb
  %i.hd = icmp ult i64 %i.ha, %i.hb
  %.in50.i = select i1 %i.gz, i1 %i.hc, i1 %i.hd
  %i.he = select i1 %.in50.i, i64 -281474976710657, i64 -140737488355329
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 -8
  store i64 %i.he, ptr %i.hg, align 8, !tbaa !40
  br label %carith_int64.exit

bb.au:                                            ; preds = %bb.ar
  %i.hh = icmp eq i32 %i.gp, 11
  %i.hi = load i64, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  %i.hj = load i64, ptr %i.c, align 8, !tbaa !49  ; 2 uses
  %i.hk = icmp sle i64 %i.hi, %i.hj
  %i.hl = icmp ule i64 %i.hi, %i.hj
  %.in.i = select i1 %i.hh, i1 %i.hk, i1 %i.hl
  %i.hm = select i1 %.in.i, i64 -281474976710657, i64 -140737488355329
  %i.hn = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 -8
  store i64 %i.hm, ptr %i.ho, align 8, !tbaa !40
  br label %carith_int64.exit

bb.av:                                            ; preds = %bb.ar
  %i.hp = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.hq = call ptr @lj_mem_newgco(ptr noundef %i.hp, i64 noundef 24) #8 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 9
  store i8 10, ptr %i.hr, align 1, !tbaa !56
  %i.hs = trunc nuw nsw i32 %i.gp to i16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 10
  store i16 %i.hs, ptr %i.ht, align 2, !tbaa !53
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 9 uses
  %i.hv = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 -8
  %i.hx = ptrtoint ptr %i.hq to i64
  %i.hy = or i64 %i.hx, -1548112371908608
  store i64 %i.hy, ptr %i.hw, align 8, !tbaa !40
  switch i32 %1, label %bb.bp [
    i32 10, label %bb.aw
    i32 11, label %bb.ax
    i32 12, label %bb.ay
    i32 13, label %bb.az
    i32 14, label %bb.bf
    i32 15, label %bb.bl
  ]

bb.aw:                                            ; preds = %bb.av
  %i.hz = load i64, ptr %i.b, align 8, !tbaa !49
  %i.ia = load i64, ptr %i.c, align 8, !tbaa !49
  %i.ib = add i64 %i.ia, %i.hz
  store i64 %i.ib, ptr %i.hu, align 8, !tbaa !49
  br label %bb.bp

bb.ax:                                            ; preds = %bb.av
  %i.ic = load i64, ptr %i.b, align 8, !tbaa !49
  %i.id = load i64, ptr %i.c, align 8, !tbaa !49
  %i.ie = sub i64 %i.ic, %i.id
  store i64 %i.ie, ptr %i.hu, align 8, !tbaa !49
  br label %bb.bp

bb.ay:                                            ; preds = %bb.av
  %i.if = load i64, ptr %i.b, align 8, !tbaa !49
  %i.ig = load i64, ptr %i.c, align 8, !tbaa !49
  %i.ih = mul i64 %i.ig, %i.if
  store i64 %i.ih, ptr %i.hu, align 8, !tbaa !49
  br label %bb.bp

bb.az:                                            ; preds = %bb.av
  %i.ii = icmp eq i32 %i.gp, 11
  br i1 %i.ii, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.ij = load i64, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  %i.ik = load i64, ptr %i.c, align 8, !tbaa !49  ; 3 uses
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %lj_carith_divi64.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.im = icmp eq i64 %i.ij, -9223372036854775808
  %i.in = icmp eq i64 %i.ik, -1
  %or.cond.i.i = and i1 %i.im, %i.in
  br i1 %or.cond.i.i, label %lj_carith_divi64.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.io = sdiv i64 %i.ij, %i.ik
  br label %lj_carith_divi64.exit.i

lj_carith_divi64.exit.i:                          ; preds = %bb.bc, %bb.bb, %bb.ba
  %.0.i.i23 = phi i64 [ %i.io, %bb.bc ], [ -9223372036854775808, %bb.bb ], [ -9223372036854775808, %bb.ba ]
  store i64 %.0.i.i23, ptr %i.hu, align 8, !tbaa !49
  br label %bb.bp

bb.bd:                                            ; preds = %bb.az
  %i.ip = load i64, ptr %i.c, align 8, !tbaa !49  ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %lj_carith_divu64.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ir = load i64, ptr %i.b, align 8, !tbaa !49
  %i.is = udiv i64 %i.ir, %i.ip
  br label %lj_carith_divu64.exit.i

lj_carith_divu64.exit.i:                          ; preds = %bb.be, %bb.bd
  %.0.i52.i = phi i64 [ %i.is, %bb.be ], [ -9223372036854775808, %bb.bd ]
  store i64 %.0.i52.i, ptr %i.hu, align 8, !tbaa !49
  br label %bb.bp

bb.bf:                                            ; preds = %bb.av
  %i.it = icmp eq i32 %i.gp, 11
  br i1 %i.it, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.iu = load i64, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  %i.iv = load i64, ptr %i.c, align 8, !tbaa !49  ; 3 uses
  %i.iw = icmp eq i64 %i.iv, 0
end_hunk_0
begin_hunk_1_@lj_carith_op:bb.a
  store double %i.lc, ptr %i.lb, align 8, !tbaa !40
  br label %carith_ptr.exit

bb.ca:                                            ; preds = %bb.bx
  %i.ld = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.le = getelementptr inbounds i8, ptr %i.ld, i64 -8 ; 2 uses
  br i1 %i.kj, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.lf = icmp ult ptr %i.cn, %i.fx
  %i.lg = select i1 %i.lf, i64 -281474976710657, i64 -140737488355329
  store i64 %i.lg, ptr %i.le, align 8, !tbaa !40
  br label %carith_ptr.exit

bb.cc:                                            ; preds = %bb.ca
  %.not87.i = icmp ugt ptr %i.cn, %i.fx
  %i.lh = select i1 %.not87.i, i64 -140737488355329, i64 -281474976710657
  store i64 %i.lh, ptr %i.le, align 8, !tbaa !40
  br label %carith_ptr.exit

bb.cd:                                            ; preds = %bb.bt, %bb.bs
  %i.li = and i32 %1, -2
  %or.cond9.i = icmp eq i32 %i.li, 10
  br i1 %or.cond9.i, label %bb.ce, label %carith_ptr.exit.thread

bb.ce:                                            ; preds = %bb.cd
  %i.lj = load i32, ptr %i.fy, align 8, !tbaa !44
  %i.lk = icmp ult i32 %i.lj, 268435456
  br i1 %i.lk, label %bb.cf, label %carith_ptr.exit.thread

bb.cf:                                            ; preds = %bb.ce
  %i.ll = getelementptr inbounds nuw i8, ptr %i.fw, i64 264
  call void @lj_cconv_ct_ct(ptr noundef nonnull %i.j, ptr noundef nonnull %i.ll, ptr noundef nonnull %i.fy, ptr noundef nonnull %i.a, ptr noundef %i.fx, i32 noundef 0) #8
  br i1 %i.kh, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.lm = load i64, ptr %i.a, align 8, !tbaa !49
  %i.ln = sub i64 0, %i.lm
  store i64 %i.ln, ptr %i.a, align 8, !tbaa !49
  br label %bb.ck

bb.ch:                                            ; preds = %bb.br
  %i.lo = icmp eq i32 %1, 10
  %i.lp = icmp eq i32 %i.kd, 0
  %or.cond91.i = and i1 %i.lo, %i.lp
  br i1 %or.cond91.i, label %bb.ci, label %carith_ptr.exit.thread

bb.ci:                                            ; preds = %bb.ch
  %i.lq = load i32, ptr %i.fy, align 8, !tbaa !44
  %i.lr = add i32 %i.lq, -536870912
  %or.cond93.i = icmp ult i32 %i.lr, 335544320
  br i1 %or.cond93.i, label %bb.cj, label %carith_ptr.exit.thread

bb.cj:                                            ; preds = %bb.ci
  %i.ls = getelementptr inbounds nuw i8, ptr %i.fw, i64 264
  call void @lj_cconv_ct_ct(ptr noundef nonnull %i.j, ptr noundef nonnull %i.ls, ptr noundef nonnull %i.fz, ptr noundef nonnull %i.a, ptr noundef %i.cn, i32 noundef 0) #8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cg, %bb.cf
  %.079.i = phi ptr [ %i.fz, %bb.cg ], [ %i.fz, %bb.cf ], [ %i.fy, %bb.cj ] ; 2 uses
  %.0.i = phi ptr [ %i.cn, %bb.cg ], [ %i.cn, %bb.cf ], [ %i.fx, %bb.cj ]
  %i.lt = load i32, ptr %.079.i, align 8, !tbaa !44
  %i.lu = and i32 %i.lt, 65535
  %i.lv = call i32 @lj_ctype_size(ptr noundef nonnull %i.j, i32 noundef %i.lu) #8 ; 2 uses
  %i.lw = icmp eq i32 %i.lv, -1
  br i1 %i.lw, label %carith_ptr.exit.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lx = load i64, ptr %i.a, align 8, !tbaa !49
  %i.ly = sext i32 %i.lv to i64
  %i.lz = mul nsw i64 %i.lx, %i.ly
  %i.ma = getelementptr inbounds i8, ptr %.0.i, i64 %i.lz
  %i.mb = load i32, ptr %.079.i, align 8, !tbaa !44
  %i.mc = and i32 %i.mb, 65535
  %i.md = or disjoint i32 %i.mc, 537067520
  %i.me = call i32 @lj_ctype_intern(ptr noundef nonnull %i.j, i32 noundef %i.md, i32 noundef 8) #8
  %i.mf = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.mg = call ptr @lj_mem_newgco(ptr noundef %i.mf, i64 noundef 24) #8 ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 9
  store i8 10, ptr %i.mh, align 1, !tbaa !56
  %i.mi = trunc i32 %i.me to i16
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 10
  store i16 %i.mi, ptr %i.mj, align 2, !tbaa !53
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  store ptr %i.ma, ptr %i.mk, align 8, !tbaa !55
  %i.ml = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 -8
  %i.mn = ptrtoint ptr %i.mg to i64
  %i.mo = or i64 %i.mn, -1548112371908608
  store i64 %i.mo, ptr %i.mm, align 8, !tbaa !40
  %i.mp = load i64, ptr %i.e, align 8, !tbaa !17
  %i.mq = inttoptr i64 %i.mp to ptr               ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !57
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !58
  %.not.i25 = icmp ult i64 %i.ms, %i.mu
  br i1 %.not.i25, label %carith_ptr.exit, label %bb.cm, !prof !50

bb.cm:                                            ; preds = %bb.cl
  %i.mv = call i32 @lj_gc_step(ptr noundef nonnull %0) #8 ; 0 uses
  br label %carith_ptr.exit

carith_ptr.exit.thread:                           ; preds = %bb.ce, %bb.ch, %bb.ck, %bb.by, %bb.bw, %bb.cd, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %carith_checkarg.exit.thread

carith_ptr.exit:                                  ; preds = %bb.bv, %bb.bz, %bb.cb, %bb.cc, %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.cn

bb.cn:                                            ; preds = %carith_ptr.exit, %carith_int64.exit
  %i.mw = load i64, ptr %i.e, align 8, !tbaa !17
  %i.mx = inttoptr i64 %i.mw to ptr
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 240
  %i.mz = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.na = getelementptr inbounds i8, ptr %i.mz, i64 -8
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !40
  store i64 %i.nb, ptr %i.my, align 8, !tbaa !40
  br label %lj_carith_meta.exit

carith_checkarg.exit.thread:                      ; preds = %ctype_raw.exit.1.i, %bb.w, %bb.r, %carith_ptr.exit.thread, %switch.early.test, %switch.early.test, %carith_checkarg.exit
  %i.nc = load ptr, ptr %i.l, align 8, !tbaa !38  ; 2 uses
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !40 ; 2 uses
  %.mask.i26 = and i64 %i.nd, -140737488355328
  %i.ne = icmp eq i64 %.mask.i26, -1548112371908608
  br i1 %i.ne, label %bb.co, label %.thread.i27

bb.co:                                            ; preds = %carith_checkarg.exit.thread
  %i.nf = and i64 %i.nd, 140737488355327
  %i.ng = inttoptr i64 %i.nf to ptr
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 10
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !40 ; 2 uses
  %i.nj = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.nk = zext i16 %i.ni to i64
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cp, %bb.co
  %.pn.i33 = phi i64 [ %i.nk, %bb.co ], [ %i.no, %bb.cp ]
  %.0.i86.i = getelementptr inbounds nuw [24 x i8], ptr %i.nj, i64 %.pn.i33
  %i.nl = load i32, ptr %.0.i86.i, align 8, !tbaa !44 ; 3 uses
  %i.nm = icmp slt i32 %i.nl, -1879048192
  %i.nn = and i32 %i.nl, 65535                    ; 2 uses
  %i.no = zext nneg i32 %i.nn to i64
  br i1 %i.nm, label %bb.cp, label %bb.cq, !llvm.loop !0

bb.cq:                                            ; preds = %bb.cp
  %i.np = zext i16 %i.ni to i32
  %.mask75.i = and i32 %i.nl, -268435456
  %i.nq = icmp eq i32 %.mask75.i, 536870912
  %spec.select.i = select i1 %i.nq, i32 %i.nn, i32 %i.np
  %i.nr = call ptr @lj_ctype_meta(ptr noundef nonnull %i.j, i32 noundef %spec.select.i, i32 noundef %1) #8 ; 2 uses
  %.not.i34 = icmp eq ptr %i.nr, null
  br i1 %.not.i34, label %..thread_crit_edge.i, label %.thread93.i

..thread_crit_edge.i:                             ; preds = %bb.cq
  %.pre.i35 = load ptr, ptr %i.l, align 8, !tbaa !38
  br label %.thread.i27

.thread.i27:                                      ; preds = %..thread_crit_edge.i, %carith_checkarg.exit.thread
  %i.ns = phi ptr [ %.pre.i35, %..thread_crit_edge.i ], [ %i.nc, %carith_checkarg.exit.thread ]
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 2 uses
  %i.nu = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.nv = icmp ult ptr %i.nt, %i.nu
  br i1 %i.nv, label %bb.cr, label %.thread90.i

bb.cr:                                            ; preds = %.thread.i27
  %i.nw = load i64, ptr %i.nt, align 8, !tbaa !40 ; 2 uses
  %.mask76.i = and i64 %i.nw, -140737488355328
  %i.nx = icmp eq i64 %.mask76.i, -1548112371908608
  br i1 %i.nx, label %bb.cs, label %.thread90.i

bb.cs:                                            ; preds = %bb.cr
  %i.ny = and i64 %i.nw, 140737488355327
  %i.nz = inttoptr i64 %i.ny to ptr
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 10
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !40 ; 2 uses
  %i.oc = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.od = zext i16 %i.ob to i64
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ct, %bb.cs
  %.pn97.i = phi i64 [ %i.od, %bb.cs ], [ %i.oh, %bb.ct ]
  %.0.i.i32 = getelementptr inbounds nuw [24 x i8], ptr %i.oc, i64 %.pn97.i
  %i.oe = load i32, ptr %.0.i.i32, align 8, !tbaa !44 ; 3 uses
  %i.of = icmp slt i32 %i.oe, -1879048192
  %i.og = and i32 %i.oe, 65535                    ; 2 uses
  %i.oh = zext nneg i32 %i.og to i64
  br i1 %i.of, label %bb.ct, label %bb.cu, !llvm.loop !0

bb.cu:                                            ; preds = %bb.ct
  %i.oi = zext i16 %i.ob to i32
  %.mask77.i = and i32 %i.oe, -268435456
  %i.oj = icmp eq i32 %.mask77.i, 536870912
  %spec.select83.i = select i1 %i.oj, i32 %i.og, i32 %i.oi
  %i.ok = call ptr @lj_ctype_meta(ptr noundef nonnull %i.j, i32 noundef %spec.select83.i, i32 noundef %1) #8 ; 2 uses
  %.not78.i = icmp eq ptr %i.ok, null
  br i1 %.not78.i, label %.thread90.i, label %.thread93.i

.thread90.i:                                      ; preds = %bb.cu, %bb.cr, %.thread.i27
  %i.ol = icmp eq i32 %1, 4
  br i1 %i.ol, label %bb.cv, label %.preheader.i28

.preheader.i28:                                   ; preds = %.thread90.i
  %i.om = load ptr, ptr %i.q, align 8, !tbaa !54  ; 3 uses
  %.not79.i = icmp ne ptr %i.om, null
  %.pre104.i = load ptr, ptr %i.l, align 8, !tbaa !38 ; 2 uses
  %.pre105.i = load i64, ptr %.pre104.i, align 8, !tbaa !40 ; 2 uses
  %.pre110.i = and i64 %.pre105.i, -140737488355328 ; 2 uses
  %i.on = icmp eq i64 %.pre110.i, -1548112371908608
  %or.cond.i29 = select i1 %.not79.i, i1 %i.on, i1 false
  br i1 %or.cond.i29, label %bb.cw, label %.preheader._crit_edge.i

bb.cv:                                            ; preds = %.thread90.i
  %i.oo = load ptr, ptr %2, align 8, !tbaa !55
  %i.op = load ptr, ptr %.091123.lcssa.neg.i.sroa.gep, align 8, !tbaa !55
  %i.oq = icmp eq ptr %i.oo, %i.op
  %i.or = select i1 %i.oq, i64 -281474976710657, i64 -140737488355329 ; 2 uses
  %i.os = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.ot = getelementptr inbounds i8, ptr %i.os, i64 -8
  store i64 %i.or, ptr %i.ot, align 8, !tbaa !40
  %i.ou = load i64, ptr %i.e, align 8, !tbaa !17
  %i.ov = inttoptr i64 %i.ou to ptr
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 240
  store i64 %i.or, ptr %i.ow, align 8, !tbaa !40
  br label %lj_carith_meta.exit

bb.cw:                                            ; preds = %.preheader.i28
  %i.ox = load i32, ptr %i.om, align 8, !tbaa !44
  %.mask82.i = and i32 %i.ox, -268435456
  %i.oy = icmp ne i32 %.mask82.i, 1342177280
  %spec.select84.i = sext i1 %i.oy to i32
  %i.oz = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.pa = ptrtoint ptr %i.om to i64
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = sub i64 %i.pa, %i.pb
  %i.pd = sdiv exact i64 %i.pc, 24
  %i.pe = trunc i64 %i.pd to i32
  %i.pf = call ptr @lj_ctype_repr(ptr noundef nonnull %0, i32 noundef %i.pe, ptr noundef null) #8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  %.pre106.pre.i = load ptr, ptr %i.l, align 8, !tbaa !38
  br label %bb.cx

.preheader._crit_edge.i:                          ; preds = %.preheader.i28
  %i.ph = icmp ne i64 %.pre110.i, -703687441776640
  %spec.select85.i = sext i1 %i.ph to i32
  %i.pi = ashr i64 %.pre105.i, 47
  %i.pj = call i64 @llvm.umax.i64(i64 %i.pi, i64 -14)
  %i.pk = xor i64 %i.pj, -1
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr @lj_obj_itypename, i64 %i.pk
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !55
  br label %bb.cx

bb.cx:                                            ; preds = %.preheader._crit_edge.i, %bb.cw
  %.sink = phi ptr [ %.pre106.pre.i, %bb.cw ], [ %.pre104.i, %.preheader._crit_edge.i ]
  %.pre106.i = phi ptr [ %i.pg, %bb.cw ], [ %i.pm, %.preheader._crit_edge.i ] ; 3 uses
  %.265.i = phi i32 [ %spec.select84.i, %bb.cw ], [ -1, %.preheader._crit_edge.i ] ; 2 uses
  %.2.i30 = phi i32 [ -1, %bb.cw ], [ %spec.select85.i, %.preheader._crit_edge.i ] ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !54 ; 3 uses
  %.not79.1.i = icmp ne ptr %i.po, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %.pre107.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !40 ; 2 uses
  %.pre109.i = and i64 %.pre107.i, -140737488355328 ; 2 uses
  %i.pp = icmp eq i64 %.pre109.i, -1548112371908608
  %or.cond122.i = select i1 %.not79.1.i, i1 %i.pp, i1 false
  br i1 %or.cond122.i, label %bb.cy, label %._crit_edge.i

bb.cy:                                            ; preds = %bb.cx
  %i.pq = load i32, ptr %i.po, align 8, !tbaa !44
  %.mask82.1.i = and i32 %i.pq, -268435456
  %i.pr = icmp eq i32 %.mask82.1.i, 1342177280
  %spec.select84.1.i = select i1 %i.pr, i32 1, i32 %.265.i
  %i.ps = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.pt = ptrtoint ptr %i.po to i64
  %i.pu = ptrtoint ptr %i.ps to i64
  %i.pv = sub i64 %i.pt, %i.pu
  %i.pw = sdiv exact i64 %i.pv, 24
  %i.px = trunc i64 %i.pw to i32
  %i.py = call ptr @lj_ctype_repr(ptr noundef nonnull %0, i32 noundef %i.px, ptr noundef null) #8
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  br label %bb.cz

._crit_edge.i:                                    ; preds = %bb.cx
  %i.qa = icmp eq i64 %.pre109.i, -703687441776640
  %spec.select85.1.i = select i1 %i.qa, i32 1, i32 %.2.i30
  %i.qb = ashr i64 %.pre107.i, 47
  %i.qc = call i64 @llvm.umax.i64(i64 %i.qb, i64 -14)
  %i.qd = xor i64 %i.qc, -1
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr @lj_obj_itypename, i64 %i.qd
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !55
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge.i, %bb.cy
  %.sink.i = phi ptr [ %i.pz, %bb.cy ], [ %i.qf, %._crit_edge.i ] ; 3 uses
  %.265.1.i = phi i32 [ %spec.select84.1.i, %bb.cy ], [ %.265.i, %._crit_edge.i ] ; 2 uses
  %.2.1.i = phi i32 [ %.2.i30, %bb.cy ], [ %spec.select85.1.i, %._crit_edge.i ] ; 2 uses
  %i.qg = xor i32 %.2.1.i, %.265.1.i
  %i.qh = icmp eq i32 %i.qg, 1
  br i1 %i.qh, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %.sroa.idx7.i = icmp eq i32 %.2.1.i, 1
  %.sroa.speculated.i = select i1 %.sroa.idx7.i, ptr %.sink.i, ptr %.pre106.i
  %.sroa.idx10.i = icmp eq i32 %.265.1.i, 1
  %.sroa.speculated15.i = select i1 %.sroa.idx10.i, ptr %.sink.i, ptr %.pre106.i
  call void (ptr, i32, ...) @lj_err_callerv(ptr noundef nonnull %0, i32 noundef 3388, ptr noundef %.sroa.speculated.i, ptr noundef %.sroa.speculated15.i) #9
  unreachable

bb.db:                                            ; preds = %bb.cz
  %i.qi = icmp eq i32 %1, 5
  %i.qj = icmp eq i32 %1, 8
  %i.qk = icmp ult i32 %1, 10
  %i.ql = select i1 %i.qk, i32 3530, i32 3483
  %i.qm = select i1 %i.qj, i32 3446, i32 %i.ql
  %i.qn = select i1 %i.qi, i32 3416, i32 %i.qm
  call void (ptr, i32, ...) @lj_err_callerv(ptr noundef nonnull %0, i32 noundef %i.qn, ptr noundef %.pre106.i, ptr noundef %.sink.i) #9
  unreachable

.thread93.i:                                      ; preds = %bb.cu, %bb.cq
  %.17096.i = phi ptr [ %i.ok, %bb.cu ], [ %i.nr, %bb.cq ]
  %i.qo = call i32 @lj_meta_tailcall(ptr noundef nonnull %0, ptr noundef nonnull %.17096.i) #8
  br label %lj_carith_meta.exit

lj_carith_meta.exit:                              ; preds = %.thread93.i, %bb.cv, %bb.cn
  %.0 = phi i32 [ 1, %bb.cn ], [ %i.qo, %.thread93.i ], [ 1, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @lj_carith_shift64(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  switch i32 %2, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = and i32 %1, 63
  %i.b = zext nneg i32 %i.a to i64
  %i.c = shl i64 %0, %i.b
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %1, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = lshr i64 %0, %i.e
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %i.i = ashr i64 %0, %i.h
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.j = zext i32 %1 to i64
  %i.k = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 %i.j)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.l = zext i32 %1 to i64
  %i.m = tail call i64 @llvm.fshr.i64(i64 %0, i64 %0, i64 %i.l)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %0, %bb.a ], [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ %i.i, %bb.d ], [ %i.k, %bb.e ], [ %i.m, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden i64 @lj_carith_check64(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %.not = icmp ult ptr %i.f, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.l, %bb.a
  tail call void @lj_err_argt(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 3) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8              ; 3 uses
  %i.j = ashr i64 %i.i, 47                        ; 2 uses
  %i.k = icmp ult i64 %i.j, -13
  %i.l = bitcast i64 %i.i to double
  br i1 %i.k, label %bb.m, label %bb.d, !prof !50

bb.d:                                             ; preds = %bb.c
  switch i64 %i.j, label %bb.b [
    i64 -11, label %bb.e
    i64 -5, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 392
  %i.q = load i64, ptr %i.p, align 8, !tbaa !28
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %0, ptr %i.s, align 8, !tbaa !37
  %i.t = load i64, ptr %i.f, align 8, !tbaa !40
  %i.u = and i64 %i.t, 140737488355327
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  %i.y = load i16, ptr %i.x, align 2, !tbaa !40   ; 2 uses
  %i.z = zext i16 %i.y to i32
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !42  ; 4 uses
  %i.ab = zext i16 %i.y to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !44 ; 2 uses
  %i.ae = and i32 %i.ad, -260046848
  %i.af = icmp eq i32 %i.ae, 545259520
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.ah = and i32 %i.ad, 65535
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.037 = phi ptr [ %i.ag, %bb.f ], [ %i.w, %bb.e ]
  %.036 = phi i32 [ %i.ah, %bb.f ], [ %i.z, %bb.e ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.pn.in = phi i32 [ %.036, %bb.g ], [ %i.ak, %bb.h ]
  %.pn = zext nneg i32 %.pn.in to i64
  %.0.i = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %.pn ; 2 uses
  %i.ai = load i32, ptr %.0.i, align 8, !tbaa !44 ; 3 uses
  %i.aj = icmp slt i32 %i.ai, -1879048192
  %i.ak = and i32 %i.ai, 65535                    ; 2 uses
  br i1 %i.aj, label %bb.h, label %ctype_raw.exit, !llvm.loop !0

ctype_raw.exit:                                   ; preds = %bb.h
  %.mask = and i32 %i.ai, -268435456
  %i.al = icmp eq i32 %.mask, 1342177280
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.am
  %.0 = select i1 %i.al, ptr %i.an, ptr %.0.i     ; 3 uses
  %i.ao = load i32, ptr %.0, align 8, !tbaa !44
  %i.ap = and i32 %i.ao, -58720256
  %i.aq = icmp eq i32 %i.ap, 8388608
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %ctype_raw.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !46
  %i.at = icmp eq i32 %i.as, 8
  br i1 %i.at, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %ctype_raw.exit
  %i.au = load i32, ptr %2, align 4, !tbaa !47    ; 2 uses
  %.not42 = icmp eq i32 %i.au, 0
  br i1 %.not42, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %bb.i
  %.sink = phi i32 [ 12, %bb.i ], [ 11, %bb.j ]   ; 2 uses
  store i32 %.sink, ptr %2, align 4, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  %i.av = phi i32 [ %i.au, %bb.j ], [ %.sink, %.sink.split ]
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.aw
  %i.ay = shl i32 %1, 8
  call void @lj_cconv_ct_ct(ptr noundef nonnull %i.r, ptr noundef nonnull %i.ax, ptr noundef nonnull %.0, ptr noundef nonnull %i.a, ptr noundef %.037, i32 noundef %i.ay) #8
  %i.az = load i64, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.n

bb.l:                                             ; preds = %bb.d
  %i.ba = and i64 %i.i, 140737488355327
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = tail call i32 @lj_strscan_num(ptr noundef %i.bb, ptr noundef nonnull %i.f) #8
  %.not41 = icmp eq i32 %i.bc, 0
  br i1 %.not41, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %.pre = load double, ptr %i.f, align 8, !tbaa !40
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.c
  %i.bd = phi double [ %.pre, %._crit_edge ], [ %i.l, %bb.c ]
  %i.be = tail call i32 @lj_vm_tobit(double noundef %i.bd) #10
  %i.bf = zext i32 %i.be to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.038 = phi i64 [ %i.bf, %bb.m ], [ %i.az, %bb.k ]
  ret i64 %.038
}

; Function Attrs: noreturn
declare hidden void @lj_err_argt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare hidden void @lj_cconv_ct_ct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare hidden i32 @lj_strscan_num(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare hidden i32 @lj_vm_tobit(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden i64 @lj_carith_checkbit64(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
end_hunk_1
