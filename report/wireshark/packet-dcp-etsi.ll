Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-dcp-etsi?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_pft:bb.a
  %i.bc = load i32, ptr @hf_edcp_pft_payload, align 4
  %i.bd = and i32 %i.bb, 65535                    ; 14 uses
  %i.be = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.aw, i32 noundef %i.bd, i32 noundef 0) ; 0 uses
  %i.bf = load i16, ptr %i.b, align 2             ; 2 uses
  %i.bg = trunc i32 %i.bb to i16
  %i.bh = icmp ne i16 %i.bf, %i.bg
  %i.bi = icmp eq i32 %i.bd, 0
  %or.cond = or i1 %i.bi, %i.bh
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ab, ptr noundef nonnull @.str.120, i32 noundef %i.bd)
  br label %dissect_pft_fragmented.exit

bb.h:                                             ; preds = %bb.f
  %i.bj = load i32, ptr %i.c, align 4             ; 4 uses
  %i.bk = load i32, ptr %i.d, align 4             ; 16 uses
  %i.bl = load i16, ptr %i.a, align 2
  %i.bm = load i8, ptr %i.e, align 1, !range !6, !noundef !7
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = load i8, ptr %i.h, align 1              ; 3 uses
  store i8 1, ptr %i.az, align 8
  %i.bp = icmp eq i32 %i.bj, 0
  %i.bq = add i32 %i.bj, 1
  %i.br = icmp ne i32 %i.bk, %i.bq                ; 3 uses
  %i.bs = zext i16 %i.bl to i32                   ; 3 uses
  %i.bt = call ptr @fragment_add_seq_check(ptr noundef nonnull @dcp_reassembly_table, ptr noundef %0, i32 noundef range(i32 14, 21) %i.aw, ptr noundef %1, i32 noundef %i.bs, ptr noundef null, i32 noundef %i.bj, i32 noundef %i.bd, i1 noundef zeroext %i.br) ; 3 uses
  br i1 %i.bn, label %bb.i, label %bb.aa

bb.i:                                             ; preds = %bb.h
  %i.bu = icmp ugt i32 %i.bk, 262144
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull @ei_edcp_reassembly, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.127, i32 noundef %i.bk) ; 0 uses
  br label %dissect_pft_fec_detailed.exit.thread.i

bb.k:                                             ; preds = %bb.i
  %i.bw = icmp eq i32 %i.bk, 0
  br i1 %i.bw, label %dissect_pft_fec_detailed.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = zext i8 %i.bo to i32                    ; 5 uses
  %i.by = icmp ugt i8 %i.bo, -49
  br i1 %i.by, label %dissect_pft_fec_detailed.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = mul i32 %i.bk, %i.bd                    ; 10 uses
  %i.ca = add nuw nsw i32 %i.bx, 48               ; 2 uses
  %i.cb = udiv i32 %i.bz, %i.ca                   ; 2 uses
  %i.cc = mul nuw i32 %i.cb, 48
  %i.cd = udiv i32 %i.cc, %i.bd
  %i.ce = sub i32 %i.bk, %i.cd                    ; 3 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %bb.n, label %.critedge.i.i

bb.n:                                             ; preds = %bb.m
  %i.cf = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull @ei_edcp_reassembly_info, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.128, i32 noundef %i.bk, i32 noundef 0, i32 noundef %i.ce) ; 0 uses
  %i.cg = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = shl nuw nsw i32 %i.bk, 2
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = call noalias ptr @wmem_alloc(ptr noundef %i.ch, i64 noundef %i.cj) #8 ; 2 uses
  %i.cl = call ptr @fragment_get(ptr noundef nonnull @dcp_reassembly_table, ptr noundef %1, i32 noundef %i.bs, ptr noundef null) ; 2 uses
  %.not169.i.i = icmp eq ptr %i.cl, null
  br i1 %.not169.i.i, label %.loopexit.i.i, label %.preheader186.i.i

.preheader186.i.i:                                ; preds = %bb.n
  %.0145191.i.i = load ptr, ptr %i.cl, align 8    ; 2 uses
  %.not206.i.i = icmp eq ptr %.0145191.i.i, null
  br i1 %.not206.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader186.i.i, %bb.p
  %.0145193.i.i = phi ptr [ %.0145.i.i, %bb.p ], [ %.0145191.i.i, %.preheader186.i.i ] ; 3 uses
  %.0146192.i.i = phi i32 [ %.1147.i.i, %bb.p ], [ 0, %.preheader186.i.i ] ; 3 uses
  %i.cm = getelementptr i8, ptr %.0145193.i.i, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  %.not173.i.i = icmp eq ptr %i.cn, null
  br i1 %.not173.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.co = getelementptr i8, ptr %.0145193.i.i, i64 12
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = add nuw nsw i32 %.0146192.i.i, 1
  %i.cr = zext i32 %.0146192.i.i to i64
  %i.cs = getelementptr [4 x i8], ptr %i.ck, i64 %i.cr
  store i32 %i.cp, ptr %i.cs, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i
  %.1147.i.i = phi i32 [ %i.cq, %bb.o ], [ %.0146192.i.i, %.lr.ph.i.i ] ; 3 uses
  %.0145.i.i = load ptr, ptr %.0145193.i.i, align 8 ; 2 uses
  %i.ct = icmp ne ptr %.0145.i.i, null
  %i.cu = icmp ult i32 %.1147.i.i, %i.bk
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %i.cv, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !9

.loopexit.i.i:                                    ; preds = %bb.p, %.preheader186.i.i, %bb.n
  %.2148.i.i = phi i32 [ 0, %bb.n ], [ 0, %.preheader186.i.i ], [ %.1147.i.i, %bb.p ] ; 4 uses
  %.not170.i.i = icmp ult i32 %.2148.i.i, %i.ce
  br i1 %.not170.i.i, label %dissect_pft_fec_detailed.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %.loopexit.i.i
  %i.cw = load ptr, ptr %i.cg, align 8
  %i.cx = zext nneg i32 %i.bd to i64
  %i.cy = call noalias ptr @wmem_alloc0(ptr noundef %i.cw, i64 noundef %i.cx) #8
  %i.cz = call ptr @tvb_new_real_data(ptr noundef %i.cy, i32 noundef %i.bd, i32 noundef %i.bd) ; 3 uses
  %i.da = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull @ei_edcp_reassembly_info, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.128, i32 noundef %i.bk, i32 noundef %.2148.i.i, i32 noundef %i.ce) ; 0 uses
  %.not172198.not.i.i = icmp eq i32 %.2148.i.i, 0
  br i1 %.not172198.not.i.i, label %._crit_edge204.thread.i.i, label %.lr.ph203.preheader.i.i

._crit_edge204.thread.i.i:                        ; preds = %bb.q
  call void @tvb_free(ptr noundef %i.cz)
  br label %dissect_pft_fec_detailed.exit.thread.i

.lr.ph203.preheader.i.i:                          ; preds = %bb.q
  %wide.trip.count.i.i = zext i32 %.2148.i.i to i64
  br label %.lr.ph203.i.i

.lr.ph203.i.i:                                    ; preds = %._crit_edge.i.i, %.lr.ph203.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph203.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 2 uses
  %.0138201.i.i = phi ptr [ null, %.lr.ph203.preheader.i.i ], [ %.1139.lcssa.i.i, %._crit_edge.i.i ]
  %.0141200.i.i = phi i32 [ 0, %.lr.ph203.preheader.i.i ], [ %i.dm, %._crit_edge.i.i ] ; 4 uses
  %i.db = getelementptr [4 x i8], ptr %i.ck, i64 %indvars.iv.i.i
  %i.dc = load i32, ptr %i.db, align 4            ; 6 uses
  %i.dd = icmp ugt i32 %i.dc, 262144
  br i1 %i.dd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph203.i.i
  %i.de = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull @ei_edcp_reassembly, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.127, i32 noundef %i.dc) ; 0 uses
  br label %dissect_pft_fec_detailed.exit.thread.i

bb.s:                                             ; preds = %.lr.ph203.i.i
  %i.df = sub i32 %i.dc, %.0141200.i.i            ; 2 uses
  %i.dg = icmp ugt i32 %i.df, 1000
  br i1 %i.dg, label %bb.t, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.s
  %i.dh = icmp ult i32 %.0141200.i.i, %i.dc
  br i1 %i.dh, label %.lr.ph195.i.i, label %._crit_edge.i.i

bb.t:                                             ; preds = %bb.s
  %i.di = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull @ei_edcp_reassembly, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.129, i32 noundef %i.df) ; 0 uses
  br label %dissect_pft_fec_detailed.exit.thread.i

.lr.ph195.i.i:                                    ; preds = %.preheader.i.i, %.lr.ph195.i.i
  %.1142194.i.i = phi i32 [ %i.dj, %.lr.ph195.i.i ], [ %.0141200.i.i, %.preheader.i.i ] ; 2 uses
  %i.dj = add nuw nsw i32 %.1142194.i.i, 1        ; 3 uses
  %i.dk = icmp ne i32 %i.dj, %i.bk
  %i.dl = call ptr @fragment_add_seq_check(ptr noundef nonnull @dcp_reassembly_table, ptr noundef %i.cz, i32 noundef 0, ptr noundef %1, i32 noundef %i.bs, ptr noundef null, i32 noundef %.1142194.i.i, i32 noundef %i.bd, i1 noundef zeroext %i.dk)
  %exitcond.not.i.i = icmp eq i32 %i.dj, %i.dc
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph195.i.i, !llvm.loop !10

._crit_edge.i.i:                                  ; preds = %.lr.ph195.i.i, %.preheader.i.i
  %.1142.lcssa.i.i = phi i32 [ %.0141200.i.i, %.preheader.i.i ], [ %i.dc, %.lr.ph195.i.i ]
  %.1139.lcssa.i.i = phi ptr [ %.0138201.i.i, %.preheader.i.i ], [ %i.dl, %.lr.ph195.i.i ] ; 3 uses
  %i.dm = add i32 %.1142.lcssa.i.i, 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond214.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond214.not.i.i, label %._crit_edge204.i.i, label %.lr.ph203.i.i, !llvm.loop !11

._crit_edge204.i.i:                               ; preds = %._crit_edge.i.i
  call void @tvb_free(ptr noundef %i.cz)
  %.not171.i.i = icmp eq ptr %.1139.lcssa.i.i, null
  br i1 %.not171.i.i, label %dissect_pft_fec_detailed.exit.thread.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %._crit_edge204.i.i, %bb.m
  %.1139.lcssa.lcssa.sink.i.i = phi ptr [ %i.bt, %bb.m ], [ %.1139.lcssa.i.i, %._crit_edge204.i.i ]
  %i.dn = call ptr @process_reassembled_data(ptr noundef %0, i32 noundef range(i32 14, 21) %i.aw, ptr noundef %1, ptr noundef nonnull @.str.121, ptr noundef nonnull %.1139.lcssa.lcssa.sink.i.i, ptr noundef nonnull @dcp_frag_items, ptr noundef null, ptr noundef %i.n) ; 6 uses
  %.not174.i.i = icmp eq ptr %i.dn, null
  br i1 %.not174.i.i, label %dissect_pft_fec_detailed.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %.critedge.i.i
  %i.do = call i32 @tvb_captured_length(ptr noundef nonnull %i.dn)
  %.not175.i.i = icmp eq i32 %i.do, 0
  br i1 %.not175.i.i, label %dissect_pft_fec_detailed.exit.thread44.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = call i32 @tvb_captured_length(ptr noundef nonnull %i.dn)
  %.not176.i.i = icmp eq i32 %i.dp, %i.bz
  br i1 %.not176.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull @ei_edcp_reassembly, ptr noundef nonnull %i.dn, i32 noundef 0, ptr noundef nonnull @.str.130) ; 0 uses
  br label %dissect_pft_fec_detailed.exit.thread.i

bb.x:                                             ; preds = %bb.v
  %i.dr = call ptr @tvb_get_ptr(ptr noundef nonnull %i.dn, i32 noundef 0, i32 noundef %i.bz) ; 5 uses
  %i.ds = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = zext i32 %i.bz to i64
  %i.dv = call noalias ptr @wmem_alloc(ptr noundef %i.dt, i64 noundef %i.du) #8 ; 8 uses
  %.not.i.i.i = icmp eq i16 %i.bf, 0
  br i1 %.not.i.i.i, label %rs_deinterleave.exit.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.x
  %wide.trip.count.i.i.i = zext nneg i32 %i.bd to i64 ; 9 uses
  %i.dw = add nsw i64 %wide.trip.count.i.i.i, -1  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.bd, 4
  %ident.check = icmp ne i32 %i.bk, 1
  %i.dx = trunc nsw i64 %i.dw to i32              ; 2 uses
  %i.dy = icmp ugt i64 %i.dw, 4294967295
  %invariant.op = or i1 %i.dy, %ident.check
  %min.iters.check119 = icmp samesign ult i32 %i.bd, 32
  %i.dz = and i64 %wide.trip.count.i.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i.i, 65504  ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  %min.epilog.iters.check = icmp eq i64 %i.dz, 0
  %n.vec121 = and i64 %wide.trip.count.i.i.i, 65532 ; 3 uses
  %cmp.n125 = icmp eq i64 %n.vec121, %wide.trip.count.i.i.i
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ea = add nsw i64 %wide.trip.count.i.i.i, -1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i.i, %.preheader.preheader.i.i.i
  %.01317.i.i.i = phi i32 [ %i.ga, %._crit_edge.i.i.i ], [ 0, %.preheader.preheader.i.i.i ] ; 8 uses
  %i.eb = mul i32 %.01317.i.i.i, %i.bd            ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ec = xor i32 %i.eb, -1
  %4 = icmp ult i32 %i.ec, %i.dx
  %5 = xor i32 %.01317.i.i.i, -1
  %i.ed = icmp ult i32 %5, %i.dx
  %.reass = or i1 %4, %invariant.op
  %i.ee = or i1 %i.ed, %.reass
  br i1 %i.ee, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ef = trunc nuw nsw i64 %index to i32         ; 2 uses
  %i.eg = add i32 %i.eb, %i.ef
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr i8, ptr %i.dr, i64 %i.eh  ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 16
  %wide.load = load <16 x i8>, ptr %i.ei, align 1
  %wide.load120 = load <16 x i8>, ptr %i.ej, align 1
  %i.ek = add i32 %.01317.i.i.i, %i.ef
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr i8, ptr %i.dv, i64 %i.el  ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 16
  store <16 x i8> %wide.load, ptr %i.em, align 1
  store <16 x i8> %wide.load120, ptr %i.en, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next124, %vec.epilog.vector.body ] ; 2 uses
  %i.ep = trunc nuw nsw i64 %index122 to i32      ; 2 uses
  %i.eq = add i32 %i.eb, %i.ep
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr i8, ptr %i.dr, i64 %i.er
  %wide.load123 = load <4 x i8>, ptr %i.es, align 1
  %i.et = add i32 %.01317.i.i.i, %i.ep
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr i8, ptr %i.dv, i64 %i.eu
  store <4 x i8> %wide.load123, ptr %i.ev, align 1
  %index.next124 = add nuw i64 %index122, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next124, %n.vec121
  br i1 %i.ew, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n125, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec121, %vec.epilog.middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ex = trunc nuw nsw i64 %indvars.iv.i.i.i.ph to i32 ; 2 uses
  %i.ey = add i32 %i.eb, %i.ex
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr i8, ptr %i.dr, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = mul i32 %i.bk, %i.ex
  %i.fd = add i32 %i.fc, %.01317.i.i.i
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr i8, ptr %i.dv, i64 %i.fe
  store i8 %i.fb, ptr %i.ff, align 1
  %indvars.iv.next.i.i.i.prol = or disjoint i64 %indvars.iv.i.i.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.fg = icmp eq i64 %indvars.iv.i.i.i.ph, %i.ea
  br i1 %i.fg, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.fh = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 2 uses
  %i.fi = add i32 %i.eb, %i.fh
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr i8, ptr %i.dr, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = mul i32 %i.bk, %i.fh
  %i.fn = add i32 %i.fm, %.01317.i.i.i
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr i8, ptr %i.dv, i64 %i.fo
  store i8 %i.fl, ptr %i.fp, align 1
  %i.fq = trunc i64 %indvars.iv.i.i.i to i32
  %i.fr = add i32 %i.fq, 1                        ; 2 uses
  %i.fs = add i32 %i.eb, %i.fr
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr i8, ptr %i.dr, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = mul i32 %i.bk, %i.fr
  %i.fx = add i32 %i.fw, %.01317.i.i.i
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr i8, ptr %i.dv, i64 %i.fy
  store i8 %i.fv, ptr %i.fz, align 1
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !14

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ga = add nuw nsw i32 %.01317.i.i.i, 1        ; 2 uses
  %exitcond20.not.i.i.i = icmp eq i32 %i.ga, %i.bk
  br i1 %exitcond20.not.i.i.i, label %rs_deinterleave.exit.i.i, label %iter.check, !llvm.loop !15

rs_deinterleave.exit.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.x
  %i.gb = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.dv, i32 noundef %i.bz, i32 noundef %i.bz) ; 2 uses
  %i.gc = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.gb, ptr noundef nonnull @.str.131) ; 0 uses
  %i.gd = load ptr, ptr %i.ds, align 8
  %i.ge = add i32 %i.bz, 255
  %i.gf = sub i32 %i.ge, %i.bx                    ; 2 uses
  %i.gg = zext i32 %i.gf to i64                   ; 4 uses
  %i.gh = call noalias ptr @wmem_alloc(ptr noundef %i.gd, i64 noundef %i.gg) #8 ; 2 uses
  %i.gi = icmp ugt i32 %i.ca, %i.bz
  br i1 %i.gi, label %rs_correct_data.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %rs_deinterleave.exit.i.i
  %i.gj = zext i8 %i.bo to i64                    ; 3 uses
  %i.gk = xor i32 %i.bx, 255
  %i.gl = zext nneg i32 %i.gk to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i.i.i
  %.029.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.hj, %bb.z ] ; 3 uses
  %.02428.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.hi, %bb.z ] ; 2 uses
  %.02527.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.hk, %bb.z ]
  %i.gm = zext i32 %.029.i.i.i to i64             ; 4 uses
  %i.gn = getelementptr i8, ptr %i.gh, i64 %i.gm  ; 4 uses
  %i.go = zext i32 %.02428.i.i.i to i64
  %i.gp = getelementptr i8, ptr %i.dv, i64 %i.go
  %i.gq = sub nsw i64 %i.gg, %i.gm
  %i.gr = icmp ugt i32 %.029.i.i.i, %i.gf
  %i.gs = select i1 %i.gr, i64 0, i64 %i.gq       ; 2 uses
  %i.gt = icmp ne i64 %i.gs, -1
  call void @llvm.assume(i1 %i.gt)
  %i.gu = call ptr @__memcpy_chk(ptr noundef %i.gn, ptr noundef readonly %i.gp, i64 noundef range(i64 0, 256) %i.gj, i64 noundef %i.gs) #7, !alias.scope !26 ; 0 uses
  %i.gv = add i32 %.02428.i.i.i, %i.bx            ; 2 uses
  %i.gw = add nuw nsw i64 %i.gm, %i.gj
  %i.gx = getelementptr i8, ptr %i.gn, i64 %i.gj
  %i.gy = call i64 @llvm.usub.sat.i64(i64 %i.gg, i64 %i.gw)
  %i.gz = call ptr @__memset_chk(ptr noundef %i.gx, i32 noundef 0, i64 noundef range(i64 0, 256) %i.gl, i64 noundef %i.gy) #7 ; 0 uses
  %i.ha = add nuw nsw i64 %i.gm, 207
  %i.hb = getelementptr i8, ptr %i.gn, i64 207
  %i.hc = zext i32 %i.gv to i64
  %i.hd = getelementptr i8, ptr %i.dv, i64 %i.hc
  %i.he = call i64 @llvm.usub.sat.i64(i64 %i.gg, i64 %i.ha)
  %i.hf = call ptr @__memcpy_chk(ptr noundef %i.hb, ptr noundef readonly %i.hd, i64 noundef 48, i64 noundef %i.he) #7, !alias.scope !27 ; 0 uses
  %i.hg = call i32 @eras_dec_rs(ptr noundef %i.gn, ptr noundef null, i32 noundef 0)
  %i.hh = icmp sgt i32 %i.hg, -1
  br i1 %i.hh, label %bb.z, label %rs_correct_data.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.hi = add i32 %i.gv, 48
  %i.hj = add i32 %.029.i.i.i, %i.bx
  %i.hk = add nuw nsw i32 %.02527.i.i.i, 1        ; 2 uses
  %exitcond.not.i180.i.i = icmp eq i32 %i.hk, %i.cb
  br i1 %exitcond.not.i180.i.i, label %rs_correct_data.exit.i.i, label %bb.y, !llvm.loop !22

rs_correct_data.exit.i.i:                         ; preds = %bb.z, %bb.y, %rs_deinterleave.exit.i.i
  %.lcssa.i.i.i = phi i64 [ 1, %rs_deinterleave.exit.i.i ], [ 1, %bb.z ], [ 0, %bb.y ]
  %i.hl = load i32, ptr @hf_edcp_rs_ok, align 4
  %i.hm = call ptr @proto_tree_add_boolean(ptr noundef %i.n, i32 noundef %i.hl, ptr noundef %0, i32 noundef range(i32 14, 21) %i.aw, i32 noundef 2, i64 noundef %.lcssa.i.i.i) ; 0 uses
  %i.hn = call ptr @tvb_new_child_real_data(ptr noundef %i.gb, ptr noundef %i.gh, i32 noundef %i.bz, i32 noundef %i.bz) ; 2 uses
  %i.ho = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.hn, ptr noundef nonnull @.str.132) ; 0 uses
  br label %dissect_pft_fec_detailed.exit.i

bb.aa:                                            ; preds = %bb.h
  %i.hp = call ptr @process_reassembled_data(ptr noundef %0, i32 noundef range(i32 14, 21) %i.aw, ptr noundef %1, ptr noundef nonnull @.str.121, ptr noundef %i.bt, ptr noundef nonnull @dcp_frag_items, ptr noundef null, ptr noundef %i.n)
  br label %dissect_pft_fec_detailed.exit.i

dissect_pft_fec_detailed.exit.i:                  ; preds = %bb.aa, %rs_correct_data.exit.i.i
  %.0.i = phi ptr [ %i.hp, %bb.aa ], [ %i.hn, %rs_correct_data.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %dissect_pft_fec_detailed.exit.thread.i, label %dissect_pft_fec_detailed.exit.thread44.i

dissect_pft_fec_detailed.exit.thread44.i:         ; preds = %dissect_pft_fec_detailed.exit.i, %bb.u
  %.047.i = phi ptr [ %.0.i, %dissect_pft_fec_detailed.exit.i ], [ %i.dn, %bb.u ]
  %i.hq = load ptr, ptr %i.i, align 8
  call void @col_append_str(ptr noundef %i.hq, i32 noundef 25, ptr noundef nonnull @.str.122)
  br label %bb.ad

dissect_pft_fec_detailed.exit.thread.i:           ; preds = %dissect_pft_fec_detailed.exit.i, %bb.w, %.critedge.i.i, %._crit_edge204.i.i, %bb.t, %bb.r, %._crit_edge204.thread.i.i, %.loopexit.i.i, %bb.l, %bb.k, %bb.j
  %i.hr = load ptr, ptr %i.i, align 8             ; 2 uses
  br i1 %i.br, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %dissect_pft_fec_detailed.exit.thread.i
  call void @col_append_str(ptr noundef %i.hr, i32 noundef 25, ptr noundef nonnull @.str.123)
  br label %bb.ad

bb.ac:                                            ; preds = %dissect_pft_fec_detailed.exit.thread.i
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.hr, i32 noundef 25, ptr noundef nonnull @.str.124, i32 noundef %i.bj)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %dissect_pft_fec_detailed.exit.thread44.i
  %.042.i = phi ptr [ null, %bb.ab ], [ null, %bb.ac ], [ %.047.i, %dissect_pft_fec_detailed.exit.thread44.i ] ; 2 uses
  br i1 %i.bp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
end_hunk_0
