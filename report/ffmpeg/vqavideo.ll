Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vqavideo?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@vqa_decode_frame:bb.a
  %i.qx = trunc i64 %i.qw to i32
  %i.qy = icmp slt i32 %.1149.i, 0
  %..i167.i = call i32 @llvm.smin.i32(i32 %.1149.i, i32 %i.qx)
  %.0.i168.i = select i1 %i.qy, i32 0, i32 %..i167.i
  %i.qz = sext i32 %.0.i168.i to i64
  %i.ra = getelementptr inbounds i8, ptr %i.qt, i64 %i.qz ; 4 uses
  store ptr %i.ra, ptr %i.h, align 8, !tbaa !52
  %i.rb = ptrtoint ptr %i.ra to i64
  %i.rc = sub i64 %i.qu, %i.rb
  %i.rd = icmp slt i64 %i.rc, 4
  br i1 %i.rd, label %bytestream2_get_be32.exit162.thread.i, label %bytestream2_get_be32.exit162.i

bytestream2_get_be32.exit162.thread.i:            ; preds = %bb.bp
  store ptr %i.qs, ptr %i.h, align 8, !tbaa !52
  br label %bb.br

bytestream2_get_be32.exit162.i:                   ; preds = %bb.bp
  %i.re = getelementptr inbounds nuw i8, ptr %i.ra, i64 4 ; 3 uses
  store ptr %i.re, ptr %i.h, align 8, !tbaa !55
  %i.rf = load i32, ptr %i.ra, align 1, !tbaa !34
  %i.rg = call i32 @llvm.bswap.i32(i32 %i.rf)     ; 3 uses
  %i.rh = icmp ugt i32 %i.rg, 2097152
  br i1 %i.rh, label %bb.bq, label %bytestream2_get_be32.exit162._crit_edge.i

bytestream2_get_be32.exit162._crit_edge.i:        ; preds = %bytestream2_get_be32.exit162.i
  %.pre132.i = ptrtoint ptr %i.re to i64
  %i.ri = zext nneg i32 %i.rg to i64
  br label %bb.br

bb.bq:                                            ; preds = %bytestream2_get_be32.exit162.i
  %i.rj = load ptr, ptr %i.ot, align 8, !tbaa !33
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.rj, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %i.rg) #9
  br label %vqa_decode_frame_hicolor.exit.thread

bb.br:                                            ; preds = %bytestream2_get_be32.exit162._crit_edge.i, %bytestream2_get_be32.exit162.thread.i
  %.pre-phi.i42 = phi i64 [ %.pre132.i, %bytestream2_get_be32.exit162._crit_edge.i ], [ %i.qu, %bytestream2_get_be32.exit162.thread.i ]
  %i.rk = phi ptr [ %i.re, %bytestream2_get_be32.exit162._crit_edge.i ], [ %i.qs, %bytestream2_get_be32.exit162.thread.i ]
  %.0.i16111.i = phi i64 [ %i.ri, %bytestream2_get_be32.exit162._crit_edge.i ], [ 0, %bytestream2_get_be32.exit162.thread.i ]
  %i.rl = getelementptr inbounds nuw i8, ptr %i.d, i64 1088
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !46
  %i.rn = sub i64 %i.qu, %.pre-phi.i42
  %i.ro = call i64 @llvm.smin.i64(i64 %i.rn, i64 %.0.i16111.i)
  %i.rp = and i64 %i.ro, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rm, ptr align 1 %i.rk, i64 %i.rp, i1 false)
  %i.rq = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.rp
  store ptr %i.rr, ptr %i.h, align 8, !tbaa !52
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bo
  %.not.i34 = icmp eq i32 %.1145.i, -1
  br i1 %.not.i34, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.rs = load ptr, ptr %i.r, align 8, !tbaa !54  ; 3 uses
  %i.rt = load ptr, ptr %i.o, align 8, !tbaa !53  ; 2 uses
  %i.ru = ptrtoint ptr %i.rs to i64               ; 4 uses
  %i.rv = ptrtoint ptr %i.rt to i64
  %i.rw = sub i64 %i.ru, %i.rv
  %i.rx = trunc i64 %i.rw to i32
  %i.ry = icmp slt i32 %.1145.i, 0
  %..i169.i = call i32 @llvm.smin.i32(i32 %.1145.i, i32 %i.rx)
  %.0.i170.i = select i1 %i.ry, i32 0, i32 %..i169.i
  %i.rz = sext i32 %.0.i170.i to i64
  %i.sa = getelementptr inbounds i8, ptr %i.rt, i64 %i.rz ; 4 uses
  store ptr %i.sa, ptr %i.h, align 8, !tbaa !52
  %i.sb = ptrtoint ptr %i.sa to i64
  %i.sc = sub i64 %i.ru, %i.sb
  %i.sd = icmp slt i64 %i.sc, 4
  br i1 %i.sd, label %bytestream2_get_be32.exit160.thread.i, label %bytestream2_get_be32.exit160.i

bytestream2_get_be32.exit160.thread.i:            ; preds = %bb.bt
  store ptr %i.rs, ptr %i.h, align 8, !tbaa !52
  br label %bb.bv

bytestream2_get_be32.exit160.i:                   ; preds = %bb.bt
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 4 ; 3 uses
  store ptr %i.se, ptr %i.h, align 8, !tbaa !55
  %i.sf = load i32, ptr %i.sa, align 1, !tbaa !34
  %i.sg = call i32 @llvm.bswap.i32(i32 %i.sf)     ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.d, i64 1128
  %i.si = load i32, ptr %i.sh, align 8, !tbaa !48
  %i.sj = icmp ugt i32 %i.sg, %i.si
  br i1 %i.sj, label %bb.bu, label %bytestream2_get_be32.exit160._crit_edge.i

bytestream2_get_be32.exit160._crit_edge.i:        ; preds = %bytestream2_get_be32.exit160.i
  %.pre133.i = ptrtoint ptr %i.se to i64
  %i.sk = zext i32 %i.sg to i64
  br label %bb.bv

bb.bu:                                            ; preds = %bytestream2_get_be32.exit160.i
  %i.sl = load ptr, ptr %i.ot, align 8, !tbaa !33
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.sl, i32 noundef 16, ptr noundef nonnull @.str.27) #9
  br label %vqa_decode_frame_hicolor.exit.thread

bb.bv:                                            ; preds = %bytestream2_get_be32.exit160._crit_edge.i, %bytestream2_get_be32.exit160.thread.i
  %.pre-phi134.i = phi i64 [ %.pre133.i, %bytestream2_get_be32.exit160._crit_edge.i ], [ %i.ru, %bytestream2_get_be32.exit160.thread.i ]
  %i.sm = phi ptr [ %i.se, %bytestream2_get_be32.exit160._crit_edge.i ], [ %i.rs, %bytestream2_get_be32.exit160.thread.i ]
  %.0.i15913.i = phi i64 [ %i.sk, %bytestream2_get_be32.exit160._crit_edge.i ], [ 0, %bytestream2_get_be32.exit160.thread.i ]
  %i.sn = getelementptr inbounds nuw i8, ptr %i.d, i64 1120
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !49
  %i.sp = sub i64 %i.ru, %.pre-phi134.i
  %i.sq = call i64 @llvm.smin.i64(i64 %i.sp, i64 %.0.i15913.i)
  %i.sr = and i64 %i.sq, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.so, ptr align 1 %i.sm, i64 %i.sr, i1 false)
  %i.ss = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.sr
  store ptr %i.st, ptr %i.h, align 8, !tbaa !52
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bs
  %.not155.i = icmp eq i32 %.1143.i, -1
  br i1 %.not155.i, label %.thread192.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.su = load ptr, ptr %i.r, align 8, !tbaa !54  ; 2 uses
  %i.sv = load ptr, ptr %i.o, align 8, !tbaa !53  ; 2 uses
  %i.sw = ptrtoint ptr %i.su to i64               ; 2 uses
  %i.sx = ptrtoint ptr %i.sv to i64
  %i.sy = sub i64 %i.sw, %i.sx
  %i.sz = trunc i64 %i.sy to i32
  %i.ta = icmp slt i32 %.1143.i, 0
  %..i171.i = call i32 @llvm.smin.i32(i32 %.1143.i, i32 %i.sz)
  %.0.i172.i = select i1 %i.ta, i32 0, i32 %..i171.i
  %i.tb = sext i32 %.0.i172.i to i64
  %i.tc = getelementptr inbounds i8, ptr %i.sv, i64 %i.tb ; 3 uses
  %i.td = ptrtoint ptr %i.tc to i64
  %i.te = sub i64 %i.sw, %i.td
  %i.tf = icmp slt i64 %i.te, 4
  br i1 %i.tf, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store ptr %i.su, ptr %i.h, align 8, !tbaa !52
  br label %bytestream2_get_be32.exit.i40

bb.bz:                                            ; preds = %bb.bx
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  store ptr %i.tg, ptr %i.h, align 8, !tbaa !55
  %i.th = load i32, ptr %i.tc, align 1, !tbaa !34
  %i.ti = call i32 @llvm.bswap.i32(i32 %i.th)
  br label %bytestream2_get_be32.exit.i40

bytestream2_get_be32.exit.i40:                    ; preds = %bb.bz, %bb.by
  %.0.i.i41 = phi i32 [ 0, %bb.by ], [ %i.ti, %bb.bz ]
  %i.tj = getelementptr inbounds nuw i8, ptr %i.d, i64 1120
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !49
  %i.tl = getelementptr inbounds nuw i8, ptr %i.d, i64 1128
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !48
  %i.tn = call fastcc i32 @decode_format80(ptr noundef nonnull %i.d, i32 noundef %.0.i.i41, ptr noundef %i.tk, i32 noundef %i.tm, i32 noundef 0) ; 2 uses
  %i.to = icmp slt i32 %i.tn, 0
  br i1 %i.to, label %vqa_decode_frame_hicolor.exit.thread, label %bb.ca

.thread192.i:                                     ; preds = %bb.bw, %bb.bc
  %i.tp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !33
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.tq, i32 noundef 16, ptr noundef nonnull @.str.28) #9
  br label %vqa_decode_frame_hicolor.exit.thread

bb.ca:                                            ; preds = %bytestream2_get_be32.exit.i40, %bb.bv
  %i.tr = getelementptr inbounds nuw i8, ptr %i.d, i64 1120
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !49 ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.d, i64 1128
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !48 ; 2 uses
  %i.tv = icmp ne ptr %i.ts, null
  %i.tw = icmp sgt i32 %i.tu, -1
  %or.cond.i.i35 = and i1 %i.tv, %i.tw
  br i1 %or.cond.i.i35, label %bytestream2_init.exit.i36, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 141) #9
  call void @abort() #10
  unreachable

bytestream2_init.exit.i36:                        ; preds = %bb.ca
  %i.tx = zext nneg i32 %i.tu to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.tx ; 4 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.d, i64 1068 ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !37 ; 2 uses
  %.not15893.i = icmp sgt i32 %i.ua, 0
  br i1 %.not15893.i, label %.preheader29.lr.ph.i, label %vqa_decode_frame_hicolor.exit

.preheader29.lr.ph.i:                             ; preds = %bytestream2_init.exit.i36
  %i.ub = getelementptr inbounds nuw i8, ptr %i.d, i64 1064 ; 4 uses
  %i.uc = ptrtoint ptr %i.ty to i64               ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.d, i64 1072 ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.d, i64 1076 ; 5 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.d, i64 1088 ; 2 uses
  %i.ug = load i32, ptr %i.ub, align 8, !tbaa !36 ; 2 uses
  %i.uh = icmp sgt i32 %i.ug, 0
  br i1 %i.uh, label %.preheader29.i, label %vqa_decode_frame_hicolor.exit

.preheader29.i:                                   ; preds = %.preheader29.lr.ph.i, %._crit_edge91.i
  %i.ui = phi i32 [ %i.aae, %._crit_edge91.i ], [ %i.ua, %.preheader29.lr.ph.i ]
  %i.uj = phi i32 [ %i.aaf, %._crit_edge91.i ], [ %i.ug, %.preheader29.lr.ph.i ] ; 3 uses
  %.013795.i = phi i32 [ %i.aah, %._crit_edge91.i ], [ 0, %.preheader29.lr.ph.i ] ; 3 uses
  %.sroa.0.094.i = phi ptr [ %.sroa.0.1.lcssa.i, %._crit_edge91.i ], [ %i.ts, %.preheader29.lr.ph.i ] ; 2 uses
  %i.uk = icmp sgt i32 %i.uj, 0
  br i1 %i.uk, label %.lr.ph90.i, label %._crit_edge91.i

.lr.ph90.i:                                       ; preds = %.preheader29.i, %.critedge.thread.i
  %i.ul = phi i32 [ %i.aac, %.critedge.thread.i ], [ %i.uj, %.preheader29.i ] ; 6 uses
  %.013389.i = phi i32 [ %.3136.i, %.critedge.thread.i ], [ 0, %.preheader29.i ] ; 14 uses
  %.sroa.0.188.i = phi ptr [ %.sroa.0.8.i, %.critedge.thread.i ], [ %.sroa.0.094.i, %.preheader29.i ] ; 4 uses
  %i.um = ptrtoint ptr %.sroa.0.188.i to i64
  %i.un = sub i64 %i.uc, %i.um                    ; 2 uses
  %i.uo = trunc i64 %i.un to i32
  %i.up = icmp slt i32 %i.uo, 2
  br i1 %i.up, label %vqa_decode_frame_hicolor.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph90.i
  %i.uq = icmp slt i64 %i.un, 2
  br i1 %i.uq, label %bytestream2_get_le16.exit.thread.i, label %bytestream2_get_le16.exit.i

bytestream2_get_le16.exit.i:                      ; preds = %bb.cc
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.0.188.i, i64 2 ; 5 uses
  %i.us = load i16, ptr %.sroa.0.188.i, align 1, !tbaa !34
  %.fr97.i = freeze i16 %i.us                     ; 3 uses
  %i.ut = zext i16 %.fr97.i to i32                ; 6 uses
  %i.uu = lshr i32 %i.ut, 13                      ; 4 uses
  %i.uv = icmp eq i32 %i.uu, 0
  br i1 %i.uv, label %bytestream2_get_le16.exit.thread.i, label %bb.cd

bytestream2_get_le16.exit.thread.i:               ; preds = %bytestream2_get_le16.exit.i, %bb.cc
  %.0.i17617.i = phi i32 [ %i.ut, %bytestream2_get_le16.exit.i ], [ 0, %bb.cc ]
  %.sroa.0.216.i = phi ptr [ %i.ur, %bytestream2_get_le16.exit.i ], [ %i.ty, %bb.cc ]
  %i.uw = shl nuw nsw i32 %.0.i17617.i, 2
  %i.ux = add nsw i32 %i.uw, %.013389.i
  br label %.critedge.thread.i, !llvm.loop !71

bb.cd:                                            ; preds = %bytestream2_get_le16.exit.i
  %i.uy = icmp ult i16 %.fr97.i, 24576
  br i1 %i.uy, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.uz = and i32 %i.ut, 255
  %i.va = lshr i32 %i.ut, 7
  %i.vb = and i32 %i.va, 62
  %i.vc = add nuw nsw i32 %i.uu, 1
  %i.vd = add nuw nsw i32 %i.vc, %i.vb
  br label %bytestream2_get_byte.exit175.i

bb.cf:                                            ; preds = %bb.cd
  %i.ve = icmp ult i16 %.fr97.i, -24576
  br i1 %i.ve, label %bytestream2_get_byte.exit175.thread.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.not156.i = icmp eq i32 %i.uu, 7
  br i1 %.not156.i, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.vf = ptrtoint ptr %i.ur to i64
  %i.vg = sub i64 %i.uc, %i.vf
  %i.vh = icmp slt i64 %i.vg, 1
  br i1 %i.vh, label %bytestream2_get_byte.exit175.i.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.vi = and i32 %i.ut, 8191
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.0.188.i, i64 3
  %i.vk = load i8, ptr %i.ur, align 1, !tbaa !34
  %i.vl = zext i8 %i.vk to i32
  br label %bytestream2_get_byte.exit175.i

bb.cj:                                            ; preds = %bb.cg
  %i.vm = load ptr, ptr %i.ot, align 8, !tbaa !33
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.vm, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef 7) #9
  br label %vqa_decode_frame_hicolor.exit.thread

bytestream2_get_byte.exit175.i:                   ; preds = %bb.ci, %bb.ce
  %.sroa.0.4.i = phi ptr [ %i.ur, %bb.ce ], [ %i.vj, %bb.ci ] ; 2 uses
  %.0129.i = phi i32 [ %i.uz, %bb.ce ], [ %i.vi, %bb.ci ]
  %.0127.i = phi i32 [ %i.vd, %bb.ce ], [ %i.vl, %bb.ci ] ; 5 uses
  %i.vn = sub nsw i32 %i.ul, %.013389.i
  %i.vo = load i32, ptr %i.ud, align 8, !tbaa !39
  %i.vp = sdiv i32 %i.vn, %i.vo
  %i.vq = icmp sgt i32 %.0127.i, %i.vp
  br i1 %i.vq, label %bb.cl, label %.preheader.i37

bytestream2_get_byte.exit175.i.thread:            ; preds = %bb.ch
  %i.vr = sub nsw i32 %i.ul, %.013389.i
  %i.vs = load i32, ptr %i.ud, align 8, !tbaa !39
  %i.vt = sdiv i32 %i.vr, %i.vs
  %i.vu = icmp slt i32 %i.vt, 0
  br i1 %i.vu, label %bb.cl, label %.critedge.thread.i

bytestream2_get_byte.exit175.thread.i:            ; preds = %bb.cf
  %i.vv = and i32 %i.ut, 8191
  %i.vw = sub nsw i32 %i.ul, %.013389.i
  %i.vx = load i32, ptr %i.ud, align 8, !tbaa !39
  %i.vy = sdiv i32 %i.vw, %i.vx
  %i.vz = icmp slt i32 %i.vy, 1
  br i1 %i.vz, label %bb.cl, label %.lr.ph68.i

.preheader.i37:                                   ; preds = %bytestream2_get_byte.exit175.i
  %i.wa = add nsw i32 %.0127.i, -1
  %.not15763.i = icmp eq i32 %.0127.i, 0
  br i1 %.not15763.i, label %.critedge.thread.i, label %.lr.ph68.i

.lr.ph68.i:                                       ; preds = %.preheader.i37, %bytestream2_get_byte.exit175.thread.i
  %i.wb = phi i32 [ %i.wa, %.preheader.i37 ], [ 0, %bytestream2_get_byte.exit175.thread.i ] ; 11 uses
  %.sroa.0.4198208.i = phi ptr [ %.sroa.0.4.i, %.preheader.i37 ], [ %i.ur, %bytestream2_get_byte.exit175.thread.i ] ; 9 uses
  %.0129199207.i = phi i32 [ %.0129.i, %.preheader.i37 ], [ %i.vv, %bytestream2_get_byte.exit175.thread.i ] ; 2 uses
  %.0127201206.i = phi i32 [ %.0127.i, %.preheader.i37 ], [ 1, %bytestream2_get_byte.exit175.thread.i ] ; 3 uses
  %i.wc = icmp eq i32 %i.uu, 2
  br i1 %i.wc, label %.lr.ph68.split.preheader.i, label %.lr.ph68.split.us.i

.lr.ph68.split.preheader.i:                       ; preds = %.lr.ph68.i
  %i.wd = sext i32 %.013389.i to i64
  br label %.lr.ph68.split.i

.lr.ph68.split.us.i:                              ; preds = %.lr.ph68.i
  %4 = icmp slt i32 %.013389.i, %i.ul
  br i1 %4, label %.lr.ph77.i, label %.critedge.i

.lr.ph77.i:                                       ; preds = %.lr.ph68.split.us.i
  %i.we = shl nuw nsw i32 %.0129199207.i, 3
  %i.wf = load i32, ptr %i.ue, align 4, !tbaa !40 ; 2 uses
  %i.wg = icmp sgt i32 %i.wf, 0
  br i1 %i.wg, label %.lr.ph77.split.preheader.i, label %bytestream2_get_byte.exit.us.us.preheader.i

bytestream2_get_byte.exit.us.us.preheader.i:      ; preds = %.lr.ph77.i
  %i.wh = shl nuw nsw i32 %.0127201206.i, 2
  %i.wi = add i32 %i.wh, %.013389.i               ; 3 uses
  %.not157.us.us.i192 = icmp eq i32 %i.wb, 0
  br i1 %.not157.us.us.i192, label %.critedge.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bytestream2_get_byte.exit.us.us.preheader.i
  %min.iters.check = icmp ult i32 %i.wb, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i32 %i.wb, -16                     ; 3 uses
  %i.wj = and i32 %i.wb, 15
  %i.wk = shl i32 %n.vec, 2
  %i.wl = add i32 %.013389.i, %i.wk
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.ul, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <16 x i32> poison, i32 %i.wb, i64 0
  %broadcast.splat195 = shufflevector <16 x i32> %broadcast.splatinsert194, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.wm = add nsw <16 x i32> %broadcast.splat195, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -8, i32 -9, i32 -10, i32 -11, i32 -12, i32 -13, i32 -14, i32 -15>
  %broadcast.splatinsert196 = insertelement <16 x i32> poison, i32 %.013389.i, i64 0
  %broadcast.splat197 = shufflevector <16 x i32> %broadcast.splatinsert196, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat197, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %i.wm, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %vec.ind198 = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next199, %vector.body.interim ] ; 2 uses
  %i.wn = add nsw <16 x i32> %vec.ind198, splat (i32 4) ; 2 uses
  %i.wo = icmp sge <16 x i32> %i.wn, %broadcast.splat
  %i.wp = freeze <16 x i1> %i.wo                  ; 2 uses
  %i.wq = bitcast <16 x i1> %i.wp to i16
  %.not = icmp eq i16 %i.wq, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next199 = add nsw <16 x i32> %vec.ind198, splat (i32 64)
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 -16)
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.wr = icmp eq i32 %index.next, %n.vec
  br i1 %i.wr, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %i.wb, %n.vec
  br i1 %cmp.n, label %.critedge.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph = phi i32 [ %i.wb, %.lr.ph ], [ %i.wj, %middle.block ]
  %.113465.us76.us.i193.ph = phi i32 [ %.013389.i, %.lr.ph ], [ %i.wl, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %first.active.lane = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.wp, i1 false) ; 3 uses
  %i.ws = extractelement <16 x i32> %i.wn, i64 %first.active.lane
  %i.wt = extractelement <16 x i32> %vec.ind, i64 %first.active.lane
  %i.wu = add nsw i32 %i.wt, -1
  %i.wv = trunc i64 %first.active.lane to i32
  %i.ww = add i32 %index, %i.wv
  %i.wx = sub i32 %i.wb, %i.ww
  br label %.critedge.i

.lr.ph77.split.preheader.i:                       ; preds = %.lr.ph77.i
  %i.wy = sext i32 %.013389.i to i64
  %.pre130.i = load ptr, ptr %i.d, align 8, !tbaa !44
  br label %.lr.ph77.split.i

bytestream2_get_byte.exit.us.us.i:                ; preds = %scalar.ph
  %.not157.us.us.i = icmp eq i32 %i.xb, 0
  br i1 %.not157.us.us.i, label %.critedge.thread.i, label %scalar.ph, !llvm.loop !73

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bytestream2_get_byte.exit.us.us.i
  %i.wz = phi i32 [ %i.xb, %bytestream2_get_byte.exit.us.us.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.113465.us76.us.i193 = phi i32 [ %i.xa, %bytestream2_get_byte.exit.us.us.i ], [ %.113465.us76.us.i193.ph, %scalar.ph.preheader ]
  %i.xa = add nsw i32 %.113465.us76.us.i193, 4    ; 3 uses
  %i.xb = add nsw i32 %i.wz, -1                   ; 3 uses
  %i.xc = icmp slt i32 %i.xa, %i.ul
  br i1 %i.xc, label %bytestream2_get_byte.exit.us.us.i, label %.critedge.i

bb.ck:                                            ; preds = %bytestream2_get_byte.exit.us.i
  %i.xd = add nsw i32 %i.xj, -1                   ; 2 uses
  %i.xe = load i32, ptr %i.ub, align 8, !tbaa !36
  %i.xf = sext i32 %i.xe to i64
  %i.xg = icmp slt i64 %indvars.iv.next.i39, %i.xf
  br i1 %i.xg, label %.lr.ph77.split.i, label %.critedge.loopexit99.i, !llvm.loop !74

.lr.ph77.split.i:                                 ; preds = %bb.ck, %.lr.ph77.split.preheader.i
  %i.xh = phi i32 [ %i.wf, %.lr.ph77.split.preheader.i ], [ %i.yh, %bb.ck ] ; 3 uses
  %i.xi = phi ptr [ %.pre130.i, %.lr.ph77.split.preheader.i ], [ %i.yi, %bb.ck ] ; 3 uses
  %indvars.iv.i38 = phi i64 [ %i.wy, %.lr.ph77.split.preheader.i ], [ %indvars.iv.next.i39, %bb.ck ] ; 2 uses
  %i.xj = phi i32 [ %i.wb, %.lr.ph77.split.preheader.i ], [ %i.xd, %bb.ck ] ; 3 uses
  %i.xk = icmp sgt i32 %i.xh, 0
  br i1 %i.xk, label %.lr.ph61.us.preheader.i, label %bytestream2_get_byte.exit.us.i

.lr.ph61.us.preheader.i:                          ; preds = %.lr.ph77.split.i
  %i.xl = load ptr, ptr %i.uf, align 8, !tbaa !46
  %i.xm = mul i32 %i.we, %i.xh
  %i.xn = sext i32 %i.xm to i64
  %i.xo = getelementptr inbounds i8, ptr %i.xl, i64 %i.xn
  %i.xp = load ptr, ptr %i.xi, align 8, !tbaa !55
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xi, i64 64
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !38
  %i.xs = mul nsw i32 %i.xr, %.013795.i
  %i.xt = sext i32 %i.xs to i64
  %i.xu = getelementptr inbounds i8, ptr %i.xp, i64 %i.xt
  %i.xv = shl nsw i64 %indvars.iv.i38, 1
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xu, i64 %i.xv
  br label %.lr.ph61.us.i

.lr.ph61.us.i:                                    ; preds = %.lr.ph61.us.i, %.lr.ph61.us.preheader.i
  %.012459.us.i = phi i32 [ %i.ye, %.lr.ph61.us.i ], [ 0, %.lr.ph61.us.preheader.i ]
  %.012558.us.i = phi ptr [ %i.yc, %.lr.ph61.us.i ], [ %i.xw, %.lr.ph61.us.preheader.i ] ; 2 uses
  %.012657.us.i = phi ptr [ %i.yd, %.lr.ph61.us.i ], [ %i.xo, %.lr.ph61.us.preheader.i ] ; 2 uses
  %i.xx = load i64, ptr %.012657.us.i, align 1
  store i64 %i.xx, ptr %.012558.us.i, align 1
  %i.xy = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 64
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !38
  %i.yb = sext i32 %i.ya to i64
  %i.yc = getelementptr inbounds i8, ptr %.012558.us.i, i64 %i.yb
  %i.yd = getelementptr inbounds nuw i8, ptr %.012657.us.i, i64 8
  %i.ye = add nuw nsw i32 %.012459.us.i, 1        ; 2 uses
  %i.yf = load i32, ptr %i.ue, align 4, !tbaa !40 ; 2 uses
  %i.yg = icmp slt i32 %i.ye, %i.yf
  br i1 %i.yg, label %.lr.ph61.us.i, label %bytestream2_get_byte.exit.us.i, !llvm.loop !75

bytestream2_get_byte.exit.us.i:                   ; preds = %.lr.ph61.us.i, %.lr.ph77.split.i
  %i.yh = phi i32 [ %i.xh, %.lr.ph77.split.i ], [ %i.yf, %.lr.ph61.us.i ]
  %i.yi = phi ptr [ %i.xi, %.lr.ph77.split.i ], [ %i.xy, %.lr.ph61.us.i ]
  %indvars.iv.next.i39 = add nsw i64 %indvars.iv.i38, 4 ; 4 uses
  %.not157.us.i = icmp eq i32 %i.xj, 0
  br i1 %.not157.us.i, label %.critedge.thread.loopexit98.i, label %bb.ck

bb.cl:                                            ; preds = %bytestream2_get_byte.exit175.i.thread, %bytestream2_get_byte.exit175.thread.i, %bytestream2_get_byte.exit175.i
  %.0127200.i = phi i32 [ 1, %bytestream2_get_byte.exit175.thread.i ], [ %.0127.i, %bytestream2_get_byte.exit175.i ], [ 0, %bytestream2_get_byte.exit175.i.thread ]
  %i.yj = load ptr, ptr %i.ot, align 8, !tbaa !33
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.yj, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef %.0127200.i) #9
  br label %vqa_decode_frame_hicolor.exit.thread

.lr.ph68.split.i:                                 ; preds = %bytestream2_get_byte.exit.i, %.lr.ph68.split.preheader.i
  %indvars.iv126.i = phi i64 [ %i.wd, %.lr.ph68.split.preheader.i ], [ %indvars.iv.next127.i, %bytestream2_get_byte.exit.i ] ; 4 uses
  %i.yk = phi i32 [ %i.wb, %.lr.ph68.split.preheader.i ], [ %i.zv, %bytestream2_get_byte.exit.i ] ; 4 uses
  %.112867.i = phi i32 [ %.0127201206.i, %.lr.ph68.split.preheader.i ], [ %i.yk, %bytestream2_get_byte.exit.i ] ; 2 uses
  %.113066.i = phi i32 [ %.0129199207.i, %.lr.ph68.split.preheader.i ], [ %.2131.i, %bytestream2_get_byte.exit.i ] ; 2 uses
  %.sroa.0.564.i = phi ptr [ %.sroa.0.4198208.i, %.lr.ph68.split.preheader.i ], [ %.sroa.0.7.i, %bytestream2_get_byte.exit.i ] ; 5 uses
  %i.yl = load i32, ptr %i.ub, align 8, !tbaa !36
  %i.ym = sext i32 %i.yl to i64
  %i.yn = icmp slt i64 %indvars.iv126.i, %i.ym
  br i1 %i.yn, label %bb.cm, label %.critedge.loopexit.i

bb.cm:                                            ; preds = %.lr.ph68.split.i
  %i.yo = load i32, ptr %i.ue, align 4, !tbaa !40 ; 2 uses
  %i.yp = icmp sgt i32 %i.yo, 0
  br i1 %i.yp, label %.lr.ph61.preheader.i, label %._crit_edge62.i

.lr.ph61.preheader.i:                             ; preds = %bb.cm
  %i.yq = load ptr, ptr %i.uf, align 8, !tbaa !46
  %i.yr = shl nuw nsw i32 %.113066.i, 3
  %i.ys = mul i32 %i.yr, %i.yo
  %i.yt = sext i32 %i.ys to i64
  %i.yu = getelementptr inbounds i8, ptr %i.yq, i64 %i.yt
  %i.yv = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !55
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 64
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !38
  %i.yz = mul nsw i32 %i.yy, %.013795.i
  %i.za = sext i32 %i.yz to i64
  %i.zb = getelementptr inbounds i8, ptr %i.yw, i64 %i.za
  %i.zc = shl nsw i64 %indvars.iv126.i, 1
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zb, i64 %i.zc
  br label %.lr.ph61.i

._crit_edge62.i:                                  ; preds = %.lr.ph61.i, %bb.cm
  %i.ze = icmp sgt i32 %.112867.i, 1
  br i1 %i.ze, label %bb.cn, label %bytestream2_get_byte.exit.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i, %.lr.ph61.preheader.i
  %.012459.i = phi i32 [ %i.zm, %.lr.ph61.i ], [ 0, %.lr.ph61.preheader.i ]
  %.012558.i = phi ptr [ %i.zk, %.lr.ph61.i ], [ %i.zd, %.lr.ph61.preheader.i ] ; 2 uses
  %.012657.i = phi ptr [ %i.zl, %.lr.ph61.i ], [ %i.yu, %.lr.ph61.preheader.i ] ; 2 uses
  %i.zf = load i64, ptr %.012657.i, align 1
  store i64 %i.zf, ptr %.012558.i, align 1
  %i.zg = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 64
  %i.zi = load i32, ptr %i.zh, align 8, !tbaa !38
  %i.zj = sext i32 %i.zi to i64
  %i.zk = getelementptr inbounds i8, ptr %.012558.i, i64 %i.zj
  %i.zl = getelementptr inbounds nuw i8, ptr %.012657.i, i64 8
  %i.zm = add nuw nsw i32 %.012459.i, 1           ; 2 uses
  %i.zn = load i32, ptr %i.ue, align 4, !tbaa !40
  %i.zo = icmp slt i32 %i.zm, %i.zn
  br i1 %i.zo, label %.lr.ph61.i, label %._crit_edge62.i, !llvm.loop !75

bb.cn:                                            ; preds = %._crit_edge62.i
  %i.zp = ptrtoint ptr %.sroa.0.564.i to i64
  %i.zq = sub i64 %i.uc, %i.zp
  %i.zr = icmp slt i64 %i.zq, 1
  br i1 %i.zr, label %bytestream2_get_byte.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.zs = getelementptr inbounds nuw i8, ptr %.sroa.0.564.i, i64 1
  %i.zt = load i8, ptr %.sroa.0.564.i, align 1, !tbaa !34
  %i.zu = zext i8 %i.zt to i32
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.co, %bb.cn, %._crit_edge62.i
  %.sroa.0.7.i = phi ptr [ %.sroa.0.564.i, %._crit_edge62.i ], [ %i.zs, %bb.co ], [ %i.ty, %bb.cn ] ; 2 uses
  %.2131.i = phi i32 [ %.113066.i, %._crit_edge62.i ], [ %i.zu, %bb.co ], [ 0, %bb.cn ]
  %indvars.iv.next127.i = add nsw i64 %indvars.iv126.i, 4 ; 2 uses
  %i.zv = add nsw i32 %i.yk, -1
  %.not157.i = icmp eq i32 %i.yk, 0
  br i1 %.not157.i, label %.critedge.thread.loopexit.i, label %.lr.ph68.split.i

.critedge.loopexit.i:                             ; preds = %.lr.ph68.split.i
  %i.zw = trunc nsw i64 %indvars.iv126.i to i32
  br label %.critedge.i

.critedge.loopexit99.i:                           ; preds = %bb.ck
  %i.zx = trunc nsw i64 %indvars.iv.next.i39 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %scalar.ph, %vector.early.exit, %.critedge.loopexit99.i, %.critedge.loopexit.i, %.lr.ph68.split.us.i
  %.us-phi.i = phi ptr [ %.sroa.0.4198208.i, %.lr.ph68.split.us.i ], [ %.sroa.0.4198208.i, %.critedge.loopexit99.i ], [ %.sroa.0.564.i, %.critedge.loopexit.i ], [ %.sroa.0.4198208.i, %vector.early.exit ], [ %.sroa.0.4198208.i, %scalar.ph ]
  %.us-phi71.i = phi i32 [ %.013389.i, %.lr.ph68.split.us.i ], [ %i.zx, %.critedge.loopexit99.i ], [ %i.zw, %.critedge.loopexit.i ], [ %i.ws, %vector.early.exit ], [ %i.xa, %scalar.ph ]
  %.us-phi72.i = phi i32 [ %.0127201206.i, %.lr.ph68.split.us.i ], [ %i.xj, %.critedge.loopexit99.i ], [ %.112867.i, %.critedge.loopexit.i ], [ %i.wx, %vector.early.exit ], [ %i.wz, %scalar.ph ]
  %.us-phi73.i = phi i32 [ %i.wb, %.lr.ph68.split.us.i ], [ %i.xd, %.critedge.loopexit99.i ], [ %i.yk, %.critedge.loopexit.i ], [ %i.wu, %vector.early.exit ], [ %i.xb, %scalar.ph ]
  %i.zy = icmp sgt i32 %.us-phi72.i, 1
  br i1 %i.zy, label %bb.cp, label %.critedge.thread.i

bb.cp:                                            ; preds = %.critedge.i
  %i.zz = load ptr, ptr %i.ot, align 8, !tbaa !33
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.zz, i32 noundef 16, ptr noundef nonnull @.str.31, i32 noundef %.us-phi73.i) #9
  br label %vqa_decode_frame_hicolor.exit.thread

.critedge.thread.loopexit.i:                      ; preds = %bytestream2_get_byte.exit.i
  %i.aaa = trunc nsw i64 %indvars.iv.next127.i to i32
  br label %.critedge.thread.i

.critedge.thread.loopexit98.i:                    ; preds = %bytestream2_get_byte.exit.us.i
  %i.aab = trunc nsw i64 %indvars.iv.next.i39 to i32
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bytestream2_get_byte.exit.us.us.i, %bytestream2_get_byte.exit.us.us.preheader.i, %middle.block, %bytestream2_get_byte.exit175.i.thread, %.critedge.thread.loopexit98.i, %.critedge.thread.loopexit.i, %.critedge.i, %.preheader.i37, %bytestream2_get_le16.exit.thread.i
  %.sroa.0.8.i = phi ptr [ %.us-phi.i, %.critedge.i ], [ %.sroa.0.216.i, %bytestream2_get_le16.exit.thread.i ], [ %.sroa.0.4.i, %.preheader.i37 ], [ %.sroa.0.4198208.i, %.critedge.thread.loopexit98.i ], [ %.sroa.0.7.i, %.critedge.thread.loopexit.i ], [ %i.ty, %bytestream2_get_byte.exit175.i.thread ], [ %.sroa.0.4198208.i, %middle.block ], [ %.sroa.0.4198208.i, %bytestream2_get_byte.exit.us.us.preheader.i ], [ %.sroa.0.4198208.i, %bytestream2_get_byte.exit.us.us.i ] ; 2 uses
  %.3136.i = phi i32 [ %.us-phi71.i, %.critedge.i ], [ %i.ux, %bytestream2_get_le16.exit.thread.i ], [ %.013389.i, %.preheader.i37 ], [ %i.aab, %.critedge.thread.loopexit98.i ], [ %i.aaa, %.critedge.thread.loopexit.i ], [ %.013389.i, %bytestream2_get_byte.exit175.i.thread ], [ %i.wi, %middle.block ], [ %i.wi, %bytestream2_get_byte.exit.us.us.preheader.i ], [ %i.wi, %bytestream2_get_byte.exit.us.us.i ] ; 2 uses
  %i.aac = load i32, ptr %i.ub, align 8, !tbaa !36 ; 3 uses
  %i.aad = icmp slt i32 %.3136.i, %i.aac
  br i1 %i.aad, label %.lr.ph90.i, label %._crit_edge91.loopexit.i

._crit_edge91.loopexit.i:                         ; preds = %.critedge.thread.i
  %.pre131.i = load i32, ptr %i.tz, align 4, !tbaa !37
  br label %._crit_edge91.i

._crit_edge91.i:                                  ; preds = %._crit_edge91.loopexit.i, %.preheader29.i
  %i.aae = phi i32 [ %i.ui, %.preheader29.i ], [ %.pre131.i, %._crit_edge91.loopexit.i ] ; 2 uses
  %i.aaf = phi i32 [ %i.uj, %.preheader29.i ], [ %i.aac, %._crit_edge91.loopexit.i ]
  %.sroa.0.1.lcssa.i = phi ptr [ %.sroa.0.094.i, %.preheader29.i ], [ %.sroa.0.8.i, %._crit_edge91.loopexit.i ]
  %i.aag = load i32, ptr %i.ue, align 4, !tbaa !40
  %i.aah = add nsw i32 %i.aag, %.013795.i         ; 2 uses
  %.not158.i = icmp slt i32 %i.aah, %i.aae
  br i1 %.not158.i, label %.preheader29.i, label %vqa_decode_frame_hicolor.exit, !llvm.loop !76

vqa_decode_frame_hicolor.exit.thread:             ; preds = %.lr.ph90.i, %bb.bj, %.thread192.i, %bb.bq, %bb.bu, %bytestream2_get_be32.exit.i40, %bytestream2_get_be32.exit164.i, %bb.cp, %bb.cj, %bb.cl
  %.7.i.ph = phi i32 [ -1094995529, %bb.bj ], [ -1094995529, %bb.cl ], [ -1094995529, %bb.cj ], [ -558323010, %bb.cp ], [ %i.qq, %bytestream2_get_be32.exit164.i ], [ %i.tn, %bytestream2_get_be32.exit.i40 ], [ -1094995529, %bb.bu ], [ -1094995529, %bb.bq ], [ -1094995529, %.thread192.i ], [ -1094995529, %.lr.ph90.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ct

vqa_decode_frame_hicolor.exit:                    ; preds = %._crit_edge91.i, %bytestream2_init.exit.i36, %.preheader29.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cr

bb.cq:                                            ; preds = %bytestream2_init.exit
  %i.aai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aaj, i32 noundef 16, ptr noundef nonnull @.str.7) #9
  br label %bb.ct

bb.cr:                                            ; preds = %vqa_decode_frame_hicolor.exit, %bb.bb
  %i.aak = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.aal = call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.aak) #9 ; 2 uses
  %i.aam = icmp slt i32 %i.aal, 0
  br i1 %i.aam, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store i32 1, ptr %2, align 4, !tbaa !38
  %i.aan = load i32, ptr %i.k, align 8, !tbaa !79
  br label %bb.ct

bb.ct:                                            ; preds = %vqa_decode_frame_hicolor.exit.thread, %vqa_decode_frame_pal8.exit.thread, %bb.cr, %bb.a, %bb.cs, %bb.cq
  %.0 = phi i32 [ -558323010, %bb.cq ], [ %i.f, %bb.a ], [ %.7.i.ph, %vqa_decode_frame_hicolor.exit.thread ], [ %i.aan, %bb.cs ], [ %.0237.i.ph, %vqa_decode_frame_pal8.exit.thread ], [ %i.aal, %bb.cr ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @vqa_decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  tail call void @av_frame_free(ptr noundef %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  tail call void @av_freep(ptr noundef nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  tail call void @av_freep(ptr noundef nonnull %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1120
  tail call void @av_freep(ptr noundef nonnull %i.e) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @av_frame_alloc() local_unnamed_addr #3

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare ptr @av_fourcc_make_string(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_format80(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !52   ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.l, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %1) #9
  br label %bb.ao

bb.d:                                             ; preds = %bb.b
  %i.m = icmp slt i64 %i.h, 1
  br i1 %i.m, label %bb.e, label %bytestream2_peek_byte.exit

bytestream2_peek_byte.exit:                       ; preds = %bb.d
  %i.n = load i8, ptr %i.e, align 1, !tbaa !34
  %.not180.not = icmp eq i8 %i.n, 0
  br i1 %.not180.not, label %bb.f, label %bytestream2_get_byte.exit196

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr %i.b, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit196

bb.f:                                             ; preds = %bytestream2_peek_byte.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !55
  %.pre = ptrtoint ptr %i.o to i64
  br label %bytestream2_get_byte.exit196

bytestream2_get_byte.exit196:                     ; preds = %bb.f, %bb.e, %bytestream2_peek_byte.exit
  %.pre-phi = phi i64 [ %.pre, %bb.f ], [ %i.f, %bb.e ], [ %i.g, %bytestream2_peek_byte.exit ] ; 3 uses
  %i.p = phi ptr [ %i.o, %bb.f ], [ %i.d, %bb.e ], [ %i.e, %bytestream2_peek_byte.exit ]
  %.not180.not206 = phi i1 [ true, %bb.f ], [ true, %bb.e ], [ false, %bytestream2_peek_byte.exit ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %.neg = sub i64 %i.s, %.pre-phi
  %.neg213 = trunc i64 %.neg to i32               ; 2 uses
  %i.t = sub i64 %.pre-phi, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = add i32 %i.u, %.neg213
  %i.w = icmp slt i32 %i.v, %1
  br i1 %i.w, label %.lr.ph240, label %bytestream2_get_byte.exit194._crit_edge

.lr.ph240:                                        ; preds = %bytestream2_get_byte.exit196, %.loopexit
  %i.x = phi i64 [ %i.hh, %.loopexit ], [ %.pre-phi, %bytestream2_get_byte.exit196 ]
  %i.y = phi ptr [ %i.hf, %.loopexit ], [ %i.p, %bytestream2_get_byte.exit196 ] ; 2 uses
  %.0166239 = phi i32 [ %.1167, %.loopexit ], [ 0, %bytestream2_get_byte.exit196 ] ; 21 uses
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !54   ; 9 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 10 uses
  %i.ab = sub i64 %i.aa, %i.x
  %i.ac = icmp slt i64 %i.ab, 1
  br i1 %i.ac, label %bytestream2_get_byte.exit194.thread, label %bytestream2_get_byte.exit194

bytestream2_get_byte.exit194.thread:              ; preds = %.lr.ph240
  store ptr %i.z, ptr %i.b, align 8, !tbaa !52
  br label %bb.g

bytestream2_get_byte.exit194:                     ; preds = %.lr.ph240
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !55
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !34   ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = icmp eq i8 %i.ae, -128
  br i1 %i.ag, label %bytestream2_get_byte.exit194._crit_edge, label %bb.g

bb.g:                                             ; preds = %bytestream2_get_byte.exit194.thread, %bytestream2_get_byte.exit194
  %i.ah = phi ptr [ %i.z, %bytestream2_get_byte.exit194.thread ], [ %i.ad, %bytestream2_get_byte.exit194 ] ; 14 uses
  %.0.i193212 = phi i32 [ 0, %bytestream2_get_byte.exit194.thread ], [ %i.af, %bytestream2_get_byte.exit194 ] ; 9 uses
  %.not = icmp slt i32 %.0166239, %3
  br i1 %.not, label %bb.i, label %bb.h
end_hunk_0
