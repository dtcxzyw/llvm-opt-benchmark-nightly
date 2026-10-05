Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4hc?download=true
inline.NumInlined: 563
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@LZ4HC_compress_generic_internal:bb.a

._crit_edge692.i:                                 ; preds = %bb.bs, %bb.br
  %.251.i.lcssa.i = phi ptr [ %.150.i.i669, %bb.br ], [ %i.jf, %bb.bs ] ; 5 uses
  %.246.i.lcssa.i = phi ptr [ %.145.i.i670, %bb.br ], [ %i.jg, %bb.bs ] ; 4 uses
  %i.ji = getelementptr inbounds i8, ptr %i.io, i64 -3
  %i.jj = icmp ult ptr %.251.i.lcssa.i, %i.ji
  br i1 %i.jj, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %._crit_edge692.i
  %.246.i.val.i = load i32, ptr %.246.i.lcssa.i, align 1, !tbaa !26
  %.251.i.val.i = load i32, ptr %.251.i.lcssa.i, align 1, !tbaa !26
  %i.jk = icmp eq i32 %.246.i.val.i, %.251.i.val.i
  br i1 %i.jk, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jl = getelementptr inbounds nuw i8, ptr %.251.i.lcssa.i, i64 4
  %i.jm = getelementptr inbounds nuw i8, ptr %.246.i.lcssa.i, i64 4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge692.i
  %.453.i.i671 = phi ptr [ %i.jl, %bb.bu ], [ %.251.i.lcssa.i, %bb.bt ], [ %.251.i.lcssa.i, %._crit_edge692.i ] ; 5 uses
  %.448.i.i672 = phi ptr [ %i.jm, %bb.bu ], [ %.246.i.lcssa.i, %bb.bt ], [ %.246.i.lcssa.i, %._crit_edge692.i ] ; 4 uses
  %i.jn = getelementptr inbounds i8, ptr %i.io, i64 -1
  %i.jo = icmp ult ptr %.453.i.i671, %i.jn
  br i1 %i.jo, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %.448.i.val.i = load i16, ptr %.448.i.i672, align 1, !tbaa !36
  %.453.i.val.i = load i16, ptr %.453.i.i671, align 1, !tbaa !36
  %i.jp = icmp eq i16 %.448.i.val.i, %.453.i.val.i
  br i1 %i.jp, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.jq = getelementptr inbounds nuw i8, ptr %.453.i.i671, i64 2
  %i.jr = getelementptr inbounds nuw i8, ptr %.448.i.i672, i64 2
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %.554.i.i673 = phi ptr [ %i.jq, %bb.bx ], [ %.453.i.i671, %bb.bw ], [ %.453.i.i671, %bb.bv ] ; 4 uses
  %.5.i.i674 = phi ptr [ %i.jr, %bb.bx ], [ %.448.i.i672, %bb.bw ], [ %.448.i.i672, %bb.bv ]
  %i.js = icmp ult ptr %.554.i.i673, %i.io
  br i1 %i.js, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.jt = load i8, ptr %.5.i.i674, align 1, !tbaa !16
  %i.ju = load i8, ptr %.554.i.i673, align 1, !tbaa !16
  %i.jv = icmp eq i8 %i.jt, %i.ju
  %spec.select.i.idx.i = zext i1 %i.jv to i64
  %spec.select.i.i678 = getelementptr inbounds nuw i8, ptr %.554.i.i673, i64 %spec.select.i.idx.i
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.6.i.i675 = phi ptr [ %.554.i.i673, %bb.by ], [ %spec.select.i.i678, %bb.bz ]
  %i.jw = ptrtoint ptr %.6.i.i675 to i64
  %i.jx = sub i64 %i.jw, %i.bk
  %i.jy = trunc i64 %i.jx to i32
  br label %LZ4_count.exit.i676

LZ4_count.exit.i676:                              ; preds = %bb.ca, %.thread570.i, %bb.bq
  %.4.i.i677 = phi i32 [ %i.je, %.thread570.i ], [ %i.jy, %bb.ca ], [ %i.iw, %bb.bq ] ; 2 uses
  %i.jz = icmp ult i32 %.4.i.i677, 4
  br i1 %i.jz, label %.thread580.i, label %.thread575.i

.thread580.i:                                     ; preds = %LZ4_count.exit.i676, %bb.bn, %LZ4_count.exit335.i, %.thread534.i
  %i.ka = sub i32 %i.bn, %i.au
  %i.kb = icmp ult i32 %i.ka, 65527
  %or.cond287.i = select i1 %.not.i660, i1 %i.kb, i1 false
  br i1 %or.cond287.i, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.thread580.i
  %i.kc = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.kd = tail call { i64, i32 } %i.bc(ptr noundef nonnull %.0511720.i, i32 noundef %i.bn, ptr noundef nonnull %i.ae, ptr noundef %i.kc, i32 noundef %i.au) #17, !callees !59, !inline_history !41
  %.fca.0.extract.i663 = extractvalue { i64, i32 } %i.kd, 0 ; 2 uses
  %.sroa.039.4.extract.shift.i = lshr i64 %.fca.0.extract.i663, 32
  %.sroa.039.4.extract.trunc.i = trunc nuw i64 %.sroa.039.4.extract.shift.i to i32 ; 2 uses
  %i.ke = icmp sgt i32 %.sroa.039.4.extract.trunc.i, 3
  %.sroa.039.0.extract.trunc.i = trunc i64 %.fca.0.extract.i663 to i32
  br i1 %i.ke, label %.thread575.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.thread580.i
  %i.kf = ptrtoint ptr %.0507721.i to i64
  %i.kg = sub i64 %i.bk, %i.kf
  %i.kh = ashr i64 %i.kg, 9
  %i.ki = getelementptr i8, ptr %.0511720.i, i64 %i.kh
  %i.kj = getelementptr i8, ptr %i.ki, i64 1
  br label %bb.cr, !llvm.loop !42

.thread575.i:                                     ; preds = %bb.cb, %LZ4_count.exit.i676, %bb.bm, %LZ4_count.exit313.i, %bb.ay, %LZ4_count.exit357.i, %LZ4_count.exit379.i
  %.pre-phi806.i = phi i32 [ %i.bm, %LZ4_count.exit313.i ], [ %.pre805.i, %bb.bm ], [ %i.bm, %LZ4_count.exit.i676 ], [ %i.bm, %LZ4_count.exit357.i ], [ %i.bm, %LZ4_count.exit379.i ], [ %i.bm, %bb.ay ], [ %i.bm, %bb.cb ]
  %.pre-phi.i = phi i64 [ %i.bk, %LZ4_count.exit313.i ], [ %.pre.i, %bb.bm ], [ %i.bk, %LZ4_count.exit.i676 ], [ %i.bk, %LZ4_count.exit357.i ], [ %i.bk, %LZ4_count.exit379.i ], [ %i.bk, %bb.ay ], [ %i.bk, %bb.cb ] ; 2 uses
  %.4515.i = phi ptr [ %.0511720.i, %LZ4_count.exit313.i ], [ %i.gn, %bb.bm ], [ %.0511720.i, %LZ4_count.exit.i676 ], [ %.0511720.i, %LZ4_count.exit357.i ], [ %.0511720.i, %LZ4_count.exit379.i ], [ %.0511720.i, %bb.ay ], [ %.0511720.i, %bb.cb ] ; 5 uses
  %.10239.i = phi i32 [ %.4.i325.i, %LZ4_count.exit313.i ], [ %.4.i303.i, %bb.bm ], [ %.4.i.i677, %LZ4_count.exit.i676 ], [ %.4.i347.i, %LZ4_count.exit357.i ], [ %.4.i369.i, %LZ4_count.exit379.i ], [ %.4.i325.i, %bb.ay ], [ %.sroa.039.4.extract.trunc.i, %bb.cb ] ; 3 uses
  %.13.i = phi i32 [ %i.fa, %LZ4_count.exit313.i ], [ %i.gt, %bb.bm ], [ %i.fa, %LZ4_count.exit.i676 ], [ %i.bs, %LZ4_count.exit357.i ], [ %i.bs, %LZ4_count.exit379.i ], [ %i.fa, %bb.ay ], [ %.sroa.039.0.extract.trunc.i, %bb.cb ] ; 6 uses
  %i.kk = icmp ugt ptr %.4515.i, %.0507721.i
  %i.kl = icmp ult i32 %.13.i, %.pre-phi806.i
  %i.km = and i1 %i.kk, %i.kl
  br i1 %i.km, label %.lr.ph697.i, label %.critedge.i664

.lr.ph697.i:                                      ; preds = %.thread575.i
  %i.kn = xor i32 %.13.i, -1
  %i.ko = sext i32 %i.kn to i64                   ; 2 uses
  %i.kp = getelementptr inbounds i8, ptr %.4515.i, i64 -1 ; 5 uses
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !16
  %i.kr = getelementptr inbounds i8, ptr %.4515.i, i64 %i.ko
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !16
  %i.kt = icmp eq i8 %i.kq, %i.ks
  br i1 %i.kt, label %.lr.ph2148.preheader, label %.critedge.i664

.lr.ph2148.preheader:                             ; preds = %.lr.ph697.i
  %i.ku = add i32 %.10239.i, 1                    ; 2 uses
  %i.kv = icmp ugt ptr %i.kp, %.0507721.i
  %i.kw = ptrtoint ptr %i.kp to i64               ; 3 uses
  %i.kx = sub i64 %i.kw, %i.an
  %i.ky = trunc i64 %i.kx to i32
  %i.kz = icmp ult i32 %.13.i, %i.ky
  %i.la = and i1 %i.kv, %i.kz
  br i1 %i.la, label %.lr.ph4068, label %..critedge.i664.loopexit_crit_edge2152, !llvm.loop !43

.lr.ph4068:                                       ; preds = %.lr.ph2148.preheader
  br label %bb.cd, !llvm.loop !43

bb.cd:                                            ; preds = %.lr.ph4068, %.lr.ph2148
  %i.lb = phi i64 [ %i.kw, %.lr.ph4068 ], [ %i.ll, %.lr.ph2148 ]
  %i.lc = phi i32 [ %i.ku, %.lr.ph4068 ], [ %i.lj, %.lr.ph2148 ] ; 2 uses
  %i.ld = phi ptr [ %i.kp, %.lr.ph4068 ], [ %i.le, %.lr.ph2148 ] ; 3 uses
  %i.le = getelementptr inbounds i8, ptr %i.ld, i64 -1 ; 5 uses
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !16
  %i.lg = getelementptr inbounds i8, ptr %i.ld, i64 %i.ko
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !16
  %i.li = icmp eq i8 %i.lf, %i.lh
  br i1 %i.li, label %.lr.ph2148, label %.critedge.i664, !llvm.loop !43

.lr.ph2148:                                       ; preds = %bb.cd
  %i.lj = add i32 %i.lc, 1                        ; 2 uses
  %i.lk = icmp ugt ptr %i.le, %.0507721.i
  %i.ll = ptrtoint ptr %i.le to i64               ; 3 uses
  %i.lm = sub i64 %i.ll, %i.an
  %i.ln = trunc i64 %i.lm to i32
  %i.lo = icmp ult i32 %.13.i, %i.ln
  %i.lp = and i1 %i.lk, %i.lo
  br i1 %i.lp, label %bb.cd, label %.lr.ph2148...critedge.i664.loopexit_crit_edge2152_crit_edge, !llvm.loop !43

.lr.ph2148...critedge.i664.loopexit_crit_edge2152_crit_edge: ; preds = %.lr.ph2148
  br label %..critedge.i664.loopexit_crit_edge2152, !llvm.loop !43

..critedge.i664.loopexit_crit_edge2152:           ; preds = %.lr.ph2148...critedge.i664.loopexit_crit_edge2152_crit_edge, %.lr.ph2148.preheader
  %.lcssa3802 = phi ptr [ %i.le, %.lr.ph2148...critedge.i664.loopexit_crit_edge2152_crit_edge ], [ %i.kp, %.lr.ph2148.preheader ]
  %.lcssa3800 = phi i32 [ %i.lj, %.lr.ph2148...critedge.i664.loopexit_crit_edge2152_crit_edge ], [ %i.ku, %.lr.ph2148.preheader ]
  %.lcssa3798 = phi i64 [ %i.ll, %.lr.ph2148...critedge.i664.loopexit_crit_edge2152_crit_edge ], [ %i.kw, %.lr.ph2148.preheader ]
  br label %.critedge.i664, !llvm.loop !43

.critedge.i664:                                   ; preds = %bb.cd, %.lr.ph697.i, %..critedge.i664.loopexit_crit_edge2152, %.thread575.i
  %.5516.lcssa.i = phi ptr [ %.4515.i, %.thread575.i ], [ %.4515.i, %.lr.ph697.i ], [ %.lcssa3802, %..critedge.i664.loopexit_crit_edge2152 ], [ %i.ld, %bb.cd ] ; 6 uses
  %.11240.lcssa.i = phi i32 [ %.10239.i, %.thread575.i ], [ %.10239.i, %.lr.ph697.i ], [ %.lcssa3800, %..critedge.i664.loopexit_crit_edge2152 ], [ %i.lc, %bb.cd ] ; 2 uses
  %.lcssa.i = phi i64 [ %.pre-phi.i, %.thread575.i ], [ %.pre-phi.i, %.lr.ph697.i ], [ %.lcssa3798, %..critedge.i664.loopexit_crit_edge2152 ], [ %i.lb, %bb.cd ]
  %i.lq = getelementptr inbounds nuw i8, ptr %.5516.lcssa.i, i64 1 ; 2 uses
  %.val416.i = load i64, ptr %i.lq, align 1, !tbaa !31
  %i.lr = mul i64 %.val416.i, -3523014627193167104
  %i.ls = lshr i64 %i.lr, 50
  %i.lt = add i32 %i.bn, 1                        ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ls
  store i32 %i.lt, ptr %i.lu, align 4, !tbaa !9
  %i.lv = getelementptr inbounds nuw i8, ptr %.5516.lcssa.i, i64 2
  %.val415.i = load i64, ptr %i.lv, align 1, !tbaa !31
  %i.lw = mul i64 %.val415.i, -3523014627193167104
  %i.lx = lshr i64 %i.lw, 50
  %i.ly = add i32 %i.bn, 2
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.lx
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !9
  %.val421.i = load i32, ptr %i.lq, align 1, !tbaa !26
  %i.ma = mul i32 %.val421.i, -1640531535
  %i.mb = lshr i32 %i.ma, 18
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mc
  store i32 %i.lt, ptr %i.md, align 4, !tbaa !9
  %i.me = getelementptr i8, ptr %.0494722.i, i64 1 ; 7 uses
  %i.mf = ptrtoint ptr %.0507721.i to i64         ; 4 uses
  %i.mg = sub i64 %.lcssa.i, %i.mf                ; 8 uses
  %i.mh = udiv i64 %i.mg, 255
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mg
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = icmp ugt ptr %i.mk, %spec.select.i661
  %or.cond.i.i = select i1 %.not.i381.i, i1 %i.ml, i1 false
  br i1 %or.cond.i.i, label %bb.cw, label %bb.ce

bb.ce:                                            ; preds = %.critedge.i664
  %i.mm = icmp ugt i64 %i.mg, 14
  br i1 %i.mm, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.mn = add i64 %i.mg, -15                      ; 2 uses
  store i8 -16, ptr %.0494722.i, align 1, !tbaa !16
  %i.mo = icmp ugt i64 %i.mn, 254
  br i1 %i.mo, label %.lr.ph708.preheader.i, label %._crit_edge709.i

.lr.ph708.preheader.i:                            ; preds = %bb.cf
  %i.mp = add i64 %i.mg, -270                     ; 2 uses
  %i.mq = udiv i64 %i.mp, 255                     ; 3 uses
  %i.mr = add nuw nsw i64 %i.mq, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.me, i8 -1, i64 %i.mr, i1 false), !tbaa !16
  %scevgep.i = getelementptr i8, ptr %.0494722.i, i64 2
  %scevgep786.i = getelementptr i8, ptr %scevgep.i, i64 %i.mq
  %.neg.i668 = mul i64 %i.mq, -255
  %i.ms = add i64 %.neg.i668, %i.mp
  br label %._crit_edge709.i

._crit_edge709.i:                                 ; preds = %.lr.ph708.preheader.i, %bb.cf
  %.15.lcssa.i = phi ptr [ %i.me, %bb.cf ], [ %scevgep786.i, %.lr.ph708.preheader.i ] ; 2 uses
  %.053.i387.lcssa.i = phi i64 [ %i.mn, %bb.cf ], [ %i.ms, %.lr.ph708.preheader.i ]
  %i.mt = trunc nuw i64 %.053.i387.lcssa.i to i8
  %i.mu = getelementptr inbounds nuw i8, ptr %.15.lcssa.i, i64 1
  store i8 %i.mt, ptr %.15.lcssa.i, align 1, !tbaa !16
  br label %.critedge.i383.i

bb.cg:                                            ; preds = %bb.ce
  %.tr.i382.i = trunc nuw nsw i64 %i.mg to i8
  %i.mv = shl nuw i8 %.tr.i382.i, 4
  store i8 %i.mv, ptr %.0494722.i, align 1, !tbaa !16
  br label %.critedge.i383.i

.critedge.i383.i:                                 ; preds = %bb.cg, %._crit_edge709.i
  %.11503.i = phi ptr [ %i.mu, %._crit_edge709.i ], [ %i.me, %bb.cg ] ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.11503.i, i64 %i.mg ; 3 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.critedge.i383.i
  %.09.i.i = phi ptr [ %.11503.i, %.critedge.i383.i ], [ %i.my, %bb.ch ] ; 2 uses
  %.0.i389.i = phi ptr [ %.0507721.i, %.critedge.i383.i ], [ %i.mz, %bb.ch ] ; 2 uses
  %i.mx = load i64, ptr %.0.i389.i, align 1
  store i64 %i.mx, ptr %.09.i.i, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.0.i389.i, i64 8
  %i.na = icmp ult ptr %i.my, %i.mw
  br i1 %i.na, label %bb.ch, label %LZ4_wildCopy8.exit.i, !llvm.loop !44

LZ4_wildCopy8.exit.i:                             ; preds = %bb.ch
  %i.nb = trunc i32 %.13.i to i16
  store i16 %i.nb, ptr %i.mw, align 1, !tbaa !36
  %i.nc = getelementptr i8, ptr %i.mw, i64 2      ; 4 uses
  %i.nd = sext i32 %.11240.lcssa.i to i64         ; 4 uses
  %i.ne = add nsw i64 %i.nd, -4                   ; 3 uses
  %i.nf = udiv i64 %i.ne, 255
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.nf
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 6
  %i.ni = icmp ugt ptr %i.nh, %spec.select.i661
  %or.cond70.i.i = select i1 %.not.i381.i, i1 %i.ni, i1 false
  br i1 %or.cond70.i.i, label %bb.cw, label %bb.ci

bb.ci:                                            ; preds = %LZ4_wildCopy8.exit.i
  %i.nj = icmp ugt i64 %i.ne, 14
  br i1 %i.nj, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.nk = load i8, ptr %.0494722.i, align 1, !tbaa !16
  %i.nl = add i8 %i.nk, 15
  store i8 %i.nl, ptr %.0494722.i, align 1, !tbaa !16
  %i.nm = add nsw i64 %i.nd, -19                  ; 2 uses
  %i.nn = icmp ugt i64 %i.nm, 509
  br i1 %i.nn, label %.lr.ph715.preheader.i, label %._crit_edge716.i

.lr.ph715.preheader.i:                            ; preds = %bb.cj
  %i.no = add nsw i64 %i.nd, -529                 ; 2 uses
  %i.np = udiv i64 %i.no, 510                     ; 2 uses
  %i.nq = shl nuw nsw i64 %i.np, 1                ; 2 uses
  %i.nr = add nuw nsw i64 %i.nq, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.nc, i8 -1, i64 %i.nr, i1 false), !tbaa !16
  %scevgep787.i = getelementptr i8, ptr %.11503.i, i64 4
  %i.ns = getelementptr i8, ptr %scevgep787.i, i64 %i.mg
  %scevgep788.i = getelementptr i8, ptr %i.ns, i64 %i.nq
  %.neg854.i = mul i64 %i.np, -510
  %i.nt = add i64 %.neg854.i, %i.no
  br label %._crit_edge716.i

._crit_edge716.i:                                 ; preds = %.lr.ph715.preheader.i, %bb.cj
  %.13505.lcssa.i = phi ptr [ %i.nc, %bb.cj ], [ %scevgep788.i, %.lr.ph715.preheader.i ] ; 3 uses
  %.0.i385.lcssa.i = phi i64 [ %i.nm, %bb.cj ], [ %i.nt, %.lr.ph715.preheader.i ] ; 3 uses
  %i.nu = icmp samesign ugt i64 %.0.i385.lcssa.i, 254
  br i1 %i.nu, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %._crit_edge716.i
  %i.nv = add nsw i64 %.0.i385.lcssa.i, -255
  %i.nw = getelementptr inbounds nuw i8, ptr %.13505.lcssa.i, i64 1
  store i8 -1, ptr %.13505.lcssa.i, align 1, !tbaa !16
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %._crit_edge716.i
  %.14506.i = phi ptr [ %i.nw, %bb.ck ], [ %.13505.lcssa.i, %._crit_edge716.i ] ; 2 uses
  %.1.i386.i = phi i64 [ %i.nv, %bb.ck ], [ %.0.i385.lcssa.i, %._crit_edge716.i ]
  %i.nx = trunc nuw i64 %.1.i386.i to i8
  %i.ny = getelementptr inbounds nuw i8, ptr %.14506.i, i64 1
  store i8 %i.nx, ptr %.14506.i, align 1, !tbaa !16
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ci
  %i.nz = trunc nuw nsw i64 %i.ne to i8
  %i.oa = load i8, ptr %.0494722.i, align 1, !tbaa !16
  %i.ob = add i8 %i.oa, %i.nz
  store i8 %i.ob, ptr %.0494722.i, align 1, !tbaa !16
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.12504.i = phi ptr [ %i.ny, %bb.cl ], [ %i.nc, %bb.cm ] ; 2 uses
  %i.oc = getelementptr inbounds i8, ptr %.5516.lcssa.i, i64 %i.nd ; 9 uses
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = sub i64 %i.od, %i.an                    ; 2 uses
  %i.of = trunc i64 %i.oe to i32
  %i.og = add i32 %i.al, %i.of                    ; 4 uses
  %i.oh = add i32 %i.og, -2                       ; 3 uses
  %i.oi = icmp ult i32 %i.oh, %i.aq
  br i1 %i.oi, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.oj = icmp sgt i64 %i.oe, 5
  br i1 %i.oj, label %bb.cp, label %bb.cq, !prof !32

bb.cp:                                            ; preds = %bb.co
  %i.ok = getelementptr inbounds i8, ptr %i.oc, i64 -5
  %.val414.i = load i64, ptr %i.ok, align 1, !tbaa !31
  %i.ol = mul i64 %.val414.i, -3523014627193167104
  %i.om = lshr i64 %i.ol, 50
  %i.on = add i32 %i.og, -5
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.om
  store i32 %i.on, ptr %i.oo, align 4, !tbaa !9
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.op = getelementptr inbounds i8, ptr %i.oc, i64 -3
  %.val413.i = load i64, ptr %i.op, align 1, !tbaa !31
  %i.oq = mul i64 %.val413.i, -3523014627193167104
  %i.or = lshr i64 %i.oq, 50
  %i.os = add i32 %i.og, -3
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.or
  store i32 %i.os, ptr %i.ot, align 4, !tbaa !9
  %i.ou = getelementptr inbounds i8, ptr %i.oc, i64 -2 ; 2 uses
  %.val412.i = load i64, ptr %i.ou, align 1, !tbaa !31
  %i.ov = mul i64 %.val412.i, -3523014627193167104
  %i.ow = lshr i64 %i.ov, 50
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ow
  store i32 %i.oh, ptr %i.ox, align 4, !tbaa !9
  %.val420.i = load i32, ptr %i.ou, align 1, !tbaa !26
  %i.oy = mul i32 %.val420.i, -1640531535
  %i.oz = lshr i32 %i.oy, 18
  %i.pa = zext nneg i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pa
  store i32 %i.oh, ptr %i.pb, align 4, !tbaa !9
  %i.pc = getelementptr inbounds i8, ptr %i.oc, i64 -1
  %.val419.i = load i32, ptr %i.pc, align 1, !tbaa !26
  %i.pd = mul i32 %.val419.i, -1640531535
  %i.pe = lshr i32 %i.pd, 18
  %i.pf = add i32 %i.og, -1
  %i.pg = zext nneg i32 %i.pe to i64
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pg
  store i32 %i.pf, ptr %i.ph, align 4, !tbaa !9
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cn, %bb.cc
  %.6517.i = phi ptr [ %i.oc, %bb.cq ], [ %i.oc, %bb.cn ], [ %i.kj, %bb.cc ] ; 2 uses
  %.1508.i = phi ptr [ %i.oc, %bb.cq ], [ %i.oc, %bb.cn ], [ %.0507721.i, %bb.cc ] ; 2 uses
  %.2496.i = phi ptr [ %.12504.i, %bb.cq ], [ %.12504.i, %bb.cn ], [ %.0494722.i, %bb.cc ] ; 2 uses
  %.not274.i = icmp ugt ptr %.6517.i, %i.ad
  br i1 %.not274.i, label %.loopexit.i, label %bb.h

.loopexit.i:                                      ; preds = %bb.cr, %LZ4HC_encodeSequence.exit.i, %select_searchDict_function.exit.i
  %.2509.i = phi ptr [ %1, %select_searchDict_function.exit.i ], [ %i.tk, %LZ4HC_encodeSequence.exit.i ], [ %.1508.i, %bb.cr ] ; 3 uses
  %.3497.i = phi ptr [ %2, %select_searchDict_function.exit.i ], [ %.10502.i, %LZ4HC_encodeSequence.exit.i ], [ %.2496.i, %bb.cr ] ; 3 uses
  %i.pi = ptrtoint ptr %i.ac to i64
  %i.pj = ptrtoint ptr %.2509.i to i64
  %i.pk = sub i64 %i.pi, %i.pj                    ; 3 uses
  %i.pl = add i64 %i.pk, 240
  %i.pm = udiv i64 %i.pl, 255
  %spec.select288.idx.i = select i1 %i.bd, i64 5, i64 0
  %spec.select288.i = getelementptr inbounds nuw i8, ptr %spec.select.i661, i64 %spec.select288.idx.i ; 2 uses
  %.not282.i = icmp ne i32 %6, 0
  %i.pn = getelementptr i8, ptr %.3497.i, i64 %i.pm
  %i.po = getelementptr i8, ptr %i.pn, i64 1
  %i.pp = getelementptr i8, ptr %i.po, i64 %i.pk
  %i.pq = icmp ugt ptr %i.pp, %spec.select288.i
  %or.cond647.i = select i1 %.not282.i, i1 %i.pq, i1 false
  br i1 %or.cond647.i, label %bb.cs, label %bb.ct

.thread629.i:                                     ; preds = %bb.cy, %bb.cx
  %i.pr = ptrtoint ptr %i.ac to i64
  %i.ps = sub i64 %i.pr, %i.mf                    ; 3 uses
  %i.pt = add i64 %i.ps, 240
  %i.pu = udiv i64 %i.pt, 255
  %i.pv = getelementptr i8, ptr %.0494722.i, i64 %i.pu
  %i.pw = getelementptr i8, ptr %i.pv, i64 1
  %i.px = getelementptr i8, ptr %i.pw, i64 %i.ps
  %i.py = icmp ugt ptr %i.px, %i.ah
  br i1 %i.py, label %.thread636.i, label %bb.ct

bb.cs:                                            ; preds = %.loopexit.i
  %i.pz = icmp eq i32 %6, 1
  br i1 %i.pz, label %LZ4MID_compress.exit.thread, label %.thread636.i

.thread636.i:                                     ; preds = %bb.cs, %.thread629.i
  %spec.select288628633642.i = phi ptr [ %spec.select288.i, %bb.cs ], [ %i.ah, %.thread629.i ]
  %.3497626634641.i = phi ptr [ %.3497.i, %bb.cs ], [ %.0494722.i, %.thread629.i ] ; 2 uses
  %.2509624635640.i = phi ptr [ %.2509.i, %bb.cs ], [ %.0507721.i, %.thread629.i ]
  %i.qa = ptrtoint ptr %spec.select288628633642.i to i64
  %i.qb = ptrtoint ptr %.3497626634641.i to i64
  %i.qc = xor i64 %i.qb, -1
  %i.qd = add i64 %i.qc, %i.qa                    ; 2 uses
  %i.qe = add i64 %i.qd, 241
  %i.qf = lshr i64 %i.qe, 8
  %i.qg = sub i64 %i.qd, %i.qf
  br label %bb.ct

bb.ct:                                            ; preds = %.thread636.i, %.thread629.i, %.loopexit.i
  %.3497627.i = phi ptr [ %.3497626634641.i, %.thread636.i ], [ %.0494722.i, %.thread629.i ], [ %.3497.i, %.loopexit.i ] ; 6 uses
  %.2509625.i = phi ptr [ %.2509624635640.i, %.thread636.i ], [ %.0507721.i, %.thread629.i ], [ %.2509.i, %.loopexit.i ] ; 2 uses
  %.0215.i = phi i64 [ %i.qg, %.thread636.i ], [ %i.ps, %.thread629.i ], [ %i.pk, %.loopexit.i ] ; 7 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.2509625.i, i64 %.0215.i
  %i.qi = icmp ugt i64 %.0215.i, 14
  %.4498740.i = getelementptr i8, ptr %.3497627.i, i64 1 ; 3 uses
  br i1 %i.qi, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.qj = add i64 %.0215.i, -15                   ; 2 uses
  store i8 -16, ptr %.3497627.i, align 1, !tbaa !16
  %i.qk = icmp ugt i64 %i.qj, 254
  br i1 %i.qk, label %.lr.ph744.preheader.i, label %._crit_edge745.i

.lr.ph744.preheader.i:                            ; preds = %bb.cu
  %i.ql = add i64 %.0215.i, -270                  ; 2 uses
  %i.qm = udiv i64 %i.ql, 255                     ; 3 uses
  %i.qn = add nuw nsw i64 %i.qm, 1                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4498740.i, i8 -1, i64 %i.qn, i1 false), !tbaa !16
  %scevgep801.i = getelementptr i8, ptr %.3497627.i, i64 %i.qn
  %.neg857.i = mul i64 %i.qm, -255
  %i.qo = add i64 %.neg857.i, %i.ql
  %i.qp = getelementptr i8, ptr %.3497627.i, i64 %i.qm
  %scevgep802.i = getelementptr i8, ptr %i.qp, i64 2
  br label %._crit_edge745.i

._crit_edge745.i:                                 ; preds = %.lr.ph744.preheader.i, %bb.cu
  %.3497627.pn.lcssa.i = phi ptr [ %.3497627.i, %bb.cu ], [ %scevgep801.i, %.lr.ph744.preheader.i ]
  %.0.lcssa.i = phi i64 [ %i.qj, %bb.cu ], [ %i.qo, %.lr.ph744.preheader.i ]
  %.4498.lcssa.i = phi ptr [ %.4498740.i, %bb.cu ], [ %scevgep802.i, %.lr.ph744.preheader.i ]
  %i.qq = trunc nuw i64 %.0.lcssa.i to i8
  %i.qr = getelementptr inbounds nuw i8, ptr %.3497627.pn.lcssa.i, i64 2
  store i8 %i.qq, ptr %.4498.lcssa.i, align 1, !tbaa !16
  br label %.critedge290.i

bb.cv:                                            ; preds = %bb.ct
  %.0215.tr.i = trunc nuw nsw i64 %.0215.i to i8
  %i.qs = shl nuw i8 %.0215.tr.i, 4
  store i8 %i.qs, ptr %.3497627.i, align 1, !tbaa !16
  br label %.critedge290.i

.critedge290.i:                                   ; preds = %bb.cv, %._crit_edge745.i
  %.5499.i = phi ptr [ %i.qr, %._crit_edge745.i ], [ %.4498740.i, %bb.cv ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.5499.i, ptr align 1 %.2509625.i, i64 %.0215.i, i1 false)
  %i.qt = getelementptr inbounds nuw i8, ptr %.5499.i, i64 %.0215.i
  %i.qu = ptrtoint ptr %i.qh to i64
  %i.qv = ptrtoint ptr %1 to i64
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = trunc i64 %i.qw to i32
  store i32 %i.qx, ptr %3, align 4, !tbaa !9
  %i.qy = ptrtoint ptr %i.qt to i64
  %i.qz = ptrtoint ptr %2 to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = trunc i64 %i.ra to i32
  br label %LZ4MID_compress.exit

bb.cw:                                            ; preds = %LZ4_wildCopy8.exit.i, %.critedge.i664
  %.5516.lcssa.lcssa795796.i = ptrtoaddr ptr %.5516.lcssa.i to i64
  br i1 %i.bd, label %bb.cx, label %LZ4MID_compress.exit.thread

bb.cx:                                            ; preds = %bb.cw
  %i.rc = ptrtoint ptr %.5516.lcssa.i to i64
  %i.rd = sub i64 %i.rc, %i.mf                    ; 7 uses
  %i.re = add i64 %i.rd, 240
  %i.rf = udiv i64 %i.re, 255
  %i.rg = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 2 uses
  %i.rh = getelementptr i8, ptr %.0494722.i, i64 %i.rf
  %i.ri = getelementptr i8, ptr %i.rh, i64 1
  %i.rj = getelementptr i8, ptr %i.ri, i64 %i.rd  ; 3 uses
  %.not281.i = icmp ugt ptr %i.rj, %i.rg
  br i1 %.not281.i, label %.thread629.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.rk = ptrtoint ptr %i.rg to i64
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = sub i64 %i.rk, %i.rl
  %i.rn = mul i64 %i.rm, 255
  %i.ro = add i64 %i.rn, 18
  %i.rp = zext i32 %.11240.lcssa.i to i64
  %spec.select291650.i = tail call i64 @llvm.umin.i64(i64 %i.ro, i64 %i.rp) ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rj, i64 2
  %i.rr = ptrtoint ptr %i.ah to i64
  %i.rs = ptrtoint ptr %i.rq to i64
  %i.rt = add i64 %spec.select291650.i, %i.rr
  %i.ru = sub i64 %i.rs, %i.rt
  %i.rv = icmp slt i64 %i.ru, -12
  br i1 %i.rv, label %bb.cz, label %.thread629.i

bb.cz:                                            ; preds = %bb.cy
  %i.rw = icmp ugt i64 %i.rd, 14
  br i1 %i.rw, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.rx = add i64 %i.rd, -15                      ; 2 uses
  store i8 -16, ptr %.0494722.i, align 1, !tbaa !16
  %i.ry = icmp ugt i64 %i.rx, 254
  br i1 %i.ry, label %.lr.ph729.preheader.i, label %._crit_edge730.i

.lr.ph729.preheader.i:                            ; preds = %bb.da
  %i.rz = add i64 %i.rd, -270                     ; 2 uses
  %i.sa = udiv i64 %i.rz, 255                     ; 3 uses
  %i.sb = add nuw nsw i64 %i.sa, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.me, i8 -1, i64 %i.sb, i1 false), !tbaa !16
  %i.sc = getelementptr i8, ptr %.0494722.i, i64 %i.sa
  %scevgep791.i = getelementptr i8, ptr %i.sc, i64 2
  %.neg855.i = mul i64 %i.sa, -255
  %i.sd = add i64 %.neg855.i, %i.rz
  br label %._crit_edge730.i

._crit_edge730.i:                                 ; preds = %.lr.ph729.preheader.i, %bb.da
  %.9.lcssa.i = phi ptr [ %i.me, %bb.da ], [ %scevgep791.i, %.lr.ph729.preheader.i ] ; 2 uses
  %.053.i.lcssa.i = phi i64 [ %i.rx, %bb.da ], [ %i.sd, %.lr.ph729.preheader.i ]
  %i.se = trunc nuw i64 %.053.i.lcssa.i to i8
  %i.sf = getelementptr inbounds nuw i8, ptr %.9.lcssa.i, i64 1
  store i8 %i.se, ptr %.9.lcssa.i, align 1, !tbaa !16
  br label %.critedge.i.i

bb.db:                                            ; preds = %bb.cz
  %.tr.i.i = trunc nuw nsw i64 %i.rd to i8
  %i.sg = shl nuw i8 %.tr.i.i, 4
  store i8 %i.sg, ptr %.0494722.i, align 1, !tbaa !16
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.db, %._crit_edge730.i
  %.6.i665 = phi ptr [ %i.sf, %._crit_edge730.i ], [ %i.me, %bb.db ] ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.6.i665, i64 %i.rd ; 3 uses
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dc, %.critedge.i.i
  %.09.i390.i = phi ptr [ %.6.i665, %.critedge.i.i ], [ %i.sj, %bb.dc ] ; 2 uses
  %.0.i391.i = phi ptr [ %.0507721.i, %.critedge.i.i ], [ %i.sk, %bb.dc ] ; 2 uses
  %i.si = load i64, ptr %.0.i391.i, align 1
  store i64 %i.si, ptr %.09.i390.i, align 1
  %i.sj = getelementptr inbounds nuw i8, ptr %.09.i390.i, i64 8 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.0.i391.i, i64 8
  %i.sl = icmp ult ptr %i.sj, %i.sh
  br i1 %i.sl, label %bb.dc, label %LZ4_wildCopy8.exit392.i, !llvm.loop !44

LZ4_wildCopy8.exit392.i:                          ; preds = %bb.dc
  %i.sm = trunc i32 %.13.i to i16
  store i16 %i.sm, ptr %i.sh, align 1, !tbaa !36
  %i.sn = getelementptr i8, ptr %i.sh, i64 2      ; 3 uses
  %sext.i666 = shl nuw i64 %spec.select291650.i, 32
  %i.so = ashr exact i64 %sext.i666, 32           ; 4 uses
  %i.sp = add nsw i64 %i.so, -4                   ; 2 uses
  %i.sq = icmp ugt i64 %i.sp, 14
  br i1 %i.sq, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %LZ4_wildCopy8.exit392.i
  %i.sr = load i8, ptr %.0494722.i, align 1, !tbaa !16
  %i.ss = add i8 %i.sr, 15
  store i8 %i.ss, ptr %.0494722.i, align 1, !tbaa !16
  %i.st = add nsw i64 %i.so, -19                  ; 2 uses
  %i.su = icmp ugt i64 %i.st, 509
  br i1 %i.su, label %.lr.ph736.preheader.i, label %._crit_edge737.i

.lr.ph736.preheader.i:                            ; preds = %bb.dd
  %i.sv = add nsw i64 %i.so, -529                 ; 2 uses
  %i.sw = udiv i64 %i.sv, 510                     ; 2 uses
  %i.sx = shl nuw nsw i64 %i.sw, 1                ; 2 uses
  %i.sy = add nuw nsw i64 %i.sx, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.sn, i8 -1, i64 %i.sy, i1 false), !tbaa !16
  %scevgep794.i = getelementptr i8, ptr %.6.i665, i64 4
  %i.sz = sub i64 %.5516.lcssa.lcssa795796.i, %i.mf
  %i.ta = getelementptr i8, ptr %scevgep794.i, i64 %i.sz
  %scevgep800.i = getelementptr i8, ptr %i.ta, i64 %i.sx
  %.neg856.i = mul i64 %i.sw, -510
  %i.tb = add i64 %.neg856.i, %i.sv
  br label %._crit_edge737.i

._crit_edge737.i:                                 ; preds = %.lr.ph736.preheader.i, %bb.dd
  %.7500.lcssa.i = phi ptr [ %i.sn, %bb.dd ], [ %scevgep800.i, %.lr.ph736.preheader.i ] ; 3 uses
  %.0.i.lcssa.i = phi i64 [ %i.st, %bb.dd ], [ %i.tb, %.lr.ph736.preheader.i ] ; 3 uses
  %i.tc = icmp samesign ugt i64 %.0.i.lcssa.i, 254
  br i1 %i.tc, label %bb.de, label %bb.df

bb.de:                                            ; preds = %._crit_edge737.i
  %i.td = add nsw i64 %.0.i.lcssa.i, -255
  %i.te = getelementptr inbounds nuw i8, ptr %.7500.lcssa.i, i64 1
  store i8 -1, ptr %.7500.lcssa.i, align 1, !tbaa !16
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %._crit_edge737.i
  %.8501.i = phi ptr [ %i.te, %bb.de ], [ %.7500.lcssa.i, %._crit_edge737.i ] ; 2 uses
  %.1.i.i667 = phi i64 [ %i.td, %bb.de ], [ %.0.i.lcssa.i, %._crit_edge737.i ]
  %i.tf = trunc nuw i64 %.1.i.i667 to i8
  %i.tg = getelementptr inbounds nuw i8, ptr %.8501.i, i64 1
  store i8 %i.tf, ptr %.8501.i, align 1, !tbaa !16
  br label %LZ4HC_encodeSequence.exit.i

bb.dg:                                            ; preds = %LZ4_wildCopy8.exit392.i
  %i.th = trunc nuw nsw i64 %i.sp to i8
  %i.ti = load i8, ptr %.0494722.i, align 1, !tbaa !16
  %i.tj = add i8 %i.ti, %i.th
  store i8 %i.tj, ptr %.0494722.i, align 1, !tbaa !16
  br label %LZ4HC_encodeSequence.exit.i

LZ4HC_encodeSequence.exit.i:                      ; preds = %bb.dg, %bb.df
  %.10502.i = phi ptr [ %i.tg, %bb.df ], [ %i.sn, %bb.dg ]
  %i.tk = getelementptr inbounds i8, ptr %.5516.lcssa.i, i64 %i.so
  br label %.loopexit.i

bb.dh:                                            ; preds = %bb.d
  %.sroa.03.4.extract.shift = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.03.4.extract.trunc = trunc nuw i64 %.sroa.03.4.extract.shift to i32 ; 8 uses
  %i.tl = icmp sgt i32 %.sroa.03.4.extract.trunc, 128 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 6 uses
  %i.tn = getelementptr inbounds i8, ptr %i.tm, i64 -12 ; 31 uses
  %i.to = getelementptr inbounds i8, ptr %i.tm, i64 -5 ; 37 uses
  %i.tp = zext nneg i32 %4 to i64
  %i.tq = getelementptr inbounds nuw i8, ptr %2, i64 %i.tp ; 5 uses
  store i32 0, ptr %3, align 4, !tbaa !9
  %i.tr = icmp eq i32 %6, 2                       ; 3 uses
  %spec.select.i.idx = select i1 %i.tr, i64 -5, i64 0
  %spec.select.i = getelementptr inbounds i8, ptr %i.tq, i64 %spec.select.i.idx ; 11 uses
  %i.ts = icmp samesign ult i32 %i.m, 13
  br i1 %i.ts, label %.loopexit, label %.lr.ph1837.lr.ph

.lr.ph1837.lr.ph:                                 ; preds = %bb.dh
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 15 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 262184 ; 3 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 262152 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 262168 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 262172 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 262160 ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 262176 ; 6 uses
  %i.ua = icmp sgt i32 %.sroa.03.4.extract.trunc, 0 ; 3 uses
  %i.ub = getelementptr inbounds i8, ptr %i.tm, i64 -8 ; 6 uses
  %i.uc = getelementptr inbounds i8, ptr %i.tm, i64 -6 ; 6 uses
  %i.ud = ptrtoaddr ptr %i.to to i64              ; 6 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.uf = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.ug = icmp ne i32 %7, 0                       ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.ui = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.uj = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.uk = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %.not.i49 = icmp ne i32 %6, 0                   ; 10 uses
  br label %.lr.ph1837

.lr.ph1837:                                       ; preds = %.lr.ph1837.lr.ph, %.outer1508.backedge
  %.0336.i.ph2121 = phi ptr [ null, %.lr.ph1837.lr.ph ], [ %.0336.i.ph.be, %.outer1508.backedge ]
  %.0338.i.ph2120 = phi ptr [ null, %.lr.ph1837.lr.ph ], [ %.0338.i.ph.be, %.outer1508.backedge ]
  %.01079.ph2119 = phi ptr [ %2, %.lr.ph1837.lr.ph ], [ %.01079.ph.be, %.outer1508.backedge ] ; 2 uses
  %.01080.ph2118 = phi ptr [ %1, %.lr.ph1837.lr.ph ], [ %.01090.ph.be, %.outer1508.backedge ] ; 3 uses
  %i.ul = load ptr, ptr %i.tu, align 8, !tbaa !20 ; 5 uses
  %i.um = load ptr, ptr %i.tv, align 8, !tbaa !18 ; 12 uses
  %i.un = load i32, ptr %i.tw, align 8, !tbaa !19 ; 13 uses
  %i.uo = ptrtoint ptr %i.um to i64               ; 2 uses
  %i.up = load i32, ptr %i.tx, align 4, !tbaa !23 ; 6 uses
  %i.uq = add i32 %i.up, 65536
  %i.ur = load ptr, ptr %i.ty, align 8, !tbaa !22 ; 10 uses
  %i.us = zext i32 %i.un to i64                   ; 3 uses
  %i.ut = zext i32 %i.up to i64
  %i.uu = sub nsw i64 %i.us, %i.ut                ; 5 uses
  %.ptr1443 = getelementptr inbounds i8, ptr %i.ur, i64 %i.uu ; 2 uses
  %i.uv = sub nsw i64 0, %i.us
  %invariant.gep = getelementptr i8, ptr %i.um, i64 %i.uv ; 3 uses
  %i.uw = add i32 %i.un, -4
  %i.ux = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uy = icmp ult ptr %i.um, %i.tn
  %i.uz = icmp ult i32 %i.up, %i.un
  %i.va = ptrtoint ptr %.ptr1443 to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ul, i64 262144
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ul, i64 262152
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ul, i64 262168
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ul, i64 131072
  %.promoted = load i32, ptr %i.tz, align 8, !tbaa !21
  %.not.i7324008 = icmp slt i64 %i.uu, 4
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph1837, %bb.gw
  %i.vf = phi i32 [ %.promoted, %.lr.ph1837 ], [ %i.vj, %bb.gw ] ; 4 uses
  %.010901836 = phi ptr [ %.01080.ph2118, %.lr.ph1837 ], [ %i.als, %bb.gw ] ; 15 uses
  %i.vg = ptrtoint ptr %.010901836 to i64
  %i.vh = sub i64 %i.vg, %i.uo                    ; 2 uses
  %i.vi = trunc i64 %i.vh to i32
  %i.vj = add i32 %i.un, %i.vi                    ; 10 uses
  %i.vk = icmp ugt i32 %i.uq, %i.vj               ; 2 uses
  %i.vl = add i32 %i.vj, -65535
  %i.vm = select i1 %i.vk, i32 %i.up, i32 %i.vl   ; 5 uses
  %.val594 = load i32, ptr %.010901836, align 1, !tbaa !26 ; 18 uses
  %i.vn = icmp ult i32 %i.vf, %i.vj
  br i1 %i.vn, label %.lr.ph.preheader, label %LZ4HC_Insert.exit.i

.lr.ph.preheader:                                 ; preds = %bb.di
  %i.vo = zext i32 %i.vf to i64                   ; 6 uses
  %i.vp = zext i32 %i.vj to i64                   ; 3 uses
  %i.vq = sub nsw i64 %i.vp, %i.vo
  %xtraiter = and i64 %i.vq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.vo
  %.val601.prol = load i32, ptr %gep.prol, align 1, !tbaa !26
  %i.vr = mul i32 %.val601.prol, -1640531535
  %i.vs = lshr i32 %i.vr, 17
  %i.vt = zext nneg i32 %i.vs to i64
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vt ; 2 uses
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !9
  %i.vw = sub i32 %i.vf, %i.vv
  %i.vx = tail call i32 @llvm.umin.i32(i32 %i.vw, i32 65535)
  %i.vy = trunc nuw i32 %i.vx to i16
  %i.vz = and i64 %i.vo, 65535
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.tt, i64 %i.vz
  store i16 %i.vy, ptr %i.wa, align 2, !tbaa !27
  store i32 %i.vf, ptr %i.vu, align 4, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %i.vo, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.vo, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.wb = add nsw i64 %i.vp, -1
  %i.wc = icmp eq i64 %i.wb, %i.vo
  br i1 %i.wc, label %LZ4HC_Insert.exit.i.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %.val601 = load i32, ptr %gep, align 1, !tbaa !26
  %i.wd = mul i32 %.val601, -1640531535
  %i.we = lshr i32 %i.wd, 17
  %i.wf = zext nneg i32 %i.we to i64
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.wf ; 2 uses
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !9
  %i.wi = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.wj = sub i32 %i.wi, %i.wh
  %i.wk = tail call i32 @llvm.umin.i32(i32 %i.wj, i32 65535)
  %i.wl = trunc nuw i32 %i.wk to i16
  %i.wm = and i64 %indvars.iv, 65535
  %i.wn = getelementptr inbounds nuw [2 x i8], ptr %i.tt, i64 %i.wm
  store i16 %i.wl, ptr %i.wn, align 2, !tbaa !27
  store i32 %i.wi, ptr %i.wg, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %.val601.1 = load i32, ptr %gep.1, align 1, !tbaa !26
  %i.wo = mul i32 %.val601.1, -1640531535
  %i.wp = lshr i32 %i.wo, 17
  %i.wq = zext nneg i32 %i.wp to i64
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.wq ; 2 uses
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !9
  %i.wt = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.wu = sub i32 %i.wt, %i.ws
  %i.wv = tail call i32 @llvm.umin.i32(i32 %i.wu, i32 65535)
  %i.ww = trunc nuw i32 %i.wv to i16
  %i.wx = and i64 %indvars.iv.next, 65535
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %i.tt, i64 %i.wx
  store i16 %i.ww, ptr %i.wy, align 2, !tbaa !27
  store i32 %i.wt, ptr %i.wr, align 4, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.wz = icmp samesign ult i64 %indvars.iv.next.1, %i.vp
  br i1 %i.wz, label %.lr.ph, label %LZ4HC_Insert.exit.i.loopexit, !llvm.loop !0

LZ4HC_Insert.exit.i.loopexit:                     ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.val603.pre = load i32, ptr %.010901836, align 1, !tbaa !26
  br label %LZ4HC_Insert.exit.i

LZ4HC_Insert.exit.i:                              ; preds = %LZ4HC_Insert.exit.i.loopexit, %bb.di
  %.val603 = phi i32 [ %.val603.pre, %LZ4HC_Insert.exit.i.loopexit ], [ %.val594, %bb.di ]
  store i32 %i.vj, ptr %i.tz, align 8, !tbaa !21
  %i.xa = mul i32 %.val603, -1640531535
end_hunk_0
begin_hunk_1_@LZ4HC_compress_generic_internal:bb.a

._crit_edge1903:                                  ; preds = %bb.ki, %bb.kh
  %.251.i.i376.lcssa = phi ptr [ %.150.i.i373, %bb.kh ], [ %i.bdz, %bb.ki ] ; 5 uses
  %.246.i.i377.lcssa = phi ptr [ %.145.i.i374, %bb.kh ], [ %i.bea, %bb.ki ] ; 4 uses
  %i.bec = getelementptr inbounds i8, ptr %spec.select457.i372, i64 -3
  %i.bed = icmp ult ptr %.251.i.i376.lcssa, %i.bec
  br i1 %i.bed, label %bb.kj, label %bb.kl

bb.kj:                                            ; preds = %._crit_edge1903
  %.246.i.i377.val = load i32, ptr %.246.i.i377.lcssa, align 1, !tbaa !26
  %.251.i.i376.val = load i32, ptr %.251.i.i376.lcssa, align 1, !tbaa !26
  %i.bee = icmp eq i32 %.246.i.i377.val, %.251.i.i376.val
  br i1 %i.bee, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.bef = getelementptr inbounds nuw i8, ptr %.251.i.i376.lcssa, i64 4
  %i.beg = getelementptr inbounds nuw i8, ptr %.246.i.i377.lcssa, i64 4
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %bb.kj, %._crit_edge1903
  %.453.i.i379 = phi ptr [ %i.bef, %bb.kk ], [ %.251.i.i376.lcssa, %bb.kj ], [ %.251.i.i376.lcssa, %._crit_edge1903 ] ; 5 uses
  %.448.i.i380 = phi ptr [ %i.beg, %bb.kk ], [ %.246.i.i377.lcssa, %bb.kj ], [ %.246.i.i377.lcssa, %._crit_edge1903 ] ; 4 uses
  %i.beh = getelementptr inbounds i8, ptr %spec.select457.i372, i64 -1
  %i.bei = icmp ult ptr %.453.i.i379, %i.beh
  br i1 %i.bei, label %bb.km, label %bb.ko

bb.km:                                            ; preds = %bb.kl
  %.448.i.i380.val = load i16, ptr %.448.i.i380, align 1, !tbaa !36
  %.453.i.i379.val = load i16, ptr %.453.i.i379, align 1, !tbaa !36
  %i.bej = icmp eq i16 %.448.i.i380.val, %.453.i.i379.val
  br i1 %i.bej, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %bb.km
  %i.bek = getelementptr inbounds nuw i8, ptr %.453.i.i379, i64 2
  %i.bel = getelementptr inbounds nuw i8, ptr %.448.i.i380, i64 2
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.km, %bb.kl
  %.554.i.i381 = phi ptr [ %i.bek, %bb.kn ], [ %.453.i.i379, %bb.km ], [ %.453.i.i379, %bb.kl ] ; 4 uses
  %.5.i.i382 = phi ptr [ %i.bel, %bb.kn ], [ %.448.i.i380, %bb.km ], [ %.448.i.i380, %bb.kl ]
  %i.bem = icmp ult ptr %.554.i.i381, %spec.select457.i372
  br i1 %i.bem, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %bb.ko
  %i.ben = load i8, ptr %.5.i.i382, align 1, !tbaa !16
  %i.beo = load i8, ptr %.554.i.i381, align 1, !tbaa !16
  %i.bep = icmp eq i8 %i.ben, %i.beo
  %spec.select.i.i399.idx = zext i1 %i.bep to i64
  %spec.select.i.i399 = getelementptr inbounds nuw i8, ptr %.554.i.i381, i64 %spec.select.i.i399.idx
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %.6.i.i383 = phi ptr [ %.554.i.i381, %bb.ko ], [ %spec.select.i.i399, %bb.kp ]
  %i.beq = ptrtoint ptr %.6.i.i383 to i64
  %i.ber = sub i64 %i.beq, %i.bcz
  %i.bes = trunc i64 %i.ber to i32
  br label %LZ4_count.exit.i384

LZ4_count.exit.i384:                              ; preds = %.thread1256, %bb.kg, %bb.kq
  %.4.i.i385 = phi i32 [ %i.bdy, %.thread1256 ], [ %i.bes, %bb.kq ], [ %i.bdq, %bb.kg ]
  %i.bet = add nsw i32 %.4.i.i385, 4
  br i1 %.not443.i386, label %LZ4HC_countBack.exit.i391, label %bb.kr

bb.kr:                                            ; preds = %LZ4_count.exit.i384
  %.neg1452 = sub nsw i64 %i.bcj, %i.bdd
  %..i.i387 = tail call i64 @llvm.smax.i64(i64 %gepdiff1450, i64 %.neg1452) ; 2 uses
  %i.beu = trunc i64 %..i.i387 to i32             ; 2 uses
  %i.bev = icmp slt i32 %i.beu, -3
  %sext3242 = shl i64 %..i.i387, 32
  %i.bew = ashr exact i64 %sext3242, 32           ; 3 uses
  br i1 %i.bev, label %.lr.ph1908.preheader, label %.preheader1499

.lr.ph1908.preheader:                             ; preds = %bb.kr
  %invariant.op3634 = add nsw i64 %i.bew, 3
  br label %.lr.ph1908

.preheader1499.loopexit:                          ; preds = %bb.ks
  %i.bex = trunc nsw i64 %indvars.iv.next2612 to i32
  br label %.preheader1499

.preheader1499:                                   ; preds = %bb.kr, %.preheader1499.loopexit
  %.027.i.i389.lcssa = phi i32 [ %i.bex, %.preheader1499.loopexit ], [ 0, %bb.kr ] ; 2 uses
  %i.bey = sext i32 %.027.i.i389.lcssa to i64     ; 2 uses
  %smin2616 = tail call i32 @llvm.smin.i32(i32 %.027.i.i389.lcssa, i32 %i.beu) ; 2 uses
  %i.bez = icmp slt i64 %i.bew, %i.bey
  br i1 %i.bez, label %.lr.ph4037, label %LZ4HC_countBack.exit.i391

.lr.ph1908:                                       ; preds = %.lr.ph1908.preheader, %bb.ks
  %indvars.iv2611 = phi i64 [ 0, %.lr.ph1908.preheader ], [ %indvars.iv.next2612, %bb.ks ] ; 4 uses
  %i.bfa = getelementptr inbounds i8, ptr %i.alv, i64 %indvars.iv2611
  %i.bfb = getelementptr inbounds i8, ptr %i.bfa, i64 -4
  %.val576 = load i32, ptr %i.bfb, align 1, !tbaa !26 ; 2 uses
  %i.bfc = getelementptr inbounds i8, ptr %i.bde, i64 %indvars.iv2611
  %i.bfd = getelementptr inbounds i8, ptr %i.bfc, i64 -4
  %.val575 = load i32, ptr %i.bfd, align 1, !tbaa !26 ; 2 uses
  %.not.i531.i396 = icmp eq i32 %.val576, %.val575
  br i1 %.not.i531.i396, label %bb.ks, label %.thread1260

.thread1260:                                      ; preds = %.lr.ph1908
  %i.bfe = trunc nsw i64 %indvars.iv2611 to i32
  %i.bff = xor i32 %.val575, %.val576
  %i.bfg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.bff, i1 true)
  %i.bfh = lshr i32 %i.bfg, 3
  %i.bfi = sub nsw i32 %i.bfe, %i.bfh
  br label %LZ4HC_countBack.exit.i391

bb.ks:                                            ; preds = %.lr.ph1908
  %indvars.iv.next2612 = add nsw i64 %indvars.iv2611, -4 ; 3 uses
  %i.bfj = icmp sgt i64 %indvars.iv.next2612, %invariant.op3634
  br i1 %i.bfj, label %.lr.ph1908, label %.preheader1499.loopexit

bb.kt:                                            ; preds = %.lr.ph4037
  %i.bfk = icmp sgt i64 %indvars.iv.next2615, %i.bew
  br i1 %i.bfk, label %.lr.ph4037, label %LZ4HC_countBack.exit.i391, !llvm.loop !50

.lr.ph4037:                                       ; preds = %.preheader1499, %bb.kt
  %indvars.iv26144036 = phi i64 [ %indvars.iv.next2615, %bb.kt ], [ %i.bey, %.preheader1499 ] ; 2 uses
  %indvars.iv.next2615 = add nsw i64 %indvars.iv26144036, -1 ; 4 uses
  %i.bfl = getelementptr inbounds i8, ptr %i.alv, i64 %indvars.iv.next2615
  %i.bfm = load i8, ptr %i.bfl, align 1, !tbaa !16
  %i.bfn = getelementptr inbounds i8, ptr %i.bde, i64 %indvars.iv.next2615
  %i.bfo = load i8, ptr %i.bfn, align 1, !tbaa !16
  %i.bfp = icmp eq i8 %i.bfm, %i.bfo
  br i1 %i.bfp, label %bb.kt, label %LZ4HC_countBack.exit.i391.loopexit.split.loop.exit, !llvm.loop !50

LZ4HC_countBack.exit.i391.loopexit.split.loop.exit: ; preds = %.lr.ph4037
  %i.bfq = trunc nsw i64 %indvars.iv26144036 to i32
  br label %LZ4HC_countBack.exit.i391

LZ4HC_countBack.exit.i391:                        ; preds = %bb.kt, %.preheader1499, %LZ4HC_countBack.exit.i391.loopexit.split.loop.exit, %.thread1260, %LZ4_count.exit.i384
  %i.bfr = phi i32 [ 0, %LZ4_count.exit.i384 ], [ %i.bfi, %.thread1260 ], [ %i.bfq, %LZ4HC_countBack.exit.i391.loopexit.split.loop.exit ], [ %smin2616, %.preheader1499 ], [ %smin2616, %bb.kt ] ; 2 uses
  %i.bfs = sub i32 %i.bet, %i.bfr                 ; 2 uses
  %i.bft = icmp sgt i32 %i.bfs, %.19.i36719154038 ; 2 uses
  %.20368.i393 = select i1 %i.bft, i32 %i.bdb, i32 %.19367.i36419124041
  %.8345.i394 = select i1 %i.bft, i32 %i.bfr, i32 %.7344.i36519134040
  %.20.i395 = tail call i32 @llvm.smax.i32(i32 %i.bfs, i32 %.19.i36719154038)
  br label %bb.ku

bb.ku:                                            ; preds = %LZ4HC_countBack.exit.i391, %bb.kd
  %.21369.i369 = phi i32 [ %.20368.i393, %LZ4HC_countBack.exit.i391 ], [ %.19367.i36419124041, %bb.kd ] ; 2 uses
  %.9346.i370 = phi i32 [ %.8345.i394, %LZ4HC_countBack.exit.i391 ], [ %.7344.i36519134040, %bb.kd ] ; 2 uses
  %.21.i371 = phi i32 [ %.20.i395, %LZ4HC_countBack.exit.i391 ], [ %.19.i36719154038, %bb.kd ] ; 2 uses
  %i.bfu = and i32 %.0315.i36619144039, 65535
  %i.bfv = zext nneg i32 %i.bfu to i64
  %i.bfw = getelementptr inbounds nuw [2 x i8], ptr %i.bda, i64 %i.bfv
  %i.bfx = load i16, ptr %i.bfw, align 2, !tbaa !27
  %i.bfy = zext i16 %i.bfx to i32                 ; 2 uses
  %i.bfz = sub i32 %.16397.i36319114042, %i.bfy   ; 2 uses
  %i.bga = sub i32 %i.amd, %i.bfz                 ; 2 uses
  %i.bgb = icmp ugt i32 %i.bga, 65535
  %i.bgc = sub i32 %.0315.i36619144039, %i.bfy
  %.not442.i368 = icmp eq i32 %i.bdc, 0
  %or.cond4132 = select i1 %i.bgb, i1 true, i1 %.not442.i368
  br i1 %or.cond4132, label %LZ4HC_InsertAndGetWiderMatch.exit568, label %bb.kd, !llvm.loop !48

LZ4HC_InsertAndGetWiderMatch.exit568:             ; preds = %bb.ku, %bb.kc, %.thread1240.thread
  %.22370.i353 = phi i32 [ %.18366.i347, %.thread1240.thread ], [ %.18366.i347, %bb.kc ], [ %.21369.i369, %bb.ku ]
  %.10347.i354 = phi i32 [ %.6343.i348, %.thread1240.thread ], [ %.6343.i348, %bb.kc ], [ %.9346.i370, %bb.ku ]
  %.22.i355 = phi i32 [ %.18.i349, %.thread1240.thread ], [ %.18.i349, %bb.kc ], [ %.21.i371, %bb.ku ]
  %i.bgd = sext i32 %.10347.i354 to i64
  %i.bge = getelementptr inbounds i8, ptr %i.alv, i64 %i.bgd
  br label %bb.kv

bb.kv:                                            ; preds = %LZ4HC_InsertAndGetWiderMatch.exit568, %bb.gx
  %.sroa.090.sroa.12.0.i = phi i32 [ %.22.i355, %LZ4HC_InsertAndGetWiderMatch.exit568 ], [ 0, %bb.gx ] ; 3 uses
  %.sroa.090.sroa.0.0.i = phi i32 [ %.22370.i353, %LZ4HC_InsertAndGetWiderMatch.exit568 ], [ 0, %bb.gx ] ; 2 uses
  %.2.i = phi ptr [ %i.bge, %LZ4HC_InsertAndGetWiderMatch.exit568 ], [ %.1337.i, %bb.gx ] ; 7 uses
  %.not358.i = icmp sgt i32 %.sroa.090.sroa.12.0.i, %.sroa.0162.sroa.14.0.i
  br i1 %.not358.i, label %bb.lg, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %.11081.ph.lcssa26762680 = ptrtoaddr ptr %.11081.ph to i64
  %.11091.lcssa26822684 = ptrtoaddr ptr %.11091 to i64
  %i.bgf = getelementptr i8, ptr %.1.ph, i64 1    ; 4 uses
  %i.bgg = ptrtoint ptr %.11091 to i64            ; 2 uses
  %i.bgh = ptrtoint ptr %.11081.ph to i64         ; 2 uses
  %i.bgi = sub i64 %i.bgg, %i.bgh                 ; 6 uses
  %i.bgj = udiv i64 %i.bgi, 255
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgf, i64 %i.bgj
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgk, i64 %i.bgi
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 8
  %i.bgn = icmp ugt ptr %i.bgm, %spec.select.i
  %or.cond.i96 = select i1 %.not.i49, i1 %i.bgn, i1 false
  br i1 %or.cond.i96, label %LZ4HC_encodeSequence.exit.loopexit1507.split.loop.exit2084, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.bgo = icmp ugt i64 %i.bgi, 14
  br i1 %i.bgo, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  %i.bgp = add i64 %i.bgi, -15                    ; 2 uses
  store i8 -16, ptr %.1.ph, align 1, !tbaa !16
  %i.bgq = icmp ugt i64 %i.bgp, 254
  br i1 %i.bgq, label %.lr.ph2045.preheader, label %._crit_edge2046

.lr.ph2045.preheader:                             ; preds = %bb.ky
  %i.bgr = add i64 %i.bgg, -270
  %i.bgs = sub i64 %i.bgr, %i.bgh                 ; 2 uses
  %i.bgt = udiv i64 %i.bgs, 255                   ; 3 uses
  %i.bgu = add nuw nsw i64 %i.bgt, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bgf, i8 -1, i64 %i.bgu, i1 false), !tbaa !16
  %scevgep2669 = getelementptr i8, ptr %.1.ph, i64 2
  %scevgep2670 = getelementptr i8, ptr %scevgep2669, i64 %i.bgt
  %.neg3243 = mul i64 %i.bgt, -255
  %i.bgv = add i64 %.neg3243, %i.bgs
  br label %._crit_edge2046

._crit_edge2046:                                  ; preds = %.lr.ph2045.preheader, %bb.ky
  %.39.lcssa = phi ptr [ %i.bgf, %bb.ky ], [ %scevgep2670, %.lr.ph2045.preheader ] ; 2 uses
  %.053.i104.lcssa = phi i64 [ %i.bgp, %bb.ky ], [ %i.bgv, %.lr.ph2045.preheader ]
  %i.bgw = trunc nuw i64 %.053.i104.lcssa to i8
  %i.bgx = getelementptr inbounds nuw i8, ptr %.39.lcssa, i64 1
  store i8 %i.bgw, ptr %.39.lcssa, align 1, !tbaa !16
  br label %.critedge.i98

bb.kz:                                            ; preds = %bb.kx
  %.tr.i97 = trunc nuw nsw i64 %i.bgi to i8
  %i.bgy = shl nuw i8 %.tr.i97, 4
  store i8 %i.bgy, ptr %.1.ph, align 1, !tbaa !16
  br label %.critedge.i98

.critedge.i98:                                    ; preds = %bb.kz, %._crit_edge2046
  %.35 = phi ptr [ %i.bgx, %._crit_edge2046 ], [ %i.bgf, %bb.kz ] ; 3 uses
  %i.bgz = getelementptr inbounds nuw i8, ptr %.35, i64 %i.bgi ; 3 uses
  br label %bb.la

bb.la:                                            ; preds = %bb.la, %.critedge.i98
  %.09.i = phi ptr [ %.35, %.critedge.i98 ], [ %i.bhb, %bb.la ] ; 2 uses
  %.0.i106 = phi ptr [ %.11081.ph, %.critedge.i98 ], [ %i.bhc, %bb.la ] ; 2 uses
  %i.bha = load i64, ptr %.0.i106, align 1
  store i64 %i.bha, ptr %.09.i, align 1
  %i.bhb = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.bhc = getelementptr inbounds nuw i8, ptr %.0.i106, i64 8
  %i.bhd = icmp ult ptr %i.bhb, %i.bgz
  br i1 %i.bhd, label %bb.la, label %LZ4_wildCopy8.exit, !llvm.loop !44

LZ4_wildCopy8.exit:                               ; preds = %bb.la
  %i.bhe = trunc i64 %.sroa.0162.sroa.0.0.in.i to i16
  store i16 %i.bhe, ptr %i.bgz, align 1, !tbaa !36
  %i.bhf = getelementptr i8, ptr %i.bgz, i64 2    ; 4 uses
  %i.bhg = add nsw i64 %i.alt, -4                 ; 3 uses
  %i.bhh = udiv i64 %i.bhg, 255
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhf, i64 %i.bhh
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhi, i64 6
  %i.bhk = icmp ugt ptr %i.bhj, %spec.select.i
  %or.cond70.i100 = select i1 %.not.i49, i1 %i.bhk, i1 false
  br i1 %or.cond70.i100, label %LZ4HC_encodeSequence.exit.loopexit1507.split.loop.exit, label %bb.lb

bb.lb:                                            ; preds = %LZ4_wildCopy8.exit
  %i.bhl = icmp ugt i64 %i.bhg, 14
  br i1 %i.bhl, label %bb.lc, label %bb.lf

bb.lc:                                            ; preds = %bb.lb
  %i.bhm = load i8, ptr %.1.ph, align 1, !tbaa !16
  %i.bhn = add i8 %i.bhm, 15
  store i8 %i.bhn, ptr %.1.ph, align 1, !tbaa !16
  %i.bho = add nsw i64 %i.alt, -19                ; 2 uses
  %i.bhp = icmp ugt i64 %i.bho, 509
  br i1 %i.bhp, label %.lr.ph2052.preheader, label %._crit_edge2053

.lr.ph2052.preheader:                             ; preds = %bb.lc
  %i.bhq = add nsw i64 %i.alt, -529               ; 2 uses
  %i.bhr = udiv i64 %i.bhq, 510                   ; 2 uses
  %i.bhs = shl nuw nsw i64 %i.bhr, 1              ; 2 uses
  %i.bht = add nuw nsw i64 %i.bhs, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bhf, i8 -1, i64 %i.bht, i1 false), !tbaa !16
  %scevgep2675 = getelementptr i8, ptr %.35, i64 4
  %i.bhu = sub i64 0, %.11081.ph.lcssa26762680
  %scevgep2681 = getelementptr i8, ptr %scevgep2675, i64 %i.bhu
  %i.bhv = getelementptr i8, ptr %scevgep2681, i64 %i.bhs
  %scevgep2685 = getelementptr i8, ptr %i.bhv, i64 %.11091.lcssa26822684
  %.neg3244 = mul i64 %i.bhr, -510
  %i.bhw = add i64 %.neg3244, %i.bhq
  br label %._crit_edge2053

._crit_edge2053:                                  ; preds = %.lr.ph2052.preheader, %bb.lc
  %.37.lcssa = phi ptr [ %i.bhf, %bb.lc ], [ %scevgep2685, %.lr.ph2052.preheader ] ; 3 uses
  %.0.i102.lcssa = phi i64 [ %i.bho, %bb.lc ], [ %i.bhw, %.lr.ph2052.preheader ] ; 3 uses
  %i.bhx = icmp samesign ugt i64 %.0.i102.lcssa, 254
  br i1 %i.bhx, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %._crit_edge2053
  %i.bhy = add nsw i64 %.0.i102.lcssa, -255
  %i.bhz = getelementptr inbounds nuw i8, ptr %.37.lcssa, i64 1
  store i8 -1, ptr %.37.lcssa, align 1, !tbaa !16
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %._crit_edge2053
  %.38 = phi ptr [ %i.bhz, %bb.ld ], [ %.37.lcssa, %._crit_edge2053 ] ; 2 uses
  %.1.i103 = phi i64 [ %i.bhy, %bb.ld ], [ %.0.i102.lcssa, %._crit_edge2053 ]
  %i.bia = trunc nuw i64 %.1.i103 to i8
  %i.bib = getelementptr inbounds nuw i8, ptr %.38, i64 1
  store i8 %i.bia, ptr %.38, align 1, !tbaa !16
  br label %.outer1508.backedge

bb.lf:                                            ; preds = %bb.lb
  %i.bic = trunc nuw nsw i64 %i.bhg to i8
  %i.bid = load i8, ptr %.1.ph, align 1, !tbaa !16
  %i.bie = add i8 %i.bid, %i.bic
  store i8 %i.bie, ptr %.1.ph, align 1, !tbaa !16
  br label %.outer1508.backedge

.outer1508.backedge:                              ; preds = %bb.qb, %bb.qa, %bb.lf, %bb.le
  %.01090.ph.be = phi ptr [ %i.alu, %bb.lf ], [ %i.alu, %bb.le ], [ %i.biz, %bb.qa ], [ %i.biz, %bb.qb ] ; 3 uses
  %.01079.ph.be = phi ptr [ %i.bhf, %bb.lf ], [ %i.bib, %bb.le ], [ %i.chj, %bb.qa ], [ %i.cgm, %bb.qb ] ; 2 uses
  %.0338.i.ph.be = phi ptr [ %.1339.i.ph, %bb.lf ], [ %.1339.i.ph, %bb.le ], [ %.3341.i, %bb.qa ], [ %.3341.i, %bb.qb ]
  %.0336.i.ph.be = phi ptr [ %.2.i, %bb.lf ], [ %.2.i, %bb.le ], [ %.5.i, %bb.qa ], [ %.5.i, %bb.qb ]
  %.not.i1835 = icmp ugt ptr %.01090.ph.be, %i.tn
  br i1 %.not.i1835, label %.loopexit, label %.lr.ph1837, !llvm.loop !49

bb.lg:                                            ; preds = %bb.kv
  %i.bif = icmp ult ptr %.0335.i.ph, %.11091
  %i.big = getelementptr inbounds i8, ptr %.11091, i64 %i.cjv
  %i.bih = icmp ult ptr %.2.i, %i.big
  %or.cond.i = select i1 %i.bif, i1 %i.bih, i1 false ; 3 uses
  %.31093 = select i1 %or.cond.i, ptr %.0335.i.ph, ptr %.11091 ; 2 uses
  %i.bii = ptrtoint ptr %.2.i to i64
  %i.bij = ptrtoint ptr %.31093 to i64
  %i.bik = sub i64 %i.bii, %i.bij
  %i.bil = icmp slt i64 %i.bik, 3
  %.sroa.090.sroa.0.0.insert.ext.i = zext i32 %.sroa.090.sroa.0.0.i to i64
  br i1 %i.bil, label %bb.gx, label %.preheader1502

.preheader1502:                                   ; preds = %bb.lg
  %.sroa.0232.4.extract.shift.i.le = lshr i64 %.sroa.0232.0.i.ph, 32
  %.sroa.0232.4.extract.trunc.i.le = trunc nuw i64 %.sroa.0232.4.extract.shift.i.le to i32
  %.sroa.0162.sroa.14.1.i.le = select i1 %or.cond.i, i32 %.sroa.0232.4.extract.trunc.i.le, i32 %.sroa.0162.sroa.14.0.i
  %.sroa.0162.sroa.0.1.i.le.v = select i1 %or.cond.i, i64 %.sroa.0232.0.i.ph, i64 %.sroa.0162.sroa.0.0.in.i
  %.sroa.0162.sroa.0.1.i.le = trunc i64 %.sroa.0162.sroa.0.1.i.le.v to i32
  br label %.outer

bb.lh:                                            ; preds = %bb.qd, %.outer
  %.sroa.090.sroa.12.1.i = phi i32 [ %.sroa.051.sroa.8.0.i, %bb.qd ], [ %.sroa.090.sroa.12.1.i.ph, %.outer ] ; 4 uses
  %.sroa.090.sroa.0.1.i = phi i32 [ %.sroa.090.sroa.0.0.extract.trunc130.i, %bb.qd ], [ %.sroa.090.sroa.0.1.i.ph, %.outer ] ; 6 uses
  %.2340.i = phi ptr [ %.3341.i, %bb.qd ], [ %.2340.i.ph, %.outer ]
  %.3.i = phi ptr [ %.3341.i, %bb.qd ], [ %.3.i.ph, %.outer ] ; 4 uses
  %i.bim = ptrtoint ptr %.3.i to i64              ; 2 uses
  %i.bin = sub i64 %i.bim, %i.cmj                 ; 2 uses
  %i.bio = icmp slt i64 %i.bin, 18
  br i1 %i.bio, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  %i.bip = sext i32 %.sroa.090.sroa.12.1.i to i64
  %i.biq = getelementptr inbounds i8, ptr %.3.i, i64 %i.bip
  %i.bir = getelementptr inbounds i8, ptr %i.biq, i64 -4
  %i.bis = icmp ugt ptr %i.cml, %i.bir
  %i.bit = trunc i64 %i.bin to i32
  %i.biu = add i32 %.sroa.090.sroa.12.1.i, -4
  %i.biv = add i32 %i.biu, %i.bit
  %.0331.i = select i1 %i.bis, i32 %i.biv, i32 %spec.store.select.i
  %.neg.i = sub i64 %i.cmj, %i.bim
  %.neg359.i = trunc i64 %.neg.i to i32
  %i.biw = add i32 %.0331.i, %.neg359.i
  %i.bix = tail call i32 @llvm.smax.i32(i32 %i.biw, i32 0) ; 2 uses
  %.sroa.090.sroa.12.2.i = sub nsw i32 %.sroa.090.sroa.12.1.i, %i.bix
  %.4.i.idx = zext nneg i32 %i.bix to i64
  %.4.i = getelementptr inbounds nuw i8, ptr %.3.i, i64 %.4.i.idx
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lh
  %.sroa.090.sroa.12.3.i = phi i32 [ %.sroa.090.sroa.12.2.i, %bb.li ], [ %.sroa.090.sroa.12.1.i, %bb.lh ] ; 12 uses
  %.5.i = phi ptr [ %.4.i, %bb.li ], [ %.3.i, %bb.lh ] ; 18 uses
  %i.biy = sext i32 %.sroa.090.sroa.12.3.i to i64 ; 7 uses
  %i.biz = getelementptr inbounds i8, ptr %.5.i, i64 %i.biy ; 9 uses
  %.not360.i = icmp ugt ptr %i.biz, %i.tn
  br i1 %.not360.i, label %bb.ph, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bja = getelementptr inbounds i8, ptr %i.biz, i64 -3 ; 14 uses
  %i.bjb = load ptr, ptr %i.tu, align 8, !tbaa !20 ; 5 uses
  %i.bjc = load ptr, ptr %i.tv, align 8, !tbaa !18 ; 12 uses
  %i.bjd = load i32, ptr %i.tw, align 8, !tbaa !19 ; 13 uses
  %i.bje = ptrtoint ptr %i.bja to i64
  %i.bjf = ptrtoint ptr %i.bjc to i64             ; 2 uses
  %i.bjg = sub i64 %i.bje, %i.bjf                 ; 2 uses
  %i.bjh = trunc i64 %i.bjg to i32
  %i.bji = add i32 %i.bjd, %i.bjh                 ; 9 uses
  %i.bjj = load i32, ptr %i.tx, align 4, !tbaa !23 ; 6 uses
  %i.bjk = add i32 %i.bjj, 65536
  %i.bjl = icmp ugt i32 %i.bjk, %i.bji            ; 2 uses
  %i.bjm = add i32 %i.bji, -65535
  %i.bjn = select i1 %i.bjl, i32 %i.bjj, i32 %i.bjm ; 5 uses
  %i.bjo = load ptr, ptr %i.ty, align 8, !tbaa !22 ; 10 uses
  %i.bjp = zext i32 %i.bjd to i64                 ; 3 uses
  %i.bjq = zext i32 %i.bjj to i64
  %i.bjr = sub nsw i64 %i.bjp, %i.bjq             ; 5 uses
  %.ptr1459 = getelementptr inbounds i8, ptr %i.bjo, i64 %i.bjr ; 2 uses
  %i.bjs = add nsw i64 %i.biy, -3                 ; 2 uses
  %i.bjt = trunc i64 %i.bjs to i32                ; 2 uses
  %.val589 = load i32, ptr %i.bja, align 1, !tbaa !26 ; 18 uses
  %i.bju = load i32, ptr %i.tz, align 8, !tbaa !21 ; 4 uses
  %i.bjv = icmp ult i32 %i.bju, %i.bji
  br i1 %i.bjv, label %.lr.ph1933, label %LZ4HC_Insert.exit.i134

.lr.ph1933:                                       ; preds = %bb.lk
  %i.bjw = sub nsw i64 0, %i.bjp
  %invariant.gep1934 = getelementptr i8, ptr %i.bjc, i64 %i.bjw ; 3 uses
  %i.bjx = zext i32 %i.bju to i64                 ; 6 uses
  %i.bjy = zext i32 %i.bji to i64                 ; 3 uses
  %i.bjz = sub nsw i64 %i.bjy, %i.bjx
  %xtraiter4524 = and i64 %i.bjz, 1
  %lcmp.mod4525.not = icmp eq i64 %xtraiter4524, 0
  br i1 %lcmp.mod4525.not, label %.prol.loopexit4523, label %.prol.loopexit4523.unr-lcssa

.prol.loopexit4523.unr-lcssa:                     ; preds = %.lr.ph1933
  %gep1935.prol = getelementptr i8, ptr %invariant.gep1934, i64 %i.bjx
  %.val598.prol = load i32, ptr %gep1935.prol, align 1, !tbaa !26
  %i.bka = mul i32 %.val598.prol, -1640531535
  %i.bkb = lshr i32 %i.bka, 17
  %i.bkc = zext nneg i32 %i.bkb to i64
  %i.bkd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bkc ; 2 uses
  %i.bke = load i32, ptr %i.bkd, align 4, !tbaa !9
  %i.bkf = sub i32 %i.bju, %i.bke
  %i.bkg = tail call i32 @llvm.umin.i32(i32 %i.bkf, i32 65535)
  %i.bkh = trunc nuw i32 %i.bkg to i16
  %i.bki = and i64 %i.bjx, 65535
  %i.bkj = getelementptr inbounds nuw [2 x i8], ptr %i.tt, i64 %i.bki
  store i16 %i.bkh, ptr %i.bkj, align 2, !tbaa !27
  store i32 %i.bju, ptr %i.bkd, align 4, !tbaa !9
  %indvars.iv.next2619.prol = add nuw nsw i64 %i.bjx, 1
  br label %.prol.loopexit4523

.prol.loopexit4523:                               ; preds = %.prol.loopexit4523.unr-lcssa, %.lr.ph1933
  %indvars.iv2618.unr = phi i64 [ %i.bjx, %.lr.ph1933 ], [ %indvars.iv.next2619.prol, %.prol.loopexit4523.unr-lcssa ]
  %i.bkk = add nsw i64 %i.bjy, -1
  %i.bkl = icmp eq i64 %i.bkk, %i.bjx
  br i1 %i.bkl, label %LZ4HC_Insert.exit.i134.loopexit, label %.lr.ph1933.new

.lr.ph1933.new:                                   ; preds = %.prol.loopexit4523, %.lr.ph1933.new
  %indvars.iv2618 = phi i64 [ %indvars.iv.next2619.1, %.lr.ph1933.new ], [ %indvars.iv2618.unr, %.prol.loopexit4523 ] ; 5 uses
  %gep1935 = getelementptr i8, ptr %invariant.gep1934, i64 %indvars.iv2618
  %.val598 = load i32, ptr %gep1935, align 1, !tbaa !26
  %i.bkm = mul i32 %.val598, -1640531535
  %i.bkn = lshr i32 %i.bkm, 17
  %i.bko = zext nneg i32 %i.bkn to i64
  %i.bkp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bko ; 2 uses
  %i.bkq = load i32, ptr %i.bkp, align 4, !tbaa !9
  %i.bkr = trunc nuw i64 %indvars.iv2618 to i32   ; 2 uses
  %i.bks = sub i32 %i.bkr, %i.bkq
  %i.bkt = tail call i32 @llvm.umin.i32(i32 %i.bks, i32 65535)
  %i.bku = trunc nuw i32 %i.bkt to i16
  %i.bkv = and i64 %indvars.iv2618, 65535
  %i.bkw = getelementptr inbounds nuw [2 x i8], ptr %i.tt, i64 %i.bkv
  store i16 %i.bku, ptr %i.bkw, align 2, !tbaa !27
  store i32 %i.bkr, ptr %i.bkp, align 4, !tbaa !9
  %indvars.iv.next2619 = add nuw nsw i64 %indvars.iv2618, 1 ; 3 uses
  %gep1935.1 = getelementptr i8, ptr %invariant.gep1934, i64 %indvars.iv.next2619
  %.val598.1 = load i32, ptr %gep1935.1, align 1, !tbaa !26
  %i.bkx = mul i32 %.val598.1, -1640531535
  %i.bky = lshr i32 %i.bkx, 17
  %i.bkz = zext nneg i32 %i.bky to i64
  %i.bla = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bkz ; 2 uses
  %i.blb = load i32, ptr %i.bla, align 4, !tbaa !9
  %i.blc = trunc nuw i64 %indvars.iv.next2619 to i32 ; 2 uses
  %i.bld = sub i32 %i.blc, %i.blb
  %i.ble = tail call i32 @llvm.umin.i32(i32 %i.bld, i32 65535)
  %i.blf = trunc nuw i32 %i.ble to i16
  %i.blg = and i64 %indvars.iv.next2619, 65535
  %i.blh = getelementptr inbounds nuw [2 x i8], ptr %i.tt, i64 %i.blg
  store i16 %i.blf, ptr %i.blh, align 2, !tbaa !27
  store i32 %i.blc, ptr %i.bla, align 4, !tbaa !9
  %indvars.iv.next2619.1 = add nuw nsw i64 %indvars.iv2618, 2 ; 2 uses
  %i.bli = icmp samesign ult i64 %indvars.iv.next2619.1, %i.bjy
  br i1 %i.bli, label %.lr.ph1933.new, label %LZ4HC_Insert.exit.i134.loopexit, !llvm.loop !0

LZ4HC_Insert.exit.i134.loopexit:                  ; preds = %.lr.ph1933.new, %.prol.loopexit4523
end_hunk_1
begin_hunk_2_@LZ4HC_compress_generic_internal:bb.a
  %i.cbh = getelementptr inbounds i8, ptr %spec.select457.i169, i64 -3
  %i.cbi = icmp ult ptr %.251.i.i173.lcssa, %i.cbh
  br i1 %i.cbi, label %bb.ov, label %bb.ox

bb.ov:                                            ; preds = %._crit_edge1992
  %.246.i.i174.val = load i32, ptr %.246.i.i174.lcssa, align 1, !tbaa !26
  %.251.i.i173.val = load i32, ptr %.251.i.i173.lcssa, align 1, !tbaa !26
  %i.cbj = icmp eq i32 %.246.i.i174.val, %.251.i.i173.val
  br i1 %i.cbj, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov
  %i.cbk = getelementptr inbounds nuw i8, ptr %.251.i.i173.lcssa, i64 4
  %i.cbl = getelementptr inbounds nuw i8, ptr %.246.i.i174.lcssa, i64 4
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ow, %bb.ov, %._crit_edge1992
  %.453.i.i176 = phi ptr [ %i.cbk, %bb.ow ], [ %.251.i.i173.lcssa, %bb.ov ], [ %.251.i.i173.lcssa, %._crit_edge1992 ] ; 5 uses
  %.448.i.i177 = phi ptr [ %i.cbl, %bb.ow ], [ %.246.i.i174.lcssa, %bb.ov ], [ %.246.i.i174.lcssa, %._crit_edge1992 ] ; 4 uses
  %i.cbm = getelementptr inbounds i8, ptr %spec.select457.i169, i64 -1
  %i.cbn = icmp ult ptr %.453.i.i176, %i.cbm
  br i1 %i.cbn, label %bb.oy, label %bb.pa

bb.oy:                                            ; preds = %bb.ox
  %.448.i.i177.val = load i16, ptr %.448.i.i177, align 1, !tbaa !36
  %.453.i.i176.val = load i16, ptr %.453.i.i176, align 1, !tbaa !36
  %i.cbo = icmp eq i16 %.448.i.i177.val, %.453.i.i176.val
  br i1 %i.cbo, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  %i.cbp = getelementptr inbounds nuw i8, ptr %.453.i.i176, i64 2
  %i.cbq = getelementptr inbounds nuw i8, ptr %.448.i.i177, i64 2
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %bb.oy, %bb.ox
  %.554.i.i178 = phi ptr [ %i.cbp, %bb.oz ], [ %.453.i.i176, %bb.oy ], [ %.453.i.i176, %bb.ox ] ; 4 uses
  %.5.i.i179 = phi ptr [ %i.cbq, %bb.oz ], [ %.448.i.i177, %bb.oy ], [ %.448.i.i177, %bb.ox ]
  %i.cbr = icmp ult ptr %.554.i.i178, %spec.select457.i169
  br i1 %i.cbr, label %bb.pb, label %bb.pc

bb.pb:                                            ; preds = %bb.pa
  %i.cbs = load i8, ptr %.5.i.i179, align 1, !tbaa !16
  %i.cbt = load i8, ptr %.554.i.i178, align 1, !tbaa !16
  %i.cbu = icmp eq i8 %i.cbs, %i.cbt
  %spec.select.i.i186.idx = zext i1 %i.cbu to i64
  %spec.select.i.i186 = getelementptr inbounds nuw i8, ptr %.554.i.i178, i64 %spec.select.i.i186.idx
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %bb.pa
  %.6.i.i180 = phi ptr [ %.554.i.i178, %bb.pa ], [ %spec.select.i.i186, %bb.pb ]
  %i.cbv = ptrtoint ptr %.6.i.i180 to i64
  %i.cbw = sub i64 %i.cbv, %i.cae
  %i.cbx = trunc i64 %i.cbw to i32
  br label %LZ4_count.exit.i181

LZ4_count.exit.i181:                              ; preds = %.thread1342, %bb.os, %bb.pc
  %.4.i.i182 = phi i32 [ %i.cbd, %.thread1342 ], [ %i.cbx, %bb.pc ], [ %i.cav, %bb.os ]
  %i.cby = add nsw i32 %.4.i.i182, 4
  br i1 %.not443.i, label %LZ4HC_countBack.exit.i, label %bb.pd

bb.pd:                                            ; preds = %LZ4_count.exit.i181
  %.neg1462 = sub nsw i64 %i.bzo, %i.cai
  %..i.i = tail call i64 @llvm.smax.i64(i64 %gepdiff1460, i64 %.neg1462) ; 2 uses
  %i.cbz = trunc i64 %..i.i to i32                ; 2 uses
  %i.cca = icmp slt i32 %i.cbz, -3
  %sext3250 = shl i64 %..i.i, 32
  %i.ccb = ashr exact i64 %sext3250, 32           ; 3 uses
  br i1 %i.cca, label %.lr.ph1997.preheader, label %.preheader

.lr.ph1997.preheader:                             ; preds = %bb.pd
  %invariant.op3643 = add nsw i64 %i.ccb, 3
  br label %.lr.ph1997

.preheader.loopexit:                              ; preds = %bb.pe
  %i.ccc = trunc nsw i64 %indvars.iv.next2636 to i32
  br label %.preheader

.preheader:                                       ; preds = %bb.pd, %.preheader.loopexit
  %.027.i.i.lcssa = phi i32 [ %i.ccc, %.preheader.loopexit ], [ 0, %bb.pd ] ; 2 uses
  %i.ccd = sext i32 %.027.i.i.lcssa to i64        ; 2 uses
  %smin2640 = tail call i32 @llvm.smin.i32(i32 %.027.i.i.lcssa, i32 %i.cbz) ; 2 uses
  %i.cce = icmp slt i64 %i.ccb, %i.ccd
  br i1 %i.cce, label %.lr.ph4062, label %LZ4HC_countBack.exit.i

.lr.ph1997:                                       ; preds = %.lr.ph1997.preheader, %bb.pe
  %indvars.iv2635 = phi i64 [ 0, %.lr.ph1997.preheader ], [ %indvars.iv.next2636, %bb.pe ] ; 4 uses
  %i.ccf = getelementptr inbounds i8, ptr %i.bja, i64 %indvars.iv2635
  %i.ccg = getelementptr inbounds i8, ptr %i.ccf, i64 -4
  %.val587 = load i32, ptr %i.ccg, align 1, !tbaa !26 ; 2 uses
  %i.cch = getelementptr inbounds i8, ptr %i.caj, i64 %indvars.iv2635
  %i.cci = getelementptr inbounds i8, ptr %i.cch, i64 -4
  %.val586 = load i32, ptr %i.cci, align 1, !tbaa !26 ; 2 uses
  %.not.i531.i = icmp eq i32 %.val587, %.val586
  br i1 %.not.i531.i, label %bb.pe, label %.thread1346

.thread1346:                                      ; preds = %.lr.ph1997
  %i.ccj = trunc nsw i64 %indvars.iv2635 to i32
  %i.cck = xor i32 %.val586, %.val587
  %i.ccl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.cck, i1 true)
  %i.ccm = lshr i32 %i.ccl, 3
  %i.ccn = sub nsw i32 %i.ccj, %i.ccm
  br label %LZ4HC_countBack.exit.i

bb.pe:                                            ; preds = %.lr.ph1997
  %indvars.iv.next2636 = add nsw i64 %indvars.iv2635, -4 ; 3 uses
  %i.cco = icmp sgt i64 %indvars.iv.next2636, %invariant.op3643
  br i1 %i.cco, label %.lr.ph1997, label %.preheader.loopexit

bb.pf:                                            ; preds = %.lr.ph4062
  %i.ccp = icmp sgt i64 %indvars.iv.next2639, %i.ccb
  br i1 %i.ccp, label %.lr.ph4062, label %LZ4HC_countBack.exit.i, !llvm.loop !50

.lr.ph4062:                                       ; preds = %.preheader, %bb.pf
  %indvars.iv26384061 = phi i64 [ %indvars.iv.next2639, %bb.pf ], [ %i.ccd, %.preheader ] ; 2 uses
  %indvars.iv.next2639 = add nsw i64 %indvars.iv26384061, -1 ; 4 uses
  %i.ccq = getelementptr inbounds i8, ptr %i.bja, i64 %indvars.iv.next2639
  %i.ccr = load i8, ptr %i.ccq, align 1, !tbaa !16
  %i.ccs = getelementptr inbounds i8, ptr %i.caj, i64 %indvars.iv.next2639
  %i.cct = load i8, ptr %i.ccs, align 1, !tbaa !16
  %i.ccu = icmp eq i8 %i.ccr, %i.cct
  br i1 %i.ccu, label %bb.pf, label %LZ4HC_countBack.exit.i.loopexit.split.loop.exit, !llvm.loop !50

LZ4HC_countBack.exit.i.loopexit.split.loop.exit:  ; preds = %.lr.ph4062
  %i.ccv = trunc nsw i64 %indvars.iv26384061 to i32
  br label %LZ4HC_countBack.exit.i

LZ4HC_countBack.exit.i:                           ; preds = %bb.pf, %.preheader, %LZ4HC_countBack.exit.i.loopexit.split.loop.exit, %.thread1346, %LZ4_count.exit.i181
  %i.ccw = phi i32 [ 0, %LZ4_count.exit.i181 ], [ %i.ccn, %.thread1346 ], [ %i.ccv, %LZ4HC_countBack.exit.i.loopexit.split.loop.exit ], [ %smin2640, %.preheader ], [ %smin2640, %bb.pf ] ; 2 uses
  %i.ccx = sub i32 %i.cby, %i.ccw                 ; 2 uses
  %i.ccy = icmp sgt i32 %i.ccx, %.19.i16420044063 ; 2 uses
  %.20368.i183 = select i1 %i.ccy, i32 %i.cag, i32 %.19367.i16120014066
  %.8345.i184 = select i1 %i.ccy, i32 %i.ccw, i32 %.7344.i16220024065
  %.20.i185 = tail call i32 @llvm.smax.i32(i32 %i.ccx, i32 %.19.i16420044063)
  br label %bb.pg

bb.pg:                                            ; preds = %LZ4HC_countBack.exit.i, %bb.op
  %.21369.i166 = phi i32 [ %.20368.i183, %LZ4HC_countBack.exit.i ], [ %.19367.i16120014066, %bb.op ] ; 2 uses
  %.9346.i167 = phi i32 [ %.8345.i184, %LZ4HC_countBack.exit.i ], [ %.7344.i16220024065, %bb.op ] ; 2 uses
  %.21.i168 = phi i32 [ %.20.i185, %LZ4HC_countBack.exit.i ], [ %.19.i16420044063, %bb.op ] ; 2 uses
  %i.ccz = and i32 %.0315.i16320034064, 65535
  %i.cda = zext nneg i32 %i.ccz to i64
  %i.cdb = getelementptr inbounds nuw [2 x i8], ptr %i.caf, i64 %i.cda
  %i.cdc = load i16, ptr %i.cdb, align 2, !tbaa !27
  %i.cdd = zext i16 %i.cdc to i32                 ; 2 uses
  %i.cde = sub i32 %.16397.i16020004067, %i.cdd   ; 2 uses
  %i.cdf = sub i32 %i.bji, %i.cde                 ; 2 uses
  %i.cdg = icmp ugt i32 %i.cdf, 65535
  %i.cdh = sub i32 %.0315.i16320034064, %i.cdd
  %.not442.i165 = icmp eq i32 %i.cah, 0
  %or.cond4133 = select i1 %i.cdg, i1 true, i1 %.not442.i165
  br i1 %or.cond4133, label %LZ4HC_InsertAndGetWiderMatch.exit335, label %bb.op, !llvm.loop !48

LZ4HC_InsertAndGetWiderMatch.exit335:             ; preds = %bb.pg, %bb.oo, %.thread1326.thread
  %.22370.i150 = phi i32 [ %.18366.i144, %.thread1326.thread ], [ %.18366.i144, %bb.oo ], [ %.21369.i166, %bb.pg ]
  %.10347.i151 = phi i32 [ %.6343.i145, %.thread1326.thread ], [ %.6343.i145, %bb.oo ], [ %.9346.i167, %bb.pg ]
  %.22.i152 = phi i32 [ %.18.i146, %.thread1326.thread ], [ %.18.i146, %bb.oo ], [ %.21.i168, %bb.pg ]
  %.sroa.0312.0.insert.ext.i155 = zext i32 %.22370.i150 to i64
  %i.cdi = sext i32 %.10347.i151 to i64
  %i.cdj = getelementptr inbounds i8, ptr %i.bja, i64 %i.cdi
  br label %bb.ph

bb.ph:                                            ; preds = %LZ4HC_InsertAndGetWiderMatch.exit335, %bb.lj
  %.sroa.051.sroa.8.0.i = phi i32 [ %.22.i152, %LZ4HC_InsertAndGetWiderMatch.exit335 ], [ 0, %bb.lj ] ; 5 uses
  %.sroa.051.sroa.0.0.i = phi i64 [ %.sroa.0312.0.insert.ext.i155, %LZ4HC_InsertAndGetWiderMatch.exit335 ], [ 0, %bb.lj ] ; 3 uses
  %.3341.i = phi ptr [ %i.cdj, %LZ4HC_InsertAndGetWiderMatch.exit335 ], [ %.2340.i, %bb.lj ] ; 11 uses
  %.not361.i = icmp sgt i32 %.sroa.051.sroa.8.0.i, %.sroa.090.sroa.12.3.i
  br i1 %.not361.i, label %bb.qc, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %.5.i.lcssa27142717 = ptrtoaddr ptr %.5.i to i64
  %i.cdk = icmp ult ptr %.5.i, %i.cmn
  %i.cdl = ptrtoint ptr %.5.i to i64              ; 3 uses
  %i.cdm = sub i64 %i.cdl, %i.cmj
  %i.cdn = trunc i64 %i.cdm to i32
  %.sroa.0162.sroa.14.3.i = select i1 %i.cdk, i32 %i.cdn, i32 %.sroa.0162.sroa.14.2.i.ph ; 3 uses
  %i.cdo = getelementptr i8, ptr %.5.ph, i64 1    ; 4 uses
  %i.cdp = ptrtoint ptr %.41084.ph to i64         ; 3 uses
  %i.cdq = sub i64 %i.cmj, %i.cdp                 ; 6 uses
  %i.cdr = udiv i64 %i.cdq, 255
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdo, i64 %i.cdr
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.cds, i64 %i.cdq
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cdt, i64 8
  %i.cdv = icmp ugt ptr %i.cdu, %spec.select.i
  %or.cond.i75 = select i1 %.not.i49, i1 %i.cdv, i1 false
  br i1 %or.cond.i75, label %LZ4HC_encodeSequence.exit, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.cdw = icmp ugt i64 %i.cdq, 14
  br i1 %i.cdw, label %bb.pk, label %bb.pl

bb.pk:                                            ; preds = %bb.pj
  %i.cdx = add i64 %i.cdq, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph, align 1, !tbaa !16
  %i.cdy = icmp ugt i64 %i.cdx, 254
  br i1 %i.cdy, label %.lr.ph2059.preheader, label %._crit_edge2060

.lr.ph2059.preheader:                             ; preds = %bb.pk
  %reass.sub3251 = sub i64 %i.cmj, %i.cdp
  %i.cdz = add i64 %reass.sub3251, -270           ; 2 uses
  %i.cea = udiv i64 %i.cdz, 255                   ; 3 uses
  %i.ceb = add nuw nsw i64 %i.cea, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cdo, i8 -1, i64 %i.ceb, i1 false), !tbaa !16
  %scevgep2692 = getelementptr i8, ptr %.5.ph, i64 2
  %scevgep2696 = getelementptr i8, ptr %scevgep2692, i64 %i.cea
  %.neg3252 = mul i64 %i.cea, -255
  %i.cec = add i64 %.neg3252, %i.cdz
  br label %._crit_edge2060

._crit_edge2060:                                  ; preds = %.lr.ph2059.preheader, %bb.pk
  %.28.lcssa = phi ptr [ %i.cdo, %bb.pk ], [ %scevgep2696, %.lr.ph2059.preheader ] ; 2 uses
  %.053.i83.lcssa = phi i64 [ %i.cdx, %bb.pk ], [ %i.cec, %.lr.ph2059.preheader ]
  %i.ced = trunc nuw i64 %.053.i83.lcssa to i8
  %i.cee = getelementptr inbounds nuw i8, ptr %.28.lcssa, i64 1
  store i8 %i.ced, ptr %.28.lcssa, align 1, !tbaa !16
  br label %.critedge.i77

bb.pl:                                            ; preds = %bb.pj
  %.tr.i76 = trunc nuw nsw i64 %i.cdq to i8
  %i.cef = shl nuw i8 %.tr.i76, 4
  store i8 %i.cef, ptr %.5.ph, align 1, !tbaa !16
  br label %.critedge.i77

.critedge.i77:                                    ; preds = %bb.pl, %._crit_edge2060
  %.24 = phi ptr [ %i.cee, %._crit_edge2060 ], [ %i.cdo, %bb.pl ] ; 3 uses
  %i.ceg = getelementptr inbounds nuw i8, ptr %.24, i64 %i.cdq ; 3 uses
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pm, %.critedge.i77
  %.09.i110 = phi ptr [ %.24, %.critedge.i77 ], [ %i.cei, %bb.pm ] ; 2 uses
  %.0.i111 = phi ptr [ %.41084.ph, %.critedge.i77 ], [ %i.cej, %bb.pm ] ; 2 uses
  %i.ceh = load i64, ptr %.0.i111, align 1
  store i64 %i.ceh, ptr %.09.i110, align 1
  %i.cei = getelementptr inbounds nuw i8, ptr %.09.i110, i64 8 ; 2 uses
  %i.cej = getelementptr inbounds nuw i8, ptr %.0.i111, i64 8
  %i.cek = icmp ult ptr %i.cei, %i.ceg
  br i1 %i.cek, label %bb.pm, label %LZ4_wildCopy8.exit112, !llvm.loop !44

LZ4_wildCopy8.exit112:                            ; preds = %bb.pm
  %i.cel = trunc i32 %.sroa.0162.sroa.0.2.i.ph to i16
  store i16 %i.cel, ptr %i.ceg, align 1, !tbaa !36
  %i.cem = getelementptr i8, ptr %i.ceg, i64 2    ; 4 uses
  %i.cen = sext i32 %.sroa.0162.sroa.14.3.i to i64 ; 5 uses
  %i.ceo = add nsw i64 %i.cen, -4                 ; 3 uses
  %i.cep = udiv i64 %i.ceo, 255
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.cem, i64 %i.cep
  %i.cer = getelementptr inbounds nuw i8, ptr %i.ceq, i64 6
  %i.ces = icmp ugt ptr %i.cer, %spec.select.i
  %or.cond70.i79 = select i1 %.not.i49, i1 %i.ces, i1 false
  br i1 %or.cond70.i79, label %LZ4HC_encodeSequence.exit, label %bb.pn

bb.pn:                                            ; preds = %LZ4_wildCopy8.exit112
  %i.cet = icmp ugt i64 %i.ceo, 14
  br i1 %i.cet, label %bb.po, label %bb.pr

bb.po:                                            ; preds = %bb.pn
  %i.ceu = load i8, ptr %.5.ph, align 1, !tbaa !16
  %i.cev = add i8 %i.ceu, 15
  store i8 %i.cev, ptr %.5.ph, align 1, !tbaa !16
  %i.cew = add nsw i64 %i.cen, -19                ; 2 uses
  %i.cex = icmp ugt i64 %i.cew, 509
  br i1 %i.cex, label %.lr.ph2066.preheader, label %._crit_edge2067

.lr.ph2066.preheader:                             ; preds = %bb.po
  %i.cey = add nsw i64 %i.cen, -529               ; 2 uses
  %i.cez = udiv i64 %i.cey, 510                   ; 2 uses
  %i.cfa = shl nuw nsw i64 %i.cez, 1              ; 2 uses
  %i.cfb = add nuw nsw i64 %i.cfa, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cem, i8 -1, i64 %i.cfb, i1 false), !tbaa !16
  %scevgep2700 = getelementptr i8, ptr %.24, i64 4
  %i.cfc = sub i64 %i.cfa, %i.cdp
  %scevgep2701 = getelementptr i8, ptr %scevgep2700, i64 %i.cfc
  %scevgep2705 = getelementptr i8, ptr %scevgep2701, i64 %i.cmj
  %.neg3253 = mul i64 %i.cez, -510
  %i.cfd = add i64 %.neg3253, %i.cey
  br label %._crit_edge2067

._crit_edge2067:                                  ; preds = %.lr.ph2066.preheader, %bb.po
  %.26.lcssa = phi ptr [ %i.cem, %bb.po ], [ %scevgep2705, %.lr.ph2066.preheader ] ; 3 uses
  %.0.i81.lcssa = phi i64 [ %i.cew, %bb.po ], [ %i.cfd, %.lr.ph2066.preheader ] ; 3 uses
  %i.cfe = icmp samesign ugt i64 %.0.i81.lcssa, 254
  br i1 %i.cfe, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %._crit_edge2067
  %i.cff = add nsw i64 %.0.i81.lcssa, -255
  %i.cfg = getelementptr inbounds nuw i8, ptr %.26.lcssa, i64 1
  store i8 -1, ptr %.26.lcssa, align 1, !tbaa !16
  br label %bb.pq

bb.pq:                                            ; preds = %bb.pp, %._crit_edge2067
  %.27 = phi ptr [ %i.cfg, %bb.pp ], [ %.26.lcssa, %._crit_edge2067 ] ; 2 uses
  %.1.i82 = phi i64 [ %i.cff, %bb.pp ], [ %.0.i81.lcssa, %._crit_edge2067 ]
  %i.cfh = trunc nuw i64 %.1.i82 to i8
  %i.cfi = getelementptr inbounds nuw i8, ptr %.27, i64 1
  store i8 %i.cfh, ptr %.27, align 1, !tbaa !16
  br label %bb.ps

bb.pr:                                            ; preds = %bb.pn
  %i.cfj = trunc nuw nsw i64 %i.ceo to i8
  %i.cfk = load i8, ptr %.5.ph, align 1, !tbaa !16
  %i.cfl = add i8 %i.cfk, %i.cfj
  store i8 %i.cfl, ptr %.5.ph, align 1, !tbaa !16
  br label %bb.ps

bb.ps:                                            ; preds = %bb.pr, %bb.pq
  %.25 = phi ptr [ %i.cfi, %bb.pq ], [ %i.cem, %bb.pr ] ; 10 uses
  %i.cfm = getelementptr inbounds i8, ptr %.41094.ph, i64 %i.cen ; 4 uses
  %i.cfn = getelementptr i8, ptr %.25, i64 1      ; 4 uses
  %i.cfo = ptrtoint ptr %i.cfm to i64             ; 2 uses
  %i.cfp = sub i64 %i.cdl, %i.cfo                 ; 6 uses
  %i.cfq = udiv i64 %i.cfp, 255
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.cfn, i64 %i.cfq
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cfr, i64 %i.cfp
  %i.cft = getelementptr inbounds nuw i8, ptr %i.cfs, i64 8
  %i.cfu = icmp ugt ptr %i.cft, %spec.select.i
  %or.cond.i63 = select i1 %.not.i49, i1 %i.cfu, i1 false
  br i1 %or.cond.i63, label %LZ4HC_encodeSequence.exit, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.cfv = icmp ugt i64 %i.cfp, 14
  br i1 %i.cfv, label %bb.pu, label %bb.pv

bb.pu:                                            ; preds = %bb.pt
  %i.cfw = add i64 %i.cfp, -15                    ; 2 uses
  store i8 -16, ptr %.25, align 1, !tbaa !16
  %i.cfx = icmp ugt i64 %i.cfw, 254
  br i1 %i.cfx, label %.lr.ph2073.preheader, label %._crit_edge2074

.lr.ph2073.preheader:                             ; preds = %bb.pu
  %i.cfy = add i64 %i.cdl, -270
  %i.cfz = sub i64 %i.cfy, %i.cfo                 ; 2 uses
  %i.cga = udiv i64 %i.cfz, 255                   ; 3 uses
  %i.cgb = add nuw nsw i64 %i.cga, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cfn, i8 -1, i64 %i.cgb, i1 false), !tbaa !16
  %scevgep2706 = getelementptr i8, ptr %.25, i64 2
  %scevgep2707 = getelementptr i8, ptr %scevgep2706, i64 %i.cga
  %.neg3254 = mul i64 %i.cga, -255
  %i.cgc = add i64 %.neg3254, %i.cfz
  br label %._crit_edge2074

._crit_edge2074:                                  ; preds = %.lr.ph2073.preheader, %bb.pu
  %.22.lcssa = phi ptr [ %i.cfn, %bb.pu ], [ %scevgep2707, %.lr.ph2073.preheader ] ; 2 uses
  %.053.i71.lcssa = phi i64 [ %i.cfw, %bb.pu ], [ %i.cgc, %.lr.ph2073.preheader ]
  %i.cgd = trunc nuw i64 %.053.i71.lcssa to i8
  %i.cge = getelementptr inbounds nuw i8, ptr %.22.lcssa, i64 1
  store i8 %i.cgd, ptr %.22.lcssa, align 1, !tbaa !16
  br label %.critedge.i65

bb.pv:                                            ; preds = %bb.pt
  %.tr.i64 = trunc nuw nsw i64 %i.cfp to i8
  %i.cgf = shl nuw i8 %.tr.i64, 4
  store i8 %i.cgf, ptr %.25, align 1, !tbaa !16
  br label %.critedge.i65

.critedge.i65:                                    ; preds = %bb.pv, %._crit_edge2074
  %.18 = phi ptr [ %i.cge, %._crit_edge2074 ], [ %i.cfn, %bb.pv ] ; 3 uses
  %i.cgg = getelementptr inbounds nuw i8, ptr %.18, i64 %i.cfp ; 3 uses
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pw, %.critedge.i65
  %.09.i113 = phi ptr [ %.18, %.critedge.i65 ], [ %i.cgi, %bb.pw ] ; 2 uses
  %.0.i114 = phi ptr [ %i.cfm, %.critedge.i65 ], [ %i.cgj, %bb.pw ] ; 2 uses
  %i.cgh = load i64, ptr %.0.i114, align 1
  store i64 %i.cgh, ptr %.09.i113, align 1
  %i.cgi = getelementptr inbounds nuw i8, ptr %.09.i113, i64 8 ; 2 uses
  %i.cgj = getelementptr inbounds nuw i8, ptr %.0.i114, i64 8
  %i.cgk = icmp ult ptr %i.cgi, %i.cgg
  br i1 %i.cgk, label %bb.pw, label %LZ4_wildCopy8.exit115, !llvm.loop !44

LZ4_wildCopy8.exit115:                            ; preds = %bb.pw
  %i.cgl = trunc i32 %.sroa.090.sroa.0.1.i to i16
  store i16 %i.cgl, ptr %i.cgg, align 1, !tbaa !36
  %i.cgm = getelementptr i8, ptr %i.cgg, i64 2    ; 4 uses
  %i.cgn = add nsw i64 %i.biy, -4                 ; 3 uses
  %i.cgo = udiv i64 %i.cgn, 255
  %i.cgp = getelementptr inbounds nuw i8, ptr %i.cgm, i64 %i.cgo
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cgp, i64 6
  %i.cgr = icmp ugt ptr %i.cgq, %spec.select.i
  %or.cond70.i67 = select i1 %.not.i49, i1 %i.cgr, i1 false
  br i1 %or.cond70.i67, label %LZ4HC_encodeSequence.exit, label %bb.px

bb.px:                                            ; preds = %LZ4_wildCopy8.exit115
  %i.cgs = icmp ugt i64 %i.cgn, 14
  br i1 %i.cgs, label %bb.py, label %bb.qb

bb.py:                                            ; preds = %bb.px
  %i.cgt = load i8, ptr %.25, align 1, !tbaa !16
  %i.cgu = add i8 %i.cgt, 15
  store i8 %i.cgu, ptr %.25, align 1, !tbaa !16
  %i.cgv = add nsw i64 %i.biy, -19                ; 2 uses
  %i.cgw = icmp ugt i64 %i.cgv, 509
  br i1 %i.cgw, label %.lr.ph2080.preheader, label %._crit_edge2081

.lr.ph2080.preheader:                             ; preds = %bb.py
  %i.cgx = add nsw i64 %i.biy, -529               ; 2 uses
  %i.cgy = udiv i64 %i.cgx, 510                   ; 2 uses
  %i.cgz = shl nuw nsw i64 %i.cgy, 1              ; 2 uses
  %i.cha = add nuw nsw i64 %i.cgz, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cgm, i8 -1, i64 %i.cha, i1 false), !tbaa !16
  %scevgep2708 = getelementptr i8, ptr %.18, i64 4
  %i.chb = add i64 %i.cen, %i.cmj
  %i.chc = sub i64 0, %i.chb
  %scevgep2713 = getelementptr i8, ptr %scevgep2708, i64 %i.chc
  %i.chd = getelementptr i8, ptr %scevgep2713, i64 %i.cgz
  %scevgep2718 = getelementptr i8, ptr %i.chd, i64 %.5.i.lcssa27142717
  %.neg3255 = mul i64 %i.cgy, -510
  %i.che = add i64 %.neg3255, %i.cgx
  br label %._crit_edge2081

._crit_edge2081:                                  ; preds = %.lr.ph2080.preheader, %bb.py
  %.20.lcssa = phi ptr [ %i.cgm, %bb.py ], [ %scevgep2718, %.lr.ph2080.preheader ] ; 3 uses
  %.0.i69.lcssa = phi i64 [ %i.cgv, %bb.py ], [ %i.che, %.lr.ph2080.preheader ] ; 3 uses
  %i.chf = icmp samesign ugt i64 %.0.i69.lcssa, 254
  br i1 %i.chf, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %._crit_edge2081
  %i.chg = add nsw i64 %.0.i69.lcssa, -255
  %i.chh = getelementptr inbounds nuw i8, ptr %.20.lcssa, i64 1
  store i8 -1, ptr %.20.lcssa, align 1, !tbaa !16
  br label %bb.qa

bb.qa:                                            ; preds = %bb.pz, %._crit_edge2081
  %.21 = phi ptr [ %i.chh, %bb.pz ], [ %.20.lcssa, %._crit_edge2081 ] ; 2 uses
  %.1.i70 = phi i64 [ %i.chg, %bb.pz ], [ %.0.i69.lcssa, %._crit_edge2081 ]
  %i.chi = trunc nuw i64 %.1.i70 to i8
  %i.chj = getelementptr inbounds nuw i8, ptr %.21, i64 1
  store i8 %i.chi, ptr %.21, align 1, !tbaa !16
  br label %.outer1508.backedge

bb.qb:                                            ; preds = %bb.px
  %i.chk = trunc nuw nsw i64 %i.cgn to i8
  %i.chl = load i8, ptr %.25, align 1, !tbaa !16
  %i.chm = add i8 %i.chl, %i.chk
  store i8 %i.chm, ptr %.25, align 1, !tbaa !16
  br label %.outer1508.backedge

bb.qc:                                            ; preds = %bb.ph
  %i.chn = icmp ult ptr %.3341.i, %i.cmo
  br i1 %i.chn, label %bb.qd, label %bb.qr

bb.qd:                                            ; preds = %bb.qc
  %.not365.i = icmp ult ptr %.3341.i, %i.cmn
  %.sroa.090.sroa.0.0.extract.trunc130.i = trunc nuw i64 %.sroa.051.sroa.0.0.i to i32 ; 2 uses
  br i1 %.not365.i, label %bb.lh, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.cho = icmp ult ptr %.5.i, %i.cmn
  br i1 %i.cho, label %bb.qf, label %bb.qg

bb.qf:                                            ; preds = %bb.qe
  %i.chp = ptrtoint ptr %i.cmn to i64
  %i.chq = ptrtoint ptr %.5.i to i64
  %i.chr = sub i64 %i.chp, %i.chq                 ; 2 uses
  %i.chs = trunc i64 %i.chr to i32
  %sext.i = shl i64 %i.chr, 32
  %i.cht = ashr exact i64 %sext.i, 32
  %i.chu = getelementptr inbounds i8, ptr %.5.i, i64 %i.cht
  %i.chv = sub nsw i32 %.sroa.090.sroa.12.3.i, %i.chs ; 2 uses
  %i.chw = icmp slt i32 %i.chv, 4                 ; 3 uses
  %.sroa.090.sroa.12.4.i = select i1 %i.chw, i32 %.sroa.051.sroa.8.0.i, i32 %i.chv
  %.sroa.090.sroa.0.2.i = select i1 %i.chw, i32 %.sroa.090.sroa.0.0.extract.trunc130.i, i32 %.sroa.090.sroa.0.1.i
  %.6.i = select i1 %i.chw, ptr %.3341.i, ptr %i.chu
  br label %bb.qg

bb.qg:                                            ; preds = %bb.qf, %bb.qe
  %.sroa.090.sroa.12.5.i = phi i32 [ %.sroa.090.sroa.12.4.i, %bb.qf ], [ %.sroa.090.sroa.12.3.i, %bb.qe ]
  %.sroa.090.sroa.0.3.i = phi i32 [ %.sroa.090.sroa.0.2.i, %bb.qf ], [ %.sroa.090.sroa.0.1.i, %bb.qe ]
  %.7.i = phi ptr [ %.6.i, %bb.qf ], [ %.5.i, %bb.qe ] ; 2 uses
  %i.chx = getelementptr i8, ptr %.5.ph, i64 1    ; 4 uses
  %i.chy = ptrtoint ptr %.41084.ph to i64         ; 3 uses
  %i.chz = sub i64 %i.cmj, %i.chy                 ; 6 uses
  %i.cia = udiv i64 %i.chz, 255
  %i.cib = getelementptr inbounds nuw i8, ptr %i.chx, i64 %i.cia
  %i.cic = getelementptr inbounds nuw i8, ptr %i.cib, i64 %i.chz
  %i.cid = getelementptr inbounds nuw i8, ptr %i.cic, i64 8
  %i.cie = icmp ugt ptr %i.cid, %spec.select.i
  %or.cond.i44 = select i1 %.not.i49, i1 %i.cie, i1 false
  br i1 %or.cond.i44, label %LZ4HC_encodeSequence.exit, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %i.cif = icmp ugt i64 %i.chz, 14
  br i1 %i.cif, label %bb.qi, label %bb.qj

bb.qi:                                            ; preds = %bb.qh
  %i.cig = add i64 %i.chz, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph, align 1, !tbaa !16
  %i.cih = icmp ugt i64 %i.cig, 254
  br i1 %i.cih, label %.lr.ph2031.preheader, label %._crit_edge2032

.lr.ph2031.preheader:                             ; preds = %bb.qi
  %reass.sub3258 = sub i64 %i.cmj, %i.chy
  %i.cii = add i64 %reass.sub3258, -270           ; 2 uses
  %i.cij = udiv i64 %i.cii, 255                   ; 3 uses
  %i.cik = add nuw nsw i64 %i.cij, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.chx, i8 -1, i64 %i.cik, i1 false), !tbaa !16
  %scevgep2651 = getelementptr i8, ptr %.5.ph, i64 2
  %scevgep2655 = getelementptr i8, ptr %scevgep2651, i64 %i.cij
  %.neg3259 = mul i64 %i.cij, -255
  %i.cil = add i64 %.neg3259, %i.cii
  br label %._crit_edge2032

._crit_edge2032:                                  ; preds = %.lr.ph2031.preheader, %bb.qi
  %.10.lcssa = phi ptr [ %i.chx, %bb.qi ], [ %scevgep2655, %.lr.ph2031.preheader ] ; 2 uses
  %.053.i.lcssa = phi i64 [ %i.cig, %bb.qi ], [ %i.cil, %.lr.ph2031.preheader ]
  %i.cim = trunc nuw i64 %.053.i.lcssa to i8
  %i.cin = getelementptr inbounds nuw i8, ptr %.10.lcssa, i64 1
  store i8 %i.cim, ptr %.10.lcssa, align 1, !tbaa !16
  br label %.critedge.i45

bb.qj:                                            ; preds = %bb.qh
  %.tr.i = trunc nuw nsw i64 %i.chz to i8
  %i.cio = shl nuw i8 %.tr.i, 4
  store i8 %i.cio, ptr %.5.ph, align 1, !tbaa !16
  br label %.critedge.i45

.critedge.i45:                                    ; preds = %bb.qj, %._crit_edge2032
  %.6 = phi ptr [ %i.cin, %._crit_edge2032 ], [ %i.chx, %bb.qj ] ; 3 uses
  %i.cip = getelementptr inbounds nuw i8, ptr %.6, i64 %i.chz ; 3 uses
  br label %bb.qk

bb.qk:                                            ; preds = %bb.qk, %.critedge.i45
  %.09.i119 = phi ptr [ %.6, %.critedge.i45 ], [ %i.cir, %bb.qk ] ; 2 uses
  %.0.i120 = phi ptr [ %.41084.ph, %.critedge.i45 ], [ %i.cis, %bb.qk ] ; 2 uses
  %i.ciq = load i64, ptr %.0.i120, align 1
  store i64 %i.ciq, ptr %.09.i119, align 1
  %i.cir = getelementptr inbounds nuw i8, ptr %.09.i119, i64 8 ; 2 uses
  %i.cis = getelementptr inbounds nuw i8, ptr %.0.i120, i64 8
  %i.cit = icmp ult ptr %i.cir, %i.cip
  br i1 %i.cit, label %bb.qk, label %LZ4_wildCopy8.exit121, !llvm.loop !44

LZ4_wildCopy8.exit121:                            ; preds = %bb.qk
  %i.ciu = trunc i32 %.sroa.0162.sroa.0.2.i.ph to i16
  store i16 %i.ciu, ptr %i.cip, align 1, !tbaa !36
  %i.civ = getelementptr i8, ptr %i.cip, i64 2    ; 4 uses
  %i.ciw = add nsw i64 %i.cmm, -4                 ; 3 uses
  %i.cix = udiv i64 %i.ciw, 255
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.civ, i64 %i.cix
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.ciy, i64 6
  %i.cja = icmp ugt ptr %i.ciz, %spec.select.i
  %or.cond70.i = select i1 %.not.i49, i1 %i.cja, i1 false
  br i1 %or.cond70.i, label %LZ4HC_encodeSequence.exit, label %bb.ql

bb.ql:                                            ; preds = %LZ4_wildCopy8.exit121
  %i.cjb = icmp ugt i64 %i.ciw, 14
  br i1 %i.cjb, label %bb.qm, label %bb.qp

bb.qm:                                            ; preds = %bb.ql
  %i.cjc = load i8, ptr %.5.ph, align 1, !tbaa !16
  %i.cjd = add i8 %i.cjc, 15
  store i8 %i.cjd, ptr %.5.ph, align 1, !tbaa !16
  %i.cje = add nsw i64 %i.cmm, -19                ; 2 uses
  %i.cjf = icmp ugt i64 %i.cje, 509
  br i1 %i.cjf, label %.lr.ph2038.preheader, label %._crit_edge2039

.lr.ph2038.preheader:                             ; preds = %bb.qm
  %i.cjg = add nsw i64 %i.cmm, -529               ; 2 uses
  %i.cjh = udiv i64 %i.cjg, 510                   ; 2 uses
  %i.cji = shl nuw nsw i64 %i.cjh, 1              ; 2 uses
  %i.cjj = add nuw nsw i64 %i.cji, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.civ, i8 -1, i64 %i.cjj, i1 false), !tbaa !16
  %scevgep2659 = getelementptr i8, ptr %.6, i64 4
  %i.cjk = sub i64 0, %i.chy
  %scevgep2660 = getelementptr i8, ptr %scevgep2659, i64 %i.cjk
  %i.cjl = getelementptr i8, ptr %scevgep2660, i64 %i.cji
  %scevgep2664 = getelementptr i8, ptr %i.cjl, i64 %i.cmj
  %.neg3260 = mul i64 %i.cjh, -510
  %i.cjm = add i64 %.neg3260, %i.cjg
  br label %._crit_edge2039

._crit_edge2039:                                  ; preds = %.lr.ph2038.preheader, %bb.qm
  %.8.lcssa = phi ptr [ %i.civ, %bb.qm ], [ %scevgep2664, %.lr.ph2038.preheader ] ; 3 uses
  %.0.i47.lcssa = phi i64 [ %i.cje, %bb.qm ], [ %i.cjm, %.lr.ph2038.preheader ] ; 3 uses
  %i.cjn = icmp samesign ugt i64 %.0.i47.lcssa, 254
  br i1 %i.cjn, label %bb.qn, label %bb.qo

bb.qn:                                            ; preds = %._crit_edge2039
  %i.cjo = add nsw i64 %.0.i47.lcssa, -255
  %i.cjp = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 1
  store i8 -1, ptr %.8.lcssa, align 1, !tbaa !16
  br label %bb.qo

bb.qo:                                            ; preds = %bb.qn, %._crit_edge2039
  %.9 = phi ptr [ %i.cjp, %bb.qn ], [ %.8.lcssa, %._crit_edge2039 ] ; 2 uses
  %.1.i48 = phi i64 [ %i.cjo, %bb.qn ], [ %.0.i47.lcssa, %._crit_edge2039 ]
  %i.cjq = trunc nuw i64 %.1.i48 to i8
  %i.cjr = getelementptr inbounds nuw i8, ptr %.9, i64 1
  store i8 %i.cjq, ptr %.9, align 1, !tbaa !16
  br label %bb.qq

bb.qp:                                            ; preds = %bb.ql
  %i.cjs = trunc nuw nsw i64 %i.ciw to i8
  %i.cjt = load i8, ptr %.5.ph, align 1, !tbaa !16
  %i.cju = add i8 %i.cjt, %i.cjs
  store i8 %i.cju, ptr %.5.ph, align 1, !tbaa !16
  br label %bb.qq

bb.qq:                                            ; preds = %bb.qp, %bb.qo
  %.11.ph = phi ptr [ %i.civ, %bb.qp ], [ %i.cjr, %bb.qo ]
  %.sroa.090.sroa.12.0.insert.ext154.i = zext i32 %.sroa.090.sroa.12.5.i to i64
  %.sroa.090.sroa.12.0.insert.shift155.i = shl nuw i64 %.sroa.090.sroa.12.0.insert.ext154.i, 32
  %.sroa.090.sroa.0.0.insert.ext136.i = zext i32 %.sroa.090.sroa.0.3.i to i64
  %.sroa.090.sroa.0.0.insert.insert138.i = or disjoint i64 %.sroa.090.sroa.12.0.insert.shift155.i, %.sroa.090.sroa.0.0.insert.ext136.i
  br label %.outer1505

.outer1505:                                       ; preds = %.preheader1503, %bb.qq
  %.11091.ph = phi ptr [ %.010901836, %.preheader1503 ], [ %.3341.i, %bb.qq ]
  %.11081.ph = phi ptr [ %.01080.ph2118, %.preheader1503 ], [ %i.cmn, %bb.qq ] ; 6 uses
  %.1.ph = phi ptr [ %.01079.ph2119, %.preheader1503 ], [ %.11.ph, %bb.qq ] ; 11 uses
  %.sroa.0232.0.i.ph = phi i64 [ %.sroa.0312.0.insert.insert.i.le, %.preheader1503 ], [ %.sroa.090.sroa.0.0.insert.insert138.i, %bb.qq ] ; 3 uses
  %.sroa.0162.sroa.14.0.i.ph = phi i32 [ %.22.i, %.preheader1503 ], [ %.sroa.051.sroa.8.0.i, %bb.qq ]
  %.sroa.0162.sroa.0.0.in.i.ph = phi i64 [ %.sroa.0312.0.insert.insert.i.le, %.preheader1503 ], [ %.sroa.051.sroa.0.0.i, %bb.qq ]
  %.1339.i.ph = phi ptr [ %.0338.i.ph2120, %.preheader1503 ], [ %.3341.i, %bb.qq ] ; 3 uses
  %.1337.i.ph = phi ptr [ %.0336.i.ph2121, %.preheader1503 ], [ %.7.i, %bb.qq ]
  %.0335.i.ph = phi ptr [ %.010901836, %.preheader1503 ], [ %.7.i, %bb.qq ] ; 2 uses
  %i.cjv = ashr i64 %.sroa.0232.0.i.ph, 32
  br label %bb.gx

bb.qr:                                            ; preds = %bb.qc
  %i.cjw = icmp ult ptr %.5.i, %i.cmn
  br i1 %i.cjw, label %bb.qs, label %bb.qv

bb.qs:                                            ; preds = %bb.qr
  %i.cjx = ptrtoint ptr %.5.i to i64              ; 2 uses
  %i.cjy = sub i64 %i.cjx, %i.cmj                 ; 3 uses
  %i.cjz = icmp slt i64 %i.cjy, 18
  br i1 %i.cjz, label %bb.qt, label %bb.qu

bb.qt:                                            ; preds = %bb.qs
  %i.cka = getelementptr inbounds i8, ptr %i.biz, i64 -4
  %i.ckb = icmp ugt ptr %i.cml, %i.cka
  %i.ckc = trunc i64 %i.cjy to i32
  %i.ckd = add i32 %.sroa.090.sroa.12.3.i, -4
  %i.cke = add i32 %i.ckd, %i.ckc
  %.sroa.0162.sroa.14.5.i = select i1 %i.ckb, i32 %i.cke, i32 %spec.store.select.i ; 2 uses
  %.neg362.i = sub i64 %i.cmj, %i.cjx
  %.neg363.i = trunc i64 %.neg362.i to i32
  %i.ckf = add i32 %.sroa.0162.sroa.14.5.i, %.neg363.i
  %i.ckg = tail call i32 @llvm.smax.i32(i32 %i.ckf, i32 0) ; 2 uses
  %.sroa.090.sroa.12.6.i = sub nsw i32 %.sroa.090.sroa.12.3.i, %i.ckg
  %.8.i.idx = zext nneg i32 %i.ckg to i64
  %.8.i = getelementptr inbounds nuw i8, ptr %.5.i, i64 %.8.i.idx
  br label %bb.qv

bb.qu:                                            ; preds = %bb.qs
  %i.ckh = trunc i64 %i.cjy to i32
  br label %bb.qv

bb.qv:                                            ; preds = %bb.qu, %bb.qt, %bb.qr
  %.sroa.0162.sroa.14.6.i = phi i32 [ %.sroa.0162.sroa.14.5.i, %bb.qt ], [ %i.ckh, %bb.qu ], [ %.sroa.0162.sroa.14.2.i.ph, %bb.qr ] ; 3 uses
  %.sroa.090.sroa.12.7.i = phi i32 [ %.sroa.090.sroa.12.6.i, %bb.qt ], [ %.sroa.090.sroa.12.3.i, %bb.qu ], [ %.sroa.090.sroa.12.3.i, %bb.qr ]
  %.9.i = phi ptr [ %.8.i, %bb.qt ], [ %.5.i, %bb.qu ], [ %.5.i, %bb.qr ]
  %i.cki = getelementptr i8, ptr %.5.ph, i64 1    ; 4 uses
  %i.ckj = ptrtoint ptr %.41084.ph to i64         ; 3 uses
  %i.ckk = sub i64 %i.cmj, %i.ckj                 ; 6 uses
  %i.ckl = udiv i64 %i.ckk, 255
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.cki, i64 %i.ckl
  %i.ckn = getelementptr inbounds nuw i8, ptr %i.ckm, i64 %i.ckk
  %i.cko = getelementptr inbounds nuw i8, ptr %i.ckn, i64 8
  %i.ckp = icmp ugt ptr %i.cko, %spec.select.i
  %or.cond.i51 = select i1 %.not.i49, i1 %i.ckp, i1 false
  br i1 %or.cond.i51, label %LZ4HC_encodeSequence.exit, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.ckq = icmp ugt i64 %i.ckk, 14
  br i1 %i.ckq, label %bb.qx, label %bb.qy

bb.qx:                                            ; preds = %bb.qw
  %i.ckr = add i64 %i.ckk, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph, align 1, !tbaa !16
  %i.cks = icmp ugt i64 %i.ckr, 254
  br i1 %i.cks, label %.lr.ph2017.preheader, label %._crit_edge2018

.lr.ph2017.preheader:                             ; preds = %bb.qx
  %i.ckt = add i64 %i.cmj, -270
  %i.cku = sub i64 %i.ckt, %i.ckj                 ; 2 uses
  %i.ckv = udiv i64 %i.cku, 255                   ; 3 uses
  %i.ckw = add nuw nsw i64 %i.ckv, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cki, i8 -1, i64 %i.ckw, i1 false), !tbaa !16
  %scevgep = getelementptr i8, ptr %.5.ph, i64 2
  %scevgep2642 = getelementptr i8, ptr %scevgep, i64 %i.ckv
  %.neg3256 = mul i64 %i.ckv, -255
  %i.ckx = add i64 %.neg3256, %i.cku
  br label %._crit_edge2018

._crit_edge2018:                                  ; preds = %.lr.ph2017.preheader, %bb.qx
  %.16.lcssa = phi ptr [ %i.cki, %bb.qx ], [ %scevgep2642, %.lr.ph2017.preheader ] ; 2 uses
  %.053.i59.lcssa = phi i64 [ %i.ckr, %bb.qx ], [ %i.ckx, %.lr.ph2017.preheader ]
  %i.cky = trunc nuw i64 %.053.i59.lcssa to i8
  %i.ckz = getelementptr inbounds nuw i8, ptr %.16.lcssa, i64 1
  store i8 %i.cky, ptr %.16.lcssa, align 1, !tbaa !16
  br label %.critedge.i53

bb.qy:                                            ; preds = %bb.qw
  %.tr.i52 = trunc nuw nsw i64 %i.ckk to i8
  %i.cla = shl nuw i8 %.tr.i52, 4
  store i8 %i.cla, ptr %.5.ph, align 1, !tbaa !16
  br label %.critedge.i53

.critedge.i53:                                    ; preds = %bb.qy, %._crit_edge2018
  %.12 = phi ptr [ %i.ckz, %._crit_edge2018 ], [ %i.cki, %bb.qy ] ; 3 uses
  %i.clb = getelementptr inbounds nuw i8, ptr %.12, i64 %i.ckk ; 3 uses
  br label %bb.qz

bb.qz:                                            ; preds = %bb.qz, %.critedge.i53
  %.09.i116 = phi ptr [ %.12, %.critedge.i53 ], [ %i.cld, %bb.qz ] ; 2 uses
  %.0.i117 = phi ptr [ %.41084.ph, %.critedge.i53 ], [ %i.cle, %bb.qz ] ; 2 uses
  %i.clc = load i64, ptr %.0.i117, align 1
  store i64 %i.clc, ptr %.09.i116, align 1
  %i.cld = getelementptr inbounds nuw i8, ptr %.09.i116, i64 8 ; 2 uses
  %i.cle = getelementptr inbounds nuw i8, ptr %.0.i117, i64 8
  %i.clf = icmp ult ptr %i.cld, %i.clb
  br i1 %i.clf, label %bb.qz, label %LZ4_wildCopy8.exit118, !llvm.loop !44

LZ4_wildCopy8.exit118:                            ; preds = %bb.qz
  %i.clg = trunc i32 %.sroa.0162.sroa.0.2.i.ph to i16
  store i16 %i.clg, ptr %i.clb, align 1, !tbaa !36
  %i.clh = getelementptr i8, ptr %i.clb, i64 2    ; 4 uses
  %i.cli = sext i32 %.sroa.0162.sroa.14.6.i to i64 ; 4 uses
  %i.clj = add nsw i64 %i.cli, -4                 ; 3 uses
  %i.clk = udiv i64 %i.clj, 255
  %i.cll = getelementptr inbounds nuw i8, ptr %i.clh, i64 %i.clk
  %i.clm = getelementptr inbounds nuw i8, ptr %i.cll, i64 6
  %i.cln = icmp ugt ptr %i.clm, %spec.select.i
  %or.cond70.i55 = select i1 %.not.i49, i1 %i.cln, i1 false
  br i1 %or.cond70.i55, label %LZ4HC_encodeSequence.exit, label %bb.ra

bb.ra:                                            ; preds = %LZ4_wildCopy8.exit118
  %i.clo = icmp ugt i64 %i.clj, 14
  br i1 %i.clo, label %bb.rb, label %bb.re

bb.rb:                                            ; preds = %bb.ra
  %i.clp = load i8, ptr %.5.ph, align 1, !tbaa !16
  %i.clq = add i8 %i.clp, 15
  store i8 %i.clq, ptr %.5.ph, align 1, !tbaa !16
  %i.clr = add nsw i64 %i.cli, -19                ; 2 uses
  %i.cls = icmp ugt i64 %i.clr, 509
  br i1 %i.cls, label %.lr.ph2024.preheader, label %._crit_edge2025

.lr.ph2024.preheader:                             ; preds = %bb.rb
  %i.clt = add nsw i64 %i.cli, -529               ; 2 uses
  %i.clu = udiv i64 %i.clt, 510                   ; 2 uses
  %i.clv = shl nuw nsw i64 %i.clu, 1              ; 2 uses
  %i.clw = add nuw nsw i64 %i.clv, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.clh, i8 -1, i64 %i.clw, i1 false), !tbaa !16
  %scevgep2643 = getelementptr i8, ptr %.12, i64 4
  %i.clx = add i64 %i.clv, %i.cmj
  %i.cly = sub i64 %i.clx, %i.ckj
  %scevgep2644 = getelementptr i8, ptr %scevgep2643, i64 %i.cly
  %.neg3257 = mul i64 %i.clu, -510
  %i.clz = add i64 %.neg3257, %i.clt
  br label %._crit_edge2025

._crit_edge2025:                                  ; preds = %.lr.ph2024.preheader, %bb.rb
  %.14.lcssa = phi ptr [ %i.clh, %bb.rb ], [ %scevgep2644, %.lr.ph2024.preheader ] ; 3 uses
  %.0.i57.lcssa = phi i64 [ %i.clr, %bb.rb ], [ %i.clz, %.lr.ph2024.preheader ] ; 3 uses
  %i.cma = icmp samesign ugt i64 %.0.i57.lcssa, 254
  br i1 %i.cma, label %bb.rc, label %bb.rd

bb.rc:                                            ; preds = %._crit_edge2025
  %i.cmb = add nsw i64 %.0.i57.lcssa, -255
  %i.cmc = getelementptr inbounds nuw i8, ptr %.14.lcssa, i64 1
  store i8 -1, ptr %.14.lcssa, align 1, !tbaa !16
  br label %bb.rd

bb.rd:                                            ; preds = %bb.rc, %._crit_edge2025
  %.15 = phi ptr [ %i.cmc, %bb.rc ], [ %.14.lcssa, %._crit_edge2025 ] ; 2 uses
  %.1.i58 = phi i64 [ %i.cmb, %bb.rc ], [ %.0.i57.lcssa, %._crit_edge2025 ]
  %i.cmd = trunc nuw i64 %.1.i58 to i8
  %i.cme = getelementptr inbounds nuw i8, ptr %.15, i64 1
  store i8 %i.cmd, ptr %.15, align 1, !tbaa !16
  br label %bb.rf

bb.re:                                            ; preds = %bb.ra
  %i.cmf = trunc nuw nsw i64 %i.clj to i8
  %i.cmg = load i8, ptr %.5.ph, align 1, !tbaa !16
  %i.cmh = add i8 %i.cmg, %i.cmf
  store i8 %i.cmh, ptr %.5.ph, align 1, !tbaa !16
  br label %bb.rf

bb.rf:                                            ; preds = %bb.re, %bb.rd
  %.13 = phi ptr [ %i.cme, %bb.rd ], [ %i.clh, %bb.re ]
  %i.cmi = getelementptr inbounds i8, ptr %.41094.ph, i64 %i.cli
  %.sroa.090.sroa.0.0.extract.trunc131.i = trunc nuw i64 %.sroa.051.sroa.0.0.i to i32
  br label %.outer

.outer:                                           ; preds = %.preheader1502, %bb.rf
  %.41094.ph = phi ptr [ %.31093, %.preheader1502 ], [ %.9.i, %bb.rf ] ; 11 uses
  %.41084.ph = phi ptr [ %.11081.ph, %.preheader1502 ], [ %i.cmi, %bb.rf ] ; 12 uses
  %.5.ph = phi ptr [ %.1.ph, %.preheader1502 ], [ %.13, %bb.rf ] ; 30 uses
  %.sroa.0162.sroa.14.2.i.ph = phi i32 [ %.sroa.0162.sroa.14.1.i.le, %.preheader1502 ], [ %.sroa.090.sroa.12.7.i, %bb.rf ] ; 6 uses
  %.sroa.0162.sroa.0.2.i.ph = phi i32 [ %.sroa.0162.sroa.0.1.i.le, %.preheader1502 ], [ %.sroa.090.sroa.0.1.i, %bb.rf ] ; 9 uses
  %.sroa.090.sroa.12.1.i.ph = phi i32 [ %.sroa.090.sroa.12.0.i, %.preheader1502 ], [ %.sroa.051.sroa.8.0.i, %bb.rf ]
  %.sroa.090.sroa.0.1.i.ph = phi i32 [ %.sroa.090.sroa.0.0.i, %.preheader1502 ], [ %.sroa.090.sroa.0.0.extract.trunc131.i, %bb.rf ]
  %.2340.i.ph = phi ptr [ %.1339.i.ph, %.preheader1502 ], [ %.3341.i, %bb.rf ]
  %.3.i.ph = phi ptr [ %.2.i, %.preheader1502 ], [ %.3341.i, %bb.rf ]
  %i.cmj = ptrtoint ptr %.41094.ph to i64         ; 15 uses
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %.sroa.0162.sroa.14.2.i.ph, i32 18) ; 3 uses
  %i.cmk = sext i32 %spec.store.select.i to i64
  %i.cml = getelementptr inbounds i8, ptr %.41094.ph, i64 %i.cmk ; 2 uses
  %i.cmm = sext i32 %.sroa.0162.sroa.14.2.i.ph to i64 ; 4 uses
  %i.cmn = getelementptr inbounds i8, ptr %.41094.ph, i64 %i.cmm ; 7 uses
  %i.cmo = getelementptr inbounds nuw i8, ptr %i.cmn, i64 3
  br label %bb.lh

.loopexit:                                        ; preds = %.outer1508.backedge, %bb.gw, %LZ4HC_encodeSequence.exit93, %bb.dh
  %.31083 = phi ptr [ %1, %bb.dh ], [ %i.cqv, %LZ4HC_encodeSequence.exit93 ], [ %.01080.ph2118, %bb.gw ], [ %.01090.ph.be, %.outer1508.backedge ] ; 3 uses
  %.2 = phi ptr [ %2, %bb.dh ], [ %.34, %LZ4HC_encodeSequence.exit93 ], [ %.01079.ph2119, %bb.gw ], [ %.01079.ph.be, %.outer1508.backedge ] ; 3 uses
  %i.cmp = ptrtoint ptr %i.tm to i64
  %i.cmq = ptrtoint ptr %.31083 to i64
  %i.cmr = sub i64 %i.cmp, %i.cmq                 ; 3 uses
  %i.cms = add i64 %i.cmr, 240
  %i.cmt = udiv i64 %i.cms, 255
  %spec.select375.i.idx = select i1 %i.tr, i64 5, i64 0
  %spec.select375.i = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %spec.select375.i.idx ; 2 uses
  %.not371.i = icmp ne i32 %6, 0
  %i.cmu = getelementptr i8, ptr %.2, i64 %i.cmt
  %i.cmv = getelementptr i8, ptr %i.cmu, i64 1
  %i.cmw = getelementptr i8, ptr %i.cmv, i64 %i.cmr
  %i.cmx = icmp ugt ptr %i.cmw, %spec.select375.i
  %or.cond1442 = select i1 %.not371.i, i1 %i.cmx, i1 false
  br i1 %or.cond1442, label %bb.rg, label %bb.rh

.thread1384:                                      ; preds = %bb.rk, %bb.rl
  %i.cmy = ptrtoint ptr %i.tm to i64
  %i.cmz = sub i64 %i.cmy, %i.cok                 ; 3 uses
  %i.cna = add i64 %i.cmz, 240
  %i.cnb = udiv i64 %i.cna, 255
  %i.cnc = getelementptr i8, ptr %.0332.i, i64 %i.cnb
  %i.cnd = getelementptr i8, ptr %i.cnc, i64 1
  %i.cne = getelementptr i8, ptr %i.cnd, i64 %i.cmz
  %i.cnf = icmp ugt ptr %i.cne, %i.tq
  br i1 %i.cnf, label %.thread1391, label %bb.rh

bb.rg:                                            ; preds = %.loopexit
  %i.cng = icmp eq i32 %6, 1
  br i1 %i.cng, label %LZ4MID_compress.exit.thread, label %.thread1391

.thread1391:                                      ; preds = %.thread1384, %bb.rg
  %spec.select375.i138313881397 = phi ptr [ %spec.select375.i, %bb.rg ], [ %i.tq, %.thread1384 ]
  %.2138113891396 = phi ptr [ %.2, %bb.rg ], [ %.0332.i, %.thread1384 ] ; 2 uses
  %.31083137913901395 = phi ptr [ %.31083, %bb.rg ], [ %.21082, %.thread1384 ]
  %i.cnh = ptrtoint ptr %spec.select375.i138313881397 to i64
  %i.cni = ptrtoint ptr %.2138113891396 to i64
  %i.cnj = xor i64 %i.cni, -1
  %i.cnk = add i64 %i.cnj, %i.cnh                 ; 2 uses
  %i.cnl = add i64 %i.cnk, 241
  %i.cnm = lshr i64 %i.cnl, 8
  %i.cnn = sub i64 %i.cnk, %i.cnm
  br label %bb.rh

bb.rh:                                            ; preds = %.thread1384, %.thread1391, %.loopexit
  %.21382 = phi ptr [ %.2138113891396, %.thread1391 ], [ %.0332.i, %.thread1384 ], [ %.2, %.loopexit ] ; 6 uses
  %.310831380 = phi ptr [ %.31083137913901395, %.thread1391 ], [ %.21082, %.thread1384 ], [ %.31083, %.loopexit ] ; 2 uses
  %.0329.i = phi i64 [ %i.cnn, %.thread1391 ], [ %i.cmz, %.thread1384 ], [ %i.cmr, %.loopexit ] ; 7 uses
  %i.cno = getelementptr inbounds nuw i8, ptr %.310831380, i64 %.0329.i
  %i.cnp = icmp ugt i64 %.0329.i, 14
  %.42138 = getelementptr i8, ptr %.21382, i64 1  ; 3 uses
  br i1 %i.cnp, label %bb.ri, label %bb.rj

bb.ri:                                            ; preds = %bb.rh
  %i.cnq = add i64 %.0329.i, -15                  ; 2 uses
  store i8 -16, ptr %.21382, align 1, !tbaa !16
  %i.cnr = icmp ugt i64 %i.cnq, 254
  br i1 %i.cnr, label %.lr.ph2142.preheader, label %._crit_edge2143

.lr.ph2142.preheader:                             ; preds = %bb.ri
  %i.cns = add i64 %.0329.i, -270                 ; 2 uses
  %i.cnt = udiv i64 %i.cns, 255                   ; 3 uses
  %i.cnu = add nuw nsw i64 %i.cnt, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.42138, i8 -1, i64 %i.cnu, i1 false), !tbaa !16
  %scevgep2721 = getelementptr i8, ptr %.21382, i64 %i.cnu
  %.neg3263 = mul i64 %i.cnt, -255
  %i.cnv = add i64 %.neg3263, %i.cns
  %i.cnw = getelementptr i8, ptr %.21382, i64 %i.cnt
  %scevgep2722 = getelementptr i8, ptr %i.cnw, i64 2
  br label %._crit_edge2143

._crit_edge2143:                                  ; preds = %.lr.ph2142.preheader, %bb.ri
  %.21382.pn.lcssa = phi ptr [ %.21382, %bb.ri ], [ %scevgep2721, %.lr.ph2142.preheader ]
  %.0.i.lcssa = phi i64 [ %i.cnq, %bb.ri ], [ %i.cnv, %.lr.ph2142.preheader ]
  %.4.lcssa = phi ptr [ %.42138, %bb.ri ], [ %scevgep2722, %.lr.ph2142.preheader ]
  %i.cnx = trunc nuw i64 %.0.i.lcssa to i8
  %i.cny = getelementptr inbounds nuw i8, ptr %.21382.pn.lcssa, i64 2
  store i8 %i.cnx, ptr %.4.lcssa, align 1, !tbaa !16
  br label %.critedge.i

bb.rj:                                            ; preds = %bb.rh
  %.0329.tr.i = trunc nuw nsw i64 %.0329.i to i8
  %i.cnz = shl nuw i8 %.0329.tr.i, 4
  store i8 %i.cnz, ptr %.21382, align 1, !tbaa !16
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.rj, %._crit_edge2143
  %.3 = phi ptr [ %i.cny, %._crit_edge2143 ], [ %.42138, %bb.rj ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.3, ptr align 1 %.310831380, i64 %.0329.i, i1 false)
  %i.coa = getelementptr inbounds nuw i8, ptr %.3, i64 %.0329.i
  %i.cob = ptrtoint ptr %i.cno to i64
  %i.coc = ptrtoint ptr %1 to i64
  %i.cod = sub i64 %i.cob, %i.coc
  %i.coe = trunc i64 %i.cod to i32
  store i32 %i.coe, ptr %3, align 4, !tbaa !9
  %i.cof = ptrtoint ptr %i.coa to i64
  %i.cog = ptrtoint ptr %2 to i64
  %i.coh = sub i64 %i.cof, %i.cog
  %i.coi = trunc i64 %i.coh to i32
  br label %LZ4MID_compress.exit

LZ4HC_encodeSequence.exit.loopexit1507.split.loop.exit: ; preds = %LZ4_wildCopy8.exit
  %.sroa.0162.sroa.0.0.i.le1929.le2114 = trunc i64 %.sroa.0162.sroa.0.0.in.i to i32
  br label %LZ4HC_encodeSequence.exit

LZ4HC_encodeSequence.exit.loopexit1507.split.loop.exit2084: ; preds = %bb.kw
  %.sroa.0162.sroa.0.0.i.le1929.le = trunc i64 %.sroa.0162.sroa.0.0.in.i to i32
  br label %LZ4HC_encodeSequence.exit

LZ4HC_encodeSequence.exit:                        ; preds = %bb.pi, %LZ4_wildCopy8.exit112, %LZ4_wildCopy8.exit115, %bb.ps, %LZ4_wildCopy8.exit121, %bb.qg, %LZ4_wildCopy8.exit118, %bb.qv, %LZ4HC_encodeSequence.exit.loopexit1507.split.loop.exit, %LZ4HC_encodeSequence.exit.loopexit1507.split.loop.exit2084
  %.21092 = phi ptr [ %.11091, %LZ4HC_encodeSequence.exit.loopexit1507.split.loop.exit2084 ], [ %.41094.ph, %LZ4_wildCopy8.exit118 ], [ %.11091, %LZ4HC_encodeSequence.exit.loopexit1507.split.loop.exit ], [ %.41094.ph, %LZ4_wildCopy8.exit121 ], [ %.41094.ph, %bb.qv ], [ %.41094.ph, %bb.qg ], [ %.41094.ph, %bb.pi ], [ %.5.i, %bb.ps ], [ %.41094.ph, %LZ4_wildCopy8.exit112 ], [ %.5.i, %LZ4_wildCopy8.exit115 ] ; 2 uses
  %.21082 = phi ptr [ %.11081.ph, %LZ4HC_encodeSequence.exit.loopexit1507.split.loop.exit2084 ], [ %.41084.ph, %LZ4_wildCopy8.exit118 ], [ %.11081.ph, %LZ4HC_encodeSequence.exit.loopexit1507.split.loop.exit ], [ %.41084.ph, %LZ4_wildCopy8.exit121 ], [ %.41084.ph, %bb.qv ], [ %.41084.ph, %bb.qg ], [ %.41084.ph, %bb.pi ], [ %i.cfm, %bb.ps ], [ %.41084.ph, %LZ4_wildCopy8.exit112 ], [ %i.cfm, %LZ4_wildCopy8.exit115 ] ; 4 uses
  %.sroa.0162.sroa.14.7.i = phi i32 [ %.sroa.0162.sroa.14.0.i, %LZ4HC_encodeSequence.exit.loopexit1507.split.loop.exit2084 ], [ %.sroa.0162.sroa.14.6.i, %LZ4_wildCopy8.exit118 ], [ %.sroa.0162.sroa.14.0.i, %LZ4HC_encodeSequence.exit.loopexit1507.split.loop.exit ], [ %.sroa.0162.sroa.14.2.i.ph, %LZ4_wildCopy8.exit121 ], [ %.sroa.0162.sroa.14.6.i, %bb.qv ], [ %.sroa.0162.sroa.14.2.i.ph, %bb.qg ], [ %.sroa.0162.sroa.14.3.i, %bb.pi ], [ %.sroa.090.sroa.12.3.i, %bb.ps ], [ %.sroa.0162.sroa.14.3.i, %LZ4_wildCopy8.exit112 ], [ %.sroa.090.sroa.12.3.i, %LZ4_wildCopy8.exit115 ]
  %.sroa.0162.sroa.0.3.i = phi i32 [ %.sroa.0162.sroa.0.0.i.le1929.le, %LZ4HC_encodeSequence.exit.loopexit1507.split.loop.exit2084 ], [ %.sroa.0162.sroa.0.2.i.ph, %LZ4_wildCopy8.exit118 ], [ %.sroa.0162.sroa.0.0.i.le1929.le2114, %LZ4HC_encodeSequence.exit.loopexit1507.split.loop.exit ], [ %.sroa.0162.sroa.0.2.i.ph, %LZ4_wildCopy8.exit121 ], [ %.sroa.0162.sroa.0.2.i.ph, %bb.qv ], [ %.sroa.0162.sroa.0.2.i.ph, %bb.qg ], [ %.sroa.0162.sroa.0.2.i.ph, %bb.pi ], [ %.sroa.090.sroa.0.1.i, %bb.ps ], [ %.sroa.0162.sroa.0.2.i.ph, %LZ4_wildCopy8.exit112 ], [ %.sroa.090.sroa.0.1.i, %LZ4_wildCopy8.exit115 ]
  %.0332.i = phi ptr [ %.1.ph, %LZ4HC_encodeSequence.exit.loopexit1507.split.loop.exit2084 ], [ %.5.ph, %LZ4_wildCopy8.exit118 ], [ %.1.ph, %LZ4HC_encodeSequence.exit.loopexit1507.split.loop.exit ], [ %.5.ph, %LZ4_wildCopy8.exit121 ], [ %.5.ph, %bb.qv ], [ %.5.ph, %bb.qg ], [ %.5.ph, %bb.pi ], [ %.25, %bb.ps ], [ %.5.ph, %LZ4_wildCopy8.exit112 ], [ %.25, %LZ4_wildCopy8.exit115 ] ; 12 uses
  br i1 %i.tr, label %bb.rk, label %LZ4MID_compress.exit.thread

bb.rk:                                            ; preds = %LZ4HC_encodeSequence.exit
  %i.coj = ptrtoint ptr %.21092 to i64            ; 3 uses
  %i.cok = ptrtoint ptr %.21082 to i64            ; 4 uses
  %i.col = sub i64 %i.coj, %i.cok                 ; 6 uses
  %i.com = add i64 %i.col, 240
  %i.con = udiv i64 %i.com, 255
  %i.coo = getelementptr inbounds i8, ptr %i.tq, i64 -8 ; 2 uses
  %i.cop = getelementptr i8, ptr %.0332.i, i64 %i.con
  %i.coq = getelementptr i8, ptr %i.cop, i64 1
  %i.cor = getelementptr i8, ptr %i.coq, i64 %i.col ; 3 uses
  %.not370.i = icmp ugt ptr %i.cor, %i.coo
  br i1 %.not370.i, label %.thread1384, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.cos = ptrtoint ptr %i.coo to i64
  %i.cot = ptrtoint ptr %i.cor to i64
  %i.cou = sub i64 %i.cos, %i.cot
  %i.cov = mul i64 %i.cou, 255
  %i.cow = add i64 %i.cov, 18
  %i.cox = sext i32 %.sroa.0162.sroa.14.7.i to i64
  %spec.select376.i1464 = tail call i64 @llvm.umin.i64(i64 %i.cow, i64 %i.cox)
  %i.coy = getelementptr inbounds nuw i8, ptr %i.cor, i64 2
  %i.coz = ptrtoint ptr %i.tq to i64
  %i.cpa = ptrtoint ptr %i.coy to i64
  %sext = shl i64 %spec.select376.i1464, 32
  %i.cpb = ashr exact i64 %sext, 32               ; 5 uses
  %i.cpc = add i64 %i.cpb, %i.coz
  %i.cpd = sub i64 %i.cpa, %i.cpc
  %i.cpe = icmp slt i64 %i.cpd, -12
  br i1 %i.cpe, label %bb.rm, label %.thread1384

bb.rm:                                            ; preds = %bb.rl
  %i.cpf = getelementptr i8, ptr %.0332.i, i64 1  ; 3 uses
  %i.cpg = icmp ugt i64 %i.col, 14
  br i1 %i.cpg, label %bb.rn, label %bb.ro

bb.rn:                                            ; preds = %bb.rm
  %i.cph = add i64 %i.col, -15                    ; 2 uses
  store i8 -16, ptr %.0332.i, align 1, !tbaa !16
  %i.cpi = icmp ugt i64 %i.cph, 254
  br i1 %i.cpi, label %.lr.ph2127.preheader, label %._crit_edge2128

.lr.ph2127.preheader:                             ; preds = %bb.rn
  %i.cpj = add i64 %i.coj, -270
  %i.cpk = sub i64 %i.cpj, %i.cok                 ; 2 uses
  %i.cpl = udiv i64 %i.cpk, 255                   ; 3 uses
  %i.cpm = add nuw nsw i64 %i.cpl, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cpf, i8 -1, i64 %i.cpm, i1 false), !tbaa !16
  %i.cpn = getelementptr i8, ptr %.0332.i, i64 %i.cpl
  %scevgep2719 = getelementptr i8, ptr %i.cpn, i64 2
  %.neg3261 = mul i64 %i.cpl, -255
  %i.cpo = add i64 %.neg3261, %i.cpk
  br label %._crit_edge2128

._crit_edge2128:                                  ; preds = %.lr.ph2127.preheader, %bb.rn
  %.33.lcssa = phi ptr [ %i.cpf, %bb.rn ], [ %scevgep2719, %.lr.ph2127.preheader ] ; 2 uses
  %.053.i92.lcssa = phi i64 [ %i.cph, %bb.rn ], [ %i.cpo, %.lr.ph2127.preheader ]
  %i.cpp = trunc nuw i64 %.053.i92.lcssa to i8
  %i.cpq = getelementptr inbounds nuw i8, ptr %.33.lcssa, i64 1
  store i8 %i.cpp, ptr %.33.lcssa, align 1, !tbaa !16
  br label %.critedge.i87

bb.ro:                                            ; preds = %bb.rm
  %.tr.i86 = trunc nuw nsw i64 %i.col to i8
  %i.cpr = shl nuw i8 %.tr.i86, 4
  store i8 %i.cpr, ptr %.0332.i, align 1, !tbaa !16
  br label %.critedge.i87

.critedge.i87:                                    ; preds = %bb.ro, %._crit_edge2128
  %.30 = phi ptr [ %i.cpq, %._crit_edge2128 ], [ %i.cpf, %bb.ro ] ; 3 uses
  %i.cps = getelementptr inbounds nuw i8, ptr %.30, i64 %i.col ; 3 uses
  br label %bb.rp

bb.rp:                                            ; preds = %bb.rp, %.critedge.i87
  %.09.i107 = phi ptr [ %.30, %.critedge.i87 ], [ %i.cpu, %bb.rp ] ; 2 uses
  %.0.i108 = phi ptr [ %.21082, %.critedge.i87 ], [ %i.cpv, %bb.rp ] ; 2 uses
  %i.cpt = load i64, ptr %.0.i108, align 1
  store i64 %i.cpt, ptr %.09.i107, align 1
  %i.cpu = getelementptr inbounds nuw i8, ptr %.09.i107, i64 8 ; 2 uses
  %i.cpv = getelementptr inbounds nuw i8, ptr %.0.i108, i64 8
  %i.cpw = icmp ult ptr %i.cpu, %i.cps
  br i1 %i.cpw, label %bb.rp, label %LZ4_wildCopy8.exit109, !llvm.loop !44

LZ4_wildCopy8.exit109:                            ; preds = %bb.rp
  %i.cpx = trunc i32 %.sroa.0162.sroa.0.3.i to i16
  store i16 %i.cpx, ptr %i.cps, align 1, !tbaa !36
  %i.cpy = getelementptr i8, ptr %i.cps, i64 2    ; 3 uses
  %i.cpz = add nsw i64 %i.cpb, -4                 ; 2 uses
  %i.cqa = icmp ugt i64 %i.cpz, 14
  br i1 %i.cqa, label %bb.rq, label %bb.rt

bb.rq:                                            ; preds = %LZ4_wildCopy8.exit109
  %i.cqb = load i8, ptr %.0332.i, align 1, !tbaa !16
  %i.cqc = add i8 %i.cqb, 15
  store i8 %i.cqc, ptr %.0332.i, align 1, !tbaa !16
  %i.cqd = add nsw i64 %i.cpb, -19                ; 2 uses
  %i.cqe = icmp ugt i64 %i.cqd, 509
  br i1 %i.cqe, label %.lr.ph2134.preheader, label %._crit_edge2135

.lr.ph2134.preheader:                             ; preds = %bb.rq
  %i.cqf = add nsw i64 %i.cpb, -529               ; 2 uses
  %i.cqg = udiv i64 %i.cqf, 510                   ; 2 uses
  %i.cqh = shl nuw nsw i64 %i.cqg, 1              ; 2 uses
  %i.cqi = add nuw nsw i64 %i.cqh, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cpy, i8 -1, i64 %i.cqi, i1 false), !tbaa !16
  %i.cqj = add i64 %i.cqh, %i.coj
  %i.cqk = add i64 %i.cqj, 4
  %i.cql = sub i64 %i.cqk, %i.cok
  %scevgep2720 = getelementptr i8, ptr %.30, i64 %i.cql
  %.neg3262 = mul i64 %i.cqg, -510
  %i.cqm = add i64 %.neg3262, %i.cqf
  br label %._crit_edge2135

._crit_edge2135:                                  ; preds = %.lr.ph2134.preheader, %bb.rq
  %.31.lcssa = phi ptr [ %i.cpy, %bb.rq ], [ %scevgep2720, %.lr.ph2134.preheader ] ; 3 uses
  %.0.i90.lcssa = phi i64 [ %i.cqd, %bb.rq ], [ %i.cqm, %.lr.ph2134.preheader ] ; 3 uses
  %i.cqn = icmp samesign ugt i64 %.0.i90.lcssa, 254
  br i1 %i.cqn, label %bb.rr, label %bb.rs

bb.rr:                                            ; preds = %._crit_edge2135
  %i.cqo = add nsw i64 %.0.i90.lcssa, -255
  %i.cqp = getelementptr inbounds nuw i8, ptr %.31.lcssa, i64 1
  store i8 -1, ptr %.31.lcssa, align 1, !tbaa !16
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %._crit_edge2135
  %.32 = phi ptr [ %i.cqp, %bb.rr ], [ %.31.lcssa, %._crit_edge2135 ] ; 2 uses
  %.1.i91 = phi i64 [ %i.cqo, %bb.rr ], [ %.0.i90.lcssa, %._crit_edge2135 ]
  %i.cqq = trunc nuw i64 %.1.i91 to i8
  %i.cqr = getelementptr inbounds nuw i8, ptr %.32, i64 1
  store i8 %i.cqq, ptr %.32, align 1, !tbaa !16
  br label %LZ4HC_encodeSequence.exit93

bb.rt:                                            ; preds = %LZ4_wildCopy8.exit109
  %i.cqs = trunc nuw nsw i64 %i.cpz to i8
  %i.cqt = load i8, ptr %.0332.i, align 1, !tbaa !16
  %i.cqu = add i8 %i.cqt, %i.cqs
  store i8 %i.cqu, ptr %.0332.i, align 1, !tbaa !16
  br label %LZ4HC_encodeSequence.exit93

LZ4HC_encodeSequence.exit93:                      ; preds = %bb.rs, %bb.rt
  %.34 = phi ptr [ %i.cqr, %bb.rs ], [ %i.cpy, %bb.rt ]
  %i.cqv = getelementptr inbounds i8, ptr %.21092, i64 %i.cpb
  br label %.loopexit

bb.ru:                                            ; preds = %bb.d
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.25.0.copyload.i = load i32, ptr %.sroa.25.0..sroa_idx.i, align 4, !tbaa !9
  %.sroa.03.4.extract.shift7 = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.03.4.extract.trunc8 = trunc nuw i64 %.sroa.03.4.extract.shift7 to i32 ; 7 uses
  %i.cqw = icmp slt i32 %5, 12
  %i.cqx = tail call noalias dereferenceable_or_null(65584) ptr @malloc(i64 noundef 65584) #18 ; 31 uses
  %i.cqy = load i32, ptr %3, align 4, !tbaa !9    ; 2 uses
  %i.cqz = sext i32 %i.cqy to i64
  %i.cra = getelementptr inbounds i8, ptr %1, i64 %i.cqz ; 6 uses
  %i.crb = getelementptr inbounds i8, ptr %i.cra, i64 -12 ; 27 uses
  %i.crc = getelementptr inbounds i8, ptr %i.cra, i64 -5 ; 37 uses
  %i.crd = icmp eq ptr %i.cqx, null
  br i1 %i.crd, label %LZ4MID_compress.exit.thread, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.cre = zext nneg i32 %4 to i64
  %i.crf = getelementptr inbounds nuw i8, ptr %2, i64 %i.cre ; 5 uses
  store i32 0, ptr %3, align 4, !tbaa !9
  %i.crg = icmp eq i32 %6, 2                      ; 3 uses
  %spec.select.idx.i912 = select i1 %i.crg, i64 -5, i64 0
  %spec.select.i913 = getelementptr inbounds i8, ptr %i.crf, i64 %spec.select.idx.i912 ; 5 uses
  %i.crh = tail call i32 @llvm.umin.i32(i32 %.sroa.25.0.copyload.i, i32 4095)
  %spec.store.select.i914 = zext nneg i32 %i.crh to i64 ; 2 uses
  %.not1981.i = icmp slt i32 %i.cqy, 12
  br i1 %.not1981.i, label %.loopexit1697.i, label %.lr.ph1986.i

.lr.ph1986.i:                                     ; preds = %bb.rv
  %i.cri = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 21 uses
  %i.crj = getelementptr inbounds nuw i8, ptr %0, i64 262184
  %i.crk = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.crl = getelementptr inbounds nuw i8, ptr %0, i64 262168
  %i.crm = getelementptr inbounds nuw i8, ptr %0, i64 262172
  %i.crn = getelementptr inbounds nuw i8, ptr %0, i64 262160
  %i.cro = getelementptr inbounds nuw i8, ptr %0, i64 262176 ; 6 uses
  %i.crp = getelementptr inbounds i8, ptr %i.cra, i64 -8 ; 6 uses
  %i.crq = getelementptr inbounds i8, ptr %i.cra, i64 -6 ; 6 uses
  %i.crr = ptrtoaddr ptr %i.crc to i64            ; 6 uses
  %i.crs = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.crt = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.cru = icmp ne i32 %7, 0                      ; 3 uses
  %i.crv = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.crw = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.crx = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.cry = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.not.i.i915 = icmp ne i32 %6, 0                ; 4 uses
  %i.crz = getelementptr inbounds nuw i8, ptr %i.cqx, i64 8 ; 2 uses
  %i.csa = getelementptr inbounds nuw i8, ptr %i.cqx, i64 4 ; 2 uses
  %i.csb = getelementptr inbounds nuw i8, ptr %i.cqx, i64 12 ; 2 uses
  %i.csc = getelementptr inbounds nuw i8, ptr %i.cqx, i64 16 ; 2 uses
  %i.csd = getelementptr inbounds nuw i8, ptr %i.cqx, i64 24 ; 2 uses
  %i.cse = getelementptr inbounds nuw i8, ptr %i.cqx, i64 20 ; 2 uses
  %i.csf = getelementptr inbounds nuw i8, ptr %i.cqx, i64 28 ; 2 uses
  %i.csg = getelementptr inbounds nuw i8, ptr %i.cqx, i64 32 ; 2 uses
  %i.csh = getelementptr inbounds nuw i8, ptr %i.cqx, i64 40 ; 2 uses
  %i.csi = getelementptr inbounds nuw i8, ptr %i.cqx, i64 36 ; 2 uses
  %i.csj = getelementptr inbounds nuw i8, ptr %i.cqx, i64 44 ; 2 uses
  %i.csk = getelementptr inbounds nuw i8, ptr %i.cqx, i64 48
  %i.csl = getelementptr inbounds nuw i8, ptr %i.cqx, i64 56
  %i.csm = getelementptr inbounds nuw i8, ptr %i.cqx, i64 52
  %i.csn = getelementptr inbounds nuw i8, ptr %i.cqx, i64 60
  %i.cso = icmp sgt i32 %.sroa.03.4.extract.trunc8, 0 ; 3 uses
  br label %bb.rw

bb.rw:                                            ; preds = %.loopexit1692.i, %.lr.ph1986.i
  %.013011984.i = phi ptr [ %2, %.lr.ph1986.i ], [ %.3.i916, %.loopexit1692.i ] ; 13 uses
  %.013061983.i = phi ptr [ %1, %.lr.ph1986.i ], [ %.31309.i, %.loopexit1692.i ] ; 7 uses
  %.013131982.i = phi ptr [ %1, %.lr.ph1986.i ], [ %.31316.i, %.loopexit1692.i ] ; 17 uses
  %i.csp = ptrtoint ptr %.013131982.i to i64      ; 3 uses
  %i.csq = ptrtoint ptr %.013061983.i to i64
  %i.csr = sub i64 %i.csp, %i.csq                 ; 10 uses
  %i.css = trunc i64 %i.csr to i32                ; 17 uses
  %i.cst = load ptr, ptr %i.crj, align 8, !tbaa !20 ; 11 uses
  %i.csu = load ptr, ptr %i.crk, align 8, !tbaa !18 ; 29 uses
  %i.csv = load i32, ptr %i.crl, align 8, !tbaa !19 ; 34 uses
  %i.csw = ptrtoint ptr %i.csu to i64             ; 7 uses
  %i.csx = sub i64 %i.csp, %i.csw                 ; 2 uses
  %i.csy = trunc i64 %i.csx to i32
  %i.csz = add i32 %i.csv, %i.csy                 ; 10 uses
  %i.cta = load i32, ptr %i.crm, align 4, !tbaa !23 ; 12 uses
  %i.ctb = add i32 %i.cta, 65536                  ; 3 uses
  %i.ctc = icmp ugt i32 %i.ctb, %i.csz            ; 2 uses
  %i.ctd = add i32 %i.csz, -65535
  %i.cte = select i1 %i.ctc, i32 %i.cta, i32 %i.ctd ; 5 uses
  %i.ctf = load ptr, ptr %i.crn, align 8, !tbaa !22 ; 28 uses
  %i.ctg = zext i32 %i.csv to i64                 ; 6 uses
  %i.cth = zext i32 %i.cta to i64
  %i.cti = sub nsw i64 %i.ctg, %i.cth             ; 13 uses
  %.ptr1671.ptr.ptr.i = getelementptr inbounds i8, ptr %i.ctf, i64 %i.cti ; 4 uses
  %.val939.i = load i32, ptr %.013131982.i, align 1, !tbaa !26 ; 18 uses
  %i.ctj = load i32, ptr %i.cro, align 8, !tbaa !21 ; 4 uses
  %i.ctk = icmp ult i32 %i.ctj, %i.csz
  br i1 %i.ctk, label %.lr.ph.i955, label %LZ4HC_Insert.exit.i.i686.i

.lr.ph.i955:                                      ; preds = %bb.rw
  %i.ctl = sub nsw i64 0, %i.ctg
  %invariant.gep.i956 = getelementptr i8, ptr %i.csu, i64 %i.ctl ; 3 uses
  %i.ctm = zext i32 %i.ctj to i64                 ; 6 uses
  %i.ctn = zext i32 %i.csz to i64                 ; 3 uses
  %i.cto = sub nsw i64 %i.ctn, %i.ctm
  %xtraiter4528 = and i64 %i.cto, 1
  %lcmp.mod4529.not = icmp eq i64 %xtraiter4528, 0
  br i1 %lcmp.mod4529.not, label %.prol.loopexit4527, label %.prol.loopexit4527.unr-lcssa

.prol.loopexit4527.unr-lcssa:                     ; preds = %.lr.ph.i955
  %gep.i957.prol = getelementptr i8, ptr %invariant.gep.i956, i64 %i.ctm
  %.val950.i.prol = load i32, ptr %gep.i957.prol, align 1, !tbaa !26
  %i.ctp = mul i32 %.val950.i.prol, -1640531535
  %i.ctq = lshr i32 %i.ctp, 17
  %i.ctr = zext nneg i32 %i.ctq to i64
  %i.cts = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ctr ; 2 uses
  %i.ctt = load i32, ptr %i.cts, align 4, !tbaa !9
  %i.ctu = sub i32 %i.ctj, %i.ctt
  %i.ctv = tail call i32 @llvm.umin.i32(i32 %i.ctu, i32 65535)
  %i.ctw = trunc nuw i32 %i.ctv to i16
  %i.ctx = and i64 %i.ctm, 65535
  %i.cty = getelementptr inbounds nuw [2 x i8], ptr %i.cri, i64 %i.ctx
  store i16 %i.ctw, ptr %i.cty, align 2, !tbaa !27
  store i32 %i.ctj, ptr %i.cts, align 4, !tbaa !9
  %indvars.iv.next.i.prol = add nuw nsw i64 %i.ctm, 1
  br label %.prol.loopexit4527

.prol.loopexit4527:                               ; preds = %.prol.loopexit4527.unr-lcssa, %.lr.ph.i955
  %indvars.iv.i.unr = phi i64 [ %i.ctm, %.lr.ph.i955 ], [ %indvars.iv.next.i.prol, %.prol.loopexit4527.unr-lcssa ]
  %i.ctz = add nsw i64 %i.ctn, -1
  %i.cua = icmp eq i64 %i.ctz, %i.ctm
  br i1 %i.cua, label %LZ4HC_Insert.exit.i.i686.loopexit.i, label %.lr.ph.i955.new

.lr.ph.i955.new:                                  ; preds = %.prol.loopexit4527, %.lr.ph.i955.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i955.new ], [ %indvars.iv.i.unr, %.prol.loopexit4527 ] ; 5 uses
  %gep.i957 = getelementptr i8, ptr %invariant.gep.i956, i64 %indvars.iv.i
  %.val950.i = load i32, ptr %gep.i957, align 1, !tbaa !26
  %i.cub = mul i32 %.val950.i, -1640531535
  %i.cuc = lshr i32 %i.cub, 17
  %i.cud = zext nneg i32 %i.cuc to i64
  %i.cue = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cud ; 2 uses
  %i.cuf = load i32, ptr %i.cue, align 4, !tbaa !9
  %i.cug = trunc nuw i64 %indvars.iv.i to i32     ; 2 uses
  %i.cuh = sub i32 %i.cug, %i.cuf
  %i.cui = tail call i32 @llvm.umin.i32(i32 %i.cuh, i32 65535)
  %i.cuj = trunc nuw i32 %i.cui to i16
  %i.cuk = and i64 %indvars.iv.i, 65535
  %i.cul = getelementptr inbounds nuw [2 x i8], ptr %i.cri, i64 %i.cuk
  store i16 %i.cuj, ptr %i.cul, align 2, !tbaa !27
  store i32 %i.cug, ptr %i.cue, align 4, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %gep.i957.1 = getelementptr i8, ptr %invariant.gep.i956, i64 %indvars.iv.next.i
  %.val950.i.1 = load i32, ptr %gep.i957.1, align 1, !tbaa !26
  %i.cum = mul i32 %.val950.i.1, -1640531535
  %i.cun = lshr i32 %i.cum, 17
  %i.cuo = zext nneg i32 %i.cun to i64
  %i.cup = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cuo ; 2 uses
  %i.cuq = load i32, ptr %i.cup, align 4, !tbaa !9
  %i.cur = trunc nuw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.cus = sub i32 %i.cur, %i.cuq
  %i.cut = tail call i32 @llvm.umin.i32(i32 %i.cus, i32 65535)
  %i.cuu = trunc nuw i32 %i.cut to i16
  %i.cuv = and i64 %indvars.iv.next.i, 65535
  %i.cuw = getelementptr inbounds nuw [2 x i8], ptr %i.cri, i64 %i.cuv
  store i16 %i.cuu, ptr %i.cuw, align 2, !tbaa !27
end_hunk_2
begin_hunk_3_@LZ4HC_compress_generic_internal:bb.a
  %.16397.i.i7221801.i4089 = phi i32 [ %i.dik, %.lr.ph1807.i ], [ %i.dkp, %bb.vj ]
  %.19367.i.i7231802.i4088 = phi i32 [ %.18366.i.i696.i, %.lr.ph1807.i ], [ %.21369.i.i728.i, %bb.vj ] ; 2 uses
  %.0315.i.i7251804.i4087 = phi i32 [ %i.dih, %.lr.ph1807.i ], [ %i.dks, %bb.vj ] ; 3 uses
  %.19.i.i7261805.i4086 = phi i32 [ %.18.i.i698.i, %.lr.ph1807.i ], [ %.21.i.i730.i, %bb.vj ] ; 3 uses
  %i.diq = phi i32 [ %i.dil, %.lr.ph1807.i ], [ %i.dkq, %bb.vj ]
  %i.dir = add nsw i32 %.in4128, -1               ; 2 uses
  %i.dis = zext i32 %.0315.i.i7251804.i4087 to i64 ; 2 uses
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dio, i64 %i.dis ; 3 uses
  %.val938.i = load i32, ptr %i.dit, align 1, !tbaa !26
  %i.diu = icmp eq i32 %.val938.i, %.val939.i
  br i1 %i.diu, label %bb.uw, label %bb.vj

bb.uw:                                            ; preds = %bb.uv
  %i.div = sub i64 %i.dic, %i.dis
  %i.diw = getelementptr inbounds nuw i8, ptr %.013131982.i, i64 %i.div ; 2 uses
  %i.dix = icmp ugt ptr %i.diw, %i.crc
  %spec.select457.i.i731.i = select i1 %i.dix, ptr %i.crc, ptr %i.diw ; 4 uses
  %i.diy = getelementptr inbounds nuw i8, ptr %i.dit, i64 4 ; 2 uses
  %i.diz = getelementptr inbounds i8, ptr %spec.select457.i.i731.i, i64 -7 ; 3 uses
  %i.dja = icmp ult ptr %i.cvd, %i.diz
  br i1 %i.dja, label %bb.ux, label %bb.uz, !prof !32

bb.ux:                                            ; preds = %bb.uw
  %.val972.i = load i64, ptr %i.diy, align 1, !tbaa !31 ; 2 uses
  %.val971.i = load i64, ptr %i.cvd, align 1, !tbaa !31 ; 2 uses
  %.not.i.i.i753.i = icmp eq i64 %.val972.i, %.val971.i
  br i1 %.not.i.i.i753.i, label %.thread1392.i, label %bb.uy

.thread1392.i:                                    ; preds = %bb.ux
  %i.djb = getelementptr inbounds nuw i8, ptr %i.dit, i64 12
  br label %bb.uz

bb.uy:                                            ; preds = %bb.ux
  %i.djc = xor i64 %.val971.i, %.val972.i
  %i.djd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.djc, i1 true)
  %i.dje = trunc nuw nsw i64 %i.djd to i32
  %i.djf = lshr i32 %i.dje, 3
  br label %LZ4_count.exit.i.i743.i

bb.uz:                                            ; preds = %.thread1392.i, %bb.uw
  %.150.i.i.i732.i = phi ptr [ %i.cvf, %.thread1392.i ], [ %i.cvd, %bb.uw ] ; 3 uses
  %.145.i.i.i733.i = phi ptr [ %i.djb, %.thread1392.i ], [ %i.diy, %bb.uw ] ; 2 uses
  %i.djg = icmp ult ptr %.150.i.i.i732.i, %i.diz
  br i1 %i.djg, label %.lr.ph1796.i, label %._crit_edge1797.i, !prof !33

.lr.ph1796.i:                                     ; preds = %bb.uz, %bb.va
  %.246.i.i.i7361794.i = phi ptr [ %i.djp, %bb.va ], [ %.145.i.i.i733.i, %bb.uz ] ; 2 uses
  %.251.i.i.i7351793.i = phi ptr [ %i.djo, %bb.va ], [ %.150.i.i.i732.i, %bb.uz ] ; 3 uses
  %.246.i.i.i736.val974.i = load i64, ptr %.246.i.i.i7361794.i, align 1, !tbaa !31 ; 2 uses
  %.251.i.i.i735.val973.i = load i64, ptr %.251.i.i.i7351793.i, align 1, !tbaa !31 ; 2 uses
  %.not59.i.i.i749.i = icmp eq i64 %.246.i.i.i736.val974.i, %.251.i.i.i735.val973.i
  br i1 %.not59.i.i.i749.i, label %bb.va, label %.thread1396.i

.thread1396.i:                                    ; preds = %.lr.ph1796.i
  %i.djh = xor i64 %.251.i.i.i735.val973.i, %.246.i.i.i736.val974.i
  %i.dji = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.djh, i1 true)
  %i.djj = lshr i64 %i.dji, 3
  %i.djk = getelementptr inbounds nuw i8, ptr %.251.i.i.i7351793.i, i64 %i.djj
  %i.djl = ptrtoint ptr %i.djk to i64
  %i.djm = sub i64 %i.djl, %i.cvg
  %i.djn = trunc i64 %i.djm to i32
  br label %LZ4_count.exit.i.i743.i

bb.va:                                            ; preds = %.lr.ph1796.i
  %i.djo = getelementptr inbounds nuw i8, ptr %.251.i.i.i7351793.i, i64 8 ; 3 uses
  %i.djp = getelementptr inbounds nuw i8, ptr %.246.i.i.i7361794.i, i64 8 ; 2 uses
  %i.djq = icmp ult ptr %i.djo, %i.diz
  br i1 %i.djq, label %.lr.ph1796.i, label %._crit_edge1797.i, !prof !34

._crit_edge1797.i:                                ; preds = %bb.va, %bb.uz
  %.251.i.i.i735.lcssa.i = phi ptr [ %.150.i.i.i732.i, %bb.uz ], [ %i.djo, %bb.va ] ; 5 uses
  %.246.i.i.i736.lcssa.i = phi ptr [ %.145.i.i.i733.i, %bb.uz ], [ %i.djp, %bb.va ] ; 4 uses
  %i.djr = getelementptr inbounds i8, ptr %spec.select457.i.i731.i, i64 -3
  %i.djs = icmp ult ptr %.251.i.i.i735.lcssa.i, %i.djr
  br i1 %i.djs, label %bb.vb, label %bb.vd

bb.vb:                                            ; preds = %._crit_edge1797.i
  %.246.i.i.i736.val.i = load i32, ptr %.246.i.i.i736.lcssa.i, align 1, !tbaa !26
  %.251.i.i.i735.val.i = load i32, ptr %.251.i.i.i735.lcssa.i, align 1, !tbaa !26
  %i.djt = icmp eq i32 %.246.i.i.i736.val.i, %.251.i.i.i735.val.i
  br i1 %i.djt, label %bb.vc, label %bb.vd

bb.vc:                                            ; preds = %bb.vb
  %i.dju = getelementptr inbounds nuw i8, ptr %.251.i.i.i735.lcssa.i, i64 4
  %i.djv = getelementptr inbounds nuw i8, ptr %.246.i.i.i736.lcssa.i, i64 4
  br label %bb.vd

bb.vd:                                            ; preds = %bb.vc, %bb.vb, %._crit_edge1797.i
  %.453.i.i.i738.i = phi ptr [ %i.dju, %bb.vc ], [ %.251.i.i.i735.lcssa.i, %bb.vb ], [ %.251.i.i.i735.lcssa.i, %._crit_edge1797.i ] ; 5 uses
  %.448.i.i.i739.i = phi ptr [ %i.djv, %bb.vc ], [ %.246.i.i.i736.lcssa.i, %bb.vb ], [ %.246.i.i.i736.lcssa.i, %._crit_edge1797.i ] ; 4 uses
  %i.djw = getelementptr inbounds i8, ptr %spec.select457.i.i731.i, i64 -1
  %i.djx = icmp ult ptr %.453.i.i.i738.i, %i.djw
  br i1 %i.djx, label %bb.ve, label %bb.vg

bb.ve:                                            ; preds = %bb.vd
  %.448.i.i.i739.val.i = load i16, ptr %.448.i.i.i739.i, align 1, !tbaa !36
  %.453.i.i.i738.val.i = load i16, ptr %.453.i.i.i738.i, align 1, !tbaa !36
  %i.djy = icmp eq i16 %.448.i.i.i739.val.i, %.453.i.i.i738.val.i
  br i1 %i.djy, label %bb.vf, label %bb.vg

bb.vf:                                            ; preds = %bb.ve
  %i.djz = getelementptr inbounds nuw i8, ptr %.453.i.i.i738.i, i64 2
  %i.dka = getelementptr inbounds nuw i8, ptr %.448.i.i.i739.i, i64 2
  br label %bb.vg

bb.vg:                                            ; preds = %bb.vf, %bb.ve, %bb.vd
  %.554.i.i.i740.i = phi ptr [ %i.djz, %bb.vf ], [ %.453.i.i.i738.i, %bb.ve ], [ %.453.i.i.i738.i, %bb.vd ] ; 4 uses
  %.5.i.i.i741.i = phi ptr [ %i.dka, %bb.vf ], [ %.448.i.i.i739.i, %bb.ve ], [ %.448.i.i.i739.i, %bb.vd ]
  %i.dkb = icmp ult ptr %.554.i.i.i740.i, %spec.select457.i.i731.i
  br i1 %i.dkb, label %bb.vh, label %bb.vi

bb.vh:                                            ; preds = %bb.vg
  %i.dkc = load i8, ptr %.5.i.i.i741.i, align 1, !tbaa !16
  %i.dkd = load i8, ptr %.554.i.i.i740.i, align 1, !tbaa !16
  %i.dke = icmp eq i8 %i.dkc, %i.dkd
  %spec.select.i.i.i748.idx.i = zext i1 %i.dke to i64
  %spec.select.i.i.i748.i = getelementptr inbounds nuw i8, ptr %.554.i.i.i740.i, i64 %spec.select.i.i.i748.idx.i
  br label %bb.vi

bb.vi:                                            ; preds = %bb.vh, %bb.vg
  %.6.i.i.i742.i = phi ptr [ %.554.i.i.i740.i, %bb.vg ], [ %spec.select.i.i.i748.i, %bb.vh ]
  %i.dkf = ptrtoint ptr %.6.i.i.i742.i to i64
  %i.dkg = sub i64 %i.dkf, %i.cvg
  %i.dkh = trunc i64 %i.dkg to i32
  br label %LZ4_count.exit.i.i743.i

LZ4_count.exit.i.i743.i:                          ; preds = %bb.vi, %.thread1396.i, %bb.uy
  %.4.i.i.i744.i = phi i32 [ %i.djn, %.thread1396.i ], [ %i.dkh, %bb.vi ], [ %i.djf, %bb.uy ]
  %i.dki = add nsw i32 %.4.i.i.i744.i, 4          ; 2 uses
  %i.dkj = icmp sgt i32 %i.dki, %.19.i.i7261805.i4086
  %.20368.i.i745.i = select i1 %i.dkj, i32 %i.diq, i32 %.19367.i.i7231802.i4088
  %.20.i.i747.i = tail call i32 @llvm.smax.i32(i32 %i.dki, i32 %.19.i.i7261805.i4086)
  br label %bb.vj

bb.vj:                                            ; preds = %LZ4_count.exit.i.i743.i, %bb.uv
  %.21369.i.i728.i = phi i32 [ %.20368.i.i745.i, %LZ4_count.exit.i.i743.i ], [ %.19367.i.i7231802.i4088, %bb.uv ] ; 2 uses
  %.21.i.i730.i = phi i32 [ %.20.i.i747.i, %LZ4_count.exit.i.i743.i ], [ %.19.i.i7261805.i4086, %bb.uv ] ; 2 uses
  %i.dkk = and i32 %.0315.i.i7251804.i4087, 65535
  %i.dkl = zext nneg i32 %i.dkk to i64
  %i.dkm = getelementptr inbounds nuw [2 x i8], ptr %i.dip, i64 %i.dkl
  %i.dkn = load i16, ptr %i.dkm, align 2, !tbaa !27
  %i.dko = zext i16 %i.dkn to i32                 ; 2 uses
  %i.dkp = sub i32 %.16397.i.i7221801.i4089, %i.dko ; 2 uses
  %i.dkq = sub i32 %i.csz, %i.dkp                 ; 2 uses
  %i.dkr = icmp ugt i32 %i.dkq, 65535
  %i.dks = sub i32 %.0315.i.i7251804.i4087, %i.dko
  %.not442.i.i727.i = icmp eq i32 %i.dir, 0
  %or.cond4134 = select i1 %i.dkr, i1 true, i1 %.not442.i.i727.i
  br i1 %or.cond4134, label %LZ4HC_InsertAndGetWiderMatch.exit.i701.i, label %bb.uv, !llvm.loop !48

LZ4HC_InsertAndGetWiderMatch.exit.i701.i:         ; preds = %bb.vj, %bb.uu, %.thread1384.i
  %.22370.i.i702.i = phi i32 [ %.18366.i.i696.i, %.thread1384.i ], [ %.18366.i.i696.i, %bb.uu ], [ %.21369.i.i728.i, %bb.vj ] ; 4 uses
  %.22.i.i704.i = phi i32 [ %.18.i.i698.i, %.thread1384.i ], [ %.18.i.i698.i, %bb.uu ], [ %.21.i.i730.i, %bb.vj ] ; 3 uses
  %.not.i711.i = icmp sgt i32 %.22.i.i704.i, 3
  br i1 %.not.i711.i, label %LZ4HC_FindLongerMatch.exit917.i, label %LZ4HC_FindLongerMatch.exit917.thread.i

LZ4HC_FindLongerMatch.exit917.i:                  ; preds = %LZ4HC_InsertAndGetWiderMatch.exit.i701.i
  %.sroa.2313.0.insert.ext.i.i705.i = zext nneg i32 %.22.i.i704.i to i64
  %i.dkt = add nsw i32 %.22.i.i704.i, -19
  %i.dku = icmp ult i32 %i.dkt, 18
  %or.cond.i717.i = and i1 %.not, %i.dku
  %.sroa.03.sroa.4.0.insert.shift.i719.i = select i1 %or.cond.i717.i, i64 18, i64 %.sroa.2313.0.insert.ext.i.i705.i ; 12 uses
  %.sroa.0162.4.extract.trunc.i = trunc nuw nsw i64 %.sroa.03.sroa.4.0.insert.shift.i719.i to i32
  %i.dkv = icmp samesign ugt i64 %.sroa.03.sroa.4.0.insert.shift.i719.i, %spec.store.select.i914
  br i1 %i.dkv, label %bb.vk, label %.preheader1696.preheader.i

.preheader1696.preheader.i:                       ; preds = %LZ4HC_FindLongerMatch.exit917.i
  %sext2383.i = shl i64 %i.csr, 32                ; 3 uses
  %i.dkw = ashr exact i64 %sext2383.i, 32         ; 2 uses
  %i.dkx = icmp sgt i64 %i.dkw, 14
  br i1 %i.dkx, label %LZ4HC_literalsPrice.exit926.thread.i, label %LZ4HC_literalsPrice.exit926.i

LZ4HC_FindLongerMatch.exit917.thread.i:           ; preds = %LZ4HC_InsertAndGetWiderMatch.exit.i701.i
  %i.dky = getelementptr inbounds nuw i8, ptr %.013131982.i, i64 1
  br label %.loopexit1692.i, !llvm.loop !52

bb.vk:                                            ; preds = %LZ4HC_FindLongerMatch.exit917.i
  %i.dkz = getelementptr i8, ptr %.013011984.i, i64 1 ; 4 uses
  %i.dla = udiv i64 %i.csr, 255
  %i.dlb = getelementptr inbounds nuw i8, ptr %i.dkz, i64 %i.dla
  %i.dlc = getelementptr inbounds nuw i8, ptr %i.dlb, i64 %i.csr
  %i.dld = getelementptr inbounds nuw i8, ptr %i.dlc, i64 8
  %i.dle = icmp ugt ptr %i.dld, %spec.select.i913
  %or.cond.i433.i = select i1 %.not.i.i915, i1 %i.dle, i1 false
  br i1 %or.cond.i433.i, label %.thread1587.i, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  %i.dlf = icmp ugt i64 %i.csr, 14
  br i1 %i.dlf, label %bb.vm, label %bb.vn

bb.vm:                                            ; preds = %bb.vl
  %i.dlg = add i64 %i.csr, -15                    ; 2 uses
  store i8 -16, ptr %.013011984.i, align 1, !tbaa !16
  %i.dlh = icmp ugt i64 %i.dlg, 254
  br i1 %i.dlh, label %.lr.ph1970.preheader.i, label %._crit_edge1971.i

.lr.ph1970.preheader.i:                           ; preds = %bb.vm
  %i.dli = add i64 %i.csr, -270                   ; 2 uses
  %i.dlj = udiv i64 %i.dli, 255                   ; 3 uses
  %i.dlk = add nuw nsw i64 %i.dlj, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dkz, i8 -1, i64 %i.dlk, i1 false), !tbaa !16
  %scevgep2169.i = getelementptr i8, ptr %.013011984.i, i64 2
  %scevgep2170.i = getelementptr i8, ptr %scevgep2169.i, i64 %i.dlj
  %.neg2386.i = mul i64 %i.dlj, -255
  %i.dll = add i64 %.neg2386.i, %i.dli
  br label %._crit_edge1971.i

._crit_edge1971.i:                                ; preds = %.lr.ph1970.preheader.i, %bb.vm
  %.23.lcssa.i = phi ptr [ %i.dkz, %bb.vm ], [ %scevgep2170.i, %.lr.ph1970.preheader.i ] ; 2 uses
  %.053.i441.lcssa.i = phi i64 [ %i.dlg, %bb.vm ], [ %i.dll, %.lr.ph1970.preheader.i ]
  %i.dlm = trunc nuw i64 %.053.i441.lcssa.i to i8
  %i.dln = getelementptr inbounds nuw i8, ptr %.23.lcssa.i, i64 1
  store i8 %i.dlm, ptr %.23.lcssa.i, align 1, !tbaa !16
  br label %.critedge.i435.i

bb.vn:                                            ; preds = %bb.vl
  %.tr.i434.i = trunc nuw nsw i64 %i.csr to i8
  %i.dlo = shl nuw i8 %.tr.i434.i, 4
  store i8 %i.dlo, ptr %.013011984.i, align 1, !tbaa !16
  br label %.critedge.i435.i

.critedge.i435.i:                                 ; preds = %bb.vn, %._crit_edge1971.i
  %.19.i946 = phi ptr [ %i.dln, %._crit_edge1971.i ], [ %i.dkz, %bb.vn ] ; 3 uses
  %i.dlp = getelementptr inbounds nuw i8, ptr %.19.i946, i64 %i.csr ; 3 uses
  br label %bb.vo

bb.vo:                                            ; preds = %bb.vo, %.critedge.i435.i
  %.09.i.i947 = phi ptr [ %.19.i946, %.critedge.i435.i ], [ %i.dlr, %bb.vo ] ; 2 uses
  %.0.i443.i = phi ptr [ %.013061983.i, %.critedge.i435.i ], [ %i.dls, %bb.vo ] ; 2 uses
  %i.dlq = load i64, ptr %.0.i443.i, align 1
  store i64 %i.dlq, ptr %.09.i.i947, align 1
  %i.dlr = getelementptr inbounds nuw i8, ptr %.09.i.i947, i64 8 ; 2 uses
  %i.dls = getelementptr inbounds nuw i8, ptr %.0.i443.i, i64 8
  %i.dlt = icmp ult ptr %i.dlr, %i.dlp
  br i1 %i.dlt, label %bb.vo, label %LZ4_wildCopy8.exit.i948, !llvm.loop !44

LZ4_wildCopy8.exit.i948:                          ; preds = %bb.vo
  %i.dlu = trunc i32 %.22370.i.i702.i to i16
  store i16 %i.dlu, ptr %i.dlp, align 1, !tbaa !36
  %i.dlv = getelementptr i8, ptr %i.dlp, i64 2    ; 4 uses
  %i.dlw = add nsw i64 %.sroa.03.sroa.4.0.insert.shift.i719.i, -4 ; 2 uses
  %.lhs.trunc.i = trunc nuw nsw i64 %i.dlw to i32
  %i.dlx = udiv i32 %.lhs.trunc.i, 255
  %.zext.i = zext nneg i32 %i.dlx to i64
  %i.dly = getelementptr inbounds nuw i8, ptr %i.dlv, i64 %.zext.i
  %i.dlz = getelementptr inbounds nuw i8, ptr %i.dly, i64 6
  %i.dma = icmp ugt ptr %i.dlz, %spec.select.i913
  %or.cond70.i437.i = select i1 %.not.i.i915, i1 %i.dma, i1 false
  br i1 %or.cond70.i437.i, label %.thread1587.i, label %bb.vp

bb.vp:                                            ; preds = %LZ4_wildCopy8.exit.i948
  %i.dmb = icmp samesign ugt i64 %.sroa.03.sroa.4.0.insert.shift.i719.i, 18
  br i1 %i.dmb, label %bb.vq, label %bb.vt

bb.vq:                                            ; preds = %bb.vp
  %i.dmc = load i8, ptr %.013011984.i, align 1, !tbaa !16
  %i.dmd = add i8 %i.dmc, 15
  store i8 %i.dmd, ptr %.013011984.i, align 1, !tbaa !16
  %i.dme = add nsw i64 %.sroa.03.sroa.4.0.insert.shift.i719.i, -19
  %i.dmf = icmp samesign ugt i64 %.sroa.03.sroa.4.0.insert.shift.i719.i, 528
  br i1 %i.dmf, label %.lr.ph1977.preheader.i, label %._crit_edge1978.i

.lr.ph1977.preheader.i:                           ; preds = %bb.vq
  %i.dmg = add nsw i64 %.sroa.03.sroa.4.0.insert.shift.i719.i, -529 ; 2 uses
  %.lhs.trunc2424.i = trunc nuw nsw i64 %i.dmg to i32
  %i.dmh = udiv i32 %.lhs.trunc2424.i, 510
  %.zext2425.i = zext nneg i32 %i.dmh to i64      ; 2 uses
  %i.dmi = shl nuw nsw i64 %.zext2425.i, 1        ; 2 uses
  %i.dmj = add nuw nsw i64 %i.dmi, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dlv, i8 -1, i64 %i.dmj, i1 false), !tbaa !16
  %scevgep2171.i = getelementptr i8, ptr %.19.i946, i64 4
  %i.dmk = getelementptr i8, ptr %scevgep2171.i, i64 %i.csr
  %scevgep2172.i = getelementptr i8, ptr %i.dmk, i64 %i.dmi
  %.neg2387.i = mul nsw i64 %.zext2425.i, -510
  %i.dml = add nsw i64 %.neg2387.i, %i.dmg
  br label %._crit_edge1978.i

._crit_edge1978.i:                                ; preds = %.lr.ph1977.preheader.i, %bb.vq
  %.21.lcssa.i = phi ptr [ %i.dlv, %bb.vq ], [ %scevgep2172.i, %.lr.ph1977.preheader.i ] ; 3 uses
  %.0.i439.lcssa.i = phi i64 [ %i.dme, %bb.vq ], [ %i.dml, %.lr.ph1977.preheader.i ] ; 3 uses
  %i.dmm = icmp samesign ugt i64 %.0.i439.lcssa.i, 254
  br i1 %i.dmm, label %bb.vr, label %bb.vs

bb.vr:                                            ; preds = %._crit_edge1978.i
  %i.dmn = add nsw i64 %.0.i439.lcssa.i, -255
  %i.dmo = getelementptr inbounds nuw i8, ptr %.21.lcssa.i, i64 1
  store i8 -1, ptr %.21.lcssa.i, align 1, !tbaa !16
  br label %bb.vs

bb.vs:                                            ; preds = %bb.vr, %._crit_edge1978.i
  %.22.i950 = phi ptr [ %i.dmo, %bb.vr ], [ %.21.lcssa.i, %._crit_edge1978.i ] ; 2 uses
  %.1.i440.i = phi i64 [ %i.dmn, %bb.vr ], [ %.0.i439.lcssa.i, %._crit_edge1978.i ]
  %i.dmp = trunc nuw i64 %.1.i440.i to i8
  %i.dmq = getelementptr inbounds nuw i8, ptr %.22.i950, i64 1
  store i8 %i.dmp, ptr %.22.i950, align 1, !tbaa !16
  br label %select.unfold1596.i

bb.vt:                                            ; preds = %bb.vp
  %i.dmr = trunc nuw nsw i64 %i.dlw to i8
  %i.dms = load i8, ptr %.013011984.i, align 1, !tbaa !16
  %i.dmt = add i8 %i.dms, %i.dmr
  store i8 %i.dmt, ptr %.013011984.i, align 1, !tbaa !16
  br label %select.unfold1596.i

.lr.ph1816.i:                                     ; preds = %bb.vu, %LZ4HC_literalsPrice.exit926.2.i
  %.pre-phi = phi i32 [ %.pre.pre-phi, %bb.vu ], [ %.pre2181.i, %LZ4HC_literalsPrice.exit926.2.i ]
  %i.dmu = phi i32 [ %i.dnt, %bb.vu ], [ %i.dns, %LZ4HC_literalsPrice.exit926.2.i ]
  %.0.i925.3.i = phi i32 [ %i.dnx, %bb.vu ], [ %i.dns, %LZ4HC_literalsPrice.exit926.2.i ]
  store i32 1, ptr %i.csl, align 4, !tbaa !65
  store i32 0, ptr %i.csm, align 4, !tbaa !66
  store i32 %i.dmu, ptr %i.csn, align 4, !tbaa !67
  store i32 %.0.i925.3.i, ptr %i.csk, align 4, !tbaa !68
  %i.dmv = icmp sgt i32 %i.css, 14
  %i.dmw = add nsw i32 %i.css, -15
  %i.dmx = udiv i32 %i.dmw, 255
  %i.dmy = add nuw nsw i32 %.pre-phi, %i.dmx
  %spec.select2012.i = select i1 %i.dmv, i32 %i.dmy, i32 %i.css ; 2 uses
  %i.dmz = add nsw i32 %spec.select2012.i, 3
  %invariant.op.i = add i32 %spec.select2012.i, 4
  br label %LZ4HC_literalsPrice.exit.i932.i

LZ4HC_literalsPrice.exit926.thread.i:             ; preds = %.preheader1696.preheader.i
  %i.dna = add i32 %i.css, -15
  %i.dnb = udiv i32 %i.dna, 255
  %i.dnc = add i32 %i.css, 1                      ; 3 uses
  %i.dnd = add nuw nsw i32 %i.dnb, %i.dnc
  store i32 1, ptr %i.crz, align 4, !tbaa !65
  store i32 0, ptr %i.csa, align 4, !tbaa !66
  store i32 %i.css, ptr %i.csb, align 4, !tbaa !67
  store i32 %i.dnd, ptr %i.cqx, align 4, !tbaa !68
  br label %LZ4HC_literalsPrice.exit926.1.thread.i

LZ4HC_literalsPrice.exit926.i:                    ; preds = %.preheader1696.preheader.i
  %.pre2181.i = add i32 %i.css, 1                 ; 6 uses
  store i32 1, ptr %i.crz, align 4, !tbaa !65
  store i32 0, ptr %i.csa, align 4, !tbaa !66
  store i32 %i.css, ptr %i.csb, align 4, !tbaa !67
  store i32 %i.css, ptr %i.cqx, align 4, !tbaa !68
  %i.dne = icmp eq i64 %sext2383.i, 60129542144
  br i1 %i.dne, label %LZ4HC_literalsPrice.exit926.1.thread.i, label %LZ4HC_literalsPrice.exit926.1.i

LZ4HC_literalsPrice.exit926.1.thread.i:           ; preds = %LZ4HC_literalsPrice.exit926.i, %LZ4HC_literalsPrice.exit926.thread.i
  %.pre2753.pre-phi = phi i32 [ %.pre2181.i, %LZ4HC_literalsPrice.exit926.i ], [ %i.dnc, %LZ4HC_literalsPrice.exit926.thread.i ] ; 2 uses
  %.pre-phi2402.i = phi i32 [ 15, %LZ4HC_literalsPrice.exit926.i ], [ %i.dnc, %LZ4HC_literalsPrice.exit926.thread.i ] ; 2 uses
  %i.dnf = add i32 %.pre-phi2402.i, -15
  %i.dng = udiv i32 %i.dnf, 255
  %i.dnh = add nuw i32 %.pre-phi2402.i, 1
  %i.dni = add nuw nsw i32 %i.dnh, %i.dng
  store i32 1, ptr %i.csd, align 4, !tbaa !65
  store i32 0, ptr %i.cse, align 4, !tbaa !66
  store i32 %.pre2753.pre-phi, ptr %i.csf, align 4, !tbaa !67
  store i32 %i.dni, ptr %i.csc, align 4, !tbaa !68
  %i.dnj = add i32 %i.css, 2
  br label %LZ4HC_literalsPrice.exit926.2.thread.i

LZ4HC_literalsPrice.exit926.1.i:                  ; preds = %LZ4HC_literalsPrice.exit926.i
  store i32 1, ptr %i.csd, align 4, !tbaa !65
  store i32 0, ptr %i.cse, align 4, !tbaa !66
  store i32 %.pre2181.i, ptr %i.csf, align 4, !tbaa !67
  store i32 %.pre2181.i, ptr %i.csc, align 4, !tbaa !68
  %i.dnk = icmp sgt i64 %i.dkw, 12
  %i.dnl = add i32 %i.css, 2                      ; 3 uses
  br i1 %i.dnk, label %LZ4HC_literalsPrice.exit926.2.thread.i, label %LZ4HC_literalsPrice.exit926.2.i

LZ4HC_literalsPrice.exit926.2.thread.i:           ; preds = %LZ4HC_literalsPrice.exit926.1.i, %LZ4HC_literalsPrice.exit926.1.thread.i
  %.pre2735.pre-phi = phi i32 [ %.pre2181.i, %LZ4HC_literalsPrice.exit926.1.i ], [ %.pre2753.pre-phi, %LZ4HC_literalsPrice.exit926.1.thread.i ]
  %i.dnm = phi i32 [ %i.dnl, %LZ4HC_literalsPrice.exit926.1.i ], [ %i.dnj, %LZ4HC_literalsPrice.exit926.1.thread.i ]
  %i.dnn = add i32 %i.css, -13
  %i.dno = udiv i32 %i.dnn, 255
  %i.dnp = add i32 %i.css, 3                      ; 2 uses
  %i.dnq = add nuw nsw i32 %i.dno, %i.dnp
  store i32 1, ptr %i.csh, align 4, !tbaa !65
  store i32 0, ptr %i.csi, align 4, !tbaa !66
  store i32 %i.dnm, ptr %i.csj, align 4, !tbaa !67
  store i32 %i.dnq, ptr %i.csg, align 4, !tbaa !68
  br label %bb.vu

LZ4HC_literalsPrice.exit926.2.i:                  ; preds = %LZ4HC_literalsPrice.exit926.1.i
  store i32 1, ptr %i.csh, align 4, !tbaa !65
  store i32 0, ptr %i.csi, align 4, !tbaa !66
  store i32 %i.dnl, ptr %i.csj, align 4, !tbaa !67
  store i32 %i.dnl, ptr %i.csg, align 4, !tbaa !68
  %i.dnr = icmp eq i64 %sext2383.i, 51539607552
  %i.dns = add i32 %i.css, 3                      ; 3 uses
  br i1 %i.dnr, label %bb.vu, label %.lr.ph1816.i

bb.vu:                                            ; preds = %LZ4HC_literalsPrice.exit926.2.i, %LZ4HC_literalsPrice.exit926.2.thread.i
  %.pre.pre-phi = phi i32 [ %.pre2181.i, %LZ4HC_literalsPrice.exit926.2.i ], [ %.pre2735.pre-phi, %LZ4HC_literalsPrice.exit926.2.thread.i ]
  %i.dnt = phi i32 [ %i.dns, %LZ4HC_literalsPrice.exit926.2.i ], [ %i.dnp, %LZ4HC_literalsPrice.exit926.2.thread.i ]
  %i.dnu = add i32 %i.css, -12
  %i.dnv = udiv i32 %i.dnu, 255
  %i.dnw = add i32 %i.css, 4
  %i.dnx = add nuw nsw i32 %i.dnw, %i.dnv
  br label %.lr.ph1816.i

LZ4HC_literalsPrice.exit.i932.i:                  ; preds = %LZ4HC_sequencePrice.exit935.i, %.lr.ph1816.i
  %indvars.iv2137.i = phi i64 [ 4, %.lr.ph1816.i ], [ %indvars.iv.next2138.i, %LZ4HC_sequencePrice.exit935.i ] ; 5 uses
  %i.dny = icmp samesign ugt i64 %indvars.iv2137.i, 18
  %i.dnz = trunc i64 %indvars.iv2137.i to i32     ; 2 uses
  br i1 %i.dny, label %bb.vv, label %LZ4HC_sequencePrice.exit935.i

bb.vv:                                            ; preds = %LZ4HC_literalsPrice.exit.i932.i
  %i.doa = add i32 %i.dnz, -19
  %i.dob = udiv i32 %i.doa, 255
  %.reass.i = add i32 %invariant.op.i, %i.dob
  br label %LZ4HC_sequencePrice.exit935.i

LZ4HC_sequencePrice.exit935.i:                    ; preds = %LZ4HC_literalsPrice.exit.i932.i, %bb.vv
  %.0.i934.i = phi i32 [ %.reass.i, %bb.vv ], [ %i.dmz, %LZ4HC_literalsPrice.exit.i932.i ]
  %i.doc = getelementptr inbounds nuw [16 x i8], ptr %i.cqx, i64 %indvars.iv2137.i ; 4 uses
  %i.dod = getelementptr inbounds nuw i8, ptr %i.doc, i64 8
  store i32 %i.dnz, ptr %i.dod, align 4, !tbaa !65
  %i.doe = getelementptr inbounds nuw i8, ptr %i.doc, i64 4
  store i32 %.22370.i.i702.i, ptr %i.doe, align 4, !tbaa !66
  %i.dof = getelementptr inbounds nuw i8, ptr %i.doc, i64 12
  store i32 %i.css, ptr %i.dof, align 4, !tbaa !67
  store i32 %.0.i934.i, ptr %i.doc, align 4, !tbaa !68
  %indvars.iv.next2138.i = add nuw nsw i64 %indvars.iv2137.i, 1
  %exitcond.not.i922 = icmp eq i64 %indvars.iv2137.i, %.sroa.03.sroa.4.0.insert.shift.i719.i
  br i1 %exitcond.not.i922, label %.lr.ph1941.i, label %LZ4HC_literalsPrice.exit.i932.i, !llvm.loop !53

.lr.ph1941.i:                                     ; preds = %LZ4HC_sequencePrice.exit935.i
  %i.dog = getelementptr inbounds nuw [16 x i8], ptr %i.cqx, i64 %.sroa.03.sroa.4.0.insert.shift.i719.i ; 13 uses
  %i.doh = getelementptr inbounds nuw i8, ptr %i.dog, i64 16
  %i.doi = getelementptr inbounds nuw i8, ptr %i.dog, i64 24
  store i32 1, ptr %i.doi, align 4, !tbaa !65
  %i.doj = getelementptr inbounds nuw i8, ptr %i.dog, i64 20
  store i32 0, ptr %i.doj, align 4, !tbaa !66
  %i.dok = getelementptr inbounds nuw i8, ptr %i.dog, i64 28
  store i32 1, ptr %i.dok, align 4, !tbaa !67
  %i.dol = load i32, ptr %i.dog, align 4, !tbaa !68 ; 3 uses
  %i.dom = add nsw i32 %i.dol, 1
  store i32 %i.dom, ptr %i.doh, align 4, !tbaa !68
  %i.don = getelementptr inbounds nuw i8, ptr %i.dog, i64 32
  %i.doo = getelementptr inbounds nuw i8, ptr %i.dog, i64 40
  store i32 1, ptr %i.doo, align 4, !tbaa !65
  %i.dop = getelementptr inbounds nuw i8, ptr %i.dog, i64 36
  store i32 0, ptr %i.dop, align 4, !tbaa !66
  %i.doq = getelementptr inbounds nuw i8, ptr %i.dog, i64 44
  store i32 2, ptr %i.doq, align 4, !tbaa !67
  %i.dor = add nsw i32 %i.dol, 2
  store i32 %i.dor, ptr %i.don, align 4, !tbaa !68
  %i.dos = getelementptr inbounds nuw i8, ptr %i.dog, i64 48
  %i.dot = getelementptr inbounds nuw i8, ptr %i.dog, i64 56
  store i32 1, ptr %i.dot, align 4, !tbaa !65
  %i.dou = getelementptr inbounds nuw i8, ptr %i.dog, i64 52
  store i32 0, ptr %i.dou, align 4, !tbaa !66
  %i.dov = getelementptr inbounds nuw i8, ptr %i.dog, i64 60
  store i32 3, ptr %i.dov, align 4, !tbaa !67
  %i.dow = add nsw i32 %i.dol, 3
  store i32 %i.dow, ptr %i.dos, align 4, !tbaa !68
  %i.dox = sub nsw i64 0, %i.ctg
  %invariant.gep1821.i = getelementptr i8, ptr %i.csu, i64 %i.dox ; 6 uses
  %i.doy = getelementptr inbounds nuw i8, ptr %i.cst, i64 262144 ; 2 uses
  %i.doz = getelementptr inbounds nuw i8, ptr %i.cst, i64 262152 ; 2 uses
  %i.dpa = getelementptr inbounds nuw i8, ptr %i.cst, i64 262168 ; 2 uses
  %i.dpb = getelementptr inbounds nuw i8, ptr %i.cst, i64 131072 ; 2 uses
  %i.dpc = add i32 %i.csv, 1
  %i.dpd = trunc i64 %i.csp to i32
  %i.dpe = add i32 %i.dpc, %i.dpd
  %i.dpf = trunc i64 %i.csw to i32
  %i.dpg = sub i32 %i.dpe, %i.dpf
  %.not.i1142.i4098 = icmp slt i64 %i.cti, 4
  %.not.i1224.i4116 = icmp slt i64 %i.cti, 4
  br label %bb.vw

bb.vw:                                            ; preds = %.loopexit.i923, %.lr.ph1941.i
  %indvars.iv2728 = phi i32 [ %indvars.iv.next2729, %.loopexit.i923 ], [ %i.dpg, %.lr.ph1941.i ] ; 2 uses
  %indvars.iv2163.i = phi i64 [ %indvars.iv.next2164.i, %.loopexit.i923 ], [ 1, %.lr.ph1941.i ] ; 9 uses
  %.03751940.i = phi i32 [ %.4379.ph.i, %.loopexit.i923 ], [ %.sroa.0162.4.extract.trunc.i, %.lr.ph1941.i ] ; 13 uses
end_hunk_3
begin_hunk_4_@LZ4HC_compress_generic_internal:bb.a
  %i.fcf = load i32, ptr %i.fca, align 4, !tbaa !68 ; 3 uses
  %i.fcg = add nsw i32 %i.fcf, 1
  store i32 %i.fcg, ptr %i.fcb, align 4, !tbaa !68
  %i.fch = getelementptr inbounds nuw i8, ptr %i.fca, i64 32
  %i.fci = getelementptr inbounds nuw i8, ptr %i.fca, i64 40
  store i32 1, ptr %i.fci, align 4, !tbaa !65
  %i.fcj = getelementptr inbounds nuw i8, ptr %i.fca, i64 36
  store i32 0, ptr %i.fcj, align 4, !tbaa !66
  %i.fck = getelementptr inbounds nuw i8, ptr %i.fca, i64 44
  store i32 2, ptr %i.fck, align 4, !tbaa !67
  %i.fcl = add nsw i32 %i.fcf, 2
  store i32 %i.fcl, ptr %i.fch, align 4, !tbaa !68
  %i.fcm = getelementptr inbounds nuw i8, ptr %i.fca, i64 48
  %i.fcn = getelementptr inbounds nuw i8, ptr %i.fca, i64 56
  store i32 1, ptr %i.fcn, align 4, !tbaa !65
  %i.fco = getelementptr inbounds nuw i8, ptr %i.fca, i64 52
  store i32 0, ptr %i.fco, align 4, !tbaa !66
  %i.fcp = getelementptr inbounds nuw i8, ptr %i.fca, i64 60
  store i32 3, ptr %i.fcp, align 4, !tbaa !67
  %i.fcq = add nsw i32 %i.fcf, 3
  store i32 %i.fcq, ptr %i.fcm, align 4, !tbaa !68
  br label %.loopexit.i923

bb.ads:                                           ; preds = %bb.aeb, %.lr.ph1935.i.split
  %indvars.iv2154.i = phi i64 [ 4, %.lr.ph1935.i.split ], [ %indvars.iv.next2155.i, %bb.aeb ] ; 9 uses
  %i.fcr = add nuw nsw i64 %indvars.iv2154.i, %indvars.iv2163.i ; 3 uses
  br i1 %i.eyy, label %bb.adt, label %bb.adw

bb.adt:                                           ; preds = %bb.ads
  br i1 %i.eyz, label %bb.adu, label %LZ4HC_literalsPrice.exit.i.i

bb.adu:                                           ; preds = %bb.adt
  %i.fcs = load i32, ptr %i.ezc, align 4, !tbaa !68
  br label %LZ4HC_literalsPrice.exit.i.i

LZ4HC_literalsPrice.exit.i.i:                     ; preds = %bb.adu, %bb.adt
  %i.fct = phi i32 [ %i.fcs, %bb.adu ], [ 0, %bb.adt ]
  %i.fcu = icmp samesign ugt i64 %indvars.iv2154.i, 18
  br i1 %i.fcu, label %bb.adv, label %LZ4HC_sequencePrice.exit931.i

bb.adv:                                           ; preds = %LZ4HC_literalsPrice.exit.i.i
  %i.fcv = trunc i64 %indvars.iv2154.i to i32
  %i.fcw = add nsw i32 %i.fcv, -19
  %i.fcx = udiv i32 %i.fcw, 255
  %i.fcy = add i32 %i.eze, %i.fcx
  br label %LZ4HC_sequencePrice.exit931.i

LZ4HC_sequencePrice.exit931.i:                    ; preds = %bb.adv, %LZ4HC_literalsPrice.exit.i.i
  %.0.i930.i = phi i32 [ %i.fcy, %bb.adv ], [ %i.ezd, %LZ4HC_literalsPrice.exit.i.i ]
  %i.fcz = add nsw i32 %.0.i930.i, %i.fct
  br label %bb.ady

bb.adw:                                           ; preds = %bb.ads
  %i.fda = icmp samesign ugt i64 %indvars.iv2154.i, 18
  br i1 %i.fda, label %bb.adx, label %LZ4HC_sequencePrice.exit.i

bb.adx:                                           ; preds = %bb.adw
  %i.fdb = trunc i64 %indvars.iv2154.i to i32
  %i.fdc = add nsw i32 %i.fdb, -19
  %i.fdd = udiv i32 %i.fdc, 255
  %i.fde = add nuw nsw i32 %i.fdd, 4
  br label %LZ4HC_sequencePrice.exit.i

LZ4HC_sequencePrice.exit.i:                       ; preds = %bb.adx, %bb.adw
  %.0.i928.i = phi i32 [ %i.fde, %bb.adx ], [ 3, %bb.adw ]
  %i.fdf = add nsw i32 %.0.i928.i, %i.dpn
  br label %bb.ady

bb.ady:                                           ; preds = %LZ4HC_sequencePrice.exit.i, %LZ4HC_sequencePrice.exit931.i
  %.0344.i = phi i32 [ %i.fcz, %LZ4HC_sequencePrice.exit931.i ], [ %i.fdf, %LZ4HC_sequencePrice.exit.i ] ; 2 uses
  %.0343.i = phi i32 [ %i.eyo, %LZ4HC_sequencePrice.exit931.i ], [ 0, %LZ4HC_sequencePrice.exit.i ]
  %i.fdg = trunc nuw i64 %i.fcr to i32
  %i.fdh = icmp slt i32 %i.ezf, %i.fdg
  br i1 %i.fdh, label %bb.aea, label %bb.adz

bb.adz:                                           ; preds = %bb.ady
  %i.fdi = getelementptr inbounds nuw [16 x i8], ptr %i.cqx, i64 %i.fcr
  %i.fdj = load i32, ptr %i.fdi, align 4, !tbaa !68
  %i.fdk = add i32 %i.fdj, %.neg1465
  %.not413.i = icmp sgt i32 %.0344.i, %i.fdk
  br i1 %.not413.i, label %bb.aeb, label %bb.aea

bb.aea:                                           ; preds = %bb.adz, %bb.ady
  %i.fdl = getelementptr inbounds nuw [16 x i8], ptr %i.cqx, i64 %i.fcr ; 4 uses
  %i.fdm = getelementptr inbounds nuw i8, ptr %i.fdl, i64 8
  %i.fdn = trunc nuw nsw i64 %indvars.iv2154.i to i32
  store i32 %i.fdn, ptr %i.fdm, align 4, !tbaa !65
  %i.fdo = getelementptr inbounds nuw i8, ptr %i.fdl, i64 4
  store i32 %.22370.i.i.sink.i, ptr %i.fdo, align 4, !tbaa !66
  %i.fdp = getelementptr inbounds nuw i8, ptr %i.fdl, i64 12
  store i32 %.0343.i, ptr %i.fdp, align 4, !tbaa !67
  store i32 %.0344.i, ptr %i.fdl, align 4, !tbaa !68
  br label %bb.aeb

bb.aeb:                                           ; preds = %bb.aea, %bb.adz
  %indvars.iv.next2155.i = add nuw nsw i64 %indvars.iv2154.i, 1 ; 6 uses
  %exitcond2158.not.i = icmp eq i64 %indvars.iv2154.i, %i.ezg
  br i1 %exitcond2158.not.i, label %.preheader.i945.loopexit.peel.begin, label %bb.ads, !llvm.loop !54

bb.aec:                                           ; preds = %bb.add
  %i.fdq = add nuw nsw i32 %i.eyk, 1
  br label %bb.aed

.loopexit.i923:                                   ; preds = %.preheader.i945, %LZ4HC_InsertAndGetWiderMatch.exit.i.i, %LZ4HC_InsertAndGetWiderMatch.exit.i468.i, %bb.wa, %bb.vz
  %.4379.ph.i = phi i32 [ %.03751940.i, %bb.vz ], [ %.03751940.i, %bb.wa ], [ %.03751940.i, %LZ4HC_InsertAndGetWiderMatch.exit.i.i ], [ %.1376.lcssa.i, %.preheader.i945 ], [ %.03751940.i, %LZ4HC_InsertAndGetWiderMatch.exit.i468.i ] ; 3 uses
  %indvars.iv.next2164.i = add nuw nsw i64 %indvars.iv2163.i, 1 ; 2 uses
  %i.fdr = zext nneg i32 %.4379.ph.i to i64       ; 2 uses
  %i.fds = icmp samesign ult i64 %indvars.iv.next2164.i, %i.fdr
  %indvars.iv.next2729 = add i32 %indvars.iv2728, 1
  br i1 %i.fds, label %bb.vw, label %.thread1581.i, !llvm.loop !55

.thread1581.i:                                    ; preds = %.loopexit.i923, %..thread1581.i_crit_edge
  %.pre-phi2738 = phi i64 [ %.pre2737, %..thread1581.i_crit_edge ], [ %i.fdr, %.loopexit.i923 ]
  %.0375.lcssa.ph.i = phi i32 [ %.03751940.i, %..thread1581.i_crit_edge ], [ %.4379.ph.i, %.loopexit.i923 ] ; 2 uses
  %i.fdt = getelementptr inbounds nuw [16 x i8], ptr %i.cqx, i64 %.pre-phi2738 ; 2 uses
  %i.fdu = getelementptr inbounds nuw i8, ptr %i.fdt, i64 8
  %i.fdv = load i32, ptr %i.fdu, align 4, !tbaa !65 ; 2 uses
  %i.fdw = getelementptr inbounds nuw i8, ptr %i.fdt, i64 4
  %i.fdx = load i32, ptr %i.fdw, align 4, !tbaa !66
  %i.fdy = sub nsw i32 %.0375.lcssa.ph.i, %i.fdv
  br label %bb.aed

bb.aed:                                           ; preds = %.thread1581.i, %bb.aec
  %.2389.i = phi i32 [ %i.fdv, %.thread1581.i ], [ %.sroa.0104.4.extract.trunc.i, %bb.aec ]
  %.2386.i = phi i32 [ %i.fdx, %.thread1581.i ], [ %.22370.i.i.sink.i, %bb.aec ]
  %.1383.i = phi i32 [ %i.fdy, %.thread1581.i ], [ %i.eyk, %bb.aec ]
  %.6381.i = phi i32 [ %.0375.lcssa.ph.i, %.thread1581.i ], [ %i.fdq, %bb.aec ] ; 2 uses
  br label %bb.aee

bb.aee:                                           ; preds = %bb.aee, %bb.aed
  %.0340.i = phi i32 [ %.1383.i, %bb.aed ], [ %i.feg, %bb.aee ] ; 3 uses
  %.0339.i = phi i32 [ %.2389.i, %bb.aed ], [ %i.fec, %bb.aee ]
  %.0338.i924 = phi i32 [ %.2386.i, %bb.aed ], [ %i.fee, %bb.aee ]
  %i.fdz = sext i32 %.0340.i to i64
  %i.fea = getelementptr inbounds [16 x i8], ptr %i.cqx, i64 %i.fdz ; 2 uses
  %i.feb = getelementptr inbounds nuw i8, ptr %i.fea, i64 8 ; 2 uses
  %i.fec = load i32, ptr %i.feb, align 4, !tbaa !65 ; 3 uses
  %i.fed = getelementptr inbounds nuw i8, ptr %i.fea, i64 4 ; 2 uses
  %i.fee = load i32, ptr %i.fed, align 4, !tbaa !66
  store i32 %.0339.i, ptr %i.feb, align 4, !tbaa !65
  store i32 %.0338.i924, ptr %i.fed, align 4, !tbaa !66
  %i.fef = icmp sgt i32 %i.fec, %.0340.i
  %i.feg = sub nsw i32 %.0340.i, %i.fec
  br i1 %i.fef, label %.preheader1691.i, label %bb.aee

.preheader1691.i:                                 ; preds = %bb.aee
  %i.feh = icmp sgt i32 %.6381.i, 0
  br i1 %i.feh, label %.lr.ph1963.i, label %.loopexit1692.i

.lr.ph1963.i:                                     ; preds = %.preheader1691.i, %bb.aeq
  %.03371962.i = phi i32 [ %.1.i929, %bb.aeq ], [ 0, %.preheader1691.i ] ; 3 uses
  %.113021961.i = phi ptr [ %.21303.i, %bb.aeq ], [ %.013011984.i, %.preheader1691.i ] ; 11 uses
  %.113071960.i = phi ptr [ %.21308.i, %bb.aeq ], [ %.013061983.i, %.preheader1691.i ] ; 5 uses
  %.113141959.i = phi ptr [ %.21315.i, %bb.aeq ], [ %.013131982.i, %.preheader1691.i ] ; 5 uses
  %i.fei = sext i32 %.03371962.i to i64
  %i.fej = getelementptr inbounds [16 x i8], ptr %i.cqx, i64 %i.fei ; 2 uses
  %i.fek = getelementptr inbounds nuw i8, ptr %i.fej, i64 8
  %i.fel = load i32, ptr %i.fek, align 4, !tbaa !65 ; 4 uses
  %i.fem = getelementptr inbounds nuw i8, ptr %i.fej, i64 4
  %i.fen = load i32, ptr %i.fem, align 4, !tbaa !66 ; 3 uses
  %i.feo = icmp eq i32 %i.fel, 1
  br i1 %i.feo, label %bb.aef, label %bb.aeg

bb.aef:                                           ; preds = %.lr.ph1963.i
  %i.fep = getelementptr inbounds nuw i8, ptr %.113141959.i, i64 1
  %i.feq = add nsw i32 %.03371962.i, 1
  br label %bb.aeq, !llvm.loop !56

bb.aeg:                                           ; preds = %.lr.ph1963.i
  %i.fer = add nsw i32 %i.fel, %.03371962.i
  %i.fes = getelementptr i8, ptr %.113021961.i, i64 1 ; 4 uses
  %i.fet = ptrtoint ptr %.113141959.i to i64
  %i.feu = ptrtoint ptr %.113071960.i to i64
  %i.fev = sub i64 %i.fet, %i.feu                 ; 8 uses
  %i.few = udiv i64 %i.fev, 255
  %i.fex = getelementptr inbounds nuw i8, ptr %i.fes, i64 %i.few
  %i.fey = getelementptr inbounds nuw i8, ptr %i.fex, i64 %i.fev
  %i.fez = getelementptr inbounds nuw i8, ptr %i.fey, i64 8
  %i.ffa = icmp ugt ptr %i.fez, %spec.select.i913
  %or.cond.i.i925 = select i1 %.not.i.i915, i1 %i.ffa, i1 false
  br i1 %or.cond.i.i925, label %..thread1587.loopexit.i_crit_edge, label %bb.aeh

..thread1587.loopexit.i_crit_edge:                ; preds = %bb.aeg
  %.pre2739 = sext i32 %i.fel to i64
  br label %.thread1587.i

bb.aeh:                                           ; preds = %bb.aeg
  %i.ffb = icmp ugt i64 %i.fev, 14
  br i1 %i.ffb, label %bb.aei, label %bb.aej

bb.aei:                                           ; preds = %bb.aeh
  %i.ffc = add i64 %i.fev, -15                    ; 2 uses
  store i8 -16, ptr %.113021961.i, align 1, !tbaa !16
  %i.ffd = icmp ugt i64 %i.ffc, 254
  br i1 %i.ffd, label %.lr.ph1948.preheader.i, label %._crit_edge1949.i

.lr.ph1948.preheader.i:                           ; preds = %bb.aei
  %i.ffe = add i64 %i.fev, -270                   ; 2 uses
  %i.fff = udiv i64 %i.ffe, 255                   ; 3 uses
  %i.ffg = add nuw nsw i64 %i.fff, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fes, i8 -1, i64 %i.ffg, i1 false), !tbaa !16
  %scevgep.i942 = getelementptr i8, ptr %.113021961.i, i64 2
  %scevgep2166.i = getelementptr i8, ptr %scevgep.i942, i64 %i.fff
  %.neg2384.i = mul i64 %i.fff, -255
  %i.ffh = add i64 %.neg2384.i, %i.ffe
  br label %._crit_edge1949.i

._crit_edge1949.i:                                ; preds = %.lr.ph1948.preheader.i, %bb.aei
  %.17.lcssa.i = phi ptr [ %i.fes, %bb.aei ], [ %scevgep2166.i, %.lr.ph1948.preheader.i ] ; 2 uses
  %.053.i429.lcssa.i = phi i64 [ %i.ffc, %bb.aei ], [ %i.ffh, %.lr.ph1948.preheader.i ]
  %i.ffi = trunc nuw i64 %.053.i429.lcssa.i to i8
  %i.ffj = getelementptr inbounds nuw i8, ptr %.17.lcssa.i, i64 1
  store i8 %i.ffi, ptr %.17.lcssa.i, align 1, !tbaa !16
  br label %.critedge.i426.i

bb.aej:                                           ; preds = %bb.aeh
  %.tr.i425.i = trunc nuw nsw i64 %i.fev to i8
  %i.ffk = shl nuw i8 %.tr.i425.i, 4
  store i8 %i.ffk, ptr %.113021961.i, align 1, !tbaa !16
  br label %.critedge.i426.i

.critedge.i426.i:                                 ; preds = %bb.aej, %._crit_edge1949.i
  %.13.i926 = phi ptr [ %i.ffj, %._crit_edge1949.i ], [ %i.fes, %bb.aej ] ; 3 uses
  %i.ffl = getelementptr inbounds nuw i8, ptr %.13.i926, i64 %i.fev ; 3 uses
  br label %bb.aek

bb.aek:                                           ; preds = %bb.aek, %.critedge.i426.i
  %.09.i444.i = phi ptr [ %.13.i926, %.critedge.i426.i ], [ %i.ffn, %bb.aek ] ; 2 uses
  %.0.i445.i = phi ptr [ %.113071960.i, %.critedge.i426.i ], [ %i.ffo, %bb.aek ] ; 2 uses
  %i.ffm = load i64, ptr %.0.i445.i, align 1
  store i64 %i.ffm, ptr %.09.i444.i, align 1
  %i.ffn = getelementptr inbounds nuw i8, ptr %.09.i444.i, i64 8 ; 2 uses
  %i.ffo = getelementptr inbounds nuw i8, ptr %.0.i445.i, i64 8
  %i.ffp = icmp ult ptr %i.ffn, %i.ffl
  br i1 %i.ffp, label %bb.aek, label %LZ4_wildCopy8.exit446.i, !llvm.loop !44

LZ4_wildCopy8.exit446.i:                          ; preds = %bb.aek
  %i.ffq = trunc i32 %i.fen to i16
  store i16 %i.ffq, ptr %i.ffl, align 1, !tbaa !36
  %i.ffr = getelementptr i8, ptr %i.ffl, i64 2    ; 4 uses
  %i.ffs = sext i32 %i.fel to i64                 ; 5 uses
  %i.fft = add nsw i64 %i.ffs, -4                 ; 3 uses
  %i.ffu = udiv i64 %i.fft, 255
  %i.ffv = getelementptr inbounds nuw i8, ptr %i.ffr, i64 %i.ffu
  %i.ffw = getelementptr inbounds nuw i8, ptr %i.ffv, i64 6
  %i.ffx = icmp ugt ptr %i.ffw, %spec.select.i913
  %or.cond70.i.i927 = select i1 %.not.i.i915, i1 %i.ffx, i1 false
  br i1 %or.cond70.i.i927, label %.thread1587.i, label %bb.ael

bb.ael:                                           ; preds = %LZ4_wildCopy8.exit446.i
  %i.ffy = icmp ugt i64 %i.fft, 14
  br i1 %i.ffy, label %bb.aem, label %bb.aep

bb.aem:                                           ; preds = %bb.ael
  %i.ffz = load i8, ptr %.113021961.i, align 1, !tbaa !16
  %i.fga = add i8 %i.ffz, 15
  store i8 %i.fga, ptr %.113021961.i, align 1, !tbaa !16
  %i.fgb = add nsw i64 %i.ffs, -19                ; 2 uses
  %i.fgc = icmp ugt i64 %i.fgb, 509
  br i1 %i.fgc, label %.lr.ph1955.preheader.i, label %._crit_edge1956.i

.lr.ph1955.preheader.i:                           ; preds = %bb.aem
  %i.fgd = add nsw i64 %i.ffs, -529               ; 2 uses
  %i.fge = udiv i64 %i.fgd, 510                   ; 2 uses
  %i.fgf = shl nuw nsw i64 %i.fge, 1              ; 2 uses
  %i.fgg = add nuw nsw i64 %i.fgf, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ffr, i8 -1, i64 %i.fgg, i1 false), !tbaa !16
  %scevgep2167.i = getelementptr i8, ptr %.13.i926, i64 4
  %i.fgh = getelementptr i8, ptr %scevgep2167.i, i64 %i.fev
  %scevgep2168.i = getelementptr i8, ptr %i.fgh, i64 %i.fgf
  %.neg2385.i = mul i64 %i.fge, -510
  %i.fgi = add i64 %.neg2385.i, %i.fgd
  br label %._crit_edge1956.i

._crit_edge1956.i:                                ; preds = %.lr.ph1955.preheader.i, %bb.aem
  %.15.lcssa.i930 = phi ptr [ %i.ffr, %bb.aem ], [ %scevgep2168.i, %.lr.ph1955.preheader.i ] ; 3 uses
  %.0.i427.lcssa.i = phi i64 [ %i.fgb, %bb.aem ], [ %i.fgi, %.lr.ph1955.preheader.i ] ; 3 uses
  %i.fgj = icmp samesign ugt i64 %.0.i427.lcssa.i, 254
  br i1 %i.fgj, label %bb.aen, label %bb.aeo

bb.aen:                                           ; preds = %._crit_edge1956.i
  %i.fgk = add nsw i64 %.0.i427.lcssa.i, -255
  %i.fgl = getelementptr inbounds nuw i8, ptr %.15.lcssa.i930, i64 1
  store i8 -1, ptr %.15.lcssa.i930, align 1, !tbaa !16
  br label %bb.aeo

bb.aeo:                                           ; preds = %bb.aen, %._crit_edge1956.i
  %.16.i931 = phi ptr [ %i.fgl, %bb.aen ], [ %.15.lcssa.i930, %._crit_edge1956.i ] ; 2 uses
  %.1.i428.i = phi i64 [ %i.fgk, %bb.aen ], [ %.0.i427.lcssa.i, %._crit_edge1956.i ]
  %i.fgm = trunc nuw i64 %.1.i428.i to i8
  %i.fgn = getelementptr inbounds nuw i8, ptr %.16.i931, i64 1
  store i8 %i.fgm, ptr %.16.i931, align 1, !tbaa !16
  br label %select.unfold1586.i

bb.aep:                                           ; preds = %bb.ael
  %i.fgo = trunc nuw nsw i64 %i.fft to i8
  %i.fgp = load i8, ptr %.113021961.i, align 1, !tbaa !16
  %i.fgq = add i8 %i.fgp, %i.fgo
  store i8 %i.fgq, ptr %.113021961.i, align 1, !tbaa !16
  br label %select.unfold1586.i

select.unfold1586.i:                              ; preds = %bb.aep, %bb.aeo
  %.14.i928 = phi ptr [ %i.fgn, %bb.aeo ], [ %i.ffr, %bb.aep ]
  %i.fgr = getelementptr inbounds i8, ptr %.113141959.i, i64 %i.ffs ; 2 uses
  br label %bb.aeq

bb.aeq:                                           ; preds = %select.unfold1586.i, %bb.aef
  %.21315.i = phi ptr [ %i.fep, %bb.aef ], [ %i.fgr, %select.unfold1586.i ] ; 2 uses
  %.21308.i = phi ptr [ %.113071960.i, %bb.aef ], [ %i.fgr, %select.unfold1586.i ] ; 2 uses
  %.21303.i = phi ptr [ %.113021961.i, %bb.aef ], [ %.14.i928, %select.unfold1586.i ] ; 2 uses
  %.1.i929 = phi i32 [ %i.feq, %bb.aef ], [ %i.fer, %select.unfold1586.i ] ; 2 uses
  %i.fgs = icmp slt i32 %.1.i929, %.6381.i
  br i1 %i.fgs, label %.lr.ph1963.i, label %.loopexit1692.i

select.unfold1596.i:                              ; preds = %bb.vt, %bb.vs
  %.20.i949 = phi ptr [ %i.dmq, %bb.vs ], [ %i.dlv, %bb.vt ]
  %i.fgt = getelementptr inbounds nuw i8, ptr %.013131982.i, i64 %.sroa.03.sroa.4.0.insert.shift.i719.i ; 2 uses
  br label %.loopexit1692.i

.loopexit1692.i:                                  ; preds = %bb.aeq, %select.unfold1596.i, %.preheader1691.i, %LZ4HC_FindLongerMatch.exit917.thread.i
  %.31316.i = phi ptr [ %i.dky, %LZ4HC_FindLongerMatch.exit917.thread.i ], [ %i.fgt, %select.unfold1596.i ], [ %.013131982.i, %.preheader1691.i ], [ %.21315.i, %bb.aeq ] ; 2 uses
  %.31309.i = phi ptr [ %.013061983.i, %LZ4HC_FindLongerMatch.exit917.thread.i ], [ %i.fgt, %select.unfold1596.i ], [ %.013061983.i, %.preheader1691.i ], [ %.21308.i, %bb.aeq ] ; 2 uses
  %.3.i916 = phi ptr [ %.013011984.i, %LZ4HC_FindLongerMatch.exit917.thread.i ], [ %.20.i949, %select.unfold1596.i ], [ %.013011984.i, %.preheader1691.i ], [ %.21303.i, %bb.aeq ] ; 2 uses
  %.not.i917 = icmp ugt ptr %.31316.i, %i.crb
  br i1 %.not.i917, label %.loopexit1697.i, label %bb.rw

.loopexit1697.i:                                  ; preds = %.loopexit1692.i, %LZ4HC_encodeSequence.exit.i936, %bb.rv
  %.41310.i = phi ptr [ %i.fkz, %LZ4HC_encodeSequence.exit.i936 ], [ %1, %bb.rv ], [ %.31309.i, %.loopexit1692.i ] ; 3 uses
  %.41304.i = phi ptr [ %.12.i937, %LZ4HC_encodeSequence.exit.i936 ], [ %2, %bb.rv ], [ %.3.i916, %.loopexit1692.i ] ; 3 uses
  %i.fgu = ptrtoint ptr %i.cra to i64
  %i.fgv = ptrtoint ptr %.41310.i to i64
  %i.fgw = sub i64 %i.fgu, %i.fgv                 ; 3 uses
  %i.fgx = add i64 %i.fgw, 240
  %i.fgy = udiv i64 %i.fgx, 255
  %spec.select422.idx.i = select i1 %i.crg, i64 5, i64 0
  %spec.select422.i = getelementptr inbounds nuw i8, ptr %spec.select.i913, i64 %spec.select422.idx.i ; 2 uses
  %.not417.i = icmp ne i32 %6, 0
  %i.fgz = getelementptr i8, ptr %.41304.i, i64 %i.fgy
  %i.fha = getelementptr i8, ptr %i.fgz, i64 1
  %i.fhb = getelementptr i8, ptr %i.fha, i64 %i.fgw
  %i.fhc = icmp ugt ptr %i.fhb, %spec.select422.i
  %or.cond1670.i = select i1 %.not417.i, i1 %i.fhc, i1 false
  br i1 %or.cond1670.i, label %bb.aer, label %bb.aes

.thread1624.i:                                    ; preds = %bb.aex, %bb.aew
  %i.fhd = ptrtoint ptr %i.cra to i64
  %i.fhe = sub i64 %i.fhd, %i.fip                 ; 3 uses
  %i.fhf = add i64 %i.fhe, 240
  %i.fhg = udiv i64 %i.fhf, 255
  %i.fhh = getelementptr i8, ptr %.4.ph.i, i64 %i.fhg
  %i.fhi = getelementptr i8, ptr %i.fhh, i64 1
  %i.fhj = getelementptr i8, ptr %i.fhi, i64 %i.fhe
  %i.fhk = icmp ugt ptr %i.fhj, %i.crf
  br i1 %i.fhk, label %.thread1633.i, label %bb.aes

bb.aer:                                           ; preds = %.loopexit1697.i
  %i.fhl = icmp eq i32 %6, 1
  br i1 %i.fhl, label %bb.afg, label %.thread1633.i

.thread1633.i:                                    ; preds = %bb.aer, %.thread1624.i
  %spec.select422162316291640.i = phi ptr [ %spec.select422.i, %bb.aer ], [ %i.crf, %.thread1624.i ]
  %.41304162116301639.i = phi ptr [ %.41304.i, %bb.aer ], [ %.4.ph.i, %.thread1624.i ] ; 2 uses
  %.41310161916311638.i = phi ptr [ %.41310.i, %bb.aer ], [ %.31309.ph.i, %.thread1624.i ]
  %i.fhm = ptrtoint ptr %spec.select422162316291640.i to i64
  %i.fhn = ptrtoint ptr %.41304162116301639.i to i64
  %i.fho = xor i64 %i.fhn, -1
  %i.fhp = add i64 %i.fho, %i.fhm                 ; 2 uses
  %i.fhq = add i64 %i.fhp, 241
  %i.fhr = lshr i64 %i.fhq, 8
  %i.fhs = sub i64 %i.fhp, %i.fhr
  br label %bb.aes

bb.aes:                                           ; preds = %.thread1633.i, %.thread1624.i, %.loopexit1697.i
  %.413041622.i = phi ptr [ %.41304162116301639.i, %.thread1633.i ], [ %.4.ph.i, %.thread1624.i ], [ %.41304.i, %.loopexit1697.i ] ; 6 uses
  %.413101620.i = phi ptr [ %.41310161916311638.i, %.thread1633.i ], [ %.31309.ph.i, %.thread1624.i ], [ %.41310.i, %.loopexit1697.i ] ; 2 uses
  %.0336.i918 = phi i64 [ %i.fhs, %.thread1633.i ], [ %i.fhe, %.thread1624.i ], [ %i.fgw, %.loopexit1697.i ] ; 7 uses
  %i.fht = getelementptr inbounds nuw i8, ptr %.413101620.i, i64 %.0336.i918
  %i.fhu = icmp ugt i64 %.0336.i918, 14
  %.513052003.i = getelementptr i8, ptr %.413041622.i, i64 1 ; 3 uses
  br i1 %i.fhu, label %bb.aet, label %bb.aeu

bb.aet:                                           ; preds = %bb.aes
  %i.fhv = add i64 %.0336.i918, -15               ; 2 uses
  store i8 -16, ptr %.413041622.i, align 1, !tbaa !16
  %i.fhw = icmp ugt i64 %i.fhv, 254
  br i1 %i.fhw, label %.lr.ph2007.preheader.i, label %._crit_edge2008.i

.lr.ph2007.preheader.i:                           ; preds = %bb.aet
  %i.fhx = add i64 %.0336.i918, -270              ; 2 uses
  %i.fhy = udiv i64 %i.fhx, 255                   ; 3 uses
  %i.fhz = add nuw nsw i64 %i.fhy, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.513052003.i, i8 -1, i64 %i.fhz, i1 false), !tbaa !16
  %scevgep2175.i = getelementptr i8, ptr %.413041622.i, i64 %i.fhz
  %.neg2390.i = mul i64 %i.fhy, -255
  %i.fia = add i64 %.neg2390.i, %i.fhx
  %i.fib = getelementptr i8, ptr %.413041622.i, i64 %i.fhy
  %scevgep2176.i = getelementptr i8, ptr %i.fib, i64 2
  br label %._crit_edge2008.i

._crit_edge2008.i:                                ; preds = %.lr.ph2007.preheader.i, %bb.aet
  %.413041622.pn.lcssa.i = phi ptr [ %.413041622.i, %bb.aet ], [ %scevgep2175.i, %.lr.ph2007.preheader.i ]
  %.0.lcssa.i921 = phi i64 [ %i.fhv, %bb.aet ], [ %i.fia, %.lr.ph2007.preheader.i ]
  %.51305.lcssa.i = phi ptr [ %.513052003.i, %bb.aet ], [ %scevgep2176.i, %.lr.ph2007.preheader.i ]
  %i.fic = trunc nuw i64 %.0.lcssa.i921 to i8
  %i.fid = getelementptr inbounds nuw i8, ptr %.413041622.pn.lcssa.i, i64 2
  store i8 %i.fic, ptr %.51305.lcssa.i, align 1, !tbaa !16
  br label %bb.aev

bb.aeu:                                           ; preds = %bb.aes
  %.0336.tr.i = trunc nuw nsw i64 %.0336.i918 to i8
  %i.fie = shl nuw i8 %.0336.tr.i, 4
  store i8 %i.fie, ptr %.413041622.i, align 1, !tbaa !16
  br label %bb.aev

bb.aev:                                           ; preds = %bb.aeu, %._crit_edge2008.i
  %.6.i919 = phi ptr [ %i.fid, %._crit_edge2008.i ], [ %.513052003.i, %bb.aeu ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.6.i919, ptr align 1 %.413101620.i, i64 %.0336.i918, i1 false)
  %i.fif = getelementptr inbounds nuw i8, ptr %.6.i919, i64 %.0336.i918
  %i.fig = ptrtoint ptr %i.fht to i64
  %i.fih = ptrtoint ptr %1 to i64
  %i.fii = sub i64 %i.fig, %i.fih
  %i.fij = trunc i64 %i.fii to i32
  store i32 %i.fij, ptr %3, align 4, !tbaa !9
  %i.fik = ptrtoint ptr %i.fif to i64
  %i.fil = ptrtoint ptr %2 to i64
  %i.fim = sub i64 %i.fik, %i.fil
  %i.fin = trunc i64 %i.fim to i32
  br label %bb.afg

.thread1587.i:                                    ; preds = %LZ4_wildCopy8.exit.i948, %bb.vk, %LZ4_wildCopy8.exit446.i, %..thread1587.loopexit.i_crit_edge
  %.31316.ph.i = phi ptr [ %.113141959.i, %..thread1587.loopexit.i_crit_edge ], [ %.113141959.i, %LZ4_wildCopy8.exit446.i ], [ %.013131982.i, %bb.vk ], [ %.013131982.i, %LZ4_wildCopy8.exit.i948 ] ; 2 uses
  %.31309.ph.i = phi ptr [ %.113071960.i, %..thread1587.loopexit.i_crit_edge ], [ %.113071960.i, %LZ4_wildCopy8.exit446.i ], [ %.013061983.i, %bb.vk ], [ %.013061983.i, %LZ4_wildCopy8.exit.i948 ] ; 4 uses
  %.5374.ph.i = phi i32 [ %i.fen, %..thread1587.loopexit.i_crit_edge ], [ %i.fen, %LZ4_wildCopy8.exit446.i ], [ %.22370.i.i702.i, %bb.vk ], [ %.22370.i.i702.i, %LZ4_wildCopy8.exit.i948 ]
  %.5.ph.i = phi i64 [ %.pre2739, %..thread1587.loopexit.i_crit_edge ], [ %i.ffs, %LZ4_wildCopy8.exit446.i ], [ %.sroa.03.sroa.4.0.insert.shift.i719.i, %bb.vk ], [ %.sroa.03.sroa.4.0.insert.shift.i719.i, %LZ4_wildCopy8.exit.i948 ]
  %.4.ph.i = phi ptr [ %.113021961.i, %..thread1587.loopexit.i_crit_edge ], [ %.113021961.i, %LZ4_wildCopy8.exit446.i ], [ %.013011984.i, %bb.vk ], [ %.013011984.i, %LZ4_wildCopy8.exit.i948 ] ; 12 uses
  br i1 %i.crg, label %bb.aew, label %bb.afg

bb.aew:                                           ; preds = %.thread1587.i
  %i.fio = ptrtoint ptr %.31316.ph.i to i64       ; 3 uses
  %i.fip = ptrtoint ptr %.31309.ph.i to i64       ; 4 uses
  %i.fiq = sub i64 %i.fio, %i.fip                 ; 6 uses
  %i.fir = add i64 %i.fiq, 240
  %i.fis = udiv i64 %i.fir, 255
  %i.fit = getelementptr inbounds i8, ptr %i.crf, i64 -8 ; 2 uses
  %i.fiu = getelementptr i8, ptr %.4.ph.i, i64 %i.fis
  %i.fiv = getelementptr i8, ptr %i.fiu, i64 1
  %i.fiw = getelementptr i8, ptr %i.fiv, i64 %i.fiq ; 3 uses
  %.not416.i = icmp ugt ptr %i.fiw, %i.fit
  br i1 %.not416.i, label %.thread1624.i, label %bb.aex

bb.aex:                                           ; preds = %bb.aew
  %i.fix = ptrtoint ptr %i.fit to i64
  %i.fiy = ptrtoint ptr %i.fiw to i64
  %i.fiz = sub i64 %i.fix, %i.fiy
  %i.fja = mul i64 %i.fiz, 255
  %i.fjb = add i64 %i.fja, 18
  %spec.select4241677.i = tail call i64 @llvm.umin.i64(i64 %i.fjb, i64 %.5.ph.i)
  %i.fjc = getelementptr inbounds nuw i8, ptr %i.fiw, i64 2
  %i.fjd = ptrtoint ptr %i.crf to i64
  %i.fje = ptrtoint ptr %i.fjc to i64
  %sext.i932 = shl i64 %spec.select4241677.i, 32
  %i.fjf = ashr exact i64 %sext.i932, 32          ; 5 uses
  %i.fjg = add i64 %i.fjf, %i.fjd
  %i.fjh = sub i64 %i.fje, %i.fjg
  %i.fji = icmp slt i64 %i.fjh, -12
  br i1 %i.fji, label %bb.aey, label %.thread1624.i

bb.aey:                                           ; preds = %bb.aex
  %i.fjj = getelementptr i8, ptr %.4.ph.i, i64 1  ; 3 uses
  %i.fjk = icmp ugt i64 %i.fiq, 14
  br i1 %i.fjk, label %bb.aez, label %bb.afa

bb.aez:                                           ; preds = %bb.aey
  %i.fjl = add i64 %i.fiq, -15                    ; 2 uses
  store i8 -16, ptr %.4.ph.i, align 1, !tbaa !16
  %i.fjm = icmp ugt i64 %i.fjl, 254
  br i1 %i.fjm, label %.lr.ph1992.preheader.i, label %._crit_edge1993.i

.lr.ph1992.preheader.i:                           ; preds = %bb.aez
  %i.fjn = add i64 %i.fio, -270
  %i.fjo = sub i64 %i.fjn, %i.fip                 ; 2 uses
  %i.fjp = udiv i64 %i.fjo, 255                   ; 3 uses
  %i.fjq = add nuw nsw i64 %i.fjp, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fjj, i8 -1, i64 %i.fjq, i1 false), !tbaa !16
  %i.fjr = getelementptr i8, ptr %.4.ph.i, i64 %i.fjp
  %scevgep2173.i = getelementptr i8, ptr %i.fjr, i64 2
  %.neg2388.i = mul i64 %i.fjp, -255
  %i.fjs = add i64 %.neg2388.i, %i.fjo
  br label %._crit_edge1993.i

._crit_edge1993.i:                                ; preds = %.lr.ph1992.preheader.i, %bb.aez
  %.11.lcssa.i = phi ptr [ %i.fjj, %bb.aez ], [ %scevgep2173.i, %.lr.ph1992.preheader.i ] ; 2 uses
  %.053.i.lcssa.i941 = phi i64 [ %i.fjl, %bb.aez ], [ %i.fjs, %.lr.ph1992.preheader.i ]
  %i.fjt = trunc nuw i64 %.053.i.lcssa.i941 to i8
  %i.fju = getelementptr inbounds nuw i8, ptr %.11.lcssa.i, i64 1
  store i8 %i.fjt, ptr %.11.lcssa.i, align 1, !tbaa !16
  br label %.critedge.i.i934

bb.afa:                                           ; preds = %bb.aey
  %.tr.i.i933 = trunc nuw nsw i64 %i.fiq to i8
  %i.fjv = shl nuw i8 %.tr.i.i933, 4
  store i8 %i.fjv, ptr %.4.ph.i, align 1, !tbaa !16
  br label %.critedge.i.i934

.critedge.i.i934:                                 ; preds = %bb.afa, %._crit_edge1993.i
  %.8.i935 = phi ptr [ %i.fju, %._crit_edge1993.i ], [ %i.fjj, %bb.afa ] ; 3 uses
  %i.fjw = getelementptr inbounds nuw i8, ptr %.8.i935, i64 %i.fiq ; 3 uses
  br label %bb.afb

bb.afb:                                           ; preds = %bb.afb, %.critedge.i.i934
  %.09.i447.i = phi ptr [ %.8.i935, %.critedge.i.i934 ], [ %i.fjy, %bb.afb ] ; 2 uses
  %.0.i448.i = phi ptr [ %.31309.ph.i, %.critedge.i.i934 ], [ %i.fjz, %bb.afb ] ; 2 uses
  %i.fjx = load i64, ptr %.0.i448.i, align 1
  store i64 %i.fjx, ptr %.09.i447.i, align 1
  %i.fjy = getelementptr inbounds nuw i8, ptr %.09.i447.i, i64 8 ; 2 uses
  %i.fjz = getelementptr inbounds nuw i8, ptr %.0.i448.i, i64 8
  %i.fka = icmp ult ptr %i.fjy, %i.fjw
  br i1 %i.fka, label %bb.afb, label %LZ4_wildCopy8.exit449.i, !llvm.loop !44

LZ4_wildCopy8.exit449.i:                          ; preds = %bb.afb
  %i.fkb = trunc i32 %.5374.ph.i to i16
  store i16 %i.fkb, ptr %i.fjw, align 1, !tbaa !36
  %i.fkc = getelementptr i8, ptr %i.fjw, i64 2    ; 3 uses
  %i.fkd = add nsw i64 %i.fjf, -4                 ; 2 uses
  %i.fke = icmp ugt i64 %i.fkd, 14
  br i1 %i.fke, label %bb.afc, label %bb.aff

bb.afc:                                           ; preds = %LZ4_wildCopy8.exit449.i
  %i.fkf = load i8, ptr %.4.ph.i, align 1, !tbaa !16
  %i.fkg = add i8 %i.fkf, 15
  store i8 %i.fkg, ptr %.4.ph.i, align 1, !tbaa !16
  %i.fkh = add nsw i64 %i.fjf, -19                ; 2 uses
  %i.fki = icmp ugt i64 %i.fkh, 509
  br i1 %i.fki, label %.lr.ph1999.preheader.i, label %._crit_edge2000.i

.lr.ph1999.preheader.i:                           ; preds = %bb.afc
  %i.fkj = add nsw i64 %i.fjf, -529               ; 2 uses
  %i.fkk = udiv i64 %i.fkj, 510                   ; 2 uses
  %i.fkl = shl nuw nsw i64 %i.fkk, 1              ; 2 uses
  %i.fkm = add nuw nsw i64 %i.fkl, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fkc, i8 -1, i64 %i.fkm, i1 false), !tbaa !16
  %i.fkn = add i64 %i.fio, 4
  %i.fko = sub i64 %i.fkn, %i.fip
  %i.fkp = getelementptr i8, ptr %.8.i935, i64 %i.fko
  %scevgep2174.i = getelementptr i8, ptr %i.fkp, i64 %i.fkl
  %.neg2389.i = mul i64 %i.fkk, -510
  %i.fkq = add i64 %.neg2389.i, %i.fkj
  br label %._crit_edge2000.i

._crit_edge2000.i:                                ; preds = %.lr.ph1999.preheader.i, %bb.afc
  %.9.lcssa.i938 = phi ptr [ %i.fkc, %bb.afc ], [ %scevgep2174.i, %.lr.ph1999.preheader.i ] ; 3 uses
  %.0.i.lcssa.i939 = phi i64 [ %i.fkh, %bb.afc ], [ %i.fkq, %.lr.ph1999.preheader.i ] ; 3 uses
  %i.fkr = icmp samesign ugt i64 %.0.i.lcssa.i939, 254
  br i1 %i.fkr, label %bb.afd, label %bb.afe

bb.afd:                                           ; preds = %._crit_edge2000.i
  %i.fks = add nsw i64 %.0.i.lcssa.i939, -255
  %i.fkt = getelementptr inbounds nuw i8, ptr %.9.lcssa.i938, i64 1
  store i8 -1, ptr %.9.lcssa.i938, align 1, !tbaa !16
  br label %bb.afe

bb.afe:                                           ; preds = %bb.afd, %._crit_edge2000.i
  %.10.i = phi ptr [ %i.fkt, %bb.afd ], [ %.9.lcssa.i938, %._crit_edge2000.i ] ; 2 uses
  %.1.i.i940 = phi i64 [ %i.fks, %bb.afd ], [ %.0.i.lcssa.i939, %._crit_edge2000.i ]
  %i.fku = trunc nuw i64 %.1.i.i940 to i8
  %i.fkv = getelementptr inbounds nuw i8, ptr %.10.i, i64 1
  store i8 %i.fku, ptr %.10.i, align 1, !tbaa !16
  br label %LZ4HC_encodeSequence.exit.i936

bb.aff:                                           ; preds = %LZ4_wildCopy8.exit449.i
  %i.fkw = trunc nuw nsw i64 %i.fkd to i8
  %i.fkx = load i8, ptr %.4.ph.i, align 1, !tbaa !16
  %i.fky = add i8 %i.fkx, %i.fkw
  store i8 %i.fky, ptr %.4.ph.i, align 1, !tbaa !16
  br label %LZ4HC_encodeSequence.exit.i936

LZ4HC_encodeSequence.exit.i936:                   ; preds = %bb.aff, %bb.afe
  %.12.i937 = phi ptr [ %i.fkv, %bb.afe ], [ %i.fkc, %bb.aff ]
  %i.fkz = getelementptr inbounds i8, ptr %.31316.ph.i, i64 %i.fjf
  br label %.loopexit1697.i

bb.afg:                                           ; preds = %.thread1587.i, %bb.aev, %bb.aer
  %.1349.i920 = phi i32 [ 0, %bb.aer ], [ %i.fin, %bb.aev ], [ 0, %.thread1587.i ]
  tail call void @free(ptr noundef nonnull %i.cqx) #17
  br label %LZ4MID_compress.exit

LZ4MID_compress.exit:                             ; preds = %bb.afg, %.critedge.i, %.critedge290.i
  %.0 = phi i32 [ %.1349.i920, %bb.afg ], [ %i.coi, %.critedge.i ], [ %i.rb, %.critedge290.i ] ; 3 uses
  %i.fla = icmp slt i32 %.0, 1
  br i1 %i.fla, label %LZ4MID_compress.exit.thread, label %bb.afh

LZ4MID_compress.exit.thread:                      ; preds = %bb.ru, %bb.rg, %bb.cs, %bb.cw, %LZ4HC_encodeSequence.exit, %LZ4MID_compress.exit
  %.01426 = phi i32 [ %.0, %LZ4MID_compress.exit ], [ 0, %LZ4HC_encodeSequence.exit ], [ 0, %bb.cw ], [ 0, %bb.cs ], [ 0, %bb.rg ], [ 0, %bb.ru ]
  %i.flb = getelementptr inbounds nuw i8, ptr %0, i64 262183
  store i8 1, ptr %i.flb, align 1, !tbaa !15
  br label %bb.afh

bb.afh:                                           ; preds = %LZ4MID_compress.exit, %LZ4MID_compress.exit.thread, %bb.a, %bb.c
  %.040 = phi i32 [ %.0, %LZ4MID_compress.exit ], [ 0, %bb.a ], [ 1, %bb.c ], [ %.01426, %LZ4MID_compress.exit.thread ]
  ret i32 %.040
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, i32 } @LZ4MID_searchExtDict(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 262144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 262152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 262168
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = add i64 %i.g, %i.j                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 65536
  %.val105 = load i64, ptr %0, align 1            ; 6 uses
  %i.m = mul i64 %.val105, -3523014627193167104
  %i.n = lshr i64 %i.m, 50
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !9    ; 2 uses
  %i.q = trunc i64 %i.k to i32                    ; 2 uses
  %i.r = add i32 %4, %i.p
  %.neg = sub i32 %1, %i.r
  %i.s = add i32 %.neg, %i.q                      ; 2 uses
  %i.t = icmp ult i32 %i.s, 65536
  br i1 %i.t, label %bb.b, label %.thread114

bb.b:                                             ; preds = %bb.a
  %i.u = sub nsw i64 0, %i.j
  %i.v = getelementptr inbounds i8, ptr %i.d, i64 %i.u
  %i.w = zext i32 %i.p to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w ; 3 uses
  %i.y = sub i64 %i.k, %i.w
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ab = sub i64 %i.z, %i.aa
  %. = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.ab) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %. ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -7 ; 2 uses
  %i.ae = icmp sgt i64 %., 7
  br i1 %i.ae, label %bb.c, label %bb.e, !prof !32

bb.c:                                             ; preds = %bb.b
  %.val98 = load i64, ptr %i.x, align 1, !tbaa !31 ; 2 uses
  %.not.i93 = icmp eq i64 %.val98, %.val105
  br i1 %.not.i93, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = xor i64 %.val98, %.val105
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = lshr i32 %i.aj, 3
  br label %bb.o

bb.e:                                             ; preds = %.thread, %bb.b
  %.150.i76 = phi ptr [ %i.af, %.thread ], [ %0, %bb.b ] ; 3 uses
  %.145.i77 = phi ptr [ %i.ag, %.thread ], [ %i.x, %bb.b ] ; 2 uses
  %i.al = icmp ult ptr %.150.i76, %i.ad
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !prof !33

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.246.i80152 = phi ptr [ %i.au, %bb.f ], [ %.145.i77, %bb.e ] ; 2 uses
  %.251.i79151 = phi ptr [ %i.at, %bb.f ], [ %.150.i76, %bb.e ] ; 3 uses
  %.246.i80.val100 = load i64, ptr %.246.i80152, align 1, !tbaa !31 ; 2 uses
  %.251.i79.val99 = load i64, ptr %.251.i79151, align 1, !tbaa !31 ; 2 uses
  %.not59.i89 = icmp eq i64 %.246.i80.val100, %.251.i79.val99
  br i1 %.not59.i89, label %bb.f, label %.thread110

.thread110:                                       ; preds = %.lr.ph
  %i.am = xor i64 %.251.i79.val99, %.246.i80.val100
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.am, i1 true)
  %i.ao = lshr i64 %i.an, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.251.i79151, i64 %i.ao
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.aa
  %i.as = trunc i64 %i.ar to i32
  br label %bb.o

bb.f:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.251.i79151, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.246.i80152, i64 8 ; 2 uses
  %i.av = icmp ult ptr %i.at, %i.ad
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !prof !34

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.251.i79.lcssa = phi ptr [ %.150.i76, %bb.e ], [ %i.at, %bb.f ] ; 5 uses
  %.246.i80.lcssa = phi ptr [ %.145.i77, %bb.e ], [ %i.au, %bb.f ] ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %i.ac, i64 -3
  %i.ax = icmp ult ptr %.251.i79.lcssa, %i.aw
  br i1 %i.ax, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %.246.i80.val = load i32, ptr %.246.i80.lcssa, align 1, !tbaa !26
  %.251.i79.val = load i32, ptr %.251.i79.lcssa, align 1, !tbaa !26
  %i.ay = icmp eq i32 %.246.i80.val, %.251.i79.val
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.251.i79.lcssa, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.246.i80.lcssa, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge
  %.453.i82 = phi ptr [ %i.az, %bb.h ], [ %.251.i79.lcssa, %bb.g ], [ %.251.i79.lcssa, %._crit_edge ] ; 5 uses
  %.448.i83 = phi ptr [ %i.ba, %bb.h ], [ %.246.i80.lcssa, %bb.g ], [ %.246.i80.lcssa, %._crit_edge ] ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ac, i64 -1
  %i.bc = icmp ult ptr %.453.i82, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.448.i83.val = load i16, ptr %.448.i83, align 1, !tbaa !36
  %.453.i82.val = load i16, ptr %.453.i82, align 1, !tbaa !36
  %i.bd = icmp eq i16 %.448.i83.val, %.453.i82.val
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.453.i82, i64 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.448.i83, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.554.i84 = phi ptr [ %i.be, %bb.k ], [ %.453.i82, %bb.j ], [ %.453.i82, %bb.i ] ; 4 uses
  %.5.i85 = phi ptr [ %i.bf, %bb.k ], [ %.448.i83, %bb.j ], [ %.448.i83, %bb.i ]
  %i.bg = icmp ult ptr %.554.i84, %i.ac
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = load i8, ptr %.5.i85, align 1, !tbaa !16
  %i.bi = load i8, ptr %.554.i84, align 1, !tbaa !16
  %i.bj = icmp eq i8 %i.bh, %i.bi
  %spec.select.i88.idx = zext i1 %i.bj to i64
  %spec.select.i88 = getelementptr inbounds nuw i8, ptr %.554.i84, i64 %spec.select.i88.idx
  br label %bb.n

end_hunk_4
