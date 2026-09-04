Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/rarvm?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5RarVMD2Ev
define void @_ZN5RarVMD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5RarVM4InitEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(262148) ptr @_Znam(i64 noundef 262148) #14
  store ptr %i.c, ptr %0, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5RarVM7ExecuteEP18VM_PreparedProgram(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((8, 36)) %0, ptr nofree noundef captures(none) initializes((32, 40)) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, ptr noundef nonnull align 4 dereferenceable(28) %i.b, i64 28, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !18
  %i.d = load i32, ptr %1, align 8, !tbaa !14     ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN5RarVM21ExecuteStandardFilterE18VM_StandardFilters(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15
  %i.h = and i32 %i.g, 262143                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.h, ptr %i.i, align 8, !tbaa !19
  %i.j = load i32, ptr %1, align 8, !tbaa !14
  %.off = add i32 %i.j, -4
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.h, 131073
  %or.cond = and i1 %i.e, %i.k
  %i.l = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = zext nneg i32 %i.h to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %0, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %storemerge = phi ptr [ %i.o, %bb.e ], [ %i.n, %bb.d ], [ %i.l, %bb.c ]
  store ptr %storemerge, ptr %i.c, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5RarVM21ExecuteStandardFilterE18VM_StandardFilters(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  switch i32 %1, label %.thread [
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.l
    i32 6, label %bb.u
    i32 4, label %bb.v
    i32 5, label %bb.ad
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15
  %i.e = add i32 %i.b, -262145
  %or.cond = icmp ult i32 %i.e, -262141
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.b, -4                     ; 2 uses
  %.not359 = icmp eq i32 %i.f, 0
  br i1 %.not359, label %.thread, label %.lr.ph355

.lr.ph355:                                        ; preds = %bb.c
  %i.g = icmp eq i32 %1, 2
  %i.h = load ptr, ptr %0, align 8, !tbaa !11
  %i.i = select i1 %i.g, i32 233, i32 232
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph355, %bb.k
  %.0251353 = phi ptr [ %i.h, %.lr.ph355 ], [ %.1252, %bb.k ] ; 3 uses
  %.0257352 = phi i32 [ 0, %.lr.ph355 ], [ %.1258, %bb.k ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0251353, i64 1 ; 3 uses
  %i.k = load i8, ptr %.0251353, align 1, !tbaa !16 ; 2 uses
  %i.l = add nuw nsw i32 %.0257352, 1             ; 2 uses
  %i.m = icmp eq i8 %i.k, -24
  %i.n = zext i8 %i.k to i32
  %i.o = icmp eq i32 %i.i, %i.n
  %or.cond288 = or i1 %i.m, %i.o
  br i1 %or.cond288, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.p = add i32 %i.l, %i.d                       ; 2 uses
  %i.q = load i32, ptr %i.j, align 4, !tbaa !15   ; 5 uses
  %.not284 = icmp sgt i32 %i.q, -1
  br i1 %.not284, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add i32 %i.q, %i.p
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = add nsw i32 %i.q, 16777216
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  %.not285 = icmp samesign ugt i32 %i.q, 16777215
  br i1 %.not285, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = sub i32 %i.q, %i.p
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.i
  %.sink = phi i32 [ %i.u, %bb.i ], [ %i.t, %bb.g ]
  store i32 %.sink, ptr %i.j, align 4, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.0251353, i64 5
  %i.w = add nuw nsw i32 %.0257352, 5
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.j
  %.1258 = phi i32 [ %i.w, %bb.j ], [ %i.l, %bb.d ] ; 2 uses
  %.1252 = phi ptr [ %i.v, %bb.j ], [ %i.j, %bb.d ]
  %i.x = icmp ult i32 %.1258, %i.f
  br i1 %i.x, label %bb.d, label %.thread, !llvm.loop !20

bb.l:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !15   ; 2 uses
  %i.aa = add i32 %i.z, -262145
  %or.cond3 = icmp ult i32 %i.aa, -262124
  br i1 %or.cond3, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = add nsw i32 %i.z, -21                   ; 2 uses
  %.not358 = icmp eq i32 %i.ab, 0
  br i1 %.not358, label %.thread, label %.lr.ph351.preheader

.lr.ph351.preheader:                              ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !15
  %i.ae = lshr i32 %i.ad, 4
  %i.af = load ptr, ptr %0, align 8, !tbaa !11
  br label %.lr.ph351

.lr.ph351:                                        ; preds = %.lr.ph351.preheader, %.loopexit
  %.0254349 = phi i32 [ %i.dn, %.loopexit ], [ 0, %.lr.ph351.preheader ]
  %.0255348 = phi i32 [ %i.do, %.loopexit ], [ %i.ae, %.lr.ph351.preheader ] ; 4 uses
  %.0256347 = phi ptr [ %i.dm, %.loopexit ], [ %i.af, %.lr.ph351.preheader ] ; 17 uses
  %i.ag = load i8, ptr %.0256347, align 1, !tbaa !16
  %i.ah = and i8 %i.ag, 31                        ; 2 uses
  %i.ai = icmp samesign ugt i8 %i.ah, 15
  br i1 %i.ai, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph351
  %i.aj = zext nneg i8 %i.ah to i64
  %2 = getelementptr i8, ptr @_ZZN5RarVM21ExecuteStandardFilterE18VM_StandardFiltersE5Masks, i64 %i.aj
  %i.ak = getelementptr i8, ptr %2, i64 -16
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16  ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 3 uses
  %.not282.not = icmp eq i8 %i.al, 0
  br i1 %.not282.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.n
  %i.an = and i32 %i.am, 1
  %.not283 = icmp eq i32 %i.an, 0
  br i1 %.not283, label %.preheader.1, label %bb.o

bb.o:                                             ; preds = %.preheader.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %.0256347, i64 5
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = and i32 %i.ap, 60
  %i.ar = icmp eq i32 %i.aq, 20
  br i1 %i.ar, label %bb.p, label %.preheader.1

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %.0256347, i64 2 ; 2 uses
  %i.at = load i32, ptr %i.as, align 1            ; 4 uses
  %i.au = shl i32 %.0255348, 2
  %i.av = sub i32 %i.at, %i.au                    ; 2 uses
  %i.aw = and i32 %i.av, 4194300                  ; 2 uses
  %i.ax = trunc i32 %i.at to i8
  %i.ay = and i8 %i.ax, 3
  %i.az = trunc i32 %i.aw to i8
  %i.ba = or disjoint i8 %i.ay, %i.az
  store i8 %i.ba, ptr %i.as, align 1, !tbaa !16
  %i.bb = lshr i32 %i.av, 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0256347, i64 3
  %i.bd = trunc i32 %i.bb to i8
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !16
  %i.be = lshr i32 %i.aw, 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.0256347, i64 4
  %i.bg = lshr i32 %i.at, 16
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = and i8 %i.bh, -64
  %i.bj = trunc nuw nsw i32 %i.be to i8
  %i.bk = or disjoint i8 %i.bi, %i.bj
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %.0256347, i64 5
  %i.bm = lshr i32 %i.at, 24
  %i.bn = trunc nuw i32 %i.bm to i8
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !16
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.o, %bb.p, %.preheader.preheader
  %i.bo = and i32 %i.am, 2
  %.not283.1 = icmp eq i32 %i.bo, 0
  br i1 %.not283.1, label %.preheader.2, label %bb.q

bb.q:                                             ; preds = %.preheader.1
  %i.bp = getelementptr inbounds nuw i8, ptr %.0256347, i64 10
  %i.bq = load i32, ptr %i.bp, align 1
  %i.br = and i32 %i.bq, 120
  %i.bs = icmp eq i32 %i.br, 40
  br i1 %i.bs, label %bb.r, label %.preheader.2

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %.0256347, i64 7 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 1            ; 4 uses
  %i.bv = shl i32 %.0255348, 3
  %i.bw = sub i32 %i.bu, %i.bv                    ; 2 uses
  %i.bx = and i32 %i.bw, 8388600                  ; 2 uses
  %i.by = trunc i32 %i.bu to i8
  %i.bz = and i8 %i.by, 7
  %i.ca = trunc i32 %i.bx to i8
  %i.cb = or disjoint i8 %i.bz, %i.ca
  store i8 %i.cb, ptr %i.bt, align 1, !tbaa !16
  %i.cc = lshr i32 %i.bw, 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.0256347, i64 8
  %i.ce = trunc i32 %i.cc to i8
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !16
  %i.cf = lshr i32 %i.bx, 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.0256347, i64 9
  %i.ch = lshr i32 %i.bu, 16
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = and i8 %i.ci, -128
  %i.ck = trunc nuw nsw i32 %i.cf to i8
  %i.cl = or disjoint i8 %i.cj, %i.ck
  store i8 %i.cl, ptr %i.cg, align 1, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %.0256347, i64 10
  %i.cn = lshr i32 %i.bu, 24
  %i.co = trunc nuw i32 %i.cn to i8
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !16
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.r, %bb.q, %.preheader.1
  %i.cp = and i32 %i.am, 4
  %.not283.2 = icmp eq i32 %i.cp, 0
  br i1 %.not283.2, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.preheader.2
  %i.cq = getelementptr inbounds nuw i8, ptr %.0256347, i64 15
  %i.cr = load i32, ptr %i.cq, align 1
  %i.cs = and i32 %i.cr, 240
  %i.ct = icmp eq i32 %i.cs, 80
  br i1 %i.ct, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %.0256347, i64 12 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 1            ; 3 uses
  %i.cw = shl i32 %.0255348, 4
  %i.cx = sub i32 %i.cv, %i.cw                    ; 3 uses
  %i.cy = trunc i32 %i.cv to i8
  %i.cz = and i8 %i.cy, 15
  %i.da = trunc i32 %i.cx to i8
  %i.db = and i8 %i.da, -16
  %i.dc = or disjoint i8 %i.cz, %i.db
  store i8 %i.dc, ptr %i.cu, align 1, !tbaa !16
  %i.dd = lshr i32 %i.cx, 8
  %i.de = getelementptr inbounds nuw i8, ptr %.0256347, i64 13
  %i.df = trunc i32 %i.dd to i8
  store i8 %i.df, ptr %i.de, align 1, !tbaa !16
  %i.dg = lshr i32 %i.cx, 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.0256347, i64 14
  %i.di = trunc i32 %i.dg to i8
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !16
  %i.dj = getelementptr inbounds nuw i8, ptr %.0256347, i64 15
  %i.dk = lshr i32 %i.cv, 24
  %i.dl = trunc nuw i32 %i.dk to i8
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.2, %bb.s, %bb.t, %bb.n, %.lr.ph351
  %i.dm = getelementptr inbounds nuw i8, ptr %.0256347, i64 16
  %i.dn = add nuw nsw i32 %.0254349, 16           ; 2 uses
  %i.do = add nuw nsw i32 %.0255348, 1
  %i.dp = icmp ult i32 %i.dn, %i.ab
  br i1 %i.dp, label %.lr.ph351, label %.thread, !llvm.loop !21

bb.u:                                             ; preds = %bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !15 ; 3 uses
  %i.dt = load i32, ptr %i.dq, align 8, !tbaa !15 ; 3 uses
  %i.du = shl i32 %i.ds, 1                        ; 2 uses
  %i.dv = icmp ugt i32 %i.ds, 131072
  %i.dw = add i32 %i.dt, -1025
  %i.dx = icmp ult i32 %i.dw, -1024
  %or.cond7 = select i1 %i.dv, i1 true, i1 %i.dx
  br i1 %or.cond7, label %.thread, label %.lr.ph345

.lr.ph345:                                        ; preds = %bb.u, %._crit_edge341
  %.0248344 = phi i32 [ %i.ea, %._crit_edge341 ], [ 0, %bb.u ] ; 2 uses
  %.0249343 = phi i32 [ %.1250.lcssa, %._crit_edge341 ], [ 0, %bb.u ] ; 2 uses
  %i.dy = add nuw nsw i32 %.0248344, %i.ds        ; 2 uses
  %i.dz = icmp ult i32 %i.dy, %i.du
  br i1 %i.dz, label %.lr.ph340, label %._crit_edge341

._crit_edge341:                                   ; preds = %.lr.ph340, %.lr.ph345
  %.1250.lcssa = phi i32 [ %.0249343, %.lr.ph345 ], [ %i.ec, %.lr.ph340 ]
  %i.ea = add nuw nsw i32 %.0248344, 1            ; 2 uses
  %exitcond381.not = icmp eq i32 %i.ea, %i.dt
  br i1 %exitcond381.not, label %.thread, label %.lr.ph345, !llvm.loop !22

.lr.ph340:                                        ; preds = %.lr.ph345, %.lr.ph340
  %.0246338 = phi i32 [ %i.ej, %.lr.ph340 ], [ %i.dy, %.lr.ph345 ] ; 2 uses
  %.0247337 = phi i8 [ %i.eg, %.lr.ph340 ], [ 0, %.lr.ph345 ]
  %.1250336 = phi i32 [ %i.ec, %.lr.ph340 ], [ %.0249343, %.lr.ph345 ] ; 2 uses
  %i.eb = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ec = add i32 %.1250336, 1                    ; 2 uses
  %i.ed = zext i32 %.1250336 to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !16
  %i.eg = sub i8 %.0247337, %i.ef                 ; 2 uses
  %i.eh = zext i32 %.0246338 to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.eh
  store i8 %i.eg, ptr %i.ei, align 1, !tbaa !16
  %i.ej = add i32 %.0246338, %i.dt                ; 2 uses
  %i.ek = icmp ult i32 %i.ej, %i.du
  br i1 %i.ek, label %.lr.ph340, label %._crit_edge341, !llvm.loop !23

bb.v:                                             ; preds = %bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load i32, ptr %i.em, align 8, !tbaa !15 ; 6 uses
  %i.eo = load i32, ptr %i.el, align 8, !tbaa !15 ; 2 uses
  %i.ep = add i32 %i.eo, -3                       ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !15 ; 3 uses
  %i.es = add i32 %i.en, -131073
  %or.cond9 = icmp ult i32 %i.es, -131070
  br i1 %or.cond9, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.et = icmp ugt i32 %i.ep, %i.en
  %i.eu = icmp ugt i32 %i.er, 2
  %or.cond11 = select i1 %i.et, i1 true, i1 %i.eu
  br i1 %or.cond11, label %.thread, label %.lr.ph328.preheader

.lr.ph328.preheader:                              ; preds = %bb.w
  %i.ev = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ew = zext nneg i32 %i.en to i64              ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ew ; 5 uses
  %i.ey = zext nneg i32 %i.ep to i64
  %i.ez = sub nsw i64 0, %i.ey
  %invariant.gep = getelementptr i8, ptr %i.ex, i64 %i.ez ; 3 uses
  %i.fa = zext nneg i32 %i.eo to i64              ; 3 uses
  br label %.lr.ph328

.lr.ph335.preheader:                              ; preds = %._crit_edge329.2
  %i.fb = zext nneg i32 %i.er to i64
  %i.fc = zext i32 %i.gs to i64
end_hunk_0
