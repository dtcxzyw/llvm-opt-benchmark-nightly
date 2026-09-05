Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/louds-trie?download=true
begin_hunk_0_@_ZNK6marisa8grimoire4trie9LoudsTrie10find_childERNS_5AgentE:bb.a
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
  %i.as = phi i64 [ %i.z, %.preheader ], [ %i.hc, %bb.v ] ; 2 uses
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
  %min.iters.check = icmp ult i64 %i.db, 4
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
  %.neg = sub i64 %umin.neg, %i.dq
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %.neg
  %bound0 = icmp ult ptr %i.ch, %i.ci
  %bound1 = icmp ult ptr %scevgep69, %scevgep67
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check72 = icmp ult i64 %i.db, 16
  br i1 %min.iters.check72, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dt = and i64 %i.db, 12
  %n.vec = and i64 %i.db, -16                     ; 5 uses
  %i.du = sub i64 0, %n.vec
  %i.dv = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.ch, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
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
  %min.epilog.iters.check = icmp eq i64 %i.dt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !256

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec77 = and i64 %i.db, -4                    ; 4 uses
  %i.ea = sub i64 0, %n.vec77
  %i.eb = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.ch, i64 %n.vec77
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index78 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next85, %vec.epilog.vector.body ] ; 3 uses
  %i.ed = sub i64 0, %index78
  %next.gep79 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.ed
  %next.gep80 = getelementptr i8, ptr %i.ch, i64 %index78 ; 2 uses
  %wide.load81 = load <4 x i8>, ptr %next.gep80, align 1, !tbaa !55, !alias.scope !254, !noalias !255
  %i.ee = getelementptr i8, ptr %next.gep79, i64 -3 ; 2 uses
  %wide.load82 = load <4 x i8>, ptr %i.ee, align 1, !tbaa !55, !alias.scope !255
  %reverse83 = shufflevector <4 x i8> %wide.load82, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse83, ptr %next.gep80, align 1, !tbaa !55, !alias.scope !254, !noalias !255
  %reverse84 = shufflevector <4 x i8> %wide.load81, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse84, ptr %i.ee, align 1, !tbaa !55, !alias.scope !255
  %index.next85 = add nuw i64 %index78, 4         ; 2 uses
  %i.ef = icmp eq i64 %index.next85, %n.vec77
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !244

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n86 = icmp eq i64 %i.db, %n.vec77
  br i1 %cmp.n86, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
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
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !51  ; 12 uses
  %i.fj = ptrtoaddr ptr %i.fi to i64              ; 4 uses
  %i.fk = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 6 uses
  %i.fl = ptrtoaddr ptr %i.fk to i64              ; 2 uses
  %i.fm = icmp ne ptr %i.fi, %i.fk
  %.sroa.0.08.i.i39 = getelementptr inbounds i8, ptr %i.fk, i64 -1 ; 7 uses
  %i.fn = icmp ult ptr %i.fi, %.sroa.0.08.i.i39
  %or.cond.i.i40 = select i1 %i.fm, i1 %i.fn, i1 false
  br i1 %or.cond.i.i40, label %iter.check117, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45

iter.check117:                                    ; preds = %bb.u
  %i.fo = add i64 %i.fl, -2
  %i.fp = add i64 %i.fj, 1
  %umax97 = tail call i64 @llvm.umax.i64(i64 %i.fo, i64 %i.fp)
  %i.fq = xor i64 %i.fj, -1
  %i.fr = add i64 %umax97, %i.fq                  ; 2 uses
  %i.fs = icmp ne i64 %i.fr, 0
  %umin98 = zext i1 %i.fs to i64                  ; 2 uses
  %i.ft = sub i64 %i.fr, %umin98
  %i.fu = lshr i64 %i.ft, 1
  %i.fv = add nuw i64 %i.fu, %umin98
  %i.fw = add i64 %i.fv, 1                        ; 7 uses
  %min.iters.check99 = icmp ult i64 %i.fw, 4
  br i1 %min.iters.check99, label %.lr.ph.i.i41.preheader, label %vector.memcheck89

vector.memcheck89:                                ; preds = %iter.check117
  %i.fx = add i64 %i.fl, -2
  %i.fy = add i64 %i.fj, 1
  %umax90 = tail call i64 @llvm.umax.i64(i64 %i.fx, i64 %i.fy)
  %i.fz = xor i64 %i.fj, -1
  %i.ga = add i64 %umax90, %i.fz                  ; 2 uses
  %i.gb = icmp ne i64 %i.ga, 0
  %umin91 = zext i1 %i.gb to i64                  ; 2 uses
  %i.gc = sub i64 %i.ga, %umin91
  %i.gd = lshr i64 %i.gc, 1
  %i.ge = add nuw i64 %i.gd, %umin91              ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fi, i64 %i.ge
  %scevgep92 = getelementptr i8, ptr %i.gf, i64 1
  %i.gg = xor i64 %i.ge, -1
  %scevgep93 = getelementptr i8, ptr %i.fk, i64 %i.gg
  %bound094 = icmp ult ptr %i.fi, %i.fk
  %bound195 = icmp ult ptr %scevgep93, %scevgep92
  %found.conflict96 = and i1 %bound094, %bound195
  br i1 %found.conflict96, label %.lr.ph.i.i41.preheader, label %vector.main.loop.iter.check100

vector.main.loop.iter.check100:                   ; preds = %vector.memcheck89
  %min.iters.check101 = icmp ult i64 %i.fw, 16
  br i1 %min.iters.check101, label %vec.epilog.ph121, label %vector.ph102

vector.ph102:                                     ; preds = %vector.main.loop.iter.check100
  %i.gh = and i64 %i.fw, 12
  %n.vec103 = and i64 %i.fw, -16                  ; 5 uses
  %i.gi = sub i64 0, %n.vec103
  %i.gj = getelementptr i8, ptr %.sroa.0.08.i.i39, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.fi, i64 %n.vec103
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph102
  %index105 = phi i64 [ 0, %vector.ph102 ], [ %index.next112, %vector.body104 ] ; 3 uses
  %i.gl = sub i64 0, %index105
  %next.gep106 = getelementptr i8, ptr %.sroa.0.08.i.i39, i64 %i.gl
  %next.gep107 = getelementptr i8, ptr %i.fi, i64 %index105 ; 2 uses
  %wide.load108 = load <16 x i8>, ptr %next.gep107, align 1, !tbaa !55, !alias.scope !257, !noalias !258
  %i.gm = getelementptr i8, ptr %next.gep106, i64 -15 ; 2 uses
  %wide.load109 = load <16 x i8>, ptr %i.gm, align 1, !tbaa !55, !alias.scope !258
  %reverse110 = shufflevector <16 x i8> %wide.load109, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse110, ptr %next.gep107, align 1, !tbaa !55, !alias.scope !257, !noalias !258
  %reverse111 = shufflevector <16 x i8> %wide.load108, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse111, ptr %i.gm, align 1, !tbaa !55, !alias.scope !258
  %index.next112 = add nuw i64 %index105, 16      ; 2 uses
  %i.gn = icmp eq i64 %index.next112, %n.vec103
  br i1 %i.gn, label %middle.block113, label %vector.body104, !llvm.loop !249

middle.block113:                                  ; preds = %vector.body104
  %cmp.n114 = icmp eq i64 %i.fw, %n.vec103
  br i1 %cmp.n114, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45.loopexit, label %vec.epilog.iter.check119

vec.epilog.iter.check119:                         ; preds = %middle.block113
  %min.epilog.iters.check120 = icmp eq i64 %i.gh, 0
  br i1 %min.epilog.iters.check120, label %.lr.ph.i.i41.preheader, label %vec.epilog.ph121, !prof !256

vec.epilog.ph121:                                 ; preds = %vector.main.loop.iter.check100, %vec.epilog.iter.check119
  %vec.epilog.resume.val115 = phi i64 [ %n.vec103, %vec.epilog.iter.check119 ], [ 0, %vector.main.loop.iter.check100 ]
  %n.vec122 = and i64 %i.fw, -4                   ; 4 uses
  %i.go = sub i64 0, %n.vec122
  %i.gp = getelementptr i8, ptr %.sroa.0.08.i.i39, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.fi, i64 %n.vec122
  br label %vec.epilog.vector.body123

vec.epilog.vector.body123:                        ; preds = %vec.epilog.vector.body123, %vec.epilog.ph121
  %index124 = phi i64 [ %vec.epilog.resume.val115, %vec.epilog.ph121 ], [ %index.next131, %vec.epilog.vector.body123 ] ; 3 uses
  %i.gr = sub i64 0, %index124
  %next.gep125 = getelementptr i8, ptr %.sroa.0.08.i.i39, i64 %i.gr
  %next.gep126 = getelementptr i8, ptr %i.fi, i64 %index124 ; 2 uses
  %wide.load127 = load <4 x i8>, ptr %next.gep126, align 1, !tbaa !55, !alias.scope !257, !noalias !258
  %i.gs = getelementptr i8, ptr %next.gep125, i64 -3 ; 2 uses
  %wide.load128 = load <4 x i8>, ptr %i.gs, align 1, !tbaa !55, !alias.scope !258
  %reverse129 = shufflevector <4 x i8> %wide.load128, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse129, ptr %next.gep126, align 1, !tbaa !55, !alias.scope !257, !noalias !258
  %reverse130 = shufflevector <4 x i8> %wide.load127, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse130, ptr %i.gs, align 1, !tbaa !55, !alias.scope !258
  %index.next131 = add nuw i64 %index124, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next131, %n.vec122
  br i1 %i.gt, label %vec.epilog.middle.block132, label %vec.epilog.vector.body123, !llvm.loop !250

vec.epilog.middle.block132:                       ; preds = %vec.epilog.vector.body123
  %cmp.n133 = icmp eq i64 %i.fw, %n.vec122
  br i1 %cmp.n133, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45.loopexit, label %.lr.ph.i.i41.preheader

.lr.ph.i.i41.preheader:                           ; preds = %vector.memcheck89, %iter.check117, %vec.epilog.iter.check119, %vec.epilog.middle.block132
  %.sroa.0.010.i.i42.ph = phi ptr [ %.sroa.0.08.i.i39, %iter.check117 ], [ %.sroa.0.08.i.i39, %vector.memcheck89 ], [ %i.gj, %vec.epilog.iter.check119 ], [ %i.gp, %vec.epilog.middle.block132 ]
  %.sroa.05.09.i.i43.ph = phi ptr [ %i.fi, %iter.check117 ], [ %i.fi, %vector.memcheck89 ], [ %i.gk, %vec.epilog.iter.check119 ], [ %i.gq, %vec.epilog.middle.block132 ]
  br label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %.lr.ph.i.i41.preheader, %.lr.ph.i.i41
  %.sroa.0.010.i.i42 = phi ptr [ %.sroa.0.0.i.i44, %.lr.ph.i.i41 ], [ %.sroa.0.010.i.i42.ph, %.lr.ph.i.i41.preheader ] ; 3 uses
  %.sroa.05.09.i.i43 = phi ptr [ %i.gw, %.lr.ph.i.i41 ], [ %.sroa.05.09.i.i43.ph, %.lr.ph.i.i41.preheader ] ; 3 uses
  %i.gu = load i8, ptr %.sroa.05.09.i.i43, align 1, !tbaa !55
  %i.gv = load i8, ptr %.sroa.0.010.i.i42, align 1, !tbaa !55
  store i8 %i.gv, ptr %.sroa.05.09.i.i43, align 1, !tbaa !55
  store i8 %i.gu, ptr %.sroa.0.010.i.i42, align 1, !tbaa !55
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i43, i64 1 ; 2 uses
  %.sroa.0.0.i.i44 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i42, i64 -1 ; 2 uses
  %i.gx = icmp ult ptr %i.gw, %.sroa.0.0.i.i44
  br i1 %i.gx, label %.lr.ph.i.i41, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45.loopexit, !llvm.loop !251

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45.loopexit: ; preds = %.lr.ph.i.i41, %vec.epilog.middle.block132, %middle.block113
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !138
  %.pre48 = load ptr, ptr %i.ag, align 8, !tbaa !139
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45

bb.v:                                             ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit
  %i.gy = tail call noundef i64 @_ZNK6marisa8grimoire6vector9BitVector7select1Em(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.fg)
  %i.gz = load i32, ptr %i.ab, align 8, !tbaa !127
  %i.ha = zext i32 %i.gz to i64
  %i.hb = xor i64 %i.ha, -1
  %i.hc = add i64 %i.gy, %i.hb                    ; 2 uses
  %i.hd = trunc i64 %i.hc to i32
  store i32 %i.hd, ptr %i.ab, align 8, !tbaa !127
  br label %bb.i, !llvm.loop !252

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45: ; preds = %bb.u, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45.loopexit, %bb.g
  %.sink66 = phi ptr [ %i.aq, %bb.g ], [ %.pre48, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45.loopexit ], [ %i.fk, %bb.u ]
  %.sink65 = phi ptr [ %i.ao, %bb.g ], [ %.pre, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45.loopexit ], [ %i.fi, %bb.u ] ; 2 uses
  %i.he = ptrtoint ptr %.sink66 to i64
  %i.hf = ptrtoint ptr %.sink65 to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sink65, ptr %i.hh, align 8, !tbaa !65
  %i.hi = trunc i64 %i.hg to i32
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.hi, ptr %i.hj, align 8, !tbaa !66
  %i.hk = load i64, ptr %i.a, align 8, !tbaa !253
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !55
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare noundef i64 @_ZNK6marisa8grimoire6vector9BitVector7select1Em(ptr noundef nonnull align 8 dereferenceable(208), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6marisa8grimoire4trie9LoudsTrie20common_prefix_searchERNS_5AgentE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !129
  switch i32 %i.d, label %bb.b [
    i32 3, label %bb.k
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !127
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 0, ptr %i.f, align 4, !tbaa !128
  store i32 1, ptr %i.c, align 4, !tbaa !129
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.i = load i64, ptr %i.h, align 8, !tbaa !54
  %i.j = and i64 %i.i, 1
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = load ptr, ptr %1, align 8, !tbaa !132
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.n, align 8, !tbaa !66
  %i.o = tail call noundef i64 @_ZNK6marisa8grimoire6vector9BitVector5rank1Em(ptr noundef nonnull align 8 dereferenceable(208) %i.k, i64 noundef 0)
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.p, ptr %i.q, align 4, !tbaa !55
  br label %bb.k

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.v = load i32, ptr %i.r, align 4, !tbaa !128
  %i.w = zext i32 %i.v to i64
  %i.x = load i64, ptr %i.s, align 8, !tbaa !131
  %i.y = icmp ugt i64 %i.x, %i.w
  br i1 %i.y, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef zeroext i1 @_ZNK6marisa8grimoire4trie9LoudsTrie10find_childERNS_5AgentE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 3, ptr %i.c, align 4, !tbaa !129
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.t, align 8, !tbaa !127
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %i.ac = lshr i64 %i.ab, 6
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !89
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !54
  %i.ag = and i64 %i.ab, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = and i64 %i.ah, %i.af
  %.not23 = icmp eq i64 %i.ai, 0
  br i1 %.not23, label %bb.e, label %bb.i, !llvm.loop !259

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = load ptr, ptr %1, align 8, !tbaa !132
  %i.al = load i32, ptr %i.r, align 4, !tbaa !128
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !65
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.al, ptr %i.an, align 8, !tbaa !66
  %i.ao = tail call noundef i64 @_ZNK6marisa8grimoire6vector9BitVector5rank1Em(ptr noundef nonnull align 8 dereferenceable(208) %i.aj, i64 noundef %i.ab)
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !55
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  store i32 3, ptr %i.c, align 4, !tbaa !129
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.i, %bb.g, %bb.c
  %.0 = phi i1 [ false, %bb.j ], [ true, %bb.c ], [ true, %bb.i ], [ false, %bb.g ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6marisa8grimoire4trie9LoudsTrie17predictive_searchERNS_5AgentE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !129
  switch i32 %i.d, label %bb.b [
    i32 4, label %.thread
    i32 2, label %.critedge
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6marisa8grimoire4trie5State22predictive_search_initEv(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !128
  %i.h = zext i32 %i.g to i64
  %i.i = load i64, ptr %i.f, align 8, !tbaa !131
  %i.j = icmp ugt i64 %i.i, %i.h
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZNK6marisa8grimoire4trie9LoudsTrie21predictive_find_childERNS_5AgentE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br i1 %i.k, label %bb.c, label %bb.e, !llvm.loop !260

bb.e:                                             ; preds = %bb.d
  store i32 4, ptr %i.c, align 4, !tbaa !129
  br label %.thread

end_hunk_0
begin_hunk_1_@llvm.vector.reduce.umax.v4i32
!56 = !{!45, !45, i64 0}
!57 = !{!"p1 _ZTSN6marisa8grimoire4trie3KeyE", !27, i64 0}
!58 = !{!"_ZTSN6marisa8grimoire6vector6VectorINS0_4trie3KeyEEE", !34, i64 0, !57, i64 8, !57, i64 16, !36, i64 24, !36, i64 32, !37, i64 40}
!59 = !{!58, !36, i64 24}
!60 = !{!58, !57, i64 8}
!61 = !{!58, !57, i64 16}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!"_ZTSN6marisa3KeyE", !28, i64 0, !24, i64 8, !23, i64 12}
!65 = !{!64, !28, i64 0}
!66 = !{!64, !24, i64 8}
!67 = !{!"_ZTSN6marisa8grimoire4trie3KeyE", !28, i64 0, !24, i64 8, !23, i64 12, !24, i64 16}
!68 = !{!67, !28, i64 0}
!69 = !{!67, !24, i64 8}
!70 = !{!"p1 int", !27, i64 0}
!71 = !{!"_ZTSN6marisa8grimoire6vector6VectorIjEE", !34, i64 0, !70, i64 8, !70, i64 16, !36, i64 24, !36, i64 32, !37, i64 40}
!72 = !{!71, !36, i64 24}
!73 = !{!24, !24, i64 0}
!74 = !{!71, !70, i64 8}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!"_ZTSSt4pairIjjE", !24, i64 0, !24, i64 4}
!78 = !{!77, !24, i64 0}
!79 = !{!77, !24, i64 4}
!80 = !{!"p1 _ZTSN6marisa8grimoire6vector9RankIndexE", !27, i64 0}
!81 = !{!"_ZTSN6marisa8grimoire6vector6VectorINS1_9RankIndexEEE", !34, i64 0, !80, i64 8, !80, i64 16, !36, i64 24, !36, i64 32, !37, i64 40}
!82 = !{!"_ZTSN6marisa8grimoire6vector9BitVectorE", !38, i64 0, !36, i64 48, !36, i64 56, !81, i64 64, !71, i64 112, !71, i64 160}
!83 = !{!82, !36, i64 48}
!84 = !{!"_ZTSN6marisa8grimoire6vector6VectorIhEE", !34, i64 0, !28, i64 8, !28, i64 16, !36, i64 24, !36, i64 32, !37, i64 40}
!85 = !{!84, !36, i64 24}
!86 = !{!38, !36, i64 24}
!87 = !{!38, !36, i64 32}
!88 = !{!38, !35, i64 8}
!89 = !{!38, !35, i64 16}
!90 = !{!37, !37, i64 0}
!91 = !{i8 0, i8 2}
!92 = !{}
!93 = !{!27, !27, i64 0}
!94 = !{!35, !35, i64 0}
!95 = !{!"p1 _ZTSN6marisa8grimoire4trie5CacheE", !27, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{!82, !36, i64 56}
!98 = !{!"_ZTSN6marisa8grimoire6vector6VectorIcEE", !34, i64 0, !28, i64 8, !28, i64 16, !36, i64 24, !36, i64 32, !37, i64 40}
!99 = !{!98, !36, i64 24}
!100 = !{!"_ZTSN6marisa8grimoire6vector6VectorINS0_4trie5CacheEEE", !34, i64 0, !95, i64 8, !95, i64 16, !36, i64 24, !36, i64 32, !37, i64 40}
!101 = !{!100, !36, i64 24}
!102 = !{!"_ZTSN6marisa8grimoire4trie4TailE", !98, i64 0, !82, i64 48}
!103 = !{!"_ZTSSt10_Head_baseILm0EPN6marisa8grimoire4trie9LoudsTrieELb0EE", !52, i64 0}
!104 = !{!"_ZTSSt11_Tuple_implILm0EJPN6marisa8grimoire4trie9LoudsTrieESt14default_deleteIS3_EEE", !103, i64 0}
!105 = !{!"_ZTSSt5tupleIJPN6marisa8grimoire4trie9LoudsTrieESt14default_deleteIS3_EEE", !104, i64 0}
!106 = !{!"_ZTSSt15__uniq_ptr_implIN6marisa8grimoire4trie9LoudsTrieESt14default_deleteIS3_EE", !105, i64 0}
!107 = !{!"_ZTSSt15__uniq_ptr_dataIN6marisa8grimoire4trie9LoudsTrieESt14default_deleteIS3_ELb1ELb1EE", !106, i64 0}
!108 = !{!"_ZTSSt10unique_ptrIN6marisa8grimoire4trie9LoudsTrieESt14default_deleteIS3_EE", !107, i64 0}
!109 = !{!"_ZTSN6marisa8grimoire2io6MapperE", !27, i64 0, !27, i64 8, !36, i64 16, !36, i64 24, !24, i64 32}
!110 = !{!"_ZTSN6marisa8grimoire4trie9LoudsTrieE", !82, i64 0, !82, i64 208, !82, i64 416, !84, i64 624, !39, i64 672, !102, i64 744, !108, i64 1000, !100, i64 1008, !36, i64 1056, !36, i64 1064, !46, i64 1072, !109, i64 1096}
!111 = !{!110, !36, i64 1056}
!112 = !{!110, !36, i64 1064}
!113 = !{!100, !95, i64 16}
!114 = !{!"p1 _ZTSN6marisa8grimoire4trie5StateE", !27, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!117 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !116, i64 0}
!118 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !117, i64 0}
!119 = !{!"_ZTSSt6vectorIcSaIcEE", !118, i64 0}
!120 = !{!"p1 _ZTSN6marisa8grimoire4trie7HistoryE", !27, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseIN6marisa8grimoire4trie7HistoryESaIS3_EE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!122 = !{!"_ZTSNSt12_Vector_baseIN6marisa8grimoire4trie7HistoryESaIS3_EE12_Vector_implE", !121, i64 0}
!123 = !{!"_ZTSSt12_Vector_baseIN6marisa8grimoire4trie7HistoryESaIS3_EE", !122, i64 0}
!124 = !{!"_ZTSSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE", !123, i64 0}
!125 = !{!"_ZTSN6marisa8grimoire4trie10StatusCodeE", !23, i64 0}
!126 = !{!"_ZTSN6marisa8grimoire4trie5StateE", !119, i64 0, !124, i64 24, !24, i64 48, !24, i64 52, !24, i64 56, !125, i64 60}
!127 = !{!126, !24, i64 48}
!128 = !{!126, !24, i64 52}
!129 = !{!126, !125, i64 60}
!130 = !{!"_ZTSN6marisa5QueryE", !28, i64 0, !36, i64 8, !36, i64 16}
!131 = !{!130, !36, i64 8}
!132 = !{!130, !28, i64 0}
!133 = !{!"_ZTSN6marisa8grimoire4trie5CacheE", !24, i64 0, !24, i64 4, !23, i64 8}
!134 = !{!133, !24, i64 0}
!135 = !{!133, !24, i64 4}
!136 = !{!84, !28, i64 16}
!137 = !{!116, !28, i64 16}
!138 = !{!116, !28, i64 0}
!139 = !{!116, !28, i64 8}
!140 = !{!121, !120, i64 8}
!141 = !{!121, !120, i64 16}
!142 = !{!121, !120, i64 0}
!143 = !{i64 0, i64 4, !73, i64 4, i64 4, !73, i64 8, i64 4, !73, i64 12, i64 4, !73, i64 16, i64 4, !73}
!144 = !{!81, !36, i64 24}
!145 = !{!80, !80, i64 0}
!146 = !{!70, !70, i64 0}
!147 = !{!84, !28, i64 8}
!148 = !{!"p1 _ZTSN6marisa8grimoire4trie5EntryE", !27, i64 0}
!149 = !{!"_ZTSN6marisa8grimoire6vector6VectorINS0_4trie5EntryEEE", !34, i64 0, !148, i64 8, !148, i64 16, !36, i64 24, !36, i64 32, !37, i64 40}
!150 = !{!149, !36, i64 24}
!151 = !{!149, !148, i64 8}
!152 = !{!149, !148, i64 16}
!153 = !{!149, !36, i64 32}
!154 = !{!"_ZTSN6marisa8grimoire4trie5EntryE", !28, i64 0, !24, i64 8, !24, i64 12}
!155 = !{!154, !28, i64 0}
!156 = !{!154, !24, i64 8}
!157 = !{!"p1 _ZTSN6marisa8grimoire4trie10ReverseKeyE", !27, i64 0}
!158 = !{!"_ZTSN6marisa8grimoire6vector6VectorINS0_4trie10ReverseKeyEEE", !34, i64 0, !157, i64 8, !157, i64 16, !36, i64 24, !36, i64 32, !37, i64 40}
!159 = !{!158, !36, i64 24}
!160 = !{!158, !157, i64 8}
!161 = !{!158, !157, i64 16}
!162 = !{!"_ZTSN6marisa8grimoire4trie10ReverseKeyE", !28, i64 0, !24, i64 8, !23, i64 12, !24, i64 16}
!163 = !{!162, !28, i64 0}
!164 = !{!162, !24, i64 8}
!165 = !{!100, !95, i64 8}
!166 = !{!100, !36, i64 32}
!167 = !{!38, !37, i64 40}
!168 = !{!81, !80, i64 16}
!169 = !{!71, !70, i64 16}
!170 = !{!84, !36, i64 32}
!171 = !{!"any p2 pointer", !27, i64 0}
!172 = !{!"p2 _ZTSN6marisa8grimoire4trie5RangeE", !171, i64 0}
!173 = !{!"p1 _ZTSN6marisa8grimoire4trie5RangeE", !27, i64 0}
!174 = !{!"_ZTSSt15_Deque_iteratorIN6marisa8grimoire4trie5RangeERS3_PS3_E", !173, i64 0, !173, i64 8, !173, i64 16, !172, i64 24}
!175 = !{!"_ZTSNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_Deque_impl_dataE", !172, i64 0, !36, i64 8, !174, i64 16, !174, i64 48}
!176 = !{!175, !173, i64 48}
!177 = !{!175, !173, i64 64}
!178 = !{i64 0, i64 4, !73, i64 4, i64 4, !73, i64 8, i64 4, !73}
!179 = !{!174, !173, i64 0}
!180 = !{!174, !172, i64 24}
!181 = !{!174, !173, i64 8}
!182 = !{!174, !173, i64 16}
!183 = !{!175, !173, i64 24}
!184 = !{!175, !172, i64 40}
!185 = !{!173, !173, i64 0}
!186 = !{!175, !173, i64 16}
!187 = !{!"_ZTSN6marisa8grimoire4trie5RangeE", !24, i64 0, !24, i64 4, !24, i64 8}
!188 = !{!187, !24, i64 8}
!189 = !{!187, !24, i64 0}
!190 = !{!187, !24, i64 4}
!191 = !{!"float", !23, i64 0}
!192 = !{!"_ZTSN6marisa8grimoire4trie13WeightedRangeE", !187, i64 0, !191, i64 12}
!193 = !{!192, !191, i64 12}
!194 = !{!175, !36, i64 8}
!195 = !{!175, !172, i64 0}
!196 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!197 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!198 = !{!175, !172, i64 72}
!199 = !{!84, !37, i64 40}
!200 = !{i64 0, i64 8, !51, i64 8, i64 4, !73, i64 12, i64 4, !55, i64 16, i64 4, !73}
!201 = !{!191, !191, i64 0}
!202 = !{i64 0, i64 4, !73, i64 4, i64 4, !73, i64 8, i64 4, !73, i64 12, i64 4, !201}
!203 = distinct !{!203, !62}
!204 = distinct !{!204, !63}
!205 = distinct !{!205, !62}
!206 = distinct !{!206, !"LVerDomain"}
!207 = distinct !{!207, !206}
!208 = distinct !{!208, !206}
!209 = distinct !{!209, !62, !75, !76}
!210 = distinct !{!210, !63}
!211 = distinct !{!211, !62, !75}
!212 = distinct !{!212, !62}
!213 = distinct !{!213, !62}
!214 = distinct !{!214, !62}
!215 = distinct !{!215, !62}
!216 = !{!"p1 _ZTSSt10unique_ptrIA_cSt14default_deleteIS0_EE", !27, i64 0}
!217 = !{!"_ZTSSt10_Head_baseILm0EPSt10unique_ptrIA_cSt14default_deleteIS1_EELb0EE", !216, i64 0}
!218 = !{!"_ZTSSt11_Tuple_implILm0EJPSt10unique_ptrIA_cSt14default_deleteIS1_EES2_IA_S4_EEE", !217, i64 0}
!219 = !{!"_ZTSSt5tupleIJPSt10unique_ptrIA_cSt14default_deleteIS1_EES2_IA_S4_EEE", !218, i64 0}
!220 = !{!"_ZTSSt15__uniq_ptr_implISt10unique_ptrIA_cSt14default_deleteIS1_EES2_IA_S4_EE", !219, i64 0}
!221 = !{!"_ZTSSt15__uniq_ptr_dataISt10unique_ptrIA_cSt14default_deleteIS1_EES2_IA_S4_ELb1ELb1EE", !220, i64 0}
!222 = !{!"_ZTSSt10unique_ptrIA_S_IA_cSt14default_deleteIS0_EES1_IS4_EE", !221, i64 0}
!223 = !{!"p1 _ZTSSt10unique_ptrIA_N6marisa3KeyESt14default_deleteIS2_EE", !27, i64 0}
!224 = !{!"_ZTSSt10_Head_baseILm0EPSt10unique_ptrIA_N6marisa3KeyESt14default_deleteIS3_EELb0EE", !223, i64 0}
!225 = !{!"_ZTSSt11_Tuple_implILm0EJPSt10unique_ptrIA_N6marisa3KeyESt14default_deleteIS3_EES4_IA_S6_EEE", !224, i64 0}
!226 = !{!"_ZTSSt5tupleIJPSt10unique_ptrIA_N6marisa3KeyESt14default_deleteIS3_EES4_IA_S6_EEE", !225, i64 0}
!227 = !{!"_ZTSSt15__uniq_ptr_implISt10unique_ptrIA_N6marisa3KeyESt14default_deleteIS3_EES4_IA_S6_EE", !226, i64 0}
!228 = !{!"_ZTSSt15__uniq_ptr_dataISt10unique_ptrIA_N6marisa3KeyESt14default_deleteIS3_EES4_IA_S6_ELb1ELb1EE", !227, i64 0}
!229 = !{!"_ZTSSt10unique_ptrIA_S_IA_N6marisa3KeyESt14default_deleteIS2_EES3_IS6_EE", !228, i64 0}
!230 = !{!"_ZTSN6marisa6KeysetE", !222, i64 0, !36, i64 8, !36, i64 16, !222, i64 24, !36, i64 32, !36, i64 40, !229, i64 48, !36, i64 56, !36, i64 64, !28, i64 72, !36, i64 80, !36, i64 88, !36, i64 96}
!231 = !{!230, !36, i64 88}
!232 = !{!58, !36, i64 32}
!233 = !{!223, !223, i64 0}
!234 = !{!"p1 _ZTSN6marisa3KeyE", !27, i64 0}
!235 = !{!234, !234, i64 0}
!236 = !{!207}
!237 = !{!208}
!238 = distinct !{!238, !62}
!239 = distinct !{!239, !62}
!240 = distinct !{!240, !"LVerDomain"}
!241 = distinct !{!241, !240}
!242 = distinct !{!242, !240}
!243 = distinct !{!243, !62, !75, !76}
!244 = distinct !{!244, !62, !75, !76}
!245 = distinct !{!245, !62, !75}
!246 = distinct !{!246, !"LVerDomain"}
!247 = distinct !{!247, !246}
!248 = distinct !{!248, !246}
!249 = distinct !{!249, !62, !75, !76}
!250 = distinct !{!250, !62, !75, !76}
!251 = distinct !{!251, !62, !75}
!252 = distinct !{!252, !62}
!253 = !{!130, !36, i64 16}
!254 = !{!241}
!255 = !{!242}
!256 = !{!"branch_weights", i32 4, i32 12}
!257 = !{!247}
!258 = !{!248}
!259 = distinct !{!259, !62}
!260 = distinct !{!260, !62}
!261 = distinct !{!261, !"_ZSt19__relocate_object_aIN6marisa8grimoire4trie7HistoryES3_SaIS3_EEvPT_PT0_RT1_"}
!262 = distinct !{!262, !261, !"_ZSt19__relocate_object_aIN6marisa8grimoire4trie7HistoryES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!263 = distinct !{!263, !261, !"_ZSt19__relocate_object_aIN6marisa8grimoire4trie7HistoryES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!264 = distinct !{!264, !"_ZSt19__relocate_object_aIN6marisa8grimoire4trie7HistoryES3_SaIS3_EEvPT_PT0_RT1_"}
!265 = distinct !{!265, !264, !"_ZSt19__relocate_object_aIN6marisa8grimoire4trie7HistoryES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!266 = distinct !{!266, !264, !"_ZSt19__relocate_object_aIN6marisa8grimoire4trie7HistoryES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!267 = distinct !{!267, !62}
!268 = !{!263, !262}
!269 = !{!126, !24, i64 56}
!270 = !{!"_ZTSN6marisa8grimoire4trie7HistoryE", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16}
!271 = !{!270, !24, i64 0}
!272 = !{!266, !265}
!273 = !{!270, !24, i64 4}
!274 = !{!270, !24, i64 12}
!275 = !{!270, !24, i64 8}
!276 = !{!270, !24, i64 16}
!277 = distinct !{!277, !"_ZSt19__relocate_object_aIN6marisa8grimoire4trie7HistoryES3_SaIS3_EEvPT_PT0_RT1_"}
!278 = distinct !{!278, !277, !"_ZSt19__relocate_object_aIN6marisa8grimoire4trie7HistoryES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!279 = distinct !{!279, !277, !"_ZSt19__relocate_object_aIN6marisa8grimoire4trie7HistoryES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!280 = !{!279, !278}
!281 = distinct !{!281, !62}
!282 = distinct !{!282, !62}
!283 = distinct !{!283, !62}
!284 = distinct !{!284, !62}
!285 = distinct !{!285, !62}
!286 = distinct !{!286, !63}
!287 = distinct !{!287, !62}
!288 = !{!158, !36, i64 32}
!289 = distinct !{!289, !62}
!290 = distinct !{!290, !62}
!291 = distinct !{!291, !62}
!292 = distinct !{!292, !62}
!293 = distinct !{!293, !62}
!294 = distinct !{!294, !62}
!295 = !{!81, !37, i64 40}
!296 = !{!71, !37, i64 40}
!297 = !{!81, !36, i64 32}
!298 = !{!81, !80, i64 8}
!299 = !{!71, !36, i64 32}
!300 = distinct !{!300, !63}
!301 = distinct !{!301, !62}
!302 = distinct !{!302, !62}
!303 = distinct !{!303, !62}
!304 = distinct !{!304, !62}
!305 = distinct !{!305, !62}
!306 = distinct !{!306, !62}
!307 = distinct !{!307, !63}
!308 = distinct !{!308, !62}
!309 = !{!67, !24, i64 16}
!310 = !{!57, !57, i64 0}
!311 = distinct !{!311, !62}
!312 = distinct !{!312, !62}
!313 = distinct !{!313, !62}
!314 = distinct !{!314, !62}
!315 = distinct !{!315, !62}
!316 = distinct !{!316, !62}
!317 = distinct !{!317, !62}
!318 = distinct !{!318, !62}
!319 = distinct !{!319, !62}
!320 = distinct !{!320, !63}
!321 = distinct !{!321, !62}
!322 = distinct !{!322, !62}
!323 = distinct !{!323, !62}
!324 = distinct !{!324, !62}
!325 = distinct !{!325, !62}
!326 = distinct !{!326, !62}
!327 = distinct !{!327, !62}
!328 = !{!"branch_weights", !"expected", i32 2146946911, i32 536737}
!329 = distinct !{!329, !62, !75, !76}
!330 = distinct !{!330, !62, !76, !75}
!331 = distinct !{!331, !62}
!332 = distinct !{!332, !62}
!333 = distinct !{!333, !63}
!334 = distinct !{!334, !62}
!335 = distinct !{!335, !62}
!336 = distinct !{!336, !62}
!337 = distinct !{!337, !62}
!338 = distinct !{!338, !63}
!339 = distinct !{!339, !62}
!340 = distinct !{!340, !62}
!341 = distinct !{!341, !62}
!342 = distinct !{!342, !62}
!343 = distinct !{!343, !62}
!344 = distinct !{!344, !63}
!345 = distinct !{!345, !62}
!346 = distinct !{!346, !62}
!347 = distinct !{!347, !62}
!348 = distinct !{!348, !62}
!349 = distinct !{!349, !62}
!350 = distinct !{!350, !62}
!351 = distinct !{!351, !63}
!352 = distinct !{!352, !62}
!353 = !{!162, !24, i64 16}
!354 = !{!157, !157, i64 0}
!355 = distinct !{!355, !62}
!356 = distinct !{!356, !62}
!357 = distinct !{!357, !62}
!358 = distinct !{!358, !62}
!359 = distinct !{!359, !62}
!360 = distinct !{!360, !62}
!361 = distinct !{!361, !62}
!362 = !{!100, !37, i64 40}
end_hunk_1
