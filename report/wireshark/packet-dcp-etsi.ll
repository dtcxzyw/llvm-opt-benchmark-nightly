Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-dcp-etsi?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_pft:bb.a
  %i.ax = load i32, ptr %i.d, align 4
  %i.ay = icmp ugt i32 %i.ax, 1
  br i1 %i.ay, label %bb.f, label %bb.ah

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr i8, ptr %1, i64 272       ; 3 uses
  %i.ba = load i8, ptr %i.az, align 8, !range !6, !noundef !7
  %i.bb = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.aw) ; 2 uses
  %i.bc = load i32, ptr @hf_edcp_pft_payload, align 4
  %i.bd = and i32 %i.bb, 65535                    ; 16 uses
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
  %i.dr = call ptr @tvb_get_ptr(ptr noundef nonnull %i.dn, i32 noundef 0, i32 noundef %i.bz) ; 7 uses
  %i.ds = ptrtoaddr ptr %i.dr to i64
  %i.dt = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = zext i32 %i.bz to i64
  %i.dw = call noalias ptr @wmem_alloc(ptr noundef %i.du, i64 noundef %i.dv) #8 ; 9 uses
  %i.dx = ptrtoaddr ptr %i.dw to i64
  %.not.i.i.i = icmp eq i16 %i.bf, 0
  br i1 %.not.i.i.i, label %rs_deinterleave.exit.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.x
  %wide.trip.count.i.i.i = zext nneg i32 %i.bd to i64 ; 9 uses
  %i.dy = add nsw i64 %wide.trip.count.i.i.i, -1  ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.bd, 4
  %ident.check = icmp ne i32 %i.bk, 1
  %i.dz = trunc nsw i64 %i.dy to i32
  %i.ea = icmp ugt i64 %i.dy, 4294967295
  %invariant.op = or i1 %i.ea, %ident.check
  %min.iters.check121 = icmp samesign ult i32 %i.bd, 32
  %i.eb = and i64 %wide.trip.count.i.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i.i, 65504  ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  %min.epilog.iters.check = icmp eq i64 %i.eb, 0
  %n.vec123 = and i64 %wide.trip.count.i.i.i, 65532 ; 3 uses
  %cmp.n127 = icmp eq i64 %n.vec123, %wide.trip.count.i.i.i
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ec = add nsw i64 %wide.trip.count.i.i.i, -1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i.i, %.preheader.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i.i.i ], [ 0, %.preheader.preheader.i.i.i ] ; 3 uses
  %.01317.i.i.i = phi i32 [ %i.go, %._crit_edge.i.i.i ], [ 0, %.preheader.preheader.i.i.i ] ; 8 uses
  %i.ed = mul i32 %.01317.i.i.i, %i.bd            ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ee = trunc i64 %indvar to i32
  %i.ef = mul i32 %i.bd, %i.ee
  %i.eg = zext i32 %i.ef to i64
  %i.eh = add i64 %i.ds, %i.eg
  %i.ei = add i64 %indvar, %i.dx
  %i.ej = mul i32 %i.bd, %.01317.i.i.i
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr i8, ptr %i.dr, i64 %i.ek  ; 2 uses
  %i.em = xor i32 %i.ed, -1
  %i.en = icmp ult i32 %i.em, %i.dz
  %i.eo = getelementptr i8, ptr %i.el, i64 %i.dy
  %i.ep = icmp ult ptr %i.eo, %i.el
  %i.eq = or i1 %i.en, %invariant.op
  %i.er = or i1 %i.eq, %i.ep
  %i.es = sub i64 %i.eh, %i.ei
  %diff.check = icmp ugt i64 %i.es, -32
  %or.cond128 = select i1 %i.er, i1 true, i1 %diff.check
  br i1 %or.cond128, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.et = trunc nuw nsw i64 %index to i32         ; 2 uses
  %i.eu = add i32 %i.ed, %i.et
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr i8, ptr %i.dr, i64 %i.ev  ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  %wide.load = load <16 x i8>, ptr %i.ew, align 1
  %wide.load122 = load <16 x i8>, ptr %i.ex, align 1
  %i.ey = add i32 %.01317.i.i.i, %i.et
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr i8, ptr %i.dw, i64 %i.ez  ; 2 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 16
  store <16 x i8> %wide.load, ptr %i.fa, align 1
  store <16 x i8> %wide.load122, ptr %i.fb, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 2 uses
  %i.fd = trunc nuw nsw i64 %index124 to i32      ; 2 uses
  %i.fe = add i32 %i.ed, %i.fd
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr i8, ptr %i.dr, i64 %i.ff
  %wide.load125 = load <4 x i8>, ptr %i.fg, align 1
  %i.fh = add i32 %.01317.i.i.i, %i.fd
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr i8, ptr %i.dw, i64 %i.fi
  store <4 x i8> %wide.load125, ptr %i.fj, align 1
  %index.next126 = add nuw i64 %index124, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next126, %n.vec123
  br i1 %i.fk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n127, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec123, %vec.epilog.middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.fl = trunc nuw nsw i64 %indvars.iv.i.i.i.ph to i32 ; 2 uses
  %i.fm = add i32 %i.ed, %i.fl
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr i8, ptr %i.dr, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = mul i32 %i.bk, %i.fl
  %i.fr = add i32 %i.fq, %.01317.i.i.i
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr i8, ptr %i.dw, i64 %i.fs
  store i8 %i.fp, ptr %i.ft, align 1
  %indvars.iv.next.i.i.i.prol = or disjoint i64 %indvars.iv.i.i.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.fu = icmp eq i64 %indvars.iv.i.i.i.ph, %i.ec
  br i1 %i.fu, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.fv = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 2 uses
  %i.fw = add i32 %i.ed, %i.fv
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr i8, ptr %i.dr, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = mul i32 %i.bk, %i.fv
  %i.gb = add i32 %i.ga, %.01317.i.i.i
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr i8, ptr %i.dw, i64 %i.gc
  store i8 %i.fz, ptr %i.gd, align 1
  %i.ge = trunc i64 %indvars.iv.i.i.i to i32
  %i.gf = add i32 %i.ge, 1                        ; 2 uses
  %i.gg = add i32 %i.ed, %i.gf
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr i8, ptr %i.dr, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = mul i32 %i.bk, %i.gf
  %i.gl = add i32 %i.gk, %.01317.i.i.i
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr i8, ptr %i.dw, i64 %i.gm
  store i8 %i.gj, ptr %i.gn, align 1
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !14

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.go = add nuw nsw i32 %.01317.i.i.i, 1        ; 2 uses
  %exitcond20.not.i.i.i = icmp eq i32 %i.go, %i.bk
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond20.not.i.i.i, label %rs_deinterleave.exit.i.i, label %iter.check, !llvm.loop !15

rs_deinterleave.exit.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.x
  %i.gp = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.dw, i32 noundef %i.bz, i32 noundef %i.bz) ; 2 uses
  %i.gq = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.gp, ptr noundef nonnull @.str.131) ; 0 uses
  %i.gr = load ptr, ptr %i.dt, align 8
  %i.gs = add i32 %i.bz, 255
  %i.gt = sub i32 %i.gs, %i.bx                    ; 2 uses
  %i.gu = zext i32 %i.gt to i64                   ; 4 uses
  %i.gv = call noalias ptr @wmem_alloc(ptr noundef %i.gr, i64 noundef %i.gu) #8 ; 2 uses
  %i.gw = icmp ugt i32 %i.ca, %i.bz
  br i1 %i.gw, label %rs_correct_data.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %rs_deinterleave.exit.i.i
  %i.gx = zext i8 %i.bo to i64                    ; 3 uses
  %i.gy = xor i32 %i.bx, 255
  %i.gz = zext nneg i32 %i.gy to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i.i.i
  %.029.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.hx, %bb.z ] ; 3 uses
  %.02428.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.hw, %bb.z ] ; 2 uses
  %.02527.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.hy, %bb.z ]
  %i.ha = zext i32 %.029.i.i.i to i64             ; 4 uses
  %i.hb = getelementptr i8, ptr %i.gv, i64 %i.ha  ; 4 uses
  %i.hc = zext i32 %.02428.i.i.i to i64
  %i.hd = getelementptr i8, ptr %i.dw, i64 %i.hc
  %i.he = sub nsw i64 %i.gu, %i.ha
  %i.hf = icmp ugt i32 %.029.i.i.i, %i.gt
  %i.hg = select i1 %i.hf, i64 0, i64 %i.he       ; 2 uses
  %i.hh = icmp ne i64 %i.hg, -1
  call void @llvm.assume(i1 %i.hh)
  %i.hi = call ptr @__memcpy_chk(ptr noundef %i.hb, ptr noundef readonly %i.hd, i64 noundef range(i64 0, 256) %i.gx, i64 noundef %i.hg) #7, !alias.scope !26 ; 0 uses
  %i.hj = add i32 %.02428.i.i.i, %i.bx            ; 2 uses
  %i.hk = add nuw nsw i64 %i.ha, %i.gx
  %i.hl = getelementptr i8, ptr %i.hb, i64 %i.gx
  %i.hm = call i64 @llvm.usub.sat.i64(i64 %i.gu, i64 %i.hk)
  %i.hn = call ptr @__memset_chk(ptr noundef %i.hl, i32 noundef 0, i64 noundef range(i64 0, 256) %i.gz, i64 noundef %i.hm) #7 ; 0 uses
  %i.ho = add nuw nsw i64 %i.ha, 207
  %i.hp = getelementptr i8, ptr %i.hb, i64 207
  %i.hq = zext i32 %i.hj to i64
  %i.hr = getelementptr i8, ptr %i.dw, i64 %i.hq
  %i.hs = call i64 @llvm.usub.sat.i64(i64 %i.gu, i64 %i.ho)
  %i.ht = call ptr @__memcpy_chk(ptr noundef %i.hp, ptr noundef readonly %i.hr, i64 noundef 48, i64 noundef %i.hs) #7, !alias.scope !27 ; 0 uses
  %i.hu = call i32 @eras_dec_rs(ptr noundef %i.hb, ptr noundef null, i32 noundef 0)
  %i.hv = icmp sgt i32 %i.hu, -1
  br i1 %i.hv, label %bb.z, label %rs_correct_data.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.hw = add i32 %i.hj, 48
  %i.hx = add i32 %.029.i.i.i, %i.bx
  %i.hy = add nuw nsw i32 %.02527.i.i.i, 1        ; 2 uses
  %exitcond.not.i180.i.i = icmp eq i32 %i.hy, %i.cb
  br i1 %exitcond.not.i180.i.i, label %rs_correct_data.exit.i.i, label %bb.y, !llvm.loop !22

rs_correct_data.exit.i.i:                         ; preds = %bb.z, %bb.y, %rs_deinterleave.exit.i.i
  %.lcssa.i.i.i = phi i64 [ 1, %rs_deinterleave.exit.i.i ], [ 1, %bb.z ], [ 0, %bb.y ]
  %i.hz = load i32, ptr @hf_edcp_rs_ok, align 4
  %i.ia = call ptr @proto_tree_add_boolean(ptr noundef %i.n, i32 noundef %i.hz, ptr noundef %0, i32 noundef range(i32 14, 21) %i.aw, i32 noundef 2, i64 noundef %.lcssa.i.i.i) ; 0 uses
  %i.ib = call ptr @tvb_new_child_real_data(ptr noundef %i.gp, ptr noundef %i.gv, i32 noundef %i.bz, i32 noundef %i.bz) ; 2 uses
  %i.ic = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.ib, ptr noundef nonnull @.str.132) ; 0 uses
  br label %dissect_pft_fec_detailed.exit.i

bb.aa:                                            ; preds = %bb.h
  %i.id = call ptr @process_reassembled_data(ptr noundef %0, i32 noundef range(i32 14, 21) %i.aw, ptr noundef %1, ptr noundef nonnull @.str.121, ptr noundef %i.bt, ptr noundef nonnull @dcp_frag_items, ptr noundef null, ptr noundef %i.n)
  br label %dissect_pft_fec_detailed.exit.i

dissect_pft_fec_detailed.exit.i:                  ; preds = %bb.aa, %rs_correct_data.exit.i.i
  %.0.i = phi ptr [ %i.id, %bb.aa ], [ %i.ib, %rs_correct_data.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %dissect_pft_fec_detailed.exit.thread.i, label %dissect_pft_fec_detailed.exit.thread44.i

dissect_pft_fec_detailed.exit.thread44.i:         ; preds = %dissect_pft_fec_detailed.exit.i, %bb.u
  %.047.i = phi ptr [ %.0.i, %dissect_pft_fec_detailed.exit.i ], [ %i.dn, %bb.u ]
  %i.ie = load ptr, ptr %i.i, align 8
  call void @col_append_str(ptr noundef %i.ie, i32 noundef 25, ptr noundef nonnull @.str.122)
  br label %bb.ad

dissect_pft_fec_detailed.exit.thread.i:           ; preds = %dissect_pft_fec_detailed.exit.i, %bb.w, %.critedge.i.i, %._crit_edge204.i.i, %bb.t, %bb.r, %._crit_edge204.thread.i.i, %.loopexit.i.i, %bb.l, %bb.k, %bb.j
  %i.if = load ptr, ptr %i.i, align 8             ; 2 uses
  br i1 %i.br, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %dissect_pft_fec_detailed.exit.thread.i
  call void @col_append_str(ptr noundef %i.if, i32 noundef 25, ptr noundef nonnull @.str.123)
  br label %bb.ad

bb.ac:                                            ; preds = %dissect_pft_fec_detailed.exit.thread.i
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.if, i32 noundef 25, ptr noundef nonnull @.str.124, i32 noundef %i.bj)
  br label %bb.ad

end_hunk_0
