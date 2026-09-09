Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpeg12enc?download=true
inline.NumInlined: 182
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@mpeg1_encode_picture_header:bb.a
  %i.bni = icmp sgt i32 %i.bnd, 8
  br i1 %i.bni, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  %i.bnj = shl i32 %i.bne, 8
  %i.bnk = or disjoint i32 %i.bnj, %i.bnh
  br label %put_bits.exit262

bb.mp:                                            ; preds = %bb.mn
  %i.bnl = load ptr, ptr %i.aob, align 8, !tbaa !53
  %i.bnm = load ptr, ptr %i.aod, align 16, !tbaa !54 ; 2 uses
  %i.bnn = ptrtoint ptr %i.bnl to i64
  %i.bno = ptrtoint ptr %i.bnm to i64
  %i.bnp = sub i64 %i.bnn, %i.bno
  %i.bnq = icmp ugt i64 %i.bnp, 3
  br i1 %i.bnq, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %bb.mp
  %i.bnr = shl i32 %i.bne, %i.bnd
  %i.bns = sub nsw i32 8, %i.bnd
  %i.bnt = lshr i32 %i.bnh, %i.bns
  %i.bnu = or i32 %i.bnt, %i.bnr
  %i.bnv = tail call i32 @llvm.bswap.i32(i32 %i.bnu)
  store i32 %i.bnv, ptr %i.bnm, align 1, !tbaa !9
  %i.bnw = load ptr, ptr %i.aod, align 16, !tbaa !54
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnw, i64 4
  store ptr %i.bnx, ptr %i.aod, align 16, !tbaa !54
  br label %put_bits.exit262

bb.mr:                                            ; preds = %bb.mp
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_bits.exit262

put_bits.exit262:                                 ; preds = %bb.mq, %bb.mr, %bb.mo
  %.sink418 = phi i32 [ -8, %bb.mo ], [ 24, %bb.mr ], [ 24, %bb.mq ]
  %.026.i.i260 = phi i32 [ %i.bnk, %bb.mo ], [ %i.bnh, %bb.mr ], [ %i.bnh, %bb.mq ] ; 2 uses
  %i.bny = add nsw i32 %i.bnd, %.sink418          ; 2 uses
  store i32 %.026.i.i260, ptr %i.a, align 16, !tbaa !52
  store i32 %i.bny, ptr %i.b, align 4, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %.loopexit, label %bb.mn, !llvm.loop !133

.loopexit:                                        ; preds = %put_bits.exit262, %bb.me
  %i.bnz = load ptr, ptr %i.h, align 16, !tbaa !135
  %i.boa = load ptr, ptr %i.bnz, align 8, !tbaa !138
  %i.bob = tail call ptr @av_frame_get_side_data(ptr noundef %i.boa, i32 noundef 2) #10 ; 2 uses
  %.not126 = icmp eq ptr %i.bob, null
  br i1 %.not126, label %.critedge, label %bb.ms

bb.ms:                                            ; preds = %.loopexit
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bob, i64 8
  %i.bod = load ptr, ptr %i.boc, align 8, !tbaa !157
  %i.boe = load i32, ptr %i.bod, align 4, !tbaa !179 ; 3 uses
  %i.bof = icmp ult i32 %i.boe, 6
  %switch.maskindex = trunc i32 %i.boe to i8
  %switch.shifted = lshr i8 39, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond427 = select i1 %i.bof, i1 %switch.lobit, i1 false
  br i1 %or.cond427, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %bb.ms
  %i.bog = zext nneg i32 %i.boe to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.mpeg1_encode_picture_header, i64 %i.bog
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 4 uses
  %i.boh = load i32, ptr %i.b, align 4, !tbaa !51 ; 5 uses
  %i.boi = load i32, ptr %i.a, align 16, !tbaa !52 ; 2 uses
  %i.boj = icmp sgt i32 %i.boh, 7
  br i1 %i.boj, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %switch.lookup
  %i.bok = and i32 %i.boh, 7
  %i.bol = shl i32 %i.boi, %i.bok
  %i.bom = and i32 %i.boh, 2147483640
  br label %align_put_bits.exit.i264

bb.mu:                                            ; preds = %switch.lookup
  %i.bon = load ptr, ptr %i.aob, align 8, !tbaa !53
  %i.boo = load ptr, ptr %i.aod, align 16, !tbaa !54 ; 2 uses
  %i.bop = ptrtoint ptr %i.bon to i64
  %i.boq = ptrtoint ptr %i.boo to i64
  %i.bor = sub i64 %i.bop, %i.boq
  %i.bos = icmp ugt i64 %i.bor, 3
  br i1 %i.bos, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %bb.mu
  %i.bot = shl i32 %i.boi, %i.boh
  %i.bou = tail call i32 @llvm.bswap.i32(i32 %i.bot)
  store i32 %i.bou, ptr %i.boo, align 1, !tbaa !9
  %i.bov = load ptr, ptr %i.aod, align 16, !tbaa !54
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 4
  store ptr %i.bow, ptr %i.aod, align 16, !tbaa !54
  br label %bb.mx

bb.mw:                                            ; preds = %bb.mu
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %bb.mv
  %reass.sub.i.i.i263 = and i32 %i.boh, -8
  %i.box = add i32 %reass.sub.i.i.i263, 32
  br label %align_put_bits.exit.i264

align_put_bits.exit.i264:                         ; preds = %bb.mx, %bb.mt
  %.026.i.i.i.i265 = phi i32 [ %i.bol, %bb.mt ], [ 0, %bb.mx ] ; 2 uses
  %.0.i.i.i.i266 = phi i32 [ %i.bom, %bb.mt ], [ %i.box, %bb.mx ] ; 11 uses
  store i32 %.026.i.i.i.i265, ptr %i.a, align 16, !tbaa !52
  store i32 %.0.i.i.i.i266, ptr %i.b, align 4, !tbaa !51
  %i.boy = load ptr, ptr %i.aob, align 8, !tbaa !53
  %i.boz = load ptr, ptr %i.aod, align 16, !tbaa !54 ; 2 uses
  %i.bpa = ptrtoint ptr %i.boy to i64
  %i.bpb = ptrtoint ptr %i.boz to i64
  %i.bpc = sub i64 %i.bpa, %i.bpb
  %i.bpd = icmp ugt i64 %i.bpc, 3
  br i1 %i.bpd, label %bb.my, label %bb.mz

bb.my:                                            ; preds = %align_put_bits.exit.i264
  %i.bpe = zext i32 %.026.i.i.i.i265 to i64
  %i.bpf = zext nneg i32 %.0.i.i.i.i266 to i64
  %i.bpg = shl i64 %i.bpe, %i.bpf
  %i.bph = trunc i64 %i.bpg to i32
  %i.bpi = sub nsw i32 32, %.0.i.i.i.i266
  %i.bpj = lshr i32 434, %i.bpi
  %i.bpk = or i32 %i.bpj, %i.bph
  %i.bpl = tail call i32 @llvm.bswap.i32(i32 %i.bpk)
  store i32 %i.bpl, ptr %i.boz, align 1, !tbaa !9
  %i.bpm = load ptr, ptr %i.aod, align 16, !tbaa !54
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 4 ; 2 uses
  store ptr %i.bpn, ptr %i.aod, align 16, !tbaa !54
  br label %put_header.exit267

bb.mz:                                            ; preds = %align_put_bits.exit.i264
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  %.pre328 = load ptr, ptr %i.aod, align 16, !tbaa !54
  br label %put_header.exit267

put_header.exit267:                               ; preds = %bb.my, %bb.mz
  %i.bpo = phi ptr [ %i.bpn, %bb.my ], [ %.pre328, %bb.mz ] ; 2 uses
  store i32 434, ptr %i.a, align 16, !tbaa !52
  store i32 %.0.i.i.i.i266, ptr %i.b, align 4, !tbaa !51
  %i.bpp = load ptr, ptr %i.aob, align 8, !tbaa !53
  %i.bpq = ptrtoint ptr %i.bpp to i64
  %i.bpr = ptrtoint ptr %i.bpo to i64
  %i.bps = sub i64 %i.bpq, %i.bpr
  %i.bpt = icmp ugt i64 %i.bps, 3
  br i1 %i.bpt, label %bb.na, label %bb.nb

bb.na:                                            ; preds = %put_header.exit267
  %i.bpu = zext nneg i32 %.0.i.i.i.i266 to i64
  %i.bpv = shl i64 434, %i.bpu
  %i.bpw = trunc i64 %i.bpv to i32
  %i.bpx = sub nsw i32 32, %.0.i.i.i.i266
  %i.bpy = lshr i32 1246769988, %i.bpx
  %i.bpz = or i32 %i.bpy, %i.bpw
  %i.bqa = tail call i32 @llvm.bswap.i32(i32 %i.bpz)
  store i32 %i.bqa, ptr %i.bpo, align 1, !tbaa !9
  %i.bqb = load ptr, ptr %i.aod, align 16, !tbaa !54
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bqb, i64 4
  store ptr %i.bqc, ptr %i.aod, align 16, !tbaa !54
  br label %put_bits32.exit

bb.nb:                                            ; preds = %put_header.exit267
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_bits32.exit

put_bits32.exit:                                  ; preds = %bb.na, %bb.nb
  store i32 1246769988, ptr %i.a, align 16, !tbaa !52
  store i32 %.0.i.i.i.i266, ptr %i.b, align 4, !tbaa !51
  %i.bqd = icmp sgt i32 %.0.i.i.i.i266, 8
  br i1 %i.bqd, label %put_bits.exit271, label %bb.nc

bb.nc:                                            ; preds = %put_bits32.exit
  %i.bqe = load ptr, ptr %i.aob, align 8, !tbaa !53
  %i.bqf = load ptr, ptr %i.aod, align 16, !tbaa !54 ; 2 uses
  %i.bqg = ptrtoint ptr %i.bqe to i64
  %i.bqh = ptrtoint ptr %i.bqf to i64
  %i.bqi = sub i64 %i.bqg, %i.bqh
  %i.bqj = icmp ugt i64 %i.bqi, 3
  br i1 %i.bqj, label %bb.nd, label %bb.ne

bb.nd:                                            ; preds = %bb.nc
  %i.bqk = shl i32 1246769988, %.0.i.i.i.i266
  %i.bql = sub nsw i32 8, %.0.i.i.i.i266
  %i.bqm = lshr i32 3, %i.bql
  %i.bqn = or disjoint i32 %i.bqm, %i.bqk
  %i.bqo = tail call i32 @llvm.bswap.i32(i32 %i.bqn)
  store i32 %i.bqo, ptr %i.bqf, align 1, !tbaa !9
  %i.bqp = load ptr, ptr %i.aod, align 16, !tbaa !54
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 4
  store ptr %i.bqq, ptr %i.aod, align 16, !tbaa !54
  br label %put_bits.exit271

bb.ne:                                            ; preds = %bb.nc
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_bits.exit271

put_bits.exit271:                                 ; preds = %bb.nd, %bb.ne, %put_bits32.exit
  %.sink419 = phi i32 [ -8, %put_bits32.exit ], [ 24, %bb.ne ], [ 24, %bb.nd ]
  %.026.i.i269 = phi i32 [ 1345537027, %put_bits32.exit ], [ 3, %bb.ne ], [ 3, %bb.nd ] ; 3 uses
  %i.bqr = add nsw i32 %.0.i.i.i.i266, %.sink419  ; 4 uses
  store i32 %.026.i.i269, ptr %i.a, align 16, !tbaa !52
  store i32 %i.bqr, ptr %i.b, align 4, !tbaa !51
  %i.bqs = icmp sgt i32 %i.bqr, 1
  br i1 %i.bqs, label %bb.nf, label %bb.ng

bb.nf:                                            ; preds = %put_bits.exit271
  %i.bqt = shl nuw i32 %.026.i.i269, 1
  %i.bqu = or disjoint i32 %i.bqt, 1
  br label %put_bits.exit275

bb.ng:                                            ; preds = %put_bits.exit271
  %i.bqv = load ptr, ptr %i.aob, align 8, !tbaa !53
  %i.bqw = load ptr, ptr %i.aod, align 16, !tbaa !54 ; 2 uses
  %i.bqx = ptrtoint ptr %i.bqv to i64
  %i.bqy = ptrtoint ptr %i.bqw to i64
  %i.bqz = sub i64 %i.bqx, %i.bqy
  %i.bra = icmp ugt i64 %i.bqz, 3
  br i1 %i.bra, label %bb.nh, label %bb.ni

bb.nh:                                            ; preds = %bb.ng
  %i.brb = shl nuw i32 %.026.i.i269, %i.bqr
  %i.brc = tail call i32 @llvm.bswap.i32(i32 %i.brb)
  store i32 %i.brc, ptr %i.bqw, align 1, !tbaa !9
  %i.brd = load ptr, ptr %i.aod, align 16, !tbaa !54
  %i.bre = getelementptr inbounds nuw i8, ptr %i.brd, i64 4
  store ptr %i.bre, ptr %i.aod, align 16, !tbaa !54
  br label %put_bits.exit275

bb.ni:                                            ; preds = %bb.ng
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_bits.exit275

put_bits.exit275:                                 ; preds = %bb.nh, %bb.ni, %bb.nf
  %.sink420 = phi i32 [ -1, %bb.nf ], [ 31, %bb.ni ], [ 31, %bb.nh ]
  %.026.i.i273 = phi i32 [ %i.bqu, %bb.nf ], [ 1, %bb.ni ], [ 1, %bb.nh ] ; 3 uses
  %i.brf = add nsw i32 %i.bqr, %.sink420          ; 5 uses
  store i32 %.026.i.i273, ptr %i.a, align 16, !tbaa !52
  store i32 %i.brf, ptr %i.b, align 4, !tbaa !51
  %i.brg = icmp sgt i32 %i.brf, 7
  br i1 %i.brg, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %put_bits.exit275
  %i.brh = shl i32 %.026.i.i273, 7
  %i.bri = or disjoint i32 %i.brh, %switch.ext
  br label %put_bits.exit279

bb.nk:                                            ; preds = %put_bits.exit275
  %i.brj = load ptr, ptr %i.aob, align 8, !tbaa !53
  %i.brk = load ptr, ptr %i.aod, align 16, !tbaa !54 ; 2 uses
  %i.brl = ptrtoint ptr %i.brj to i64
  %i.brm = ptrtoint ptr %i.brk to i64
  %i.brn = sub i64 %i.brl, %i.brm
  %i.bro = icmp ugt i64 %i.brn, 3
  br i1 %i.bro, label %bb.nl, label %bb.nm

bb.nl:                                            ; preds = %bb.nk
  %i.brp = shl i32 %.026.i.i273, %i.brf
  %i.brq = sub nsw i32 7, %i.brf
  %i.brr = lshr i32 %switch.ext, %i.brq
  %i.brs = or i32 %i.brr, %i.brp
  %i.brt = tail call i32 @llvm.bswap.i32(i32 %i.brs)
  store i32 %i.brt, ptr %i.brk, align 1, !tbaa !9
  %i.bru = load ptr, ptr %i.aod, align 16, !tbaa !54
  %i.brv = getelementptr inbounds nuw i8, ptr %i.bru, i64 4
  store ptr %i.brv, ptr %i.aod, align 16, !tbaa !54
  br label %put_bits.exit279

bb.nm:                                            ; preds = %bb.nk
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_bits.exit279

put_bits.exit279:                                 ; preds = %bb.nl, %bb.nm, %bb.nj
  %.sink421 = phi i32 [ -7, %bb.nj ], [ 25, %bb.nm ], [ 25, %bb.nl ]
  %.026.i.i277 = phi i32 [ %i.bri, %bb.nj ], [ %switch.ext, %bb.nm ], [ %switch.ext, %bb.nl ] ; 3 uses
  %i.brw = add nsw i32 %i.brf, %.sink421          ; 5 uses
  store i32 %.026.i.i277, ptr %i.a, align 16, !tbaa !52
  store i32 %i.brw, ptr %i.b, align 4, !tbaa !51
  %i.brx = icmp sgt i32 %i.brw, 16
  br i1 %i.brx, label %bb.nn, label %bb.no

bb.nn:                                            ; preds = %put_bits.exit279
  %i.bry = shl i32 %.026.i.i277, 16
  %i.brz = or disjoint i32 %i.bry, 1279
  br label %put_bits.exit283

bb.no:                                            ; preds = %put_bits.exit279
  %i.bsa = load ptr, ptr %i.aob, align 8, !tbaa !53
  %i.bsb = load ptr, ptr %i.aod, align 16, !tbaa !54 ; 2 uses
  %i.bsc = ptrtoint ptr %i.bsa to i64
  %i.bsd = ptrtoint ptr %i.bsb to i64
  %i.bse = sub i64 %i.bsc, %i.bsd
  %i.bsf = icmp ugt i64 %i.bse, 3
  br i1 %i.bsf, label %bb.np, label %bb.nq

bb.np:                                            ; preds = %bb.no
  %i.bsg = shl i32 %.026.i.i277, %i.brw
  %i.bsh = sub nsw i32 16, %i.brw
  %i.bsi = lshr i32 1279, %i.bsh
  %i.bsj = or i32 %i.bsi, %i.bsg
  %i.bsk = tail call i32 @llvm.bswap.i32(i32 %i.bsj)
  store i32 %i.bsk, ptr %i.bsb, align 1, !tbaa !9
  %i.bsl = load ptr, ptr %i.aod, align 16, !tbaa !54
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsl, i64 4
  store ptr %i.bsm, ptr %i.aod, align 16, !tbaa !54
  br label %put_bits.exit283

bb.nq:                                            ; preds = %bb.no
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_bits.exit283

put_bits.exit283:                                 ; preds = %bb.np, %bb.nq, %bb.nn
  %.sink422 = phi i32 [ -16, %bb.nn ], [ 16, %bb.nq ], [ 16, %bb.np ]
  %.026.i.i281 = phi i32 [ %i.brz, %bb.nn ], [ 1279, %bb.nq ], [ 1279, %bb.np ]
  %i.bsn = add nsw i32 %i.brw, %.sink422
  store i32 %.026.i.i281, ptr %i.a, align 16, !tbaa !52
  store i32 %i.bsn, ptr %i.b, align 4, !tbaa !51
  br label %.critedge

.critedge:                                        ; preds = %bb.ms, %put_bits.exit283, %.loopexit
  %i.bso = getelementptr inbounds nuw i8, ptr %0, i64 11056
  %i.bsp = load i32, ptr %i.bso, align 16, !tbaa !180
  %.not128 = icmp eq i32 %i.bsp, 0
  br i1 %.not128, label %bb.oz, label %bb.nr

bb.nr:                                            ; preds = %.critedge
  %i.bsq = load ptr, ptr %i.h, align 16, !tbaa !135
  %i.bsr = load ptr, ptr %i.bsq, align 8, !tbaa !138
  %i.bss = tail call ptr @av_frame_get_side_data(ptr noundef %i.bsr, i32 noundef 1) #10 ; 3 uses
  %.not129 = icmp eq ptr %i.bss, null
  br i1 %.not129, label %bb.oz, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bss, i64 16 ; 4 uses
  %i.bsu = load i64, ptr %i.bst, align 8, !tbaa !181 ; 3 uses
  %i.bsv = icmp ult i64 %i.bsu, 94
  %i.bsw = urem i64 %i.bsu, 3
  %i.bsx = icmp eq i64 %i.bsw, 0
  %or.cond = and i1 %i.bsv, %i.bsx
  br i1 %or.cond, label %bb.nt, label %bb.oy

bb.nt:                                            ; preds = %bb.ns
  %i.bsy = load i32, ptr %i.b, align 4, !tbaa !51 ; 5 uses
  %i.bsz = load i32, ptr %i.a, align 16, !tbaa !52 ; 2 uses
  %i.bta = icmp sgt i32 %i.bsy, 7
  br i1 %i.bta, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %bb.nt
  %i.btb = and i32 %i.bsy, 7
  %i.btc = shl i32 %i.bsz, %i.btb
  %i.btd = and i32 %i.bsy, 2147483640
  br label %align_put_bits.exit.i285

bb.nv:                                            ; preds = %bb.nt
  %i.bte = load ptr, ptr %i.aob, align 8, !tbaa !53
  %i.btf = load ptr, ptr %i.aod, align 16, !tbaa !54 ; 2 uses
  %i.btg = ptrtoint ptr %i.bte to i64
  %i.bth = ptrtoint ptr %i.btf to i64
  %i.bti = sub i64 %i.btg, %i.bth
  %i.btj = icmp ugt i64 %i.bti, 3
  br i1 %i.btj, label %bb.nw, label %bb.nx

bb.nw:                                            ; preds = %bb.nv
  %i.btk = shl i32 %i.bsz, %i.bsy
  %i.btl = tail call i32 @llvm.bswap.i32(i32 %i.btk)
  store i32 %i.btl, ptr %i.btf, align 1, !tbaa !9
  %i.btm = load ptr, ptr %i.aod, align 16, !tbaa !54
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btm, i64 4
  store ptr %i.btn, ptr %i.aod, align 16, !tbaa !54
  br label %bb.ny

bb.nx:                                            ; preds = %bb.nv
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %bb.ny

bb.ny:                                            ; preds = %bb.nx, %bb.nw
  %reass.sub.i.i.i284 = and i32 %i.bsy, -8
  %i.bto = add i32 %reass.sub.i.i.i284, 32
  br label %align_put_bits.exit.i285

align_put_bits.exit.i285:                         ; preds = %bb.ny, %bb.nu
  %.026.i.i.i.i286 = phi i32 [ %i.btc, %bb.nu ], [ 0, %bb.ny ] ; 2 uses
  %.0.i.i.i.i287 = phi i32 [ %i.btd, %bb.nu ], [ %i.bto, %bb.ny ] ; 11 uses
  store i32 %.026.i.i.i.i286, ptr %i.a, align 16, !tbaa !52
  store i32 %.0.i.i.i.i287, ptr %i.b, align 4, !tbaa !51
  %i.btp = load ptr, ptr %i.aob, align 8, !tbaa !53
  %i.btq = load ptr, ptr %i.aod, align 16, !tbaa !54 ; 2 uses
  %i.btr = ptrtoint ptr %i.btp to i64
  %i.bts = ptrtoint ptr %i.btq to i64
  %i.btt = sub i64 %i.btr, %i.bts
  %i.btu = icmp ugt i64 %i.btt, 3
  br i1 %i.btu, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %align_put_bits.exit.i285
  %i.btv = zext i32 %.026.i.i.i.i286 to i64
  %i.btw = zext nneg i32 %.0.i.i.i.i287 to i64
  %i.btx = shl i64 %i.btv, %i.btw
  %i.bty = trunc i64 %i.btx to i32
  %i.btz = sub nsw i32 32, %.0.i.i.i.i287
  %i.bua = lshr i32 434, %i.btz
  %i.bub = or i32 %i.bua, %i.bty
  %i.buc = tail call i32 @llvm.bswap.i32(i32 %i.bub)
  store i32 %i.buc, ptr %i.btq, align 1, !tbaa !9
  %i.bud = load ptr, ptr %i.aod, align 16, !tbaa !54
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bud, i64 4 ; 2 uses
  store ptr %i.bue, ptr %i.aod, align 16, !tbaa !54
  br label %put_header.exit288

bb.oa:                                            ; preds = %align_put_bits.exit.i285
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  %.pre329 = load ptr, ptr %i.aod, align 16, !tbaa !54
  br label %put_header.exit288

put_header.exit288:                               ; preds = %bb.nz, %bb.oa
  %i.buf = phi ptr [ %i.bue, %bb.nz ], [ %.pre329, %bb.oa ] ; 2 uses
  store i32 434, ptr %i.a, align 16, !tbaa !52
  store i32 %.0.i.i.i.i287, ptr %i.b, align 4, !tbaa !51
  %i.bug = load ptr, ptr %i.aob, align 8, !tbaa !53
  %i.buh = ptrtoint ptr %i.bug to i64
  %i.bui = ptrtoint ptr %i.buf to i64
  %i.buj = sub i64 %i.buh, %i.bui
  %i.buk = icmp ugt i64 %i.buj, 3
  br i1 %i.buk, label %bb.ob, label %bb.oc
end_hunk_0
