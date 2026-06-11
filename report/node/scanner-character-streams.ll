inline.NumInlined: 1075
inline.NumDeleted: 584
begin_hunk_0_@_ZN2v88internal27Utf8ExternalStreamingStream14SkipToPositionEm:bb.a
bb.k:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i1 [ %i.cp, %._crit_edge ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load i8, ptr %i.b, align 1               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.d, ptr %0, align 8
  %i.e = icmp sgt i8 %i.c, -1
  %i.f = icmp eq i8 %i.a, 12                      ; 2 uses
  %i.g = select i1 %i.e, i1 %i.f, i1 false, !prof !6
  br i1 %i.g, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i8 %i.c to i32
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = zext i8 %i.c to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = load i8, ptr %1, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = zext i8 %i.k to i32                      ; 2 uses
  %i.o = add nuw nsw i32 %i.m, %i.n
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE6states, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  store i8 %i.r, ptr %1, align 1
  %i.s = load i32, ptr %2, align 4
  %i.t = shl i32 %i.s, 6
  %i.u = zext i8 %i.c to i32
  %i.v = lshr i32 %i.n, 1
  %i.w = lshr i32 127, %i.v
  %i.x = and i32 %i.w, %i.u
  %i.y = or i32 %i.t, %i.x                        ; 2 uses
  store i32 %i.y, ptr %2, align 4
  %i.z = load i8, ptr %1, align 1
  switch i8 %i.z, label %bb.g [
    i8 12, label %bb.d
    i8 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %2, align 4
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  store i8 12, ptr %1, align 1
  store i32 0, ptr %2, align 4
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -1
  store ptr %i.ab, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ 65533, %bb.e ], [ %i.y, %bb.d ], [ 65533, %bb.f ], [ -4, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal27Utf8ExternalStreamingStream26FillBufferFromCurrentChunkEv(ptr noundef nonnull align 8 dereferenceable(1136) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 10 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.e ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %i.q ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 3 uses
  %i.u = load i8, ptr %i.t, align 4
  store i8 %i.u, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8
  store i32 %i.w, ptr %i.b, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.aa = call noundef i32 @_ZN7unibrow4Utf824ValueOfIncrementalFinishEPN14Utf8DfaDecoder5StateE(ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = trunc i32 %i.aa to i16
  store i16 %i.ab, ptr %i.r, align 2
  %i.ac = load ptr, ptr %i.k, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store ptr %i.ad, ptr %i.k, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8
  store i32 0, ptr %i.v, align 8
  %i.ah = load i8, ptr %i.a, align 1
  store i8 %i.ah, ptr %i.t, align 4
  br label %bb.w

bb.d:                                             ; preds = %bb.a
  %i.ai = load i64, ptr %i.s, align 8             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = sub i64 %i.ai, %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.am = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store ptr %i.an, ptr %i.c, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.y ; 5 uses
  %i.ap = icmp ult i64 %i.ai, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = select i1 %i.ap, i1 %i.as, i1 false
  br i1 %i.at, label %.preheader, label %.thread, !prof !5

.preheader:                                       ; preds = %bb.d, %bb.g
  %i.au = load ptr, ptr %i.c, align 8
  %i.av = icmp ult ptr %i.au, %i.ao
  br i1 %i.av, label %bb.e, label %.thread

bb.e:                                             ; preds = %.preheader
  %i.aw = call noundef i32 @_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 7 uses
  %i.ax = icmp ult i32 %i.aw, 65279
  br i1 %i.ax, label %bb.f, label %bb.g, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.ay = trunc nuw i32 %i.aw to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i16 %i.ay, ptr %i.r, align 2
  br label %.thread

bb.g:                                             ; preds = %bb.e
  switch i32 %i.aw, label %bb.h [
    i32 -4, label %.preheader
    i32 65279, label %.thread
  ]

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp ult i32 %i.aw, 65536
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = trunc nuw i32 %i.aw to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i16 %i.bb, ptr %i.r, align 2
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.bd = add i32 %i.aw, 983040
  %i.be = lshr i32 %i.bd, 10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.bg = trunc i32 %i.be to i16
  %i.bh = insertelement <2 x i16> poison, i16 %i.bg, i64 0
  %i.bi = trunc i32 %i.aw to i16
  %i.bj = insertelement <2 x i16> %i.bh, i16 %i.bi, i64 1
  %i.bk = and <2 x i16> %i.bj, splat (i16 1023)
  %i.bl = or disjoint <2 x i16> %i.bk, <i16 -10240, i16 -9216>
  store <2 x i16> %i.bl, ptr %i.r, align 2
  br label %.thread

.thread:                                          ; preds = %bb.g, %.preheader, %bb.f, %bb.j, %bb.i, %bb.d
  %.3 = phi ptr [ %i.r, %bb.d ], [ %i.bc, %bb.i ], [ %i.az, %bb.f ], [ %i.bf, %bb.j ], [ %i.r, %.preheader ], [ %i.r, %bb.g ] ; 3 uses
  %i.bm = load ptr, ptr %i.m, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1024 ; 3 uses
  %i.bo = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.bp = icmp ult ptr %i.bo, %i.ao
  %i.bq = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  %i.br = icmp ult ptr %i.bq, %i.bn
  %i.bs = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %i.bs, label %.lr.ph79, label %._crit_edge

.lr.ph79:                                         ; preds = %.thread
  %i.bt = ptrtoint ptr %i.ao to i64
  %i.bu = ptrtoint ptr %i.bn to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph79, %.thread67
  %1 = phi ptr [ %i.bq, %.lr.ph79 ], [ %i.fz, %.thread67 ] ; 2 uses
  %i.bv = phi ptr [ %i.bo, %.lr.ph79 ], [ %i.fx, %.thread67 ] ; 3 uses
  %.478.a = phi ptr [ %.3, %.lr.ph79 ], [ %.6, %.thread67 ] ; 5 uses
  %2 = load i8, ptr %i.a, align 1                 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1             ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 3 uses
  store ptr %i.bx, ptr %i.c, align 8
  %i.by = icmp sgt i8 %i.bw, -1
  %i.bz = icmp eq i8 %2, 12                       ; 2 uses
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false, !prof !6
  br i1 %i.ca, label %bb.l, label %bb.m, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.cb = zext nneg i8 %i.bw to i32
  br label %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.cc = zext i8 %i.bw to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %2 to i32
  %i.cg = zext i8 %i.ce to i32                    ; 2 uses
  %i.ch = add nuw nsw i32 %i.cg, %i.cf
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE6states, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1             ; 2 uses
  store i8 %i.ck, ptr %i.a, align 1
  %i.cl = load i32, ptr %i.b, align 4
  %i.cm = shl i32 %i.cl, 6                        ; 3 uses
  %i.cn = zext i8 %i.bw to i32
  %i.co = lshr i32 %i.cg, 1
  %i.cp = lshr i32 127, %i.co
  %i.cq = and i32 %i.cp, %i.cn
  %i.cr = or i32 %i.cm, %i.cq                     ; 4 uses
  store i32 %i.cr, ptr %i.b, align 4
  switch i8 %i.ck, label %.thread67 [
    i8 12, label %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit
    i8 0, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  store i8 12, ptr %i.a, align 1
  store i32 0, ptr %i.b, align 4
  br i1 %i.bz, label %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.bv, ptr %i.c, align 8
  br label %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit.thread

_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit: ; preds = %bb.m
  store i32 0, ptr %i.b, align 4
  %i.cs = icmp ult i32 %i.cm, 65536
  br i1 %i.cs, label %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit.thread, label %bb.p, !prof !9

_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit.thread: ; preds = %bb.o, %bb.n, %bb.l, %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit
  %.0.i63 = phi i32 [ %i.cr, %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit ], [ 65533, %bb.o ], [ 65533, %bb.n ], [ %i.cb, %bb.l ]
  %i.ct = trunc nuw i32 %.0.i63 to i16
  store i16 %i.ct, ptr %.478.a, align 2
  br label %bb.r

bb.p:                                             ; preds = %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit
  %i.cu = icmp eq i32 %i.cr, -4
  br i1 %i.cu, label %.thread67, label %bb.q, !llvm.loop !10

bb.q:                                             ; preds = %bb.p
  %i.cv = add i32 %i.cm, 983040
  %i.cw = lshr i32 %i.cv, 10
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = and i16 %i.cx, 1023
  %i.cz = or disjoint i16 %i.cy, -10240
  store i16 %i.cz, ptr %.478.a, align 2
  %i.da = trunc i32 %i.cr to i16
  %i.db = and i16 %i.da, 1023
  %i.dc = or disjoint i16 %i.db, -9216
  %i.dd = getelementptr inbounds nuw i8, ptr %.478.a, i64 4
  store i16 %i.dc, ptr %1, align 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit.thread
  %.5 = phi ptr [ %1, %_ZN7unibrow4Utf818ValueOfIncrementalEPPKhPN14Utf8DfaDecoder5StateEPj.exit.thread ], [ %i.dd, %bb.q ] ; 3 uses
  %i.de = load ptr, ptr %i.c, align 8             ; 14 uses
  %i.df = ptrtoint ptr %i.de to i64               ; 6 uses
  %i.dg = sub i64 %i.bt, %i.df
  %i.dh = ptrtoint ptr %.5 to i64
  %i.di = sub i64 %i.bu, %i.dh
  %i.dj = ashr exact i64 %i.di, 1
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.dj, i64 %i.dg) ; 2 uses
  %i.dk = and i64 %.sroa.speculated, 4294967295   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dk ; 2 uses
  %i.dm = and i64 %.sroa.speculated, 4294967288
  %.not69 = icmp eq i64 %i.dm, 0
  br i1 %.not69, label %.thread.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.r
  %i.dn = and i64 %i.df, 7
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %.preheader.i.preheader, label %.lr.ph.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.preheader, %.preheader30.i
  %.126.i.ph = phi ptr [ %i.dr, %.lr.ph.preheader ], [ %i.de, %.preheader30.i ], [ %i.dx, %.lr.ph ], [ %i.ed, %.lr.ph.1 ], [ %i.ej, %.lr.ph.2 ], [ %i.ep, %.lr.ph.3 ], [ %i.ev, %.lr.ph.4 ], [ %i.fb, %.lr.ph.5 ], [ %i.fh, %.lr.ph.6 ]
  br label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %.preheader30.i
  %i.dp = load i8, ptr %i.de, align 1
  %i.dq = icmp slt i8 %i.dp, 0
  br i1 %i.dq, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 3 uses
  %i.ds = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.dt = and i64 %i.ds, 7
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %.preheader.i.preheader, label %.lr.ph.i.lr.ph, !llvm.loop !11

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.dv = load i8, ptr %i.dr, align 1
  %i.dw = icmp slt i8 %i.dv, 0
  br i1 %i.dw, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph.i.lr.ph
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 2 ; 3 uses
  %i.dy = ptrtoint ptr %i.dx to i64               ; 2 uses
  %i.dz = and i64 %i.dy, 7
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %.preheader.i.preheader, label %.lr.ph.i.1, !llvm.loop !11

.lr.ph.i.1:                                       ; preds = %.lr.ph
  %i.eb = load i8, ptr %i.dx, align 1
  %i.ec = icmp slt i8 %i.eb, 0
  br i1 %i.ec, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph.1, !llvm.loop !11

.lr.ph.1:                                         ; preds = %.lr.ph.i.1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.de, i64 3 ; 3 uses
  %i.ee = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ef = and i64 %i.ee, 7
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.preheader.i.preheader, label %.lr.ph.i.2, !llvm.loop !11

.lr.ph.i.2:                                       ; preds = %.lr.ph.1
  %i.eh = load i8, ptr %i.ed, align 1
  %i.ei = icmp slt i8 %i.eh, 0
  br i1 %i.ei, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph.2, !llvm.loop !11

.lr.ph.2:                                         ; preds = %.lr.ph.i.2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.de, i64 4 ; 3 uses
  %i.ek = ptrtoint ptr %i.ej to i64               ; 2 uses
  %i.el = and i64 %i.ek, 7
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %.preheader.i.preheader, label %.lr.ph.i.3, !llvm.loop !11

.lr.ph.i.3:                                       ; preds = %.lr.ph.2
  %i.en = load i8, ptr %i.ej, align 1
  %i.eo = icmp slt i8 %i.en, 0
  br i1 %i.eo, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph.3, !llvm.loop !11

.lr.ph.3:                                         ; preds = %.lr.ph.i.3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.de, i64 5 ; 3 uses
  %i.eq = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.er = and i64 %i.eq, 7
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %.preheader.i.preheader, label %.lr.ph.i.4, !llvm.loop !11

.lr.ph.i.4:                                       ; preds = %.lr.ph.3
  %i.et = load i8, ptr %i.ep, align 1
  %i.eu = icmp slt i8 %i.et, 0
  br i1 %i.eu, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph.4, !llvm.loop !11

.lr.ph.4:                                         ; preds = %.lr.ph.i.4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.de, i64 6 ; 3 uses
  %i.ew = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.ex = and i64 %i.ew, 7
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %.preheader.i.preheader, label %.lr.ph.i.5, !llvm.loop !11

.lr.ph.i.5:                                       ; preds = %.lr.ph.4
  %i.ez = load i8, ptr %i.ev, align 1
  %i.fa = icmp slt i8 %i.ez, 0
  br i1 %i.fa, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph.5, !llvm.loop !11

.lr.ph.5:                                         ; preds = %.lr.ph.i.5
  %i.fb = getelementptr inbounds nuw i8, ptr %i.de, i64 7 ; 3 uses
  %i.fc = ptrtoint ptr %i.fb to i64               ; 2 uses
  %i.fd = and i64 %i.fc, 7
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %.preheader.i.preheader, label %.lr.ph.i.6, !llvm.loop !11

.lr.ph.i.6:                                       ; preds = %.lr.ph.5
  %i.ff = load i8, ptr %i.fb, align 1
  %i.fg = icmp slt i8 %i.ff, 0
  br i1 %i.fg, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph.6, !llvm.loop !11

.lr.ph.6:                                         ; preds = %.lr.ph.i.6
  %i.fh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  br label %.preheader.i.preheader, !llvm.loop !11

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.s
  %.126.i = phi ptr [ %i.fi, %bb.s ], [ %.126.i.ph, %.preheader.i.preheader ] ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.126.i, i64 8 ; 2 uses
  %.not.i = icmp ugt ptr %i.fi, %i.dl
  br i1 %.not.i, label %.thread.loopexit.i, label %bb.s

bb.s:                                             ; preds = %.preheader.i
  %i.fj = load i64, ptr %.126.i, align 8
  %i.fk = and i64 %i.fj, -9187201950435737472
  %.not28.i = icmp eq i64 %i.fk, 0
  br i1 %.not28.i, label %.preheader.i, label %bb.t, !llvm.loop !12

bb.t:                                             ; preds = %bb.s
  %i.fl = ptrtoint ptr %.126.i to i64
  br label %_ZN2v88internal13NonAsciiStartEPKhj.exit

.thread.loopexit.i:                               ; preds = %.preheader.i
  %.pre.i = ptrtoint ptr %.126.i to i64
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.r
  %.244.pre-phi.i = phi i64 [ %.pre.i, %.thread.loopexit.i ], [ %i.df, %bb.r ] ; 2 uses
  %.2.i = phi ptr [ %.126.i, %.thread.loopexit.i ], [ %i.de, %bb.r ] ; 3 uses
  %i.fm = icmp ult ptr %.2.i, %i.dl
  br i1 %i.fm, label %.lr.ph37.preheader.i, label %_ZN2v88internal13NonAsciiStartEPKhj.exit

.lr.ph37.preheader.i:                             ; preds = %.thread.i
  %i.fn = add i64 %i.dk, %i.df
  %i.fo = sub i64 %i.fn, %.244.pre-phi.i
  %scevgep.i = getelementptr i8, ptr %.2.i, i64 %i.fo ; 2 uses
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.v, %.lr.ph37.preheader.i
  %.336.i = phi ptr [ %i.fs, %bb.v ], [ %.2.i, %.lr.ph37.preheader.i ] ; 3 uses
  %i.fp = load i8, ptr %.336.i, align 1
  %i.fq = icmp slt i8 %i.fp, 0
  br i1 %i.fq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph37.i
  %i.fr = ptrtoint ptr %.336.i to i64
  br label %_ZN2v88internal13NonAsciiStartEPKhj.exit

bb.v:                                             ; preds = %.lr.ph37.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.336.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.fs, %scevgep.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph37.i, !llvm.loop !13

._crit_edge.loopexit.i:                           ; preds = %bb.v
  %.pre45.i = ptrtoint ptr %scevgep.i to i64
  br label %_ZN2v88internal13NonAsciiStartEPKhj.exit

_ZN2v88internal13NonAsciiStartEPKhj.exit:         ; preds = %.lr.ph.i.lr.ph, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.preheader, %bb.t, %.thread.i, %bb.u, %._crit_edge.loopexit.i
  %.pn.i = phi i64 [ %i.fl, %bb.t ], [ %i.fr, %bb.u ], [ %.244.pre-phi.i, %.thread.i ], [ %.pre45.i, %._crit_edge.loopexit.i ], [ %i.df, %.lr.ph.i.preheader ], [ %i.ds, %.lr.ph.i.lr.ph ], [ %i.dy, %.lr.ph.i.1 ], [ %i.ee, %.lr.ph.i.2 ], [ %i.ek, %.lr.ph.i.3 ], [ %i.eq, %.lr.ph.i.4 ], [ %i.ew, %.lr.ph.i.5 ], [ %i.fc, %.lr.ph.i.6 ]
  %.1.in.i = sub i64 %.pn.i, %i.df
  %sext = shl i64 %.1.in.i, 32
  %i.ft = ashr exact i64 %sext, 32                ; 3 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %.5, ptr noundef %i.de, i64 noundef %i.ft)
  %i.fu = load ptr, ptr %i.c, align 8
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 %i.ft ; 2 uses
  store ptr %i.fv, ptr %i.c, align 8
  %i.fw = getelementptr inbounds [2 x i8], ptr %.5, i64 %i.ft
  br label %.thread67

.thread67:                                        ; preds = %bb.m, %bb.p, %_ZN2v88internal13NonAsciiStartEPKhj.exit
  %i.fx = phi ptr [ %i.fv, %_ZN2v88internal13NonAsciiStartEPKhj.exit ], [ %i.bx, %bb.p ], [ %i.bx, %bb.m ] ; 3 uses
  %.6 = phi ptr [ %i.fw, %_ZN2v88internal13NonAsciiStartEPKhj.exit ], [ %.478.a, %bb.p ], [ %.478.a, %bb.m ] ; 3 uses
  %i.fy = icmp ult ptr %i.fx, %i.ao
  %i.fz = getelementptr inbounds nuw i8, ptr %.6, i64 2 ; 2 uses
  %i.ga = icmp ult ptr %i.fz, %i.bn
  %i.gb = select i1 %i.fy, i1 %i.ga, i1 false
  br i1 %i.gb, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %.thread67, %.thread
  %.4.lcssa = phi ptr [ %.3, %.thread ], [ %.6, %.thread67 ] ; 2 uses
  %.lcssa74 = phi ptr [ %i.bo, %.thread ], [ %i.fx, %.thread67 ] ; 2 uses
  %i.gc = load i64, ptr %i.aj, align 8
  %i.gd = load ptr, ptr %i.i, align 8
  %i.ge = ptrtoint ptr %.lcssa74 to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = add i64 %i.gc, %i.ge
  %i.gh = sub i64 %i.gg, %i.gf
  store i64 %i.gh, ptr %i.s, align 8
  %i.gi = load ptr, ptr %i.k, align 8
  %i.gj = ptrtoint ptr %.4.lcssa to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = ashr exact i64 %i.gl, 1
  %i.gn = load i64, ptr %i.aq, align 8
  %i.go = add i64 %i.gm, %i.gn
  store i64 %i.go, ptr %i.aq, align 8
  %i.gp = load i32, ptr %i.b, align 4
  store i32 %i.gp, ptr %i.v, align 8
  %3 = load i8, ptr %i.a, align 1
  store i8 %3, ptr %i.t, align 4
  %i.gq = icmp eq ptr %.lcssa74, %i.ao
  %i.gr = zext i1 %i.gq to i64
  %i.gs = load i64, ptr %i.d, align 8
  %i.gt = add i64 %i.gs, %i.gr
  store i64 %i.gt, ptr %i.d, align 8
  store ptr %.4.lcssa, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.w

bb.w:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare noundef i32 @_ZN7unibrow4Utf824ValueOfIncrementalFinishEPN14Utf8DfaDecoder5StateE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  switch i64 %2, label %bb.b [
    i64 1, label %.lr.ph.i.i.i.i.i.i.i.preheader
    i64 2, label %.lr.ph.i.i.i.i.i.i.i37.preheader
    i64 3, label %.lr.ph.i.i.i.i.i.i.i42.preheader
    i64 4, label %.lr.ph.i.i.i.i.i.i.i47.preheader
    i64 5, label %.lr.ph.i.i.i.i.i.i.i52.preheader
    i64 6, label %.lr.ph.i.i.i.i.i.i.i57.preheader
    i64 7, label %.lr.ph.i.i.i.i.i.i.i62.preheader
    i64 8, label %.lr.ph.i.i.i.i.i.i.i67.preheader
    i64 9, label %.lr.ph.i.i.i.i.i.i.i72.preheader
    i64 10, label %.lr.ph.i.i.i.i.i.i.i77.preheader
    i64 11, label %.lr.ph.i.i.i.i.i.i.i82.preheader
    i64 12, label %.lr.ph.i.i.i.i.i.i.i87.preheader
    i64 13, label %.lr.ph.i.i.i.i.i.i.i92.preheader
    i64 14, label %.lr.ph.i.i.i.i.i.i.i97.preheader
    i64 15, label %.lr.ph.i.i.i.i.i.i.i102.preheader
    i64 16, label %.lr.ph.i.i.i.i.i.i.i107.preheader
  ]

.lr.ph.i.i.i.i.i.i.i107.preheader:                ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1
  %i.b = zext i8 %i.a to i16
  store i16 %i.b, ptr %0, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.c, align 1
  %i.f = zext i8 %i.e to i16
  store i16 %i.f, ptr %i.d, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i8, ptr %i.g, align 1
  %i.j = zext i8 %i.i to i16
  store i16 %i.j, ptr %i.h, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.m = load i8, ptr %i.k, align 1
  %i.n = zext i8 %i.m to i16
  store i16 %i.n, ptr %i.l, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i8, ptr %i.o, align 1
  %i.r = zext i8 %i.q to i16
  store i16 %i.r, ptr %i.p, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.u = load i8, ptr %i.s, align 1
  %i.v = zext i8 %i.u to i16
  store i16 %i.v, ptr %i.t, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load i8, ptr %i.w, align 1
  %i.z = zext i8 %i.y to i16
  store i16 %i.z, ptr %i.x, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ac = load i8, ptr %i.aa, align 1
  %i.ad = zext i8 %i.ac to i16
  store i16 %i.ad, ptr %i.ab, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i8, ptr %i.ae, align 1
  %i.ah = zext i8 %i.ag to i16
  store i16 %i.ah, ptr %i.af, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ak = load i8, ptr %i.ai, align 1
  %i.al = zext i8 %i.ak to i16
  store i16 %i.al, ptr %i.aj, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ao = load i8, ptr %i.am, align 1
  %i.ap = zext i8 %i.ao to i16
  store i16 %i.ap, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.as = load i8, ptr %i.aq, align 1
  %i.at = zext i8 %i.as to i16
  store i16 %i.at, ptr %i.ar, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load i8, ptr %i.au, align 1
  %i.ax = zext i8 %i.aw to i16
  store i16 %i.ax, ptr %i.av, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ba = load i8, ptr %i.ay, align 1
  %i.bb = zext i8 %i.ba to i16
  store i16 %i.bb, ptr %i.az, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.be = load i8, ptr %i.bc, align 1
  %i.bf = zext i8 %i.be to i16
  store i16 %i.bf, ptr %i.bd, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.bi = load i8, ptr %i.bg, align 1
  %i.bj = zext i8 %i.bi to i16
  store i16 %i.bj, ptr %i.bh, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader:                ; preds = %bb.a
  %i.bk = load i8, ptr %1, align 1
  %i.bl = zext i8 %i.bk to i16
  store i16 %i.bl, ptr %0, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bo = load i8, ptr %i.bm, align 1
  %i.bp = zext i8 %i.bo to i16
  store i16 %i.bp, ptr %i.bn, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bs = load i8, ptr %i.bq, align 1
  %i.bt = zext i8 %i.bs to i16
  store i16 %i.bt, ptr %i.br, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bw = load i8, ptr %i.bu, align 1
  %i.bx = zext i8 %i.bw to i16
  store i16 %i.bx, ptr %i.bv, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load i8, ptr %i.by, align 1
  %i.cb = zext i8 %i.ca to i16
  store i16 %i.cb, ptr %i.bz, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ce = load i8, ptr %i.cc, align 1
  %i.cf = zext i8 %i.ce to i16
  store i16 %i.cf, ptr %i.cd, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ci = load i8, ptr %i.cg, align 1
  %i.cj = zext i8 %i.ci to i16
  store i16 %i.cj, ptr %i.ch, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.cm = load i8, ptr %i.ck, align 1
  %i.cn = zext i8 %i.cm to i16
  store i16 %i.cn, ptr %i.cl, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = load i8, ptr %i.co, align 1
  %i.cr = zext i8 %i.cq to i16
  store i16 %i.cr, ptr %i.cp, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.cu = load i8, ptr %i.cs, align 1
  %i.cv = zext i8 %i.cu to i16
  store i16 %i.cv, ptr %i.ct, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cy = load i8, ptr %i.cw, align 1
  %i.cz = zext i8 %i.cy to i16
  store i16 %i.cz, ptr %i.cx, align 2
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.dc = load i8, ptr %i.da, align 1
  %i.dd = zext i8 %i.dc to i16
  store i16 %i.dd, ptr %i.db, align 2
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dg = load i8, ptr %i.de, align 1
  %i.dh = zext i8 %i.dg to i16
  store i16 %i.dh, ptr %i.df, align 2
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.dk = load i8, ptr %i.di, align 1
  %i.dl = zext i8 %i.dk to i16
  store i16 %i.dl, ptr %i.dj, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.do = load i8, ptr %i.dm, align 1
  %i.dp = zext i8 %i.do to i16
  store i16 %i.dp, ptr %i.dn, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i97.preheader:                 ; preds = %bb.a
  %i.dq = load i8, ptr %1, align 1
  %i.dr = zext i8 %i.dq to i16
end_hunk_0
