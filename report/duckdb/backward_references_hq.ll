inline.NumInlined: 29
inline.NumDeleted: 13
begin_hunk_0_@_ZN13duckdb_brotli26BrotliZopfliCreateCommandsEmmPKNS_10ZopfliNodeEPiPmPK19BrotliEncoderParamsPNS_7CommandES4_:bb.a
  %.055 = phi i64 [ %i.ag, %bb.c ], [ %i.aa, %bb.b ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !36 ; 3 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = lshr i32 %i.u, 25
  %i.al = add nuw nsw i32 %i.v, 9
  %i.am = sub nsw i32 %i.al, %i.ak                ; 7 uses
  %i.an = add i64 %i.l, %i.ab
  %i.ao = tail call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.e)
  %i.ap = add i64 %i.ao, %i.i
  %i.aq = icmp uge i64 %i.ap, %i.aj
  %i.ar = lshr i32 %i.y, 27                       ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = add i32 %i.ai, 15
  %i.au = add nsw i32 %i.ar, -1
  %i.av = select i1 %i.as, i32 %i.at, i32 %i.au   ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.05465 ; 5 uses
  %i.ay = sub i32 %i.am, %i.u
  %i.az = trunc i64 %.055 to i32                  ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !37
  %i.ba = shl i32 %i.ay, 25
  %i.bb = or disjoint i32 %i.ba, %i.v
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !40
  %i.bd = load i32, ptr %i.m, align 4, !tbaa !41
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bh = add nuw nsw i64 %i.be, 16               ; 2 uses
  %i.bi = icmp samesign ugt i64 %i.bh, %i.aw
  br i1 %i.bi, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL22ZopfliNodeDistanceCodePKN13duckdb_brotli10ZopfliNodeE.exit
  %i.bj = trunc i32 %i.av to i16
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

bb.e:                                             ; preds = %_ZL22ZopfliNodeDistanceCodePKN13duckdb_brotli10ZopfliNodeE.exit
  %i.bk = load i32, ptr %i.n, align 8, !tbaa !42  ; 2 uses
  %i.bl = zext i32 %i.bk to i64                   ; 4 uses
  %i.bm = shl nuw i64 4, %i.bl
  %i.bn = add nsw i64 %i.aw, -16
  %i.bo = sub nsw i64 %i.bn, %i.be
  %i.bp = add i64 %i.bo, %i.bm                    ; 4 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bq, i1 true)
  %i.bs = sub nsw i32 30, %i.br
  %i.bt = zext i32 %i.bs to i64                   ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.bk
  %i.bu = xor i32 %notmask.i, -1
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = and i64 %i.bp, %i.bv
  %i.bx = lshr i64 %i.bp, %i.bt                   ; 2 uses
  %i.by = and i64 %i.bx, 1
  %i.bz = or disjoint i64 %i.by, 2
  %i.ca = shl i64 %i.bz, %i.bt
  %i.cb = sub nsw i64 %i.bt, %i.bl                ; 2 uses
  %i.cc = shl nsw i64 %i.cb, 10
  %i.cd = shl nsw i64 %i.cb, 1
  %i.ce = or i64 %i.bx, 65534
  %i.cf = add i64 %i.cd, %i.ce
  %i.cg = shl i64 %i.cf, %i.bl
  %i.ch = add nuw nsw i64 %i.bw, %i.bh
  %i.ci = add i64 %i.ch, %i.cg
  %i.cj = or i64 %i.ci, %i.cc
  %i.ck = trunc i64 %i.cj to i16
  %i.cl = sub i64 %i.bp, %i.ca
  %i.cm = lshr i64 %i.cl, %i.bl
  %i.cn = trunc i64 %i.cm to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %bb.d, %bb.e
  %.sink = phi i16 [ %i.bj, %bb.d ], [ %i.ck, %bb.e ] ; 2 uses
  %storemerge.i = phi i32 [ 0, %bb.d ], [ %i.cn, %bb.e ]
  store i16 %.sink, ptr %i.bf, align 2, !tbaa !43
  store i32 %storemerge.i, ptr %i.bg, align 4, !tbaa !3
  %i.co = and i16 %.sink, 1023
  %i.cp = icmp eq i16 %i.co, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.cr = icmp ult i64 %.055, 6
  br i1 %i.cr, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.cs = trunc nuw nsw i64 %.055 to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.g:                                             ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.ct = icmp ult i64 %.055, 130
  br i1 %i.ct, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cu = add nsw i64 %.055, -2                   ; 2 uses
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cv, i1 true)
  %i.cx = sub nuw nsw i32 30, %i.cw               ; 2 uses
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = zext nneg i32 %i.cx to i64
  %i.db = lshr i64 %i.cu, %i.da
  %i.dc = add nuw nsw i64 %i.db, %i.cz
  %i.dd = trunc nuw nsw i64 %i.dc to i16
  %i.de = add nuw nsw i16 %i.dd, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.i:                                             ; preds = %bb.g
  %i.df = icmp ult i64 %.055, 2114
  br i1 %i.df, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dg = add nsw i32 %i.az, -66
  %i.dh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dg, i1 true)
  %i.di = trunc nuw nsw i32 %i.dh to i16
  %i.dj = sub nuw nsw i16 41, %i.di
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.k:                                             ; preds = %bb.i
  %i.dk = icmp ult i64 %.055, 6210
  br i1 %i.dk, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dl = icmp ult i64 %.055, 22594
  %..i = select i1 %i.dl, i16 22, i16 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.f, %bb.h, %bb.j, %bb.k, %bb.l
  %.0.i = phi i16 [ %i.cs, %bb.f ], [ %i.de, %bb.h ], [ %i.dj, %bb.j ], [ 21, %bb.k ], [ %..i, %bb.l ] ; 3 uses
  %i.dm = icmp ult i32 %i.am, 10
  br i1 %i.dm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.dn = trunc nuw nsw i32 %i.am to i16
  %i.do = add nsw i16 %i.dn, -2
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.n:                                             ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.dp = icmp ult i32 %i.am, 134
  br i1 %i.dp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %narrow = add nsw i32 %i.am, -6                 ; 2 uses
  %i.dq = sext i32 %narrow to i64
  %i.dr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.ds = sub nsw i32 30, %i.dr                   ; 2 uses
  %i.dt = shl nsw i32 %i.ds, 1
  %i.du = zext i32 %i.dt to i64
  %i.dv = zext nneg i32 %i.ds to i64
  %i.dw = lshr i64 %i.dq, %i.dv
  %i.dx = add i64 %i.dw, %i.du
  %i.dy = trunc i64 %i.dx to i16
  %i.dz = add i16 %i.dy, 4
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.p:                                             ; preds = %bb.n
  %i.ea = icmp ult i32 %i.am, 2118
  br i1 %i.ea, label %bb.q, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.eb = add nsw i32 %i.am, -70
  %i.ec = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eb, i1 true)
  %i.ed = trunc nuw nsw i32 %i.ec to i16
  %i.ee = sub nuw nsw i16 43, %i.ed
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %bb.m, %bb.o, %bb.q
  %.0.i56 = phi i16 [ %i.do, %bb.m ], [ %i.dz, %bb.o ], [ %i.ee, %bb.q ] ; 4 uses
  %i.ef = icmp samesign ult i16 %.0.i, 8
  %or.cond.i = and i1 %i.cp, %i.ef
  %i.eg = icmp ult i16 %.0.i56, 16
  %or.cond5.i = and i1 %or.cond.i, %i.eg
  br i1 %or.cond5.i, label %bb.r, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

bb.r:                                             ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %i.eh = shl nuw nsw i16 %.0.i56, 3
  %i.ei = and i16 %i.eh, 64
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread: ; preds = %bb.p, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %.0.i5661 = phi i16 [ %.0.i56, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit ], [ 23, %bb.p ] ; 2 uses
  %i.ej = lshr i16 %.0.i5661, 3
  %i.ek = lshr i16 %.0.i, 3
  %narrow.i = mul nuw nsw i16 %i.ek, 3
  %narrow21.i = add nuw nsw i16 %i.ej, %narrow.i
  %i.el = zext nneg i16 %narrow21.i to i32        ; 2 uses
  %i.em = shl nuw nsw i32 %i.el, 1
  %i.en = shl nuw nsw i32 %i.el, 6
  %i.eo = add nuw nsw i32 %i.en, 64
  %i.ep = lshr i32 5377344, %i.em
  %i.eq = and i32 %i.ep, 192
  %i.er = add nuw nsw i32 %i.eo, %i.eq
  %i.es = trunc i32 %i.er to i16
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit: ; preds = %bb.r, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread
  %.0.i5662 = phi i16 [ %.0.i56, %bb.r ], [ %.0.i5661, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %.pn.i = phi i16 [ %i.ei, %bb.r ], [ %i.es, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %i.et = and i16 %.0.i5662, 7
  %i.eu = shl nuw nsw i16 %.0.i, 3
  %i.ev = and i16 %i.eu, 56
  %i.ew = or disjoint i16 %i.et, %i.ev
  %.0.i57 = or disjoint i16 %i.ew, %.pn.i
  store i16 %.0.i57, ptr %i.cq, align 4, !tbaa !43
  %i.ex = icmp ne i32 %i.av, 0
  %or.cond = and i1 %i.aq, %i.ex
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.ey = load i32, ptr %i.o, align 4, !tbaa !3
  store i32 %i.ey, ptr %i.p, align 4, !tbaa !3
  %i.ez = load <2 x i32>, ptr %3, align 4, !tbaa !3
  store <2 x i32> %i.ez, ptr %i.q, align 4, !tbaa !3
  store i32 %i.ai, ptr %3, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.fa = load i64, ptr %7, align 8, !tbaa !35
  %i.fb = add i64 %i.fa, %.055
  store i64 %i.fb, ptr %7, align 8, !tbaa !35
  %i.fc = add i64 %i.ab, %i.w                     ; 2 uses
  %i.fd = add i64 %.05465, 1
  %.not = icmp eq i32 %i.ad, -1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.t, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.fc, %bb.t ]
  %i.fe = sub i64 %0, %.0.lcssa
  %i.ff = load i64, ptr %4, align 8, !tbaa !35
  %i.fg = add i64 %i.fe, %i.ff
  store i64 %i.fg, ptr %4, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN13duckdb_brotli31BrotliZopfliComputeShortestPathEPNS_13MemoryManagerEmmPKhmS3_PK19BrotliEncoderParamsPKiPNS_6HasherEPNS_10ZopfliNodeE(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef readonly captures(none) %5, ptr noundef readonly captures(none) %6, ptr noundef readonly captures(none) %7, ptr noundef readonly captures(none) %8, ptr noundef captures(none) initializes((0, 4), (12, 16)) %9) local_unnamed_addr #3 {
bb.a:
  %10 = alloca %struct.PosData, align 8           ; 28 uses
  %11 = alloca %struct.PosData, align 8           ; 11 uses
  %i.a = alloca [38 x i32], align 16              ; 15 uses
  %12 = alloca %struct.StartPosQueue, align 8     ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !10
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = add i64 %i.g, -16                        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !45
  %i.k = icmp slt i32 %i.j, 11
  %i.l = select i1 %i.k, i64 150, i64 325         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.m = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 3072) ; 8 uses
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 127)
  %i.o = add i64 %2, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !46   ; 3 uses
  %i.s = load i64, ptr %i.p, align 8, !tbaa !47
  %.not = icmp eq i64 %i.s, 0
  %i.t = select i1 %.not, i64 0, i64 256
  %i.u = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 9896) ; 7 uses
  store i32 0, ptr %9, align 4, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 12
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 2848
  store i64 %1, ptr %i.w, align 8, !tbaa !48
  %i.x = add i64 %1, 2                            ; 2 uses
  %.not.i240 = icmp eq i64 %i.x, 0
  br i1 %.not.i240, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = shl i64 %i.x, 2
  %i.z = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.y)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = phi ptr [ %i.z, %bb.b ], [ null, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 2832 ; 4 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !53 ; 2 uses
  %.not12.i = icmp eq i32 %i.ad, 0
  br i1 %.not12.i, label %_ZL19InitZopfliCostModelPN13duckdb_brotli13MemoryManagerEP15ZopfliCostModelPK20BrotliDistanceParamsm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = zext i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.af)
  %.pre.i = load i32, ptr %i.ac, align 4, !tbaa !53
  br label %_ZL19InitZopfliCostModelPN13duckdb_brotli13MemoryManagerEP15ZopfliCostModelPK20BrotliDistanceParamsm.exit

_ZL19InitZopfliCostModelPN13duckdb_brotli13MemoryManagerEP15ZopfliCostModelPK20BrotliDistanceParamsm.exit: ; preds = %bb.c, %bb.d
  %i.ah = phi i32 [ %.pre.i, %bb.d ], [ 0, %bb.c ]
  %i.ai = phi ptr [ %i.ag, %bb.d ], [ null, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 2816 ; 3 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 2824
  store i32 %i.ah, ptr %i.ak, align 8, !tbaa !55
  tail call fastcc void @_ZL34ZopfliCostModelSetFromLiteralCostsP15ZopfliCostModelmPKhm(ptr noundef nonnull %i.u, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 256 ; 3 uses
  store i64 0, ptr %i.al, align 8, !tbaa !56
  %i.am = icmp ugt i64 %1, 3
  br i1 %i.am, label %.lr.ph543, label %._crit_edge544

.lr.ph543:                                        ; preds = %_ZL19InitZopfliCostModelPN13duckdb_brotli13MemoryManagerEP15ZopfliCostModelPK20BrotliDistanceParamsm.exit
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 624
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 629
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 696
  %i.as = getelementptr [8 x i8], ptr %i.m, i64 %i.t ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 3 uses
  %i.aw = add i64 %i.r, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.ay = ptrtoint ptr %i.as to i64
  %i.az = getelementptr i8, ptr %i.as, i64 -512   ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 360
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.bd = add i64 %i.c, %2
  %i.be = add i64 %i.bd, %i.r
  %i.bf = add i64 %i.r, %i.h
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 28
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 20
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph543, %bb.df
  %.0542 = phi i64 [ 0, %.lr.ph543 ], [ %i.acq, %bb.df ] ; 5 uses
  %i.bw = add i64 %.0542, %2                      ; 19 uses
  %i.bx = call noundef i64 @llvm.umin.i64(i64 %i.bw, i64 %i.h) ; 2 uses
  %i.by = add i64 %i.bw, %i.c
  %i.bz = call noundef i64 @llvm.umin.i64(i64 %i.by, i64 %i.h) ; 2 uses
  %i.ca = load i32, ptr %i.an, align 8, !tbaa !58
  %.not144 = icmp eq i32 %i.ca, 0
  br i1 %.not144, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not145 = icmp eq i64 %i.bw, 0
  br i1 %.not145, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cb = add i64 %i.bw, -1
  %i.cc = and i64 %i.cb, %4
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !7   ; 2 uses
  %.not325 = icmp eq i64 %i.bw, 1
  br i1 %.not325, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = add i64 %i.bw, -2
  %i.cg = and i64 %i.cf, %4
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !7
  %i.cj = zext i8 %i.ci to i64
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %.shrunk = phi i8 [ %i.ce, %bb.h ], [ %i.ce, %bb.g ], [ 0, %bb.f ]
  %i.ck = phi i64 [ %i.cj, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.cl = zext i8 %.shrunk to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ck
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !7
  %i.cq = or i8 %i.cp, %i.cn
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !7
  %i.cu = zext i8 %i.ct to i64
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.e
  %.0134 = phi i64 [ %i.cu, %.thread ], [ 0, %bb.e ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.0134
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !59
  %i.cx = sub i64 %1, %.0542                      ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.cy = and i64 %i.bw, %4                       ; 4 uses
  %i.cz = load i32, ptr %i.i, align 4, !tbaa !45, !noalias !63
  %.not.i = icmp eq i32 %i.cz, 11
  %i.da = select i1 %.not.i, i64 64, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !63
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %i.bw, i64 %i.da) ; 2 uses
  %.072.i381 = add i64 %i.bw, -1                  ; 2 uses
  %i.db = icmp ugt i64 %.072.i381, %spec.select.i
  br i1 %i.db, label %.lr.ph385, label %.thread266
end_hunk_0
