Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilCube?download=true
inline.NumInlined: 95
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@Hsh_IntManAdd:bb.a
  %.021.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.ds, %.lr.ph.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 %indvars.iv.i.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !33
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add i32 %.021.i.i, %i.cq
  %i.cs = mul i32 %i.cr, 1025                     ; 2 uses
  %i.ct = lshr i32 %i.cs, 6
  %i.cu = xor i32 %i.ct, %i.cs
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 %indvars.iv.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !33
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add i32 %i.cu, %i.cy
  %i.da = mul i32 %i.cz, 1025                     ; 2 uses
  %i.db = lshr i32 %i.da, 6
  %i.dc = xor i32 %i.db, %i.da
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ck, i64 %indvars.iv.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  %i.df = load i8, ptr %i.de, align 1, !tbaa !33
  %i.dg = zext i8 %i.df to i32
  %i.dh = add i32 %i.dc, %i.dg
  %i.di = mul i32 %i.dh, 1025                     ; 2 uses
  %i.dj = lshr i32 %i.di, 6
  %i.dk = xor i32 %i.dj, %i.di
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %indvars.iv.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 3
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !33
  %i.do = zext i8 %i.dn to i32
  %i.dp = add i32 %i.dk, %i.do
  %i.dq = mul i32 %i.dp, 1025                     ; 2 uses
  %i.dr = lshr i32 %i.dq, 6
  %i.ds = xor i32 %i.dr, %i.dq                    ; 2 uses
  %.not.i.i49.3 = icmp eq i64 %indvars.iv.next.i.i.3, %i.cn
  br i1 %.not.i.i49.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !39

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.dt = mul i32 %i.ds, 9
  br label %Hsh_IntManHash.exit.i

Hsh_IntManHash.exit.i:                            ; preds = %._crit_edge.loopexit.i.i, %.loopexit
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit ], [ %i.dt, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.du = lshr i32 %.0.lcssa.i.i, 11
  %i.dv = xor i32 %i.du, %.0.lcssa.i.i
  %i.dw = mul i32 %i.dv, 32769
  %i.dx = urem i32 %i.dw, %.val.i48
  %i.dy = getelementptr i8, ptr %i.cf, i64 8
  %.val17.i = load ptr, ptr %i.dy, align 8, !tbaa !13
  %i.dz = sext i32 %i.dx to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %.val17.i, i64 %i.dz ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !32 ; 4 uses
  %i.ec = icmp eq i32 %i.eb, -1
  br i1 %i.ec, label %Hsh_IntManLookup.exit.thread, label %Hsh_IntObj.exit.lr.ph.i

Hsh_IntObj.exit.lr.ph.i:                          ; preds = %Hsh_IntManHash.exit.i
  %i.ed = getelementptr i8, ptr %i.ce, i64 8
  %.val.i.i = load ptr, ptr %i.ed, align 8, !tbaa !26 ; 4 uses
  %.not.i50 = icmp eq ptr %.val.i.i, null
  %i.ee = sext i32 %.val39 to i64
  %i.ef = shl nsw i64 %i.ee, 2                    ; 2 uses
  br i1 %.not.i50, label %Hsh_IntObj.exit, label %Hsh_IntObj.exit.lr.ph.split.i

Hsh_IntObj.exit.lr.ph.split.i:                    ; preds = %Hsh_IntObj.exit.lr.ph.i
  %i.eg = sext i32 %i.eb to i64                   ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !43
  %i.ej = mul nsw i32 %i.ei, %.val39
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %.val40.val, i64 %i.ek
  %bcmp25.i = tail call i32 @bcmp(ptr readonly %i.ck, ptr %i.el, i64 %i.ef)
  %.not1626.i = icmp eq i32 %bcmp25.i, 0
  br i1 %.not1626.i, label %Hsh_IntObj.exit, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %Hsh_IntObj.exit.lr.ph.split.i, %Hsh_IntObj.exit.i
  %i.em = phi i64 [ %i.er, %Hsh_IntObj.exit.i ], [ %i.eg, %Hsh_IntObj.exit.lr.ph.split.i ]
  %i.en = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !32 ; 3 uses
  %i.eq = icmp eq i32 %i.ep, -1
  br i1 %i.eq, label %Hsh_IntManLookup.exit.thread.loopexit, label %Hsh_IntObj.exit.i, !llvm.loop !41

Hsh_IntObj.exit.i:                                ; preds = %.lr.ph.i51
  %i.er = sext i32 %i.ep to i64                   ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !43
  %i.eu = mul nsw i32 %i.et, %.val39
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %.val40.val, i64 %i.ev
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.ck, ptr %i.ew, i64 %i.ef)
  %.not16.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not16.i, label %Hsh_IntObj.exit, label %.lr.ph.i51, !llvm.loop !41

Hsh_IntManLookup.exit.thread.loopexit:            ; preds = %.lr.ph.i51
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  br label %Hsh_IntManLookup.exit.thread

Hsh_IntManLookup.exit.thread:                     ; preds = %Hsh_IntManLookup.exit.thread.loopexit, %Hsh_IntManHash.exit.i
  %.0.lcssa.i5257 = phi ptr [ %i.ea, %Hsh_IntManHash.exit.i ], [ %i.ex, %Hsh_IntManLookup.exit.thread.loopexit ]
  %i.ey = getelementptr i8, ptr %i.ce, i64 4      ; 3 uses
  store i32 %.val32, ptr %.0.lcssa.i5257, align 4, !tbaa !32
  %.sroa.0.0.insert.ext.i = zext i32 %1 to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, -4294967296
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !24 ; 7 uses
  %i.fa = load i32, ptr %i.ce, align 8, !tbaa !25
  %i.fb = icmp eq i32 %i.ez, %i.fa
  br i1 %i.fb, label %bb.i, label %Vec_WrdPush.exit

bb.i:                                             ; preds = %Hsh_IntManLookup.exit.thread
  %i.fc = icmp slt i32 %i.ez, 16
  br i1 %i.fc, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !26 ; 2 uses
  %.not9.i.i53 = icmp eq ptr %i.fe, null
  br i1 %.not9.i.i53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ff = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.fe, i64 noundef 128) #19
  br label %Vec_WrdGrow.exit.i

bb.l:                                             ; preds = %bb.j
  %i.fg = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #16
  br label %Vec_WrdGrow.exit.i

Vec_WrdGrow.exit.i:                               ; preds = %bb.l, %bb.k
  %i.fh = phi ptr [ %i.ff, %bb.k ], [ %i.fg, %bb.l ]
  store ptr %i.fh, ptr %i.fd, align 8, !tbaa !26
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.m:                                             ; preds = %bb.i
  %i.fi = icmp samesign ult i32 %i.ez, 1073741823
  %i.fj = shl nuw nsw i32 %i.ez, 1
  %spec.select.i = select i1 %i.fi, i32 %i.fj, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ez, %spec.select.i
  br i1 %.not.i9.i, label %bb.n, label %Vec_WrdPush.exit

bb.n:                                             ; preds = %bb.m
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !26 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.fl, null
  %i.fm = zext nneg i32 %spec.select.i to i64
  %i.fn = shl nuw nsw i64 %i.fm, 3                ; 2 uses
  br i1 %.not9.i10.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fo = tail call ptr @realloc(ptr noundef nonnull %i.fl, i64 noundef %i.fn) #19
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.fp = tail call noalias ptr @malloc(i64 noundef %i.fn) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fq = phi ptr [ %i.fo, %bb.o ], [ %i.fp, %bb.p ]
  store ptr %i.fq, ptr %i.fk, align 8, !tbaa !26
  br label %Vec_WrdGrow.exit11.sink.split.i

Vec_WrdGrow.exit11.sink.split.i:                  ; preds = %bb.q, %Vec_WrdGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.q ], [ 16, %Vec_WrdGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ce, align 8, !tbaa !25
  %.pre79 = load i32, ptr %i.ey, align 4, !tbaa !24
  %.pre80 = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %Hsh_IntManLookup.exit.thread, %bb.m, %Vec_WrdGrow.exit11.sink.split.i
  %i.fr = phi ptr [ %i.ce, %Hsh_IntManLookup.exit.thread ], [ %i.ce, %bb.m ], [ %.pre80, %Vec_WrdGrow.exit11.sink.split.i ]
  %i.fs = phi i32 [ %i.ez, %Hsh_IntManLookup.exit.thread ], [ %i.ez, %bb.m ], [ %.pre79, %Vec_WrdGrow.exit11.sink.split.i ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !26
  %i.fv = add nsw i32 %i.fs, 1
  store i32 %i.fv, ptr %i.ey, align 4, !tbaa !24
  %i.fw = sext i32 %i.fs to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.fw
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.fx, align 8, !tbaa !34
  %i.fy = getelementptr i8, ptr %i.fr, i64 4
  %.val = load i32, ptr %i.fy, align 4, !tbaa !24
  %i.fz = add nsw i32 %.val, -1
  br label %Hsh_IntObj.exit

Hsh_IntObj.exit:                                  ; preds = %Hsh_IntObj.exit.i, %Hsh_IntObj.exit.lr.ph.split.i, %Hsh_IntObj.exit.lr.ph.i, %Vec_WrdPush.exit
  %.030 = phi i32 [ %i.fz, %Vec_WrdPush.exit ], [ %i.eb, %Hsh_IntObj.exit.lr.ph.i ], [ %i.eb, %Hsh_IntObj.exit.lr.ph.split.i ], [ %i.ep, %Hsh_IntObj.exit.i ]
  ret i32 %.030
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @Abc_EnumerateCubeStates() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [9 x [24 x i8]], align 16         ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 25165824, ptr %i.b, align 8, !tbaa !12
  %calloc.i = tail call dereferenceable_or_null(100663296) ptr @calloc(i64 1, i64 100663296) ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %calloc.i, ptr %i.d, align 8, !tbaa !13
  store i32 25165824, ptr %i.c, align 4, !tbaa !14
  %i.e = tail call noalias dereferenceable_or_null(4294967296) ptr @calloc(i64 noundef 536870912, i64 noundef 8) #17 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.f = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #18
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %4, align 8, !tbaa !30
  %i.i = mul nsw i64 %i.h, 1000000
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31
  %i.l = sdiv i64 %i.k, 1000
  %i.m = add nsw i64 %i.l, %i.i
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.m, %bb.b ], [ -1, %bb.a ]  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  store <4 x i32> <i32 50462976, i32 117835012, i32 185207048, i32 252579084>, ptr %calloc.i, align 4, !tbaa !32
  %i.n = getelementptr i8, ptr %calloc.i, i64 16
  store i32 319951120, ptr %i.n, align 4, !tbaa !32
  %i.o = getelementptr i8, ptr %calloc.i, i64 20
  store i32 387323156, ptr %i.o, align 4, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 3307258896
  store i64 1, ptr %i.p, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit, %bb.c
  %indvars.iv158 = phi i64 [ 0, %Abc_Clock.exit ], [ %indvars.iv.next159, %bb.c ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %Abc_Clock.exit ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv158 ; 30 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store <4 x i32> <i32 50462976, i32 117835012, i32 185207048, i32 252579084>, ptr %i.q, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 319951120, ptr %.sroa.29.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20 ; 2 uses
  store i32 387323156, ptr %.sroa.34.0..sroa_idx, align 4
  %i.r = getelementptr inbounds nuw [72 x i8], ptr @__const.Abc_EnumerateCubeStates.pXYZ, i64 %indvars.iv158 ; 20 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !32
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %i.q, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -1       ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !32
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.q, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1     ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !33
  store i8 %i.ac, ptr %i.v, align 1, !tbaa !33
  store i8 %i.w, ptr %i.ab, align 1, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !32
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1     ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !32
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr i8, ptr %i.q, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -1     ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !33
  store i8 %i.ao, ptr %i.ah, align 1, !tbaa !33
  store i8 %i.ai, ptr %i.an, align 1, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !32
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %i.q, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 -1     ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !32
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr i8, ptr %i.q, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 -1     ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !33
  store i8 %i.ba, ptr %i.at, align 1, !tbaa !33
  store i8 %i.au, ptr %i.az, align 1, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !32
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %i.q, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -1     ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 28 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr i8, ptr %i.q, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -1     ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !33
  store i8 %i.bm, ptr %i.bf, align 1, !tbaa !33
  store i8 %i.bg, ptr %i.bl, align 1, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !32
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %i.q, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 -1     ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 36 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !32
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %i.q, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -1     ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !33
  store i8 %i.by, ptr %i.br, align 1, !tbaa !33
  store i8 %i.bs, ptr %i.bx, align 1, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !32
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr i8, ptr %i.q, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 -1     ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !33
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 44 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !32
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr i8, ptr %i.q, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1     ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !33
  store i8 %i.ck, ptr %i.cd, align 1, !tbaa !33
  store i8 %i.ce, ptr %i.cj, align 1, !tbaa !33
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !32
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr i8, ptr %i.q, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 -1     ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !33
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 52 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr i8, ptr %i.q, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 -1     ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !33
  store i8 %i.cw, ptr %i.cp, align 1, !tbaa !33
  store i8 %i.cq, ptr %i.cv, align 1, !tbaa !33
  %i.cx = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !32
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr i8, ptr %i.q, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 -1     ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !33
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 60 ; 3 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !32
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr i8, ptr %i.q, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 -1     ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !33
  store i8 %i.di, ptr %i.db, align 1, !tbaa !33
  store i8 %i.dc, ptr %i.dh, align 1, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !32
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr i8, ptr %i.q, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 -1     ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !33
  %i.dp = getelementptr inbounds nuw i8, ptr %i.r, i64 68 ; 3 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !32
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr i8, ptr %i.q, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 -1     ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !33
  store i8 %i.du, ptr %i.dn, align 1, !tbaa !33
  store i8 %i.do, ptr %i.dt, align 1, !tbaa !33
  %5 = mul nuw nsw i64 %indvars.iv, 6             ; 3 uses
  %6 = load i32, ptr %i.q, align 8                ; 3 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %calloc.i, i64 %5 ; 3 uses
  store i32 %6, ptr %7, align 4, !tbaa !32
  %i.dv = getelementptr i8, ptr %7, i64 4
  %i.dw = load <4 x i32>, ptr %.sroa.10.0..sroa_idx, align 4 ; 3 uses
  %i.dx = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  store <4 x i32> %i.dw, ptr %i.dv, align 4, !tbaa !32
  %i.dy = load i32, ptr %.sroa.34.0..sroa_idx, align 4 ; 2 uses
  %i.dz = getelementptr i8, ptr %7, i64 20
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !32
  %i.ea = zext i32 %6 to i64
  %sext = shl i64 %i.ea, 56
  %i.eb = ashr exact i64 %sext, 56                ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !32
  %i.ee = shl i32 %i.ed, 2
  %i.ef = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.eb
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !32
  %i.eh = or i32 %i.ee, %i.eg
  %i.ei = sext i32 %i.eh to i64
  %i.ej = lshr i32 %6, 24
  %i.ek = zext nneg i32 %i.ej to i64
  %sext253 = shl nuw i64 %i.ek, 56
  %i.el = ashr exact i64 %sext253, 56             ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !32
  %i.eo = shl i32 %i.en, 2
  %i.ep = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.el
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !32
  %i.er = or i32 %i.eo, %i.eq
  %i.es = sext i32 %i.er to i64
  %i.et = shl nsw i64 %i.es, 5
  %i.eu = xor i64 %i.et, %i.ei                    ; 2 uses
  %i.ev = lshr i32 %i.dx, 16
  %i.ew = zext nneg i32 %i.ev to i64
  %sext254 = shl i64 %i.ew, 56
  %i.ex = ashr exact i64 %sext254, 56             ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !32
  %i.fa = shl i32 %i.ez, 2
  %i.fb = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.ex
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !32
  %i.fd = or i32 %i.fa, %i.fc
  %i.fe = sext i32 %i.fd to i64
  %i.ff = shl nsw i64 %i.fe, 10
  %i.fg = extractelement <4 x i32> %i.dw, i64 1
  %i.fh = lshr i32 %i.fg, 8
  %i.fi = zext nneg i32 %i.fh to i64
  %sext255 = shl i64 %i.fi, 56
  %i.fj = ashr exact i64 %sext255, 56             ; 2 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !32
  %i.fm = shl i32 %i.fl, 2
  %i.fn = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.fj
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !32
  %i.fp = or i32 %i.fm, %i.fo
  %i.fq = sext i32 %i.fp to i64
  %i.fr = shl nsw i64 %i.fq, 15
  %i.fs = extractelement <4 x i32> %i.dw, i64 2   ; 2 uses
  %i.ft = zext i32 %i.fs to i64
  %sext256 = shl i64 %i.ft, 56
  %i.fu = ashr exact i64 %sext256, 56             ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !32
  %i.fx = shl i32 %i.fw, 2
  %i.fy = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.fu
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !32
  %i.ga = or i32 %i.fx, %i.fz
  %i.gb = sext i32 %i.ga to i64
  %i.gc = shl nsw i64 %i.gb, 20
  %i.gd = lshr i32 %i.fs, 24
  %i.ge = zext nneg i32 %i.gd to i64
  %sext257 = shl nuw i64 %i.ge, 56
  %i.gf = ashr exact i64 %sext257, 56             ; 2 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !32
  %i.gi = shl i32 %i.gh, 2
  %i.gj = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.gf
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !32
  %i.gl = or i32 %i.gi, %i.gk
  %i.gm = sext i32 %i.gl to i64
  %i.gn = shl nsw i64 %i.gm, 25
  %i.go = lshr i32 %i.dy, 8
  %i.gp = zext nneg i32 %i.go to i64
  %sext258 = shl i64 %i.gp, 56
  %i.gq = ashr exact i64 %sext258, 56             ; 2 uses
  %i.gr = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !32
  %i.gt = shl i32 %i.gs, 2
  %i.gu = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.gq
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !32
  %i.gw = or i32 %i.gt, %i.gv
  %i.gx = sext i32 %i.gw to i64
  %i.gy = shl nsw i64 %i.gx, 30
  %i.gz = xor i64 %i.ff, %i.fr
  %i.ha = xor i64 %i.gz, %i.gc
  %i.hb = xor i64 %i.ha, %i.gn
  %i.hc = xor i64 %i.hb, %i.gy
  %i.hd = xor i64 %i.hc, %i.eu
  %i.he = and i64 %i.eu, 63
  %i.hf = shl nuw i64 1, %i.he
  %i.hg = lshr i64 %i.hd, 6
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.hg ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !34
  %i.hj = xor i64 %i.hi, %i.hf
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !34
  %i.hk = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 21 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.hl = load i32, ptr %i.r, align 8, !tbaa !32
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr i8, ptr %i.hk, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 -1     ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !33
  %i.hq = load i32, ptr %i.x, align 4, !tbaa !32
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr i8, ptr %i.hk, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.hs, i64 -1     ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !33
  store i8 %i.hu, ptr %i.ho, align 1, !tbaa !33
  store i8 %i.hp, ptr %i.ht, align 1, !tbaa !33
  %i.hv = load i32, ptr %i.ad, align 8, !tbaa !32
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr i8, ptr %i.hk, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 -1     ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !33
  %i.ia = load i32, ptr %i.aj, align 4, !tbaa !32
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr i8, ptr %i.hk, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.ic, i64 -1     ; 2 uses
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !33
  store i8 %i.ie, ptr %i.hy, align 1, !tbaa !33
  store i8 %i.hz, ptr %i.id, align 1, !tbaa !33
  %i.if = load i32, ptr %i.ap, align 8, !tbaa !32
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr i8, ptr %i.hk, i64 %i.ig
  %i.ii = getelementptr i8, ptr %i.ih, i64 -1     ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !33
  %i.ik = load i32, ptr %i.av, align 4, !tbaa !32
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr i8, ptr %i.hk, i64 %i.il
  %i.in = getelementptr i8, ptr %i.im, i64 -1     ; 2 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !33
  store i8 %i.io, ptr %i.ii, align 1, !tbaa !33
  store i8 %i.ij, ptr %i.in, align 1, !tbaa !33
  %i.ip = load i32, ptr %i.bb, align 8, !tbaa !32
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr i8, ptr %i.hk, i64 %i.iq
  %i.is = getelementptr i8, ptr %i.ir, i64 -1     ; 2 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !33
  %i.iu = load i32, ptr %i.bh, align 4, !tbaa !32
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr i8, ptr %i.hk, i64 %i.iv
  %i.ix = getelementptr i8, ptr %i.iw, i64 -1     ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !33
  store i8 %i.iy, ptr %i.is, align 1, !tbaa !33
  store i8 %i.it, ptr %i.ix, align 1, !tbaa !33
  %i.iz = load i32, ptr %i.bn, align 8, !tbaa !32
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr i8, ptr %i.hk, i64 %i.ja
  %i.jc = getelementptr i8, ptr %i.jb, i64 -1     ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !33
  %i.je = load i32, ptr %i.bt, align 4, !tbaa !32
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr i8, ptr %i.hk, i64 %i.jf
  %i.jh = getelementptr i8, ptr %i.jg, i64 -1     ; 2 uses
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !33
  store i8 %i.ji, ptr %i.jc, align 1, !tbaa !33
  store i8 %i.jd, ptr %i.jh, align 1, !tbaa !33
  %i.jj = load i32, ptr %i.bz, align 8, !tbaa !32
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr i8, ptr %i.hk, i64 %i.jk
  %i.jm = getelementptr i8, ptr %i.jl, i64 -1     ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !33
  %i.jo = load i32, ptr %i.cf, align 4, !tbaa !32
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr i8, ptr %i.hk, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.jq, i64 -1     ; 2 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !33
  store i8 %i.js, ptr %i.jm, align 1, !tbaa !33
  store i8 %i.jn, ptr %i.jr, align 1, !tbaa !33
  %i.jt = load i32, ptr %i.cl, align 8, !tbaa !32
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr i8, ptr %i.hk, i64 %i.ju
  %i.jw = getelementptr i8, ptr %i.jv, i64 -1     ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !33
  %i.jy = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr i8, ptr %i.hk, i64 %i.jz
  %i.kb = getelementptr i8, ptr %i.ka, i64 -1     ; 2 uses
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !33
  store i8 %i.kc, ptr %i.jw, align 1, !tbaa !33
  store i8 %i.jx, ptr %i.kb, align 1, !tbaa !33
  %i.kd = load i32, ptr %i.cx, align 8, !tbaa !32
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr i8, ptr %i.hk, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.kf, i64 -1     ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !33
  %i.ki = load i32, ptr %i.dd, align 4, !tbaa !32
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr i8, ptr %i.hk, i64 %i.kj
  %i.kl = getelementptr i8, ptr %i.kk, i64 -1     ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !33
  store i8 %i.km, ptr %i.kg, align 1, !tbaa !33
  store i8 %i.kh, ptr %i.kl, align 1, !tbaa !33
  %i.kn = load i32, ptr %i.dj, align 8, !tbaa !32
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr i8, ptr %i.hk, i64 %i.ko
  %i.kq = getelementptr i8, ptr %i.kp, i64 -1     ; 2 uses
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !33
  %i.ks = load i32, ptr %i.dp, align 4, !tbaa !32
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr i8, ptr %i.hk, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.ku, i64 -1     ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !33
  store i8 %i.kw, ptr %i.kq, align 1, !tbaa !33
  store i8 %i.kr, ptr %i.kv, align 1, !tbaa !33
  %i.kx = load i32, ptr %i.hk, align 8            ; 3 uses
  %8 = getelementptr inbounds nuw [4 x i8], ptr %calloc.i, i64 %5 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !32
  %i.kz = getelementptr inbounds nuw i8, ptr %i.q, i64 76 ; 2 uses
  %i.la = getelementptr i8, ptr %8, i64 28
  %i.lb = load <4 x i32>, ptr %i.kz, align 4      ; 3 uses
  %i.lc = load i32, ptr %i.kz, align 4
  store <4 x i32> %i.lb, ptr %i.la, align 4, !tbaa !32
  %i.ld = getelementptr inbounds nuw i8, ptr %i.q, i64 92
  %i.le = load i32, ptr %i.ld, align 4            ; 2 uses
  %i.lf = getelementptr i8, ptr %8, i64 44
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !32
  %i.lg = zext i32 %i.kx to i64
  %sext259 = shl i64 %i.lg, 56
  %i.lh = ashr exact i64 %sext259, 56             ; 2 uses
  %i.li = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !32
  %i.lk = shl i32 %i.lj, 2
  %i.ll = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.lh
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !32
  %i.ln = or i32 %i.lk, %i.lm
  %i.lo = sext i32 %i.ln to i64
  %i.lp = lshr i32 %i.kx, 24
  %i.lq = zext nneg i32 %i.lp to i64
  %sext260 = shl nuw i64 %i.lq, 56
  %i.lr = ashr exact i64 %sext260, 56             ; 2 uses
  %i.ls = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !32
  %i.lu = shl i32 %i.lt, 2
  %i.lv = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.lr
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !32
  %i.lx = or i32 %i.lu, %i.lw
  %i.ly = sext i32 %i.lx to i64
  %i.lz = shl nsw i64 %i.ly, 5
  %i.ma = xor i64 %i.lz, %i.lo                    ; 2 uses
  %i.mb = lshr i32 %i.lc, 16
  %i.mc = zext nneg i32 %i.mb to i64
  %sext261 = shl i64 %i.mc, 56
  %i.md = ashr exact i64 %sext261, 56             ; 2 uses
  %i.me = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !32
  %i.mg = shl i32 %i.mf, 2
  %i.mh = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.md
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !32
  %i.mj = or i32 %i.mg, %i.mi
  %i.mk = sext i32 %i.mj to i64
  %i.ml = shl nsw i64 %i.mk, 10
  %i.mm = extractelement <4 x i32> %i.lb, i64 1
  %i.mn = lshr i32 %i.mm, 8
  %i.mo = zext nneg i32 %i.mn to i64
  %sext262 = shl i64 %i.mo, 56
  %i.mp = ashr exact i64 %sext262, 56             ; 2 uses
  %i.mq = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.mp
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !32
  %i.ms = shl i32 %i.mr, 2
  %i.mt = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.mp
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !32
  %i.mv = or i32 %i.ms, %i.mu
  %i.mw = sext i32 %i.mv to i64
  %i.mx = shl nsw i64 %i.mw, 15
  %i.my = extractelement <4 x i32> %i.lb, i64 2   ; 2 uses
  %i.mz = zext i32 %i.my to i64
  %sext263 = shl i64 %i.mz, 56
  %i.na = ashr exact i64 %sext263, 56             ; 2 uses
  %i.nb = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !32
  %i.nd = shl i32 %i.nc, 2
  %i.ne = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.na
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !32
  %i.ng = or i32 %i.nd, %i.nf
  %i.nh = sext i32 %i.ng to i64
  %i.ni = shl nsw i64 %i.nh, 20
  %i.nj = lshr i32 %i.my, 24
  %i.nk = zext nneg i32 %i.nj to i64
  %sext264 = shl nuw i64 %i.nk, 56
  %i.nl = ashr exact i64 %sext264, 56             ; 2 uses
  %i.nm = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !32
  %i.no = shl i32 %i.nn, 2
  %i.np = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.nl
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !32
  %i.nr = or i32 %i.no, %i.nq
  %i.ns = sext i32 %i.nr to i64
  %i.nt = shl nsw i64 %i.ns, 25
  %i.nu = lshr i32 %i.le, 8
  %i.nv = zext nneg i32 %i.nu to i64
  %sext265 = shl i64 %i.nv, 56
  %i.nw = ashr exact i64 %sext265, 56             ; 2 uses
  %i.nx = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !32
  %i.nz = shl i32 %i.ny, 2
  %i.oa = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.nw
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !32
  %i.oc = or i32 %i.nz, %i.ob
  %i.od = sext i32 %i.oc to i64
  %i.oe = shl nsw i64 %i.od, 30
  %i.of = xor i64 %i.ml, %i.mx
  %i.og = xor i64 %i.of, %i.ni
  %i.oh = xor i64 %i.og, %i.nt
  %i.oi = xor i64 %i.oh, %i.oe
  %i.oj = xor i64 %i.oi, %i.ma
  %i.ok = and i64 %i.ma, 63
  %i.ol = shl nuw i64 1, %i.ok
  %i.om = lshr i64 %i.oj, 6
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.om ; 2 uses
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !34
  %i.op = xor i64 %i.oo, %i.ol
  store i64 %i.op, ptr %i.on, align 8, !tbaa !34
  %i.oq = getelementptr inbounds nuw i8, ptr %i.q, i64 144 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oq, ptr noundef nonnull align 8 dereferenceable(24) %i.hk, i64 24, i1 false)
  %i.or = load i32, ptr %i.r, align 8, !tbaa !32
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr i8, ptr %i.oq, i64 %i.os
  %i.ou = getelementptr i8, ptr %i.ot, i64 -1     ; 2 uses
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !33
  %i.ow = load i32, ptr %i.x, align 4, !tbaa !32
  %i.ox = sext i32 %i.ow to i64
  %i.oy = getelementptr i8, ptr %i.oq, i64 %i.ox
  %i.oz = getelementptr i8, ptr %i.oy, i64 -1     ; 2 uses
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !33
  store i8 %i.pa, ptr %i.ou, align 1, !tbaa !33
  store i8 %i.ov, ptr %i.oz, align 1, !tbaa !33
  %i.pb = load i32, ptr %i.ad, align 8, !tbaa !32
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr i8, ptr %i.oq, i64 %i.pc
  %i.pe = getelementptr i8, ptr %i.pd, i64 -1     ; 2 uses
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !33
  %i.pg = load i32, ptr %i.aj, align 4, !tbaa !32
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr i8, ptr %i.oq, i64 %i.ph
  %i.pj = getelementptr i8, ptr %i.pi, i64 -1     ; 2 uses
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !33
  store i8 %i.pk, ptr %i.pe, align 1, !tbaa !33
  store i8 %i.pf, ptr %i.pj, align 1, !tbaa !33
  %i.pl = load i32, ptr %i.ap, align 8, !tbaa !32
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr i8, ptr %i.oq, i64 %i.pm
  %i.po = getelementptr i8, ptr %i.pn, i64 -1     ; 2 uses
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !33
  %i.pq = load i32, ptr %i.av, align 4, !tbaa !32
  %i.pr = sext i32 %i.pq to i64
  %i.ps = getelementptr i8, ptr %i.oq, i64 %i.pr
  %i.pt = getelementptr i8, ptr %i.ps, i64 -1     ; 2 uses
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !33
  store i8 %i.pu, ptr %i.po, align 1, !tbaa !33
  store i8 %i.pp, ptr %i.pt, align 1, !tbaa !33
  %i.pv = load i32, ptr %i.bb, align 8, !tbaa !32
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr i8, ptr %i.oq, i64 %i.pw
  %i.py = getelementptr i8, ptr %i.px, i64 -1     ; 2 uses
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !33
  %i.qa = load i32, ptr %i.bh, align 4, !tbaa !32
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr i8, ptr %i.oq, i64 %i.qb
  %i.qd = getelementptr i8, ptr %i.qc, i64 -1     ; 2 uses
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !33
  store i8 %i.qe, ptr %i.py, align 1, !tbaa !33
  store i8 %i.pz, ptr %i.qd, align 1, !tbaa !33
  %i.qf = load i32, ptr %i.bn, align 8, !tbaa !32
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr i8, ptr %i.oq, i64 %i.qg
  %i.qi = getelementptr i8, ptr %i.qh, i64 -1     ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !33
  %i.qk = load i32, ptr %i.bt, align 4, !tbaa !32
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr i8, ptr %i.oq, i64 %i.ql
  %i.qn = getelementptr i8, ptr %i.qm, i64 -1     ; 2 uses
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !33
  store i8 %i.qo, ptr %i.qi, align 1, !tbaa !33
  store i8 %i.qj, ptr %i.qn, align 1, !tbaa !33
  %i.qp = load i32, ptr %i.bz, align 8, !tbaa !32
  %i.qq = sext i32 %i.qp to i64
  %i.qr = getelementptr i8, ptr %i.oq, i64 %i.qq
  %i.qs = getelementptr i8, ptr %i.qr, i64 -1     ; 2 uses
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !33
  %i.qu = load i32, ptr %i.cf, align 4, !tbaa !32
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr i8, ptr %i.oq, i64 %i.qv
  %i.qx = getelementptr i8, ptr %i.qw, i64 -1     ; 2 uses
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !33
  store i8 %i.qy, ptr %i.qs, align 1, !tbaa !33
  store i8 %i.qt, ptr %i.qx, align 1, !tbaa !33
  %i.qz = load i32, ptr %i.cl, align 8, !tbaa !32
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr i8, ptr %i.oq, i64 %i.ra
  %i.rc = getelementptr i8, ptr %i.rb, i64 -1     ; 2 uses
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !33
  %i.re = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr i8, ptr %i.oq, i64 %i.rf
  %i.rh = getelementptr i8, ptr %i.rg, i64 -1     ; 2 uses
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !33
  store i8 %i.ri, ptr %i.rc, align 1, !tbaa !33
  store i8 %i.rd, ptr %i.rh, align 1, !tbaa !33
  %i.rj = load i32, ptr %i.cx, align 8, !tbaa !32
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr i8, ptr %i.oq, i64 %i.rk
  %i.rm = getelementptr i8, ptr %i.rl, i64 -1     ; 2 uses
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !33
  %i.ro = load i32, ptr %i.dd, align 4, !tbaa !32
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr i8, ptr %i.oq, i64 %i.rp
  %i.rr = getelementptr i8, ptr %i.rq, i64 -1     ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !33
  store i8 %i.rs, ptr %i.rm, align 1, !tbaa !33
  store i8 %i.rn, ptr %i.rr, align 1, !tbaa !33
  %i.rt = load i32, ptr %i.dj, align 8, !tbaa !32
  %i.ru = sext i32 %i.rt to i64
  %i.rv = getelementptr i8, ptr %i.oq, i64 %i.ru
  %i.rw = getelementptr i8, ptr %i.rv, i64 -1     ; 2 uses
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !33
  %i.ry = load i32, ptr %i.dp, align 4, !tbaa !32
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr i8, ptr %i.oq, i64 %i.rz
  %i.sb = getelementptr i8, ptr %i.sa, i64 -1     ; 2 uses
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !33
  store i8 %i.sc, ptr %i.rw, align 1, !tbaa !33
  store i8 %i.rx, ptr %i.sb, align 1, !tbaa !33
  %i.sd = load i32, ptr %i.oq, align 8            ; 3 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr %calloc.i, i64 %5 ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i32 %i.sd, ptr %i.se, align 4, !tbaa !32
  %i.sf = getelementptr inbounds nuw i8, ptr %i.q, i64 148 ; 2 uses
  %i.sg = getelementptr i8, ptr %9, i64 52
  %i.sh = load <4 x i32>, ptr %i.sf, align 4      ; 3 uses
  %i.si = load i32, ptr %i.sf, align 4
  store <4 x i32> %i.sh, ptr %i.sg, align 4, !tbaa !32
  %i.sj = getelementptr inbounds nuw i8, ptr %i.q, i64 164
  %i.sk = load i32, ptr %i.sj, align 4            ; 2 uses
  %i.sl = getelementptr i8, ptr %9, i64 68
  store i32 %i.sk, ptr %i.sl, align 4, !tbaa !32
  %i.sm = zext i32 %i.sd to i64
  %sext266 = shl i64 %i.sm, 56
  %i.sn = ashr exact i64 %sext266, 56             ; 2 uses
  %i.so = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.sn
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !32
  %i.sq = shl i32 %i.sp, 2
  %i.sr = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.sn
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !32
  %i.st = or i32 %i.sq, %i.ss
  %i.su = sext i32 %i.st to i64
  %i.sv = lshr i32 %i.sd, 24
  %i.sw = zext nneg i32 %i.sv to i64
  %sext267 = shl nuw i64 %i.sw, 56
  %i.sx = ashr exact i64 %sext267, 56             ; 2 uses
  %i.sy = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.sx
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !32
  %i.ta = shl i32 %i.sz, 2
  %i.tb = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.sx
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !32
  %i.td = or i32 %i.ta, %i.tc
  %i.te = sext i32 %i.td to i64
  %i.tf = shl nsw i64 %i.te, 5
  %i.tg = xor i64 %i.tf, %i.su                    ; 2 uses
  %i.th = lshr i32 %i.si, 16
  %i.ti = zext nneg i32 %i.th to i64
  %sext268 = shl i64 %i.ti, 56
  %i.tj = ashr exact i64 %sext268, 56             ; 2 uses
  %i.tk = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.tj
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !32
  %i.tm = shl i32 %i.tl, 2
  %i.tn = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.tj
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !32
  %i.tp = or i32 %i.tm, %i.to
  %i.tq = sext i32 %i.tp to i64
  %i.tr = shl nsw i64 %i.tq, 10
  %i.ts = extractelement <4 x i32> %i.sh, i64 1
  %i.tt = lshr i32 %i.ts, 8
  %i.tu = zext nneg i32 %i.tt to i64
  %sext269 = shl i64 %i.tu, 56
  %i.tv = ashr exact i64 %sext269, 56             ; 2 uses
  %i.tw = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.tv
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !32
  %i.ty = shl i32 %i.tx, 2
  %i.tz = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.tv
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !32
  %i.ub = or i32 %i.ty, %i.ua
  %i.uc = sext i32 %i.ub to i64
  %i.ud = shl nsw i64 %i.uc, 15
  %i.ue = extractelement <4 x i32> %i.sh, i64 2   ; 2 uses
  %i.uf = zext i32 %i.ue to i64
  %sext270 = shl i64 %i.uf, 56
  %i.ug = ashr exact i64 %sext270, 56             ; 2 uses
  %i.uh = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.ug
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !32
  %i.uj = shl i32 %i.ui, 2
  %i.uk = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.ug
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !32
  %i.um = or i32 %i.uj, %i.ul
  %i.un = sext i32 %i.um to i64
  %i.uo = shl nsw i64 %i.un, 20
  %i.up = lshr i32 %i.ue, 24
  %i.uq = zext nneg i32 %i.up to i64
  %sext271 = shl nuw i64 %i.uq, 56
  %i.ur = ashr exact i64 %sext271, 56             ; 2 uses
  %i.us = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.ur
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !32
  %i.uu = shl i32 %i.ut, 2
  %i.uv = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.ur
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !32
  %i.ux = or i32 %i.uu, %i.uw
  %i.uy = sext i32 %i.ux to i64
  %i.uz = shl nsw i64 %i.uy, 25
  %i.va = lshr i32 %i.sk, 8
  %i.vb = zext nneg i32 %i.va to i64
  %sext272 = shl i64 %i.vb, 56
  %i.vc = ashr exact i64 %sext272, 56             ; 2 uses
  %i.vd = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.vc
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !32
  %i.vf = shl i32 %i.ve, 2
  %i.vg = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.vc
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !32
  %i.vi = or i32 %i.vf, %i.vh
  %i.vj = sext i32 %i.vi to i64
  %i.vk = shl nsw i64 %i.vj, 30
  %i.vl = xor i64 %i.tr, %i.ud
  %i.vm = xor i64 %i.vl, %i.uo
  %i.vn = xor i64 %i.vm, %i.uz
  %i.vo = xor i64 %i.vn, %i.vk
  %i.vp = xor i64 %i.vo, %i.tg
  %i.vq = and i64 %i.tg, 63
  %i.vr = shl nuw i64 1, %i.vq
  %i.vs = lshr i64 %i.vp, 6
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.vs ; 2 uses
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !34
  %i.vv = xor i64 %i.vu, %i.vr
  store i64 %i.vv, ptr %i.vt, align 8, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next159, 3
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !45

bb.d:                                             ; preds = %bb.c
  %i.vw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.vx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #18
  %i.vy = icmp slt i32 %i.vx, 0
  br i1 %i.vy, label %Abc_Clock.exit130, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.vz = load i64, ptr %3, align 8, !tbaa !30
  %i.wa = mul nsw i64 %i.vz, 1000000
  %i.wb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !31
  %i.wd = sdiv i64 %i.wc, 1000
  %i.we = add nsw i64 %i.wd, %i.wa
  br label %Abc_Clock.exit130

Abc_Clock.exit130:                                ; preds = %bb.d, %bb.e
  %.0.i129 = phi i64 [ %i.we, %bb.e ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.wf = sub nsw i64 %.0.i129, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2)
  %i.wg = sitofp i64 %i.wf to double
  %i.wh = fdiv double %i.wg, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.5, double noundef %i.wh)
  %i.wi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 1, i32 noundef 10) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.wj = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #18
  %i.wk = icmp slt i32 %i.wj, 0
  br i1 %i.wk, label %Abc_Clock.exit132, label %bb.f

bb.f:                                             ; preds = %Abc_Clock.exit130
  %i.wl = load i64, ptr %2, align 8, !tbaa !30
  %i.wm = mul nsw i64 %i.wl, 1000000
  %i.wn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !31
  %i.wp = sdiv i64 %i.wo, 1000
  %i.wq = add nsw i64 %i.wp, %i.wm
  br label %Abc_Clock.exit132

Abc_Clock.exit132:                                ; preds = %Abc_Clock.exit130, %bb.f
  %.0.i131 = phi i64 [ %i.wq, %bb.f ], [ -1, %Abc_Clock.exit130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.wr = sub nsw i64 %.0.i131, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2)
  %i.ws = sitofp i64 %i.wr to double
  %i.wt = fdiv double %i.ws, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.5, double noundef %i.wt)
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.preheader

.preheader:                                       ; preds = %Abc_Clock.exit132, %Abc_Clock.exit136
  %.1152 = phi i32 [ 10, %Abc_Clock.exit132 ], [ %.2.lcssa, %Abc_Clock.exit136 ] ; 6 uses
  %.0114150 = phi i32 [ 1, %Abc_Clock.exit132 ], [ %.1152, %Abc_Clock.exit136 ] ; 2 uses
  %.1122149 = phi i32 [ 2, %Abc_Clock.exit132 ], [ %i.agk, %Abc_Clock.exit136 ] ; 3 uses
  %i.wv = icmp slt i32 %.0114150, %.1152
  br i1 %i.wv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.val125 = load ptr, ptr %i.d, align 8, !tbaa !13 ; 2 uses
  %i.ww = sext i32 %.0114150 to i64
  %wide.trip.count = sext i32 %.1152 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv167 = phi i64 [ %i.ww, %.lr.ph ], [ %indvars.iv.next168, %bb.n ] ; 2 uses
  %.2148 = phi i32 [ %.1152, %.lr.ph ], [ %.4, %bb.n ]
  %.idx.a = mul nsw i64 %indvars.iv167, 24
  %i.wx = getelementptr inbounds i8, ptr %.val125, i64 %.idx.a ; 24 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.k
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next164, 9
  br i1 %exitcond166.not, label %bb.n, label %bb.i, !llvm.loop !46

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv163 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next164, %bb.h ] ; 2 uses
  %.3146 = phi i32 [ %.2148, %bb.g ], [ %.4, %bb.h ] ; 3 uses
  %i.wy = mul nsw i32 %.3146, 6
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds [4 x i8], ptr %.val125, i64 %i.wz ; 24 uses
  %i.xb = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv163 ; 24 uses
  %i.xc = load i8, ptr %i.xb, align 8, !tbaa !33
  %i.xd = sext i8 %i.xc to i64
  %i.xe = getelementptr inbounds i8, ptr %i.wx, i64 %i.xd
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !33  ; 2 uses
  store i8 %i.xf, ptr %i.xa, align 1, !tbaa !33
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xb, i64 1
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !33
  %i.xi = sext i8 %i.xh to i64
  %i.xj = getelementptr inbounds i8, ptr %i.wx, i64 %i.xi
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !33
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xa, i64 1
  store i8 %i.xk, ptr %i.xl, align 1, !tbaa !33
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xb, i64 2
  %i.xn = load i8, ptr %i.xm, align 2, !tbaa !33
  %i.xo = sext i8 %i.xn to i64
  %i.xp = getelementptr inbounds i8, ptr %i.wx, i64 %i.xo
end_hunk_0
