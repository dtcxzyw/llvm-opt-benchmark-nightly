Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/cuesheet?download=true
begin_hunk_0_@grabbag__cuesheet_parse:bb.a
  %memchr42.not.i3851012.i = select i1 %memchr.bounds.i3831010.i, i1 true, i1 %memchr.bits.i3841011.i
  br i1 %memchr42.not.i3851012.i, label %.lr.ph53.i392.preheader.i, label %.lr.ph1013.i

.lr.ph.i382.i:                                    ; preds = %.lr.ph1013.i
  %i.cc = zext nneg i8 %i.ch to i64
  %memchr.bounds.i383.i = icmp ugt i8 %i.ch, 63
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = and i64 %i.cd, 4294977025
  %memchr.bits.i384.i = icmp eq i64 %i.ce, 0
  %memchr42.not.i385.i = select i1 %memchr.bounds.i383.i, i1 true, i1 %memchr.bits.i384.i
  br i1 %memchr42.not.i385.i, label %.lr.ph53.i392.preheader.i, label %.lr.ph1013.i, !llvm.loop !0

.lr.ph53.i392.preheader.i:                        ; preds = %.lr.ph.i382.i, %.lr.ph.i382.preheader.i
  %.lcssa1008.i = phi ptr [ %.promoted1007.i, %.lr.ph.i382.preheader.i ], [ %i.cg, %.lr.ph.i382.i ] ; 3 uses
  %.lcssa731.i = phi i8 [ %i.by, %.lr.ph.i382.preheader.i ], [ %i.ch, %.lr.ph.i382.i ]
  store ptr %.lcssa1008.i, ptr %i.b, align 8
  br label %.lr.ph53.i392.i

.lr.ph1013.i:                                     ; preds = %.lr.ph.i382.preheader.i, %.lr.ph.i382.i
  %i.cf = phi ptr [ %i.cg, %.lr.ph.i382.i ], [ %.promoted1007.i, %.lr.ph.i382.preheader.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1 ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !20  ; 4 uses
  %.not.i386.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i386.i, label %local__get_field_.exit400.thread596.i, label %.lr.ph.i382.i, !llvm.loop !0

.lr.ph53.i392.i:                                  ; preds = %bb.s, %.lr.ph53.i392.preheader.i
  %i.ci = phi i8 [ %i.co, %bb.s ], [ %.lcssa731.i, %.lr.ph53.i392.preheader.i ] ; 2 uses
  %i.cj = phi ptr [ %i.cn, %bb.s ], [ %.lcssa1008.i, %.lr.ph53.i392.preheader.i ] ; 2 uses
  %i.ck = zext nneg i8 %i.ci to i64
  %memchr.bounds43.i393.i = icmp ugt i8 %i.ci, 63
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, 4294977025
  %memchr.bits44.i394.i = icmp eq i64 %i.cm, 0
  %memchr.not.i395.i = select i1 %memchr.bounds43.i393.i, i1 true, i1 %memchr.bits44.i394.i
  br i1 %memchr.not.i395.i, label %bb.s, label %.sink.split.sink.split.i396.i

bb.s:                                             ; preds = %.lr.ph53.i392.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 3 uses
  store ptr %i.cn, ptr %i.b, align 8, !tbaa !15
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !20  ; 2 uses
  %.not38.i399.i = icmp eq i8 %i.co, 0
  br i1 %.not38.i399.i, label %.loopexit.i, label %.lr.ph53.i392.i, !llvm.loop !1

.sink.split.sink.split.i396.i:                    ; preds = %.lr.ph53.i392.i
  store i8 0, ptr %i.cj, align 1, !tbaa !20
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  br label %.loopexit.i

local__get_field_.exit400.thread596.i:            ; preds = %.preheader.i380.i, %.lr.ph1013.i
  store ptr null, ptr %i.b, align 8, !tbaa !15
  br label %local__get_field_.exit400.thread.i

.loopexit.i:                                      ; preds = %bb.s, %.sink.split.sink.split.i396.i
  %i.cr = phi ptr [ %i.cq, %.sink.split.sink.split.i396.i ], [ null, %bb.s ] ; 3 uses
  store ptr %i.cr, ptr %i.b, align 8, !tbaa !15
  %i.cs = call i32 @strcasecmp(ptr noundef nonnull %.lcssa1008.i, ptr noundef nonnull @.str.24) #13
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit.i
  %i.cu = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.cv = load i32, ptr %i.m, align 4, !tbaa !23
  %i.cw = add i32 %i.cv, -1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 22 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 2
  %i.db = or i8 %i.da, 2
  store i8 %i.db, ptr %i.cz, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit.i
  %i.dc = icmp eq ptr %i.cr, null
  br i1 %i.dc, label %local__get_field_.exit400.thread.i, label %.preheader.i380.i, !llvm.loop !32

bb.v:                                             ; preds = %bb.p
  %i.dd = call i32 @strcasecmp(ptr noundef nonnull %.lcssa930.i, ptr noundef nonnull @.str.25) #13
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.w, label %bb.ar

bb.w:                                             ; preds = %bb.v
  %i.df = icmp slt i32 %.02621030.i, 0
  br i1 %i.df, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dg = icmp eq ptr %.promoted1017.i, null
  br i1 %i.dg, label %.loopexit, label %.preheader.i401.i

.preheader.i401.i:                                ; preds = %bb.x
  %i.dh = load i8, ptr %.promoted1017.i, align 1, !tbaa !20 ; 4 uses
  %.not49.i402.i = icmp eq i8 %i.dh, 0
  br i1 %.not49.i402.i, label %.loopexit, label %.lr.ph.i403.preheader.i

.lr.ph.i403.preheader.i:                          ; preds = %.preheader.i401.i
  %i.di = zext nneg i8 %i.dh to i64
  %memchr.bounds.i404990.i = icmp ugt i8 %i.dh, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, 4294977025
  %memchr.bits.i405991.i = icmp eq i64 %i.dk, 0
  %memchr42.not.i406992.i = select i1 %memchr.bounds.i404990.i, i1 true, i1 %memchr.bits.i405991.i
  br i1 %memchr42.not.i406992.i, label %.lr.ph53.i413.preheader.i, label %.lr.ph993.i

.lr.ph.i403.i:                                    ; preds = %.lr.ph993.i
  %i.dl = zext nneg i8 %i.dq to i64
  %memchr.bounds.i404.i = icmp ugt i8 %i.dq, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dm, 4294977025
  %memchr.bits.i405.i = icmp eq i64 %i.dn, 0
  %memchr42.not.i406.i = select i1 %memchr.bounds.i404.i, i1 true, i1 %memchr.bits.i405.i
  br i1 %memchr42.not.i406.i, label %.lr.ph53.i413.preheader.i, label %.lr.ph993.i, !llvm.loop !0

.lr.ph53.i413.preheader.i:                        ; preds = %.lr.ph.i403.i, %.lr.ph.i403.preheader.i
  %.lcssa988.i = phi ptr [ %.promoted1017.i, %.lr.ph.i403.preheader.i ], [ %i.dp, %.lr.ph.i403.i ] ; 4 uses
  %.lcssa718.i = phi i8 [ %i.dh, %.lr.ph.i403.preheader.i ], [ %i.dq, %.lr.ph.i403.i ]
  store ptr %.lcssa988.i, ptr %i.b, align 8
  br label %.lr.ph53.i413.i

.lr.ph993.i:                                      ; preds = %.lr.ph.i403.preheader.i, %.lr.ph.i403.i
  %i.do = phi ptr [ %i.dp, %.lr.ph.i403.i ], [ %.promoted1017.i, %.lr.ph.i403.preheader.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 3 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !20  ; 4 uses
  %.not.i407.i = icmp eq i8 %i.dq, 0
  br i1 %.not.i407.i, label %.loopexit, label %.lr.ph.i403.i, !llvm.loop !0

.lr.ph53.i413.i:                                  ; preds = %bb.y, %.lr.ph53.i413.preheader.i
  %i.dr = phi i8 [ %i.dx, %bb.y ], [ %.lcssa718.i, %.lr.ph53.i413.preheader.i ] ; 2 uses
  %i.ds = phi ptr [ %i.dw, %bb.y ], [ %.lcssa988.i, %.lr.ph53.i413.preheader.i ] ; 2 uses
  %i.dt = zext nneg i8 %i.dr to i64
  %memchr.bounds43.i414.i = icmp ugt i8 %i.dr, 63
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = and i64 %i.du, 4294977025
  %memchr.bits44.i415.i = icmp eq i64 %i.dv, 0
  %memchr.not.i416.i = select i1 %memchr.bounds43.i414.i, i1 true, i1 %memchr.bits44.i415.i
  br i1 %memchr.not.i416.i, label %bb.y, label %.sink.split.sink.split.i417.i

bb.y:                                             ; preds = %.lr.ph53.i413.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 3 uses
  store ptr %i.dw, ptr %i.b, align 8, !tbaa !15
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !20  ; 2 uses
  %.not38.i420.i = icmp eq i8 %i.dx, 0
  br i1 %.not38.i420.i, label %.loopexit660.i, label %.lr.ph53.i413.i, !llvm.loop !1

.sink.split.sink.split.i417.i:                    ; preds = %.lr.ph53.i413.i
  store i8 0, ptr %i.ds, align 1, !tbaa !20
  %i.dy = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  br label %.loopexit660.i

.loopexit660.i:                                   ; preds = %bb.y, %.sink.split.sink.split.i417.i
  %.promoted997.i = phi ptr [ %i.dz, %.sink.split.sink.split.i417.i ], [ null, %bb.y ] ; 5 uses
  store ptr %.promoted997.i, ptr %i.b, align 8, !tbaa !15
  %i.ea = load i8, ptr %.lcssa988.i, align 1, !tbaa !20 ; 2 uses
  %i.eb = icmp eq i8 %i.ea, 0
  br i1 %i.eb, label %.loopexit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.loopexit660.i, %bb.z
  %.pn.i.i.i = phi ptr [ %i.ef, %bb.z ], [ %.lcssa988.i, %.loopexit660.i ]
  %.014.i.i.i = phi i64 [ %.fr.i.i, %bb.z ], [ 0, %.loopexit660.i ] ; 2 uses
  %i.ec = phi i8 [ %.pr.i.i.i, %bb.z ], [ %i.ea, %.loopexit660.i ]
  %i.ed = add i8 %i.ec, -48                       ; 2 uses
  %or.cond.i.i.i = icmp ugt i8 %i.ed, 9
  %i.ee = icmp sgt i64 %.014.i.i.i, 922337203685477579
  %or.cond13.i.i.i = or i1 %i.ee, %or.cond.i.i.i
  br i1 %or.cond13.i.i.i, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %.preheader.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 1 ; 2 uses
  %i.eg = mul nsw i64 %.014.i.i.i, 10
  %i.eh = zext nneg i8 %i.ed to i64
  %i.ei = add nsw i64 %i.eg, %i.eh
  %.fr.i.i = freeze i64 %i.ei                     ; 6 uses
  %.pr.i.i.i = load i8, ptr %i.ef, align 1, !tbaa !20 ; 2 uses
  %.not.i.i.i = icmp eq i8 %.pr.i.i.i, 0
  br i1 %.not.i.i.i, label %local__parse_int64_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !2

local__parse_int64_.exit.i.i:                     ; preds = %bb.z
  %or.cond.i.i = icmp ugt i64 %.fr.i.i, 2147483647
  %i.ej = trunc nuw nsw i64 %.fr.i.i to i32       ; 2 uses
  br i1 %or.cond.i.i, label %.loopexit, label %local__parse_int_.exit.i

local__parse_int_.exit.i:                         ; preds = %local__parse_int64_.exit.i.i
  %i.ek = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.el = load i32, ptr %i.m, align 4, !tbaa !23
  %i.em = add i32 %i.el, -1
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.en ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 23 ; 4 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !25  ; 2 uses
  %i.er = icmp eq i8 %i.eq, 0
  br i1 %i.er, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %local__parse_int_.exit.i
  %i.es = icmp samesign ugt i64 %.fr.i.i, 1
  br i1 %i.es, label %.loopexit, label %.thread.i

bb.ab:                                            ; preds = %local__parse_int_.exit.i
  %i.et = zext i8 %i.eq to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !26
  %6 = add nuw nsw i64 %i.et, 4294967295
  %7 = and i64 %6, 4294967295
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %7
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !28
  %i.ez = zext i8 %i.ey to i32
  %i.fa = add nuw nsw i32 %i.ez, 1
  %.not336.i = icmp eq i32 %i.fa, %i.ej
  br i1 %.not336.i, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.fb = icmp samesign ugt i64 %.fr.i.i, 99
  %or.cond12.i = and i1 %i.f, %i.fb
  br i1 %or.cond12.i, label %.loopexit, label %.thread.i

.thread.i:                                        ; preds = %bb.ac, %bb.aa
  %i.fc = icmp eq ptr %.promoted997.i, null
  br i1 %i.fc, label %.loopexit, label %.preheader.i422.i

.preheader.i422.i:                                ; preds = %.thread.i
  %i.fd = load i8, ptr %.promoted997.i, align 1, !tbaa !20 ; 4 uses
  %.not49.i423.i = icmp eq i8 %i.fd, 0
  br i1 %.not49.i423.i, label %.loopexit, label %.lr.ph.i424.preheader.i

.lr.ph.i424.preheader.i:                          ; preds = %.preheader.i422.i
  %i.fe = zext nneg i8 %i.fd to i64
  %memchr.bounds.i4251000.i = icmp ugt i8 %i.fd, 63
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, 4294977025
  %memchr.bits.i4261001.i = icmp eq i64 %i.fg, 0
  %memchr42.not.i4271002.i = select i1 %memchr.bounds.i4251000.i, i1 true, i1 %memchr.bits.i4261001.i
  br i1 %memchr42.not.i4271002.i, label %.lr.ph53.i435.preheader.i, label %.lr.ph1003.i

.lr.ph.i424.i:                                    ; preds = %.lr.ph1003.i
  %i.fh = zext nneg i8 %i.fm to i64
  %memchr.bounds.i425.i = icmp ugt i8 %i.fm, 63
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = and i64 %i.fi, 4294977025
  %memchr.bits.i426.i = icmp eq i64 %i.fj, 0
  %memchr42.not.i427.i = select i1 %memchr.bounds.i425.i, i1 true, i1 %memchr.bits.i426.i
  br i1 %memchr42.not.i427.i, label %.lr.ph53.i435.preheader.i, label %.lr.ph1003.i, !llvm.loop !0

.lr.ph53.i435.preheader.i:                        ; preds = %.lr.ph.i424.i, %.lr.ph.i424.preheader.i
  %.lcssa998.i = phi ptr [ %.promoted997.i, %.lr.ph.i424.preheader.i ], [ %i.fl, %.lr.ph.i424.i ] ; 6 uses
  %.lcssa724.i = phi i8 [ %i.fd, %.lr.ph.i424.preheader.i ], [ %i.fm, %.lr.ph.i424.i ]
  store ptr %.lcssa998.i, ptr %i.b, align 8
  br label %.lr.ph53.i435.i

.lr.ph1003.i:                                     ; preds = %.lr.ph.i424.preheader.i, %.lr.ph.i424.i
  %i.fk = phi ptr [ %i.fl, %.lr.ph.i424.i ], [ %.promoted997.i, %.lr.ph.i424.preheader.i ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1 ; 3 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !20  ; 4 uses
  %.not.i428.i = icmp eq i8 %i.fm, 0
  br i1 %.not.i428.i, label %.loopexit, label %.lr.ph.i424.i, !llvm.loop !0

.lr.ph53.i435.i:                                  ; preds = %bb.ad, %.lr.ph53.i435.preheader.i
  %i.fn = phi i8 [ %i.ft, %bb.ad ], [ %.lcssa724.i, %.lr.ph53.i435.preheader.i ] ; 2 uses
  %i.fo = phi ptr [ %i.fs, %bb.ad ], [ %.lcssa998.i, %.lr.ph53.i435.preheader.i ] ; 2 uses
  %i.fp = zext nneg i8 %i.fn to i64
  %memchr.bounds43.i436.i = icmp ugt i8 %i.fn, 63
  %i.fq = shl nuw i64 1, %i.fp
  %i.fr = and i64 %i.fq, 4294977025
  %memchr.bits44.i437.i = icmp eq i64 %i.fr, 0
  %memchr.not.i438.i = select i1 %memchr.bounds43.i436.i, i1 true, i1 %memchr.bits44.i437.i
  br i1 %memchr.not.i438.i, label %bb.ad, label %.sink.split.sink.split.i439.i

bb.ad:                                            ; preds = %.lr.ph53.i435.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 1 ; 3 uses
  store ptr %i.fs, ptr %i.b, align 8, !tbaa !15
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !20  ; 2 uses
  %.not38.i442.i = icmp eq i8 %i.ft, 0
  br i1 %.not38.i442.i, label %.loopexit658.i, label %.lr.ph53.i435.i, !llvm.loop !1

.sink.split.sink.split.i439.i:                    ; preds = %.lr.ph53.i435.i
  store i8 0, ptr %i.fo, align 1, !tbaa !20
  %i.fu = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  br label %.loopexit658.i

.loopexit658.i:                                   ; preds = %bb.ad, %.sink.split.sink.split.i439.i
  %.sink.i430.i = phi ptr [ %i.fv, %.sink.split.sink.split.i439.i ], [ null, %bb.ad ]
  store ptr %.sink.i430.i, ptr %i.b, align 8, !tbaa !15
  %i.fw = call fastcc i64 @local__parse_msf_(ptr noundef %.lcssa998.i, i32 noundef %3) ; 3 uses
  %i.fx = icmp slt i64 %i.fw, 0
  br i1 %i.fx, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %.loopexit658.i
  br i1 %i.f, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fy = call fastcc i64 @local__parse_ms_(ptr noundef %.lcssa998.i, i32 noundef %3) ; 2 uses
  %i.fz = icmp slt i64 %i.fy, 0
  br i1 %i.fz, label %bb.ag, label %.critedge349.i

bb.ag:                                            ; preds = %bb.af
  %i.ga = load i8, ptr %.lcssa998.i, align 1, !tbaa !20 ; 2 uses
  %i.gb = icmp eq i8 %i.ga, 0
  br i1 %i.gb, label %.loopexit, label %.preheader.i444.i

.preheader.i444.i:                                ; preds = %bb.ag, %bb.ah
  %.pn.i.i = phi ptr [ %i.gf, %bb.ah ], [ %.lcssa998.i, %bb.ag ]
  %.014.i.i = phi i64 [ %i.gi, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %i.gc = phi i8 [ %.pr.i.i, %bb.ah ], [ %i.ga, %bb.ag ]
  %i.gd = add i8 %i.gc, -48                       ; 2 uses
  %or.cond.i445.i = icmp ugt i8 %i.gd, 9
  %i.ge = icmp sgt i64 %.014.i.i, 922337203685477579
  %or.cond13.i.i = select i1 %or.cond.i445.i, i1 true, i1 %i.ge
  br i1 %or.cond13.i.i, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %.preheader.i444.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 1 ; 2 uses
  %i.gg = mul nsw i64 %.014.i.i, 10
  %i.gh = zext nneg i8 %i.gd to i64
  %i.gi = add nsw i64 %i.gg, %i.gh                ; 3 uses
  %.pr.i.i = load i8, ptr %i.gf, align 1, !tbaa !20 ; 2 uses
  %.not.i446.i = icmp eq i8 %.pr.i.i, 0
  br i1 %.not.i446.i, label %local__parse_int64_.exit.i, label %.preheader.i444.i, !llvm.loop !2

local__parse_int64_.exit.i:                       ; preds = %bb.ah
  %i.gj = icmp slt i64 %i.gi, 0
  br i1 %i.gj, label %.loopexit, label %bb.aj

bb.ai:                                            ; preds = %.loopexit658.i
  %i.gk = icmp ne i64 %i.fw, 0
  %or.cond14.i = and i1 %i.p, %i.gk
  br i1 %or.cond14.i, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %local__parse_int64_.exit.i
  %.0246.i = phi i64 [ %i.gi, %local__parse_int64_.exit.i ], [ %i.fw, %bb.ai ] ; 5 uses
  br i1 %i.f, label %bb.ak, label %.critedge349.i

bb.ak:                                            ; preds = %bb.aj
  %i.gl = load i32, ptr %i.m, align 4, !tbaa !23
  %i.gm = icmp eq i32 %i.gl, 1
  br i1 %i.gm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gn = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 23
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !25
  %i.gq = icmp eq i8 %i.gp, 0
  %i.gr = icmp ne i64 %.0246.i, 0
  %or.cond16.i = and i1 %i.gr, %i.gq
  br i1 %or.cond16.i, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gs = load i8, ptr %i.ep, align 1, !tbaa !25  ; 2 uses
  %.not337.i = icmp eq i8 %i.gs, 0
  br i1 %.not337.i, label %.critedge349.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !26
  %8 = add nuw nsw i64 %i.gt, 4294967295
  %9 = and i64 %8, 4294967295
  %10 = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %9
  %i.gw = load i64, ptr %10, align 8, !tbaa !29
  %.not338.i = icmp ugt i64 %.0246.i, %i.gw
  br i1 %.not338.i, label %.critedge349.i, label %.loopexit

.critedge349.i:                                   ; preds = %bb.an, %bb.aj, %bb.af
  %.0246612.ph.i = phi i64 [ %.0246.i, %bb.an ], [ %.0246.i, %bb.aj ], [ %i.fy, %bb.af ] ; 2 uses
  %.pr.i = load i8, ptr %i.ep, align 1, !tbaa !25 ; 2 uses
  %i.gx = icmp eq i8 %.pr.i, 0
  br i1 %i.gx, label %.critedge349.thread.i, label %bb.ao

.critedge349.thread.i:                            ; preds = %.critedge349.i, %bb.am
  %.0246612614.i = phi i64 [ %.0246612.ph.i, %.critedge349.i ], [ %.0246.i, %bb.am ] ; 2 uses
  store i64 %.0246612614.i, ptr %i.eo, align 8, !tbaa !30
  br label %bb.ao

bb.ao:                                            ; preds = %.critedge349.thread.i, %.critedge349.i
  %.0246612615.i = phi i64 [ %.0246612614.i, %.critedge349.thread.i ], [ %.0246612.ph.i, %.critedge349.i ] ; 2 uses
  %i.gy = phi i8 [ 0, %.critedge349.thread.i ], [ %.pr.i, %.critedge349.i ]
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !23 ; 3 uses
  %i.gz = icmp ugt i32 %.pre.i, 1
  %or.cond1250.i = select i1 %i.f, i1 %i.gz, i1 false
  br i1 %or.cond1250.i, label %bb.ap, label %.critedge351.i

bb.ap:                                            ; preds = %bb.ao
  %i.ha = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.hb = add i32 %.pre.i, -2
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [32 x i8], ptr %i.ha, i64 %i.hc ; 3 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !30
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !26
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 23
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !25
  %i.hj = zext i8 %i.hi to i64
  %i.hk = getelementptr [16 x i8], ptr %i.hg, i64 %i.hj
  %i.hl = getelementptr i8, ptr %i.hk, i64 -16
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !29
  %i.hn = add i64 %i.hm, %i.he
  %.not339.i = icmp ugt i64 %.0246612615.i, %i.hn
  br i1 %.not339.i, label %.critedge351.i, label %.loopexit

.critedge351.i:                                   ; preds = %bb.ap, %bb.ao
  %i.ho = add i32 %.pre.i, -1
  %i.hp = zext i8 %i.gy to i32
  %i.hq = call i32 @FLAC__metadata_object_cuesheet_track_insert_blank_index(ptr noundef nonnull %i.c, i32 noundef %i.ho, i32 noundef %i.hp) #12
  %.not340.i = icmp eq i32 %i.hq, 0
  br i1 %.not340.i, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %.critedge351.i
  %i.hr = load i64, ptr %i.eo, align 8, !tbaa !30
  %i.hs = sub i64 %.0246612615.i, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !26
  %i.hv = load i8, ptr %i.ep, align 1, !tbaa !25
  %i.hw = zext i8 %i.hv to i64
  %i.hx = getelementptr [16 x i8], ptr %i.hu, i64 %i.hw ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 -16
  store i64 %i.hs, ptr %i.hy, align 8, !tbaa !29
  %i.hz = trunc i64 %.fr.i.i to i8
  %i.ia = getelementptr i8, ptr %i.hx, i64 -8
  store i8 %i.hz, ptr %i.ia, align 8, !tbaa !28
  br label %local__get_field_.exit400.thread.i

bb.ar:                                            ; preds = %bb.v
  %i.ib = call i32 @strcasecmp(ptr noundef nonnull %.lcssa930.i, ptr noundef nonnull @.str.38) #13
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.as, label %bb.bf

bb.as:                                            ; preds = %bb.ar
  %.not331.i = icmp eq i32 %.02521034.i, 0
  br i1 %.not331.i, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.id = icmp slt i32 %.02621030.i, 0
  %i.ie = icmp sgt i32 %.02591031.i, -1
  %or.cond18.i = select i1 %i.id, i1 true, i1 %i.ie
  br i1 %or.cond18.i, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.if = icmp eq ptr %.promoted1017.i, null
  br i1 %i.if, label %.loopexit, label %.preheader.i447.i

.preheader.i447.i:                                ; preds = %bb.au
  %i.ig = load i8, ptr %.promoted1017.i, align 1, !tbaa !20 ; 4 uses
  %.not49.i448.i = icmp eq i8 %i.ig, 0
  br i1 %.not49.i448.i, label %.loopexit, label %.lr.ph.i449.preheader.i

.lr.ph.i449.preheader.i:                          ; preds = %.preheader.i447.i
  %i.ih = zext nneg i8 %i.ig to i64
  %memchr.bounds.i450980.i = icmp ugt i8 %i.ig, 63
  %i.ii = shl nuw i64 1, %i.ih
  %i.ij = and i64 %i.ii, 4294977025
  %memchr.bits.i451981.i = icmp eq i64 %i.ij, 0
  %memchr42.not.i452982.i = select i1 %memchr.bounds.i450980.i, i1 true, i1 %memchr.bits.i451981.i
  br i1 %memchr42.not.i452982.i, label %.critedge.i458.i, label %.lr.ph983.i

.lr.ph.i449.i:                                    ; preds = %.lr.ph983.i
  %i.ik = zext nneg i8 %i.ip to i64
  %memchr.bounds.i450.i = icmp ugt i8 %i.ip, 63
  %i.il = shl nuw i64 1, %i.ik
  %i.im = and i64 %i.il, 4294977025
  %memchr.bits.i451.i = icmp eq i64 %i.im, 0
  %memchr42.not.i452.i = select i1 %memchr.bounds.i450.i, i1 true, i1 %memchr.bits.i451.i
  br i1 %memchr42.not.i452.i, label %.critedge.i458.i, label %.lr.ph983.i, !llvm.loop !0

.lr.ph983.i:                                      ; preds = %.lr.ph.i449.preheader.i, %.lr.ph.i449.i
  %i.in = phi ptr [ %i.io, %.lr.ph.i449.i ], [ %.promoted1017.i, %.lr.ph.i449.preheader.i ]
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 1 ; 3 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !20  ; 4 uses
  %.not.i453.i = icmp eq i8 %i.ip, 0
  br i1 %.not.i453.i, label %.loopexit, label %.lr.ph.i449.i, !llvm.loop !0

.critedge.i458.i:                                 ; preds = %.lr.ph.i449.i, %.lr.ph.i449.preheader.i
  %.lcssa978.i = phi ptr [ %.promoted1017.i, %.lr.ph.i449.preheader.i ], [ %i.io, %.lr.ph.i449.i ] ; 5 uses
  %.lcssa712.i = phi i8 [ %i.ig, %.lr.ph.i449.preheader.i ], [ %i.ip, %.lr.ph.i449.i ] ; 2 uses
  store ptr %.lcssa978.i, ptr %i.b, align 8
  %i.iq = icmp eq i8 %.lcssa712.i, 34
  br i1 %i.iq, label %bb.av, label %.lr.ph53.i460.i

bb.av:                                            ; preds = %.critedge.i458.i
  %i.ir = getelementptr inbounds nuw i8, ptr %.lcssa978.i, i64 1 ; 4 uses
  store ptr %i.ir, ptr %i.b, align 8, !tbaa !15
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !20
  %i.it = icmp eq i8 %i.is, 0
  br i1 %i.it, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.iu = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ir, i32 noundef 34) #13 ; 3 uses
  store ptr %i.iu, ptr %i.b, align 8, !tbaa !15
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %.loopexit, label %.sink.split.sink.split.i464.i

.lr.ph53.i460.i:                                  ; preds = %.critedge.i458.i, %bb.ax
  %i.iw = phi i8 [ %i.jc, %bb.ax ], [ %.lcssa712.i, %.critedge.i458.i ] ; 2 uses
  %i.ix = phi ptr [ %i.jb, %bb.ax ], [ %.lcssa978.i, %.critedge.i458.i ] ; 2 uses
  %i.iy = zext nneg i8 %i.iw to i64
  %memchr.bounds43.i461.i = icmp ugt i8 %i.iw, 63
  %i.iz = shl nuw i64 1, %i.iy
  %i.ja = and i64 %i.iz, 4294977025
  %memchr.bits44.i462.i = icmp eq i64 %i.ja, 0
  %memchr.not.i463.i = select i1 %memchr.bounds43.i461.i, i1 true, i1 %memchr.bits44.i462.i
  br i1 %memchr.not.i463.i, label %bb.ax, label %.sink.split.sink.split.i464.i

bb.ax:                                            ; preds = %.lr.ph53.i460.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 1 ; 3 uses
  store ptr %i.jb, ptr %i.b, align 8, !tbaa !15
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !20  ; 2 uses
  %.not38.i467.i = icmp eq i8 %i.jc, 0
  br i1 %.not38.i467.i, label %local__get_field_.exit468.i, label %.lr.ph53.i460.i, !llvm.loop !1

.sink.split.sink.split.i464.i:                    ; preds = %.lr.ph53.i460.i, %bb.aw
  %.lcssa.sink.i465.i = phi ptr [ %i.iu, %bb.aw ], [ %i.ix, %.lr.ph53.i460.i ]
  %.030.ph.ph.i466.i = phi ptr [ %i.ir, %bb.aw ], [ %.lcssa978.i, %.lr.ph53.i460.i ]
  store i8 0, ptr %.lcssa.sink.i465.i, align 1, !tbaa !20
  %i.jd = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  br label %local__get_field_.exit468.i

local__get_field_.exit468.i:                      ; preds = %bb.ax, %.sink.split.sink.split.i464.i
  %.sink.i455.i = phi ptr [ %i.je, %.sink.split.sink.split.i464.i ], [ null, %bb.ax ]
  %.030.ph.i456.i = phi ptr [ %.030.ph.ph.i466.i, %.sink.split.sink.split.i464.i ], [ %.lcssa978.i, %bb.ax ] ; 6 uses
  store ptr %.sink.i455.i, ptr %i.b, align 8, !tbaa !15
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %local__get_field_.exit468.i
  %.0245.i = phi ptr [ %.1.i, %bb.ba ], [ %.030.ph.i456.i, %local__get_field_.exit468.i ] ; 4 uses
  %.0.i = phi ptr [ %i.jh, %bb.ba ], [ %.030.ph.i456.i, %local__get_field_.exit468.i ] ; 2 uses
  %i.jf = load i8, ptr %.0.i, align 1, !tbaa !20  ; 2 uses
  switch i8 %i.jf, label %bb.az [
    i8 0, label %bb.bb
    i8 45, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.jg = getelementptr inbounds nuw i8, ptr %.0245.i, i64 1
  store i8 %i.jf, ptr %.0245.i, align 1, !tbaa !20
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.1.i = phi ptr [ %i.jg, %bb.az ], [ %.0245.i, %bb.ay ]
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.ay, !llvm.loop !33

bb.bb:                                            ; preds = %bb.ay
  store i8 0, ptr %.0245.i, align 1, !tbaa !20
  %i.ji = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.030.ph.i456.i) #13
  %.not333.i = icmp eq i64 %i.ji, 12
  br i1 %.not333.i, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.jj = call i64 @strspn(ptr noundef nonnull %.030.ph.i456.i, ptr noundef nonnull @.str.42) #13
  %i.jk = icmp ult i64 %i.jj, 5
  br i1 %i.jk, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jl = getelementptr inbounds nuw i8, ptr %.030.ph.i456.i, i64 5
  %i.jm = call i64 @strspn(ptr noundef nonnull %i.jl, ptr noundef nonnull @.str.43) #13
  %.not334.i = icmp eq i64 %i.jm, 7
  br i1 %.not334.i, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %bb.bd
end_hunk_0
begin_hunk_1_@grabbag__cuesheet_emit:bb.a
  br i1 %.not43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = udiv i64 %i.al, 588
  %i.an = trunc i64 %i.am to i32                  ; 3 uses
  %i.ao = urem i32 %i.an, 75
  %i.ap = udiv i32 %i.an, 75
  %i.aq = urem i32 %i.ap, 60
  %i.ar = udiv i32 %i.an, 4500
  %i.as = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %i.ar, i32 noundef %i.aq, i32 noundef %i.ao) #12 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.at = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.10, i64 noundef %i.al) #12 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = load i8, ptr %i.z, align 1, !tbaa !25
  %i.av = zext i8 %i.au to i64
  %i.aw = icmp samesign ult i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %bb.i, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.l, %bb.h
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 3 uses
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !23
  %i.ay = add i32 %i.ax, -1
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next55, %i.az
  br i1 %i.ba, label %bb.d, label %._crit_edge50, !llvm.loop !36

._crit_edge50:                                    ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i64 [ 0, %bb.c ], [ %indvars.iv.next55, %._crit_edge ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !18
  %i.bd = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.11, i64 noundef %i.bc) #12 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %.040.lcssa ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !31
  %i.bj = zext i8 %i.bi to i32
  %i.bk = load i64, ptr %i.bg, align 8, !tbaa !30
  %i.bl = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %i.bj, i64 noundef %i.bk) #12 ; 0 uses
  ret void
}

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @local__get_field_(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !20    ; 2 uses
  %.not49 = icmp eq i8 %i.c, 0
  br i1 %.not49, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.d = phi i8 [ %i.j, %bb.b ], [ %i.c, %.preheader ] ; 4 uses
  %i.e = phi ptr [ %i.i, %bb.b ], [ %i.a, %.preheader ] ; 5 uses
  %i.f = zext nneg i8 %i.d to i64
  %memchr.bounds = icmp ugt i8 %i.d, 63
  %i.g = shl nuw i64 1, %i.f
  %i.h = and i64 %i.g, 4294977025
  %memchr.bits = icmp eq i64 %i.h, 0
  %memchr42.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr42.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !15
  %i.j = load i8, ptr %i.i, align 1, !tbaa !20    ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %.sink.split, label %.lr.ph, !llvm.loop !0

.critedge:                                        ; preds = %.lr.ph
  %.not36 = icmp ne i32 %1, 0
  %i.k = icmp eq i8 %i.d, 34
  %or.cond = and i1 %.not36, %i.k
  br i1 %or.cond, label %bb.c, label %.lr.ph53

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !15
  %i.m = load i8, ptr %i.l, align 1, !tbaa !20
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.l, i32 noundef 34) #13 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !15
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.sink.split, label %.sink.split.sink.split

.lr.ph53:                                         ; preds = %.critedge, %bb.e
  %i.q = phi i8 [ %i.w, %bb.e ], [ %i.d, %.critedge ] ; 2 uses
  %i.r = phi ptr [ %i.v, %bb.e ], [ %i.e, %.critedge ] ; 2 uses
  %i.s = zext nneg i8 %i.q to i64
  %memchr.bounds43 = icmp ugt i8 %i.q, 63
  %i.t = shl nuw i64 1, %i.s
  %i.u = and i64 %i.t, 4294977025
  %memchr.bits44 = icmp eq i64 %i.u, 0
  %memchr.not = select i1 %memchr.bounds43, i1 true, i1 %memchr.bits44
  br i1 %memchr.not, label %bb.e, label %.sink.split.sink.split

bb.e:                                             ; preds = %.lr.ph53
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !15
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20    ; 2 uses
  %.not38 = icmp eq i8 %i.w, 0
  br i1 %.not38, label %.sink.split, label %.lr.ph53, !llvm.loop !1

.sink.split.sink.split:                           ; preds = %.lr.ph53, %bb.d
  %.lcssa.sink = phi ptr [ %i.o, %bb.d ], [ %i.r, %.lr.ph53 ]
  %.030.ph.ph = phi ptr [ %i.l, %bb.d ], [ %i.e, %.lr.ph53 ]
  store i8 0, ptr %.lcssa.sink, align 1, !tbaa !20
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.e, %.sink.split.sink.split, %bb.d, %bb.c, %.preheader
  %.sink = phi ptr [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.d ], [ %i.y, %.sink.split.sink.split ], [ null, %.preheader ], [ null, %bb.b ]
  %.030.ph = phi ptr [ %i.e, %bb.e ], [ null, %bb.c ], [ null, %bb.d ], [ %.030.ph.ph, %.sink.split.sink.split ], [ null, %.preheader ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.030 = phi ptr [ null, %bb.a ], [ %.030.ph, %.sink.split ]
  ret ptr %.030
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @local__parse_int_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !20      ; 2 uses
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %local__parse_int64_.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.b
  %.pn.i = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ]
  %.014.i = phi i64 [ %.fr, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = phi i8 [ %.pr.i, %bb.b ], [ %i.a, %bb.a ]
  %i.d = add i8 %i.c, -48                         ; 2 uses
  %or.cond.i = icmp ugt i8 %i.d, 9
  %i.e = icmp sgt i64 %.014.i, 922337203685477579
  %or.cond13.i = or i1 %or.cond.i, %i.e
  br i1 %or.cond13.i, label %local__parse_int64_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %i.g = mul nsw i64 %.014.i, 10
  %i.h = zext nneg i8 %i.d to i64
  %i.i = add nsw i64 %i.g, %i.h
  %.fr = freeze i64 %i.i                          ; 3 uses
  %.pr.i = load i8, ptr %i.f, align 1, !tbaa !20  ; 2 uses
  %.not.i = icmp eq i8 %.pr.i, 0
  br i1 %.not.i, label %local__parse_int64_.exit, label %.preheader.i, !llvm.loop !2

local__parse_int64_.exit:                         ; preds = %bb.b
  %or.cond = icmp ugt i64 %.fr, 2147483647
  %i.j = trunc nuw nsw i64 %.fr to i32
  br i1 %or.cond, label %local__parse_int64_.exit.thread, label %bb.c

local__parse_int64_.exit.thread:                  ; preds = %.preheader.i, %bb.a, %local__parse_int64_.exit
  br label %bb.c

bb.c:                                             ; preds = %local__parse_int64_.exit, %local__parse_int64_.exit.thread
  %i.k = phi i32 [ -1, %local__parse_int64_.exit.thread ], [ %i.j, %local__parse_int64_.exit ]
  ret i32 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define internal fastcc i64 @local__parse_msf_(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !20      ; 2 uses
  %i.c = add i8 %i.b, -48
  %or.cond = icmp ult i8 %i.c, 10
  br i1 %or.cond, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %3 = and i8 %i.b, 15
  %4 = zext nneg i8 %3 to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.e = load i8, ptr %2, align 1, !tbaa !20      ; 2 uses
  %.not105 = icmp eq i8 %i.e, 58
  br i1 %.not105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.f = phi i8 [ %i.n, %bb.d ], [ %i.e, %bb.c ]
  %i.g = phi ptr [ %i.m, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %.073106 = phi i64 [ %i.l, %bb.d ], [ %4, %bb.c ] ; 2 uses
  %i.h = add i8 %i.f, -48                         ; 2 uses
  %or.cond6 = icmp ugt i8 %i.h, 9
  %i.i = icmp sgt i64 %.073106, 922337203685477579
  %or.cond95 = select i1 %or.cond6, i1 true, i1 %i.i
  br i1 %or.cond95, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.j = mul nsw i64 %.073106, 10
  %i.k = zext nneg i8 %i.h to i64
  %i.l = add nsw i64 %i.j, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.g, align 1, !tbaa !20    ; 2 uses
  %.not = icmp eq i8 %i.n, 58
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.078.lcssa = phi ptr [ %2, %bb.c ], [ %i.g, %bb.d ] ; 3 uses
  %.073.lcssa = phi i64 [ %4, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %.lcssa = phi ptr [ %i.d, %bb.c ], [ %i.m, %bb.d ]
  %i.o = mul i32 %1, 60
  %i.p = zext i32 %i.o to i64
  %i.q = udiv i64 9223372036854775807, %i.p
  %.not87 = icmp slt i64 %.073.lcssa, %i.q
  br i1 %.not87, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %._crit_edge
  %i.r = mul nsw i64 %.073.lcssa, 60              ; 2 uses
  %i.s = zext i32 %1 to i64                       ; 2 uses
  %i.t = mul nsw i64 %i.r, %i.s
  %i.u = load i8, ptr %.lcssa, align 1, !tbaa !20 ; 2 uses
  %i.v = add i8 %i.u, -48
  %or.cond9 = icmp ult i8 %i.v, 10
  br i1 %or.cond9, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %5 = getelementptr inbounds nuw i8, ptr %.078.lcssa, i64 2
  %6 = and i8 %i.u, 15
  %7 = zext nneg i8 %6 to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.078.lcssa, i64 3 ; 2 uses
  %i.x = load i8, ptr %5, align 1, !tbaa !20      ; 2 uses
  %.not88 = icmp eq i8 %i.x, 58
  br i1 %.not88, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = add i8 %i.x, -48                         ; 2 uses
  %or.cond12 = icmp ult i8 %i.y, 10
  br i1 %or.cond12, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.z = mul nuw nsw i64 %7, 10
  %i.aa = zext nneg i8 %i.y to i64
  %i.ab = add nuw nsw i64 %i.z, %i.aa             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.078.lcssa, i64 4
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !20
  %.not89 = icmp ne i8 %i.ad, 58
  %i.ae = icmp samesign ugt i64 %i.ab, 59
  %or.cond101 = select i1 %.not89, i1 true, i1 %i.ae
  br i1 %or.cond101, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.h, %bb.f
  %.174100 = phi i64 [ %i.ab, %bb.h ], [ %7, %bb.f ]
  %.17999 = phi ptr [ %i.ac, %bb.h ], [ %i.w, %bb.f ] ; 3 uses
  %i.af = add i64 %.174100, %i.r
  %i.ag = mul i64 %i.af, %i.s                     ; 2 uses
  %.not90 = icmp slt i64 %i.ag, %i.t
  br i1 %.not90, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.ah = load i8, ptr %.17999, align 1, !tbaa !20 ; 2 uses
  %i.ai = add i8 %i.ah, -48
  %or.cond15 = icmp ult i8 %i.ai, 10
  br i1 %or.cond15, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %8 = getelementptr inbounds nuw i8, ptr %.17999, i64 1
  %9 = and i8 %i.ah, 15
  %10 = zext nneg i8 %9 to i64                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.17999, i64 2
  %i.ak = load i8, ptr %8, align 1, !tbaa !20     ; 2 uses
  %.not91 = icmp eq i8 %i.ak, 0
  br i1 %.not91, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add i8 %i.ak, -48                       ; 2 uses
  %or.cond18 = icmp ult i8 %i.al, 10
  br i1 %or.cond18, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.am = mul nuw nsw i64 %10, 10
  %i.an = zext nneg i8 %i.al to i64
  %i.ao = add nuw nsw i64 %i.am, %i.an
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !20
  %i.aq = icmp ne i8 %i.ap, 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.2 = phi i64 [ %i.ao, %bb.l ], [ %10, %bb.j ]  ; 2 uses
  %.072 = phi i1 [ %i.aq, %bb.l ], [ false, %bb.j ]
  %i.ar = icmp samesign ugt i64 %.2, 74
  %or.cond96 = select i1 %.072, i1 true, i1 %i.ar
  br i1 %or.cond96, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = udiv i32 %1, 75
  %i.at = zext nneg i32 %i.as to i64
  %i.au = mul nuw nsw i64 %.2, %i.at
  %i.av = add nsw i64 %i.au, %i.ag
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.n, %bb.m, %bb.k, %bb.i, %bb.g, %bb.h, %bb.e, %._crit_edge, %bb.b, %bb.a, %.thread
  %.277 = phi i64 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %._crit_edge ], [ -1, %.thread ], [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.k ], [ -1, %bb.m ], [ -1, %bb.h ], [ %i.av, %bb.n ], [ -1, %bb.i ], [ -1, %.lr.ph ]
  ret i64 %.277
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define internal fastcc i64 @local__parse_ms_(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !20      ; 2 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %3 = and i8 %i.c, 15
  %4 = zext nneg i8 %3 to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.f = load i8, ptr %2, align 1, !tbaa !20      ; 2 uses
  %.not45 = icmp eq i8 %i.f, 58
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.g = phi i8 [ %i.o, %bb.d ], [ %i.f, %bb.c ]
  %i.h = phi ptr [ %i.n, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %.046 = phi i64 [ %i.m, %bb.d ], [ %4, %bb.c ]  ; 2 uses
  %i.i = add i8 %i.g, -48                         ; 2 uses
  %or.cond5 = icmp ugt i8 %i.i, 9
  %i.j = icmp sgt i64 %.046, 922337203685477579
  %or.cond42 = select i1 %or.cond5, i1 true, i1 %i.j
  br i1 %or.cond42, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.k = mul nsw i64 %.046, 10
  %i.l = zext nneg i8 %i.i to i64
  %i.m = add nsw i64 %i.k, %i.l                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.o = load i8, ptr %i.h, align 1, !tbaa !20    ; 2 uses
  %.not = icmp eq i8 %i.o, 58
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.0.lcssa = phi i64 [ %4, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %.lcssa = phi ptr [ %i.e, %bb.c ], [ %i.n, %bb.d ] ; 4 uses
  %i.p = mul i32 %1, 60
  %i.q = zext i32 %i.p to i64
  %i.r = udiv i64 9223372036854775807, %i.q
  %.not38 = icmp slt i64 %.0.lcssa, %i.r
  br i1 %.not38, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %._crit_edge
  %i.s = zext i32 %1 to i64
  %i.t = mul nuw nsw i64 %i.s, 60
  %i.u = mul i64 %i.t, %.0.lcssa
  %i.v = tail call i64 @strspn(ptr noundef nonnull %.lcssa, ptr noundef nonnull @.str.71) #13
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa) #13
  %.not39 = icmp eq i64 %i.v, %i.w
  br i1 %.not39, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.x = call double @strtod(ptr noundef nonnull %.lcssa, ptr noundef nonnull %i.a) #12 ; 3 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !20
  %.not40 = icmp ne i8 %i.z, 0
  %i.aa = icmp eq ptr %i.y, %.lcssa
  %or.cond41 = select i1 %.not40, i1 true, i1 %i.aa
  br i1 %or.cond41, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = fcmp olt double %i.x, 0.000000e+00
  %i.ac = fcmp oge double %i.x, 6.000000e+01
  %or.cond7 = or i1 %i.ab, %i.ac
  br i1 %or.cond7, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = uitofp i32 %1 to double
  %i.ae = fmul double %i.x, %i.ad
  %i.af = fptosi double %i.ae to i64
  %i.ag = add nsw i64 %i.u, %i.af
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %bb.f, %bb.e, %._crit_edge, %bb.b, %bb.a, %bb.h
  %.032 = phi i64 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.g ], [ %i.ag, %bb.h ], [ -1, %._crit_edge ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.032
}

declare i32 @FLAC__metadata_object_cuesheet_track_insert_blank_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @FLAC__metadata_object_cuesheet_insert_blank_track(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias returned writeonly, ptr noalias readonly captures(none), i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = distinct !{!2, !21}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"", !8, i64 0, !16, i64 136, !9, i64 144, !9, i64 148, !13, i64 152}
!18 = !{!17, !16, i64 136}
!19 = !{!17, !9, i64 144}
!20 = !{!8, !8, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!17, !13, i64 152}
!23 = !{!17, !9, i64 148}
!24 = !{!"", !16, i64 0, !8, i64 8, !8, i64 9, !9, i64 22, !9, i64 22, !8, i64 23, !13, i64 24}
!25 = !{!24, !8, i64 23}
!26 = !{!24, !13, i64 24}
!27 = !{!"", !16, i64 0, !8, i64 8}
!28 = !{!27, !8, i64 8}
!29 = !{!27, !16, i64 0}
!30 = !{!24, !16, i64 0}
!31 = !{!24, !8, i64 8}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !21}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
!37 = distinct !{!37, !21}
!38 = distinct !{!38, !21}
end_hunk_1
