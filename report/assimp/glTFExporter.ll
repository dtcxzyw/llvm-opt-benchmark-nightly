Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFExporter?download=true
inline.NumInlined: 6973
inline.NumDeleted: 2254
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN5o3dgc13SC3DMCEncoderItE12EncodeHeaderERKNS_18SC3DMCEncodeParamsERKNS_14IndexedFaceSetItEERNS_12BinaryStreamE:bb.a

_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit122.2: ; preds = %bb.ad, %bb.ac
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = load i32, ptr %i.c, align 8
  tail call void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 noundef zeroext %i.ce, i32 noundef %i.cf)
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit122.2, %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit117
  %i.cg = load i64, ptr %i.ai, align 8
  %.not110 = icmp eq i64 %i.cg, 0
  br i1 %.not110, label %bb.au, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ch = load i32, ptr %i.c, align 8
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef 0)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit123

bb.ah:                                            ; preds = %bb.af
  tail call void @_ZN5o3dgc12BinaryStream14WriteUInt32BinEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef 0)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit123

_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit123: ; preds = %bb.ag, %bb.ah
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.cl = load float, ptr %i.cj, align 8          ; 2 uses
  %i.cm = load i32, ptr %i.c, align 8
  %i.cn = icmp eq i32 %i.cm, 1
  br i1 %i.cn, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit123
  %i.co = bitcast float %i.cl to i32
  %.0.insert.ext.i.i124 = zext i32 %i.co to i64
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %.0.insert.ext.i.i124)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit125

bb.aj:                                            ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit123
  tail call void @_ZN5o3dgc12BinaryStream15WriteFloat32BinEf(ptr noundef nonnull align 8 dereferenceable(28) %3, float noundef %i.cl)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit125

_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit125: ; preds = %bb.ai, %bb.aj
  %i.cp = load float, ptr %i.ck, align 4          ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8
  %i.cr = icmp eq i32 %i.cq, 1
  br i1 %i.cr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit125
  %i.cs = bitcast float %i.cp to i32
  %.0.insert.ext.i.i126 = zext i32 %i.cs to i64
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %.0.insert.ext.i.i126)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit127

bb.al:                                            ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit125
  tail call void @_ZN5o3dgc12BinaryStream15WriteFloat32BinEf(ptr noundef nonnull align 8 dereferenceable(28) %3, float noundef %i.cp)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit127

_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit127: ; preds = %bb.ak, %bb.al
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.cu = load float, ptr %i.ct, align 4          ; 2 uses
  %i.cv = load i32, ptr %i.c, align 8
  %i.cw = icmp eq i32 %i.cv, 1
  br i1 %i.cw, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit127
  tail call void @_ZN5o3dgc12BinaryStream15WriteFloat32BinEf(ptr noundef nonnull align 8 dereferenceable(28) %3, float noundef %i.cu)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit125.1

bb.an:                                            ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit127
  %i.cx = bitcast float %i.cu to i32
  %.0.insert.ext.i.i124.1 = zext i32 %i.cx to i64
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %.0.insert.ext.i.i124.1)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit125.1

_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit125.1: ; preds = %bb.an, %bb.am
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cz = load float, ptr %i.cy, align 8          ; 2 uses
  %i.da = load i32, ptr %i.c, align 8
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit125.1
  tail call void @_ZN5o3dgc12BinaryStream15WriteFloat32BinEf(ptr noundef nonnull align 8 dereferenceable(28) %3, float noundef %i.cz)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit127.1

bb.ap:                                            ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit125.1
  %i.dc = bitcast float %i.cz to i32
  %.0.insert.ext.i.i126.1 = zext i32 %i.dc to i64
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %.0.insert.ext.i.i126.1)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit127.1

_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit127.1: ; preds = %bb.ap, %bb.ao
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.de = load float, ptr %i.dd, align 8          ; 2 uses
  %i.df = load i32, ptr %i.c, align 8
  %i.dg = icmp eq i32 %i.df, 1
  br i1 %i.dg, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit127.1
  tail call void @_ZN5o3dgc12BinaryStream15WriteFloat32BinEf(ptr noundef nonnull align 8 dereferenceable(28) %3, float noundef %i.de)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit125.2

bb.ar:                                            ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit127.1
  %i.dh = bitcast float %i.de to i32
  %.0.insert.ext.i.i124.2 = zext i32 %i.dh to i64
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %.0.insert.ext.i.i124.2)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit125.2

_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit125.2: ; preds = %bb.ar, %bb.aq
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.dj = load float, ptr %i.di, align 4          ; 2 uses
  %i.dk = load i32, ptr %i.c, align 8
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit125.2
  tail call void @_ZN5o3dgc12BinaryStream15WriteFloat32BinEf(ptr noundef nonnull align 8 dereferenceable(28) %3, float noundef %i.dj)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit127.2

bb.at:                                            ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit125.2
  %i.dm = bitcast float %i.dj to i32
  %.0.insert.ext.i.i126.2 = zext i32 %i.dm to i64
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %.0.insert.ext.i.i126.2)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit127.2

_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit127.2: ; preds = %bb.at, %bb.as
  %i.dn = load i32, ptr %i.c, align 8
  tail call void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 noundef zeroext 1, i32 noundef %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = trunc i64 %i.dp to i8
  %i.dr = load i32, ptr %i.c, align 8
  tail call void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 noundef zeroext %i.dq, i32 noundef %i.dr)
  br label %bb.au

bb.au:                                            ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit127.2, %bb.ae
  %i.ds = load i64, ptr %i.am, align 8
  %.not146 = icmp eq i64 %i.ds, 0
  br i1 %.not146, label %.preheader, label %.lr.ph142

.lr.ph142:                                        ; preds = %bb.au
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 2168
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 6264
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 10360
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 43128
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.av

.preheader:                                       ; preds = %bb.bg, %bb.au
  %i.dz = load i64, ptr %i.aq, align 8
  %.not148 = icmp eq i64 %i.dz, 0
  br i1 %.not148, label %._crit_edge145, label %.lr.ph144

.lr.ph144:                                        ; preds = %.preheader
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 4216
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8312
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 1144
  br label %bb.bh

bb.av:                                            ; preds = %.lr.ph142, %bb.bg
  %.0107140 = phi i64 [ 0, %.lr.ph142 ], [ %i.fj, %bb.bg ] ; 6 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.0107140 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8            ; 2 uses
  %i.ef = load i32, ptr %i.c, align 8
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %i.ee)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit128

bb.ax:                                            ; preds = %bb.av
  tail call void @_ZN5o3dgc12BinaryStream14WriteUInt32BinEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %i.ee)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit128

_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit128: ; preds = %bb.aw, %bb.ax
  %i.eh = load i64, ptr %i.ed, align 8
  %.not112 = icmp eq i64 %i.eh, 0
  br i1 %.not112, label %bb.bg, label %bb.ay

bb.ay:                                            ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit128
  %i.ei = load i32, ptr %i.c, align 8
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef 0)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit129

bb.ba:                                            ; preds = %bb.ay
  tail call void @_ZN5o3dgc12BinaryStream14WriteUInt32BinEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef 0)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit129

_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit129: ; preds = %bb.az, %bb.ba
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.0107140
  %i.el = load i64, ptr %i.ek, align 8            ; 3 uses
  %i.em = trunc i64 %i.el to i8
  %i.en = load i32, ptr %i.c, align 8
  tail call void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 noundef zeroext %i.em, i32 noundef %i.en)
  %4 = and i64 %i.el, 255
  %.not147 = icmp eq i64 %4, 0
  br i1 %.not147, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit129
  %.idx.i = shl i64 %.0107140, 7                  ; 2 uses
  %i.eo = getelementptr i8, ptr %i.dv, i64 %.idx.i
  %i.ep = getelementptr i8, ptr %i.dw, i64 %.idx.i
  %wide.trip.count = and i64 %i.el, 255
  br label %bb.bb

._crit_edge:                                      ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit134, %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit129
  %i.eq = load i32, ptr %i.c, align 8
  tail call void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 noundef zeroext 1, i32 noundef %i.eq)
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.0107140
  %i.es = load i32, ptr %i.er, align 4
  %i.et = trunc i32 %i.es to i8
  %i.eu = load i32, ptr %i.c, align 8
  tail call void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 noundef zeroext %i.et, i32 noundef %i.eu)
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.0107140
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = trunc i64 %i.ew to i8
  %i.ey = load i32, ptr %i.c, align 8
  tail call void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 noundef zeroext %i.ex, i32 noundef %i.ey)
  br label %bb.bg

bb.bb:                                            ; preds = %.lr.ph, %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit134
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit134 ] ; 3 uses
  %i.ez = getelementptr [4 x i8], ptr %i.eo, i64 %indvars.iv
  %i.fa = load float, ptr %i.ez, align 4          ; 2 uses
  %i.fb = load i32, ptr %i.c, align 8
  %i.fc = icmp eq i32 %i.fb, 1
  br i1 %i.fc, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fd = bitcast float %i.fa to i32
  %.0.insert.ext.i.i130 = zext i32 %i.fd to i64
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %.0.insert.ext.i.i130)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit131

bb.bd:                                            ; preds = %bb.bb
  tail call void @_ZN5o3dgc12BinaryStream15WriteFloat32BinEf(ptr noundef nonnull align 8 dereferenceable(28) %3, float noundef %i.fa)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit131

_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit131: ; preds = %bb.bc, %bb.bd
  %i.fe = getelementptr [4 x i8], ptr %i.ep, i64 %indvars.iv
  %i.ff = load float, ptr %i.fe, align 4          ; 2 uses
  %i.fg = load i32, ptr %i.c, align 8
  %i.fh = icmp eq i32 %i.fg, 1
  br i1 %i.fh, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit131
  %i.fi = bitcast float %i.ff to i32
  %.0.insert.ext.i.i133 = zext i32 %i.fi to i64
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %.0.insert.ext.i.i133)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit134

bb.bf:                                            ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit131
  tail call void @_ZN5o3dgc12BinaryStream15WriteFloat32BinEf(ptr noundef nonnull align 8 dereferenceable(28) %3, float noundef %i.ff)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit134

_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit134: ; preds = %bb.be, %bb.bf
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bb, !llvm.loop !941

bb.bg:                                            ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit128, %._crit_edge
  %i.fj = add nuw i64 %.0107140, 1                ; 2 uses
  %i.fk = load i64, ptr %i.am, align 8
  %i.fl = icmp ult i64 %i.fj, %i.fk
  br i1 %i.fl, label %bb.av, label %.preheader, !llvm.loop !942

._crit_edge145:                                   ; preds = %bb.bn, %.preheader
  ret i32 0

bb.bh:                                            ; preds = %.lr.ph144, %bb.bn
  %.0143 = phi i64 [ 0, %.lr.ph144 ], [ %i.gc, %bb.bn ] ; 4 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.0143 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8            ; 2 uses
  %i.fo = load i32, ptr %i.c, align 8
  %i.fp = icmp eq i32 %i.fo, 1
  br i1 %i.fp, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %i.fn)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit135

bb.bj:                                            ; preds = %bb.bh
  tail call void @_ZN5o3dgc12BinaryStream14WriteUInt32BinEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %i.fn)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit135

_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit135: ; preds = %bb.bi, %bb.bj
  %i.fq = load i64, ptr %i.fm, align 8
  %.not111 = icmp eq i64 %i.fq, 0
  br i1 %.not111, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit135
  %i.fr = load i32, ptr %i.c, align 8
  %i.fs = icmp eq i32 %i.fr, 1
  br i1 %i.fs, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef 0)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit136

bb.bm:                                            ; preds = %bb.bk
  tail call void @_ZN5o3dgc12BinaryStream14WriteUInt32BinEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef 0)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit136

_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit136: ; preds = %bb.bl, %bb.bm
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.0143
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = trunc i64 %i.fu to i8
  %i.fw = load i32, ptr %i.c, align 8
  tail call void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 noundef zeroext %i.fv, i32 noundef %i.fw)
  %i.fx = load i32, ptr %i.c, align 8
  tail call void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 noundef zeroext 1, i32 noundef %i.fx)
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.0143
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = trunc i32 %i.fz to i8
  %i.gb = load i32, ptr %i.c, align 8
  tail call void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 noundef zeroext %i.ga, i32 noundef %i.gb)
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit135, %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit136
  %i.gc = add nuw i64 %.0143, 1                   ; 2 uses
  %i.gd = load i64, ptr %i.aq, align 8
  %i.ge = icmp ult i64 %i.gc, %i.gd
  br i1 %i.ge, label %bb.bh, label %._crit_edge145, !llvm.loop !943
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc13SC3DMCEncoderItE13EncodePayloadERKNS_18SC3DMCEncodeParamsERKNS_14IndexedFaceSetItEERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(11524) %0, ptr noundef nonnull align 8 dereferenceable(4144) %1, ptr noundef nonnull align 8 dereferenceable(80000) %2, ptr noundef nonnull align 8 dereferenceable(28) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.o3dgc::Timer", align 8      ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4136
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7416 ; 3 uses
  store i64 %i.e, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.h = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %4) #30 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i64, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = call noundef i32 @_ZN5o3dgc19TriangleListEncoderItE6EncodeEPKtPKmllRNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(556) %0, ptr noundef %i.j, ptr noundef %i.l, i64 noundef %i.m, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(28) %3) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.r = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %i.q) #30 ; 0 uses
  %i.s = load i64, ptr %i.q, align 8
  %i.t = load i64, ptr %4, align 8
  %i.u = sub nsw i64 %i.s, %i.t
  %i.v = sitofp i64 %i.u to double
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = sub nsw i64 %i.x, %i.z
  %i.ab = sitofp i64 %i.aa to double
  %i.ac = call nnan double @llvm.fmuladd.f64(double %i.ab, double 1.000000e-09, double %i.v)
  %i.ad = fmul nnan double %i.ac, 1.000000e+03
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3288
  store double %i.ad, ptr %i.ae, align 8
  %i.af = load i64, ptr %i.d, align 8
  %i.ag = load i64, ptr %i.g, align 8
  %i.ah = sub i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.g, align 8
  %i.ai = load i64, ptr %i.d, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 7400 ; 3 uses
  store i64 %i.ai, ptr %i.aj, align 8
  %i.ak = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %4) #30 ; 0 uses
  %i.al = load i64, ptr %i.n, align 8             ; 2 uses
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 2080
  %i.at = load i32, ptr %i.as, align 8
  %i.au = call noundef i32 @_ZN5o3dgc13SC3DMCEncoderItE16EncodeFloatArrayEPKfmmmS3_S3_mRKNS_14IndexedFaceSetItEENS_25O3DGCSC3DMCPredictionModeERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(11524) %0, ptr noundef %i.an, i64 noundef %i.al, i64 noundef 3, i64 noundef 3, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(80000) %2, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(28) %3) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.av = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %i.q) #30 ; 0 uses
  %i.aw = load i64, ptr %i.q, align 8
  %i.ax = load i64, ptr %4, align 8
  %i.ay = sub nsw i64 %i.aw, %i.ax
  %i.az = sitofp i64 %i.ay to double
  %i.ba = load i64, ptr %i.w, align 8
end_hunk_0
