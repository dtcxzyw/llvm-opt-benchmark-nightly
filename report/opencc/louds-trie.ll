Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/louds-trie?download=true
inline.NumInlined: 1936
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK6marisa8grimoire4trie9LoudsTrie10find_childERNS_5AgentE:bb.a
  %i.df = phi ptr [ %.pre53, %._crit_edge ], [ %i.bf, %bb.o ] ; 2 uses
  %i.dg = phi i32 [ %.pre52, %._crit_edge ], [ %i.bg, %bb.o ]
  %.1 = phi i64 [ %i.bs, %._crit_edge ], [ %.0, %bb.o ]
  %i.dh = add i32 %i.dg, 1                        ; 2 uses
  store i32 %i.dh, ptr %i.c, align 8, !tbaa !127
  %i.di = add i64 %.038, 1                        ; 3 uses
  %i.dj = lshr i64 %i.di, 6
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !54
  %i.dm = and i64 %i.di, 63
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dl, %i.dn
  %.not51 = icmp eq i64 %i.do, 0
  br i1 %.not51, label %.thread, label %bb.h, !llvm.loop !239

.thread:                                          ; preds = %.split46, %_ZNK6marisa8grimoire4trie9LoudsTrie5matchERNS_5AgentEm.exit45, %bb.q, %bb.n, %.split, %bb.f, %bb.p, %_ZNK6marisa8grimoire4trie9LoudsTrie5matchERNS_5AgentEm.exit, %bb.e
  %.5 = phi i1 [ true, %bb.e ], [ false, %_ZNK6marisa8grimoire4trie9LoudsTrie5matchERNS_5AgentEm.exit ], [ false, %bb.f ], [ true, %bb.p ], [ false, %.split ], [ true, %.split46 ], [ true, %_ZNK6marisa8grimoire4trie9LoudsTrie5matchERNS_5AgentEm.exit45 ], [ false, %bb.q ], [ false, %bb.n ]
  ret i1 %.5
}

declare noundef i64 @_ZNK6marisa8grimoire6vector9BitVector5rank1Em(ptr noundef nonnull align 8 dereferenceable(208), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6marisa8grimoire4trie9LoudsTrie14reverse_lookupERNS_5AgentE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !253
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load i64, ptr %i.c, align 8, !tbaa !97
  %.not = icmp ult i64 %i.b, %i.d
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115  ; 16 uses
  tail call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 noundef 0)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !137
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !138  ; 4 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ult i64 %i.m, 32
  br i1 %i.n, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i, label %_ZN6marisa8grimoire4trie5State19reverse_lookup_initEv.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !139
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.l                       ; 3 uses
  %i.s = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 4 uses
  %i.t = icmp sgt i64 %i.r, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.j, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i: ; preds = %bb.e, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  %.not.i8.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #20
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  store ptr %i.s, ptr %i.g, align 8, !tbaa !138
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store ptr %i.u, ptr %i.o, align 8, !tbaa !139
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.v, ptr %i.h, align 8, !tbaa !137
  br label %_ZN6marisa8grimoire4trie5State19reverse_lookup_initEv.exit

_ZN6marisa8grimoire4trie5State19reverse_lookup_initEv.exit: ; preds = %bb.d, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  store i32 0, ptr %i.w, align 4, !tbaa !129
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.y = load i64, ptr %i.a, align 8, !tbaa !253
  %i.z = tail call noundef i64 @_ZNK6marisa8grimoire6vector9BitVector7select1Em(ptr noundef nonnull align 8 dereferenceable(208) %i.x, i64 noundef %i.y) ; 3 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 4 uses
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !127
  %i.ac = and i64 %i.z, 4294967295
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %.preheader

.preheader:                                       ; preds = %_ZN6marisa8grimoire4trie5State19reverse_lookup_initEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1064
  br label %bb.i

bb.g:                                             ; preds = %_ZN6marisa8grimoire4trie5State19reverse_lookup_initEv.exit
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !139
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45

bb.h:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #21
  resume { ptr, i32 } %i.ar

bb.i:                                             ; preds = %.preheader, %bb.v
  %i.as = phi i64 [ %i.z, %.preheader ], [ %i.hi, %bb.v ] ; 2 uses
  %i.at = and i64 %i.as, 4294967295               ; 4 uses
  %i.au = lshr i64 %i.at, 6
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !89
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !54
  %i.ay = and i64 %i.as, 63
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.az, %i.ax
  %.not47 = icmp eq i64 %i.ba, 0
  br i1 %.not47, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !139
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.bd = ptrtoint ptr %i.bb to i64               ; 8 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 8 uses
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = load ptr, ptr %i.ah, align 8, !tbaa !136
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.at
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !55
  %i.bj = tail call noundef i64 @_ZNK6marisa8grimoire6vector9BitVector5rank1Em(ptr noundef nonnull align 8 dereferenceable(208) %i.af, i64 noundef %i.at)
  %i.bk = load i64, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %i.bl = mul i64 %i.bk, %i.bj                    ; 3 uses
  %i.bm = lshr i64 %i.bl, 6
  %i.bn = and i64 %i.bl, 63                       ; 2 uses
  %i.bo = add i64 %i.bn, %i.bk
  %i.bp = icmp ult i64 %i.bo, 65
  %i.bq = load ptr, ptr %i.aj, align 8, !tbaa !89
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bm ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !54 ; 2 uses
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = lshr i64 %i.bs, %i.bn
  br label %_ZNK6marisa8grimoire4trie9LoudsTrie8get_linkEm.exit

bb.l:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !54
  %i.bw = tail call i64 @llvm.fshr.i64(i64 %i.bv, i64 %i.bs, i64 %i.bl)
  br label %_ZNK6marisa8grimoire4trie9LoudsTrie8get_linkEm.exit

_ZNK6marisa8grimoire4trie9LoudsTrie8get_linkEm.exit: ; preds = %bb.k, %bb.l
  %.sink.i.i = phi i64 [ %i.bw, %bb.l ], [ %i.bt, %bb.k ]
  %i.bx = zext i8 %i.bi to i32
  %i.by = trunc i64 %.sink.i.i to i32
  %i.bz = load i32, ptr %i.ak, align 8, !tbaa !41
  %i.ca = and i32 %i.bz, %i.by
  %i.cb = shl i32 %i.ca, 8
  %i.cc = or disjoint i32 %i.cb, %i.bx
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = load ptr, ptr %i.al, align 8, !tbaa !53 ; 2 uses
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK6marisa8grimoire4trie9LoudsTrie8get_linkEm.exit
  tail call void @_ZNK6marisa8grimoire4trie9LoudsTrie8restore_ERNS_5AgentEm(ptr noundef nonnull align 8 dereferenceable(1136) %i.ce, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.cd), !inline_history !3
  br label %_ZNK6marisa8grimoire4trie9LoudsTrie7restoreERNS_5AgentEm.exit

bb.n:                                             ; preds = %_ZNK6marisa8grimoire4trie9LoudsTrie8get_linkEm.exit
  tail call void @_ZNK6marisa8grimoire4trie4Tail7restoreERNS_5AgentEm(ptr noundef nonnull align 8 dereferenceable(256) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.cd), !inline_history !3
  br label %_ZNK6marisa8grimoire4trie9LoudsTrie7restoreERNS_5AgentEm.exit

_ZNK6marisa8grimoire4trie9LoudsTrie7restoreERNS_5AgentEm.exit: ; preds = %bb.m, %bb.n
  %i.cf = load ptr, ptr %i.g, align 8, !tbaa !51  ; 3 uses
  %i.cg = ptrtoaddr ptr %i.cf to i64              ; 6 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %i.bf ; 9 uses
  %i.ci = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 5 uses
  %i.cj = ptrtoaddr ptr %i.ci to i64              ; 2 uses
  %i.ck = icmp ne ptr %i.ch, %i.ci
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.ci, i64 -1 ; 7 uses
  %i.cl = icmp ult ptr %i.ch, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %or.cond.i.i, label %iter.check, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

iter.check:                                       ; preds = %_ZNK6marisa8grimoire4trie9LoudsTrie7restoreERNS_5AgentEm.exit
  %i.cm = add i64 %i.be, -1
  %i.cn = add i64 %i.cg, 1
  %i.co = add i64 %i.cn, %i.bd
  %i.cp = sub i64 %i.co, %i.be
  %i.cq = add i64 %i.cj, -2
  %umax70 = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 %i.cq) ; 2 uses
  %i.cr = add i64 %i.cm, %umax70
  %i.cs = add i64 %i.cg, %i.bd
  %i.ct = icmp ne i64 %i.cr, %i.cs                ; 2 uses
  %umin71.neg = sext i1 %i.ct to i64
  %i.cu = select i1 %i.ct, i64 2, i64 1
  %i.cv = add i64 %i.be, -1
  %i.cw = add i64 %i.cv, %umax70
  %i.cx = add i64 %i.cg, %i.bd
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = add i64 %i.cy, %umin71.neg
  %i.da = lshr i64 %i.cz, 1
  %i.db = add nuw i64 %i.cu, %i.da                ; 7 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.cf, i64 1
  %i.dc = add i64 %i.be, -1
  %i.dd = add i64 %i.cg, 1
  %i.de = add i64 %i.dd, %i.bd
  %i.df = sub i64 %i.de, %i.be
  %i.dg = add i64 %i.cj, -2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.df, i64 %i.dg) ; 2 uses
  %i.dh = add i64 %i.dc, %umax
  %i.di = add i64 %i.cg, %i.bd
  %i.dj = icmp ne i64 %i.dh, %i.di                ; 2 uses
  %umin.neg = sext i1 %i.dj to i64
  %umin = zext i1 %i.dj to i64                    ; 2 uses
  %i.dk = add i64 %i.bd, %umin
  %i.dl = add i64 %i.be, -1
  %i.dm = add i64 %i.dl, %umax
  %i.dn = add i64 %i.cg, %i.bd
  %i.do = add i64 %i.dn, %umin
  %i.dp = sub i64 %i.dm, %i.do
  %i.dq = lshr i64 %i.dp, 1                       ; 2 uses
  %i.dr = add i64 %i.dk, %i.dq
  %i.ds = sub i64 %i.dr, %i.be
  %scevgep67 = getelementptr i8, ptr %scevgep, i64 %i.ds
  %scevgep68 = getelementptr i8, ptr %i.ci, i64 -1
  %.neg = sub nsw i64 %umin.neg, %i.dq
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %.neg
  %bound0 = icmp ult ptr %i.ch, %i.ci
  %bound1 = icmp ult ptr %scevgep69, %scevgep67
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check72 = icmp ult i64 %i.db, 16
  br i1 %min.iters.check72, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dt = and i64 %i.db, 8
  %n.vec = and i64 %i.db, -16                     ; 5 uses
  %i.du = sub i64 0, %n.vec
  %i.dv = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.ch, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dx = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.dx
  %next.gep73 = getelementptr i8, ptr %i.ch, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep73, align 1, !tbaa !55, !alias.scope !254, !noalias !255
  %i.dy = getelementptr i8, ptr %next.gep, i64 -15 ; 2 uses
  %wide.load74 = load <16 x i8>, ptr %i.dy, align 1, !tbaa !55, !alias.scope !255
  %reverse = shufflevector <16 x i8> %wide.load74, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %next.gep73, align 1, !tbaa !55, !alias.scope !254, !noalias !255
  %reverse75 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse75, ptr %i.dy, align 1, !tbaa !55, !alias.scope !255
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.dt, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !256

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec77 = and i64 %i.db, -8                    ; 4 uses
  %i.ea = sub i64 0, %n.vec77
  %i.eb = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.ch, i64 %n.vec77
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index78 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next85, %vec.epilog.vector.body ] ; 3 uses
  %i.ed = sub i64 0, %index78
  %next.gep79 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.ed
  %next.gep80 = getelementptr i8, ptr %i.ch, i64 %index78 ; 2 uses
  %wide.load81 = load <8 x i8>, ptr %next.gep80, align 1, !tbaa !55, !alias.scope !254, !noalias !255
  %i.ee = getelementptr i8, ptr %next.gep79, i64 -7 ; 2 uses
  %wide.load82 = load <8 x i8>, ptr %i.ee, align 1, !tbaa !55, !alias.scope !255
  %reverse83 = shufflevector <8 x i8> %wide.load82, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse83, ptr %next.gep80, align 1, !tbaa !55, !alias.scope !254, !noalias !255
  %reverse84 = shufflevector <8 x i8> %wide.load81, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse84, ptr %i.ee, align 1, !tbaa !55, !alias.scope !255
  %index.next85 = add nuw i64 %index78, 8         ; 2 uses
  %i.ef = icmp eq i64 %index.next85, %n.vec77
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !244

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n86 = icmp eq i64 %i.db, %n.vec77
  br i1 %cmp.n86, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %iter.check ], [ %.sroa.0.08.i.i, %vector.memcheck ], [ %i.dv, %vec.epilog.iter.check ], [ %i.eb, %vec.epilog.middle.block ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.ch, %iter.check ], [ %i.ch, %vector.memcheck ], [ %i.dw, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.eg = load i8, ptr %.sroa.05.09.i.i, align 1, !tbaa !55
  %i.eh = load i8, ptr %.sroa.0.010.i.i, align 1, !tbaa !55
  store i8 %i.eh, ptr %.sroa.05.09.i.i, align 1, !tbaa !55
  store i8 %i.eg, ptr %.sroa.0.010.i.i, align 1, !tbaa !55
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 1 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -1 ; 2 uses
  %i.ej = icmp ult ptr %i.ei, %.sroa.0.0.i.i
  br i1 %i.ej, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, !llvm.loop !245

bb.o:                                             ; preds = %bb.i
  %i.ek = load ptr, ptr %i.ah, align 8, !tbaa !136
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.at
  %i.em = load i8, ptr %i.el, align 1, !tbaa !55  ; 2 uses
  %i.en = load ptr, ptr %i.ag, align 8, !tbaa !139 ; 3 uses
  %i.eo = load ptr, ptr %i.h, align 8, !tbaa !137
  %.not.i.i = icmp eq ptr %i.en, %i.eo
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 %i.em, ptr %i.en, align 1, !tbaa !55
  %i.ep = load ptr, ptr %i.ag, align 8, !tbaa !139
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store ptr %i.eq, ptr %i.ag, align 8, !tbaa !139
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

bb.q:                                             ; preds = %bb.o
  %i.er = load ptr, ptr %i.g, align 8, !tbaa !138 ; 4 uses
  %i.es = ptrtoint ptr %i.en to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 8 uses
  %i.ev = icmp eq i64 %i.eu, 9223372036854775807
  br i1 %i.ev, label %bb.r, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #23
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ew = add i64 %.sroa.speculated.i.i.i.i, %i.eu ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.eu
  %i.ey = tail call i64 @llvm.umin.i64(i64 %i.ew, i64 9223372036854775807)
  %i.ez = select i1 %i.ex, i64 9223372036854775807, i64 %i.ey ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ez, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #22 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.eu ; 2 uses
  store i8 %i.em, ptr %i.fb, align 1, !tbaa !55
  %i.fc = icmp sgt i64 %i.eu, 0
  br i1 %i.fc, label %bb.s, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fa, ptr align 1 %i.er, i64 %i.eu, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.s, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.eu) #20
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  store ptr %i.fa, ptr %i.g, align 8, !tbaa !138
  store ptr %i.fd, ptr %i.ag, align 8, !tbaa !139
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ez
  store ptr %i.fe, ptr %i.h, align 8, !tbaa !137
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.p, %_ZNK6marisa8grimoire4trie9LoudsTrie7restoreERNS_5AgentEm.exit
  %i.ff = load i32, ptr %i.ab, align 8, !tbaa !127
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = load i64, ptr %i.an, align 8, !tbaa !112
  %.not38 = icmp ult i64 %i.fh, %i.fg
  br i1 %.not38, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !51  ; 13 uses
  %i.fj = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 7 uses
  %i.fk = icmp ne ptr %i.fi, %i.fj
  %.sroa.0.08.i.i39 = getelementptr inbounds i8, ptr %i.fj, i64 -1 ; 7 uses
  %i.fl = icmp ult ptr %i.fi, %.sroa.0.08.i.i39
  %or.cond.i.i40 = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %or.cond.i.i40, label %iter.check121, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45

iter.check121:                                    ; preds = %bb.u
  %i.fm = ptrtoaddr ptr %i.fj to i64
  %i.fn = ptrtoaddr ptr %i.fi to i64              ; 2 uses
  %i.fo = add i64 %i.fm, -2
  %i.fp = add i64 %i.fn, 1
  %umax97 = tail call i64 @llvm.umax.i64(i64 %i.fo, i64 %i.fp)
  %i.fq = xor i64 %i.fn, -1
  %i.fr = add i64 %umax97, %i.fq                  ; 2 uses
  %i.fs = icmp ne i64 %i.fr, 0
  %umin98 = zext i1 %i.fs to i64                  ; 2 uses
  %i.ft = sub i64 %i.fr, %umin98
  %i.fu = lshr i64 %i.ft, 1
  %i.fv = add nuw i64 %i.fu, %umin98
  %i.fw = add i64 %i.fv, 1                        ; 7 uses
  %min.iters.check99 = icmp ult i64 %i.fw, 8
  br i1 %min.iters.check99, label %.lr.ph.i.i41.preheader, label %vector.memcheck100

vector.memcheck100:                               ; preds = %iter.check121
  %i.fx = ptrtoaddr ptr %i.fj to i64
  %i.fy = add i64 %i.fx, -2
  %i.fz = ptrtoaddr ptr %i.fi to i64              ; 2 uses
  %i.ga = add i64 %i.fz, 1
  %i.gb = tail call i64 @llvm.umax.i64(i64 %i.fy, i64 %i.ga)
  %i.gc = xor i64 %i.fz, -1
  %i.gd = add i64 %i.gb, %i.gc                    ; 2 uses
  %i.ge = icmp ne i64 %i.gd, 0
  %i.gf = zext i1 %i.ge to i64                    ; 2 uses
end_hunk_0
