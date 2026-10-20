Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ans_common?download=true
inline.NumInlined: 349
inline.NumDeleted: 202
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3jxl14InitAliasTableENSt3__16vectorIiNS0_9allocatorIiEEEEjmPNS_10AliasTable5EntryE:bb.a
  %i.x = ptrtoint ptr %i.o to i64
  %i.y = sub i64 %i.x, %i.s                       ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.y, 9223372036854775804
  %i.z = ashr exact i64 %i.y, 1
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.v)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 4611686018427387903 ; 4 uses
  %i.aa = icmp ne i64 %.0.i.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp ugt i64 %.0.i.i.i, 4611686018427387903
  br i1 %i.ab, label %bb.f, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i

bb.f:                                             ; preds = %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8nn180100Em.exit.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #10
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8nn180100Em.exit.i.i
  %i.ac = shl nuw i64 %.0.i.i.i, 2
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #11 ; 3 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.t ; 7 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.0.i.i.i
  store i32 %i.a, ptr %i.af, align 4, !tbaa !82
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 3 uses
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !81  ; 6 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !80    ; 6 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = add i64 %i.aj, -4
  %i.an = sub i64 %i.am, %i.al                    ; 2 uses
  %i.ao = lshr i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader641, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.aq = add i64 %i.aj, %i.s
  %i.ar = add i64 %i.ae, %i.r
  %i.as = sub i64 %i.ar, %i.aq
  %diff.check = icmp ugt i64 %i.as, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader641, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 9223372036854775800     ; 3 uses
  %i.at = mul i64 %n.vec, -4                      ; 2 uses
  %i.au = getelementptr i8, ptr %i.af, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.ai, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.aw ; 2 uses
  %next.gep490 = getelementptr i8, ptr %i.ai, i64 %i.aw ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %next.gep490, i64 -16
  %i.ay = getelementptr inbounds i8, ptr %next.gep490, i64 -32
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !82, !noalias !85
  %wide.load491 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !82, !noalias !85
  %i.az = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ba = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.az, align 4, !tbaa !82, !noalias !85
  store <4 x i32> %wide.load491, ptr %i.ba, align 4, !tbaa !82, !noalias !85
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader641

.lr.ph.i.i.i.i.i.i.i.i.i.preheader641:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph642 = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader641, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bc = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph642, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader641 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader641 ]
  %i.bd = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !82, !noalias !85
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 -4 ; 3 uses
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !82, !noalias !85
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.ak
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !19

_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8nn180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %storemerge.i.i = phi ptr [ %i.af, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i ], [ %i.au, %middle.block ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !84
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !84
  %i.bg = load ptr, ptr %i.n, align 8, !tbaa !84
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !84
  %.not.i4.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i4.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE12emplace_backIJRKjEEERiDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8nn180100Ev.exit.i.i.i
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.ak to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bj) #12
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !80
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE12emplace_backIJRKjEEERiDpOT_.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEE12emplace_backIJRKjEEERiDpOT_.exit: ; preds = %bb.c, %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8nn180100Ev.exit.i.i.i, %bb.g
  %.pre = phi ptr [ %i.f, %bb.c ], [ %storemerge.i.i, %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8nn180100Ev.exit.i.i.i ], [ %.pre.pre, %bb.g ]
  %.0.i = phi ptr [ %i.q, %bb.c ], [ %i.ah, %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8nn180100Ev.exit.i.i.i ], [ %i.ah, %bb.g ] ; 2 uses
  store ptr %.0.i, ptr %i.g, align 8, !tbaa !81
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt3__16vectorIiNS_9allocatorIiEEE12emplace_backIJRKjEEERiDpOT_.exit
  %i.bk = phi ptr [ %.pre, %_ZNSt3__16vectorIiNS_9allocatorIiEEE12emplace_backIJRKjEEERiDpOT_.exit ], [ %i.f, %.lr.ph ] ; 3 uses
  %i.bl = phi ptr [ %.0.i, %_ZNSt3__16vectorIiNS_9allocatorIiEEE12emplace_backIJRKjEEERiDpOT_.exit ], [ %i.i, %.lr.ph ] ; 2 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 2 uses
  %.not110 = icmp ugt i64 %i.bp, %i.d
  br i1 %.not110, label %.thread211, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.bq = lshr i32 %i.a, %i.b                     ; 7 uses
  %.not111248.not = icmp eq ptr %i.bl, %i.bk
  br i1 %.not111248.not, label %.thread211, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.h, %bb.k
  %.098251 = phi i32 [ %.2100.ph, %bb.k ], [ -1, %bb.h ] ; 2 uses
  %.0101250 = phi i64 [ %i.bx, %bb.k ], [ 0, %bb.h ] ; 3 uses
  %.0102249 = phi i32 [ %i.bt, %bb.k ], [ 0, %bb.h ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.0101250
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !82 ; 2 uses
  %i.bt = add nsw i32 %i.bs, %.0102249            ; 2 uses
  %i.bu = icmp eq i32 %i.bs, 4096
  br i1 %i.bu, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph253
  %i.bv = icmp eq i32 %.098251, -1
  br i1 %i.bv, label %bb.j, label %.thread211

bb.j:                                             ; preds = %bb.i
  %i.bw = trunc i64 %.0101250 to i32
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph253, %bb.j
  %.2100.ph = phi i32 [ %i.bw, %bb.j ], [ %.098251, %.lr.ph253 ] ; 4 uses
  %i.bx = add nuw i64 %.0101250, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %i.bp
  br i1 %exitcond.not, label %._crit_edge254, label %.lr.ph253, !llvm.loop !20

._crit_edge254:                                   ; preds = %bb.k
  %i.by = icmp eq i32 %i.bt, %i.a
  br i1 %i.by, label %bb.l, label %.thread211

bb.l:                                             ; preds = %._crit_edge254
  %.not112 = icmp eq i32 %.2100.ph, -1
  br i1 %.not112, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = trunc nuw i32 %.2100.ph to i8           ; 3 uses
  %i.ca = icmp ult i32 %.2100.ph, 256
  br i1 %i.ca, label %.preheader219, label %.thread211

.preheader219:                                    ; preds = %bb.m
  %i.cb = zext i32 %i.bq to i64                   ; 2 uses
  %i.cc = icmp eq i32 %i.b, 0
  br i1 %i.cc, label %.epil.preheader, label %.preheader219.new

.preheader219.new:                                ; preds = %.preheader219
  %unroll_iter = and i64 %i.d, -2
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader219.new
  %.096257 = phi i64 [ 0, %.preheader219.new ], [ %i.cs, %bb.n ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader219.new ], [ %niter.next.1, %bb.n ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.096257 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store i8 %i.bz, ptr %i.ce, align 1, !tbaa !90
  store i8 0, ptr %i.cd, align 1, !tbaa !91
  %i.cf = mul i64 %.096257, %i.cb
  %i.cg = trunc i64 %i.cf to i16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i16 %i.cg, ptr %i.ch, align 1, !tbaa !92
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i16 0, ptr %i.ci, align 1, !tbaa !93
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 6
  store i16 4096, ptr %i.cj, align 1, !tbaa !94
  %i.ck = or disjoint i64 %.096257, 1             ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ck ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store i8 %i.bz, ptr %i.cm, align 1, !tbaa !90
  store i8 0, ptr %i.cl, align 1, !tbaa !91
  %i.cn = mul i64 %i.ck, %i.cb
  %i.co = trunc i64 %i.cn to i16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i16 %i.co, ptr %i.cp, align 1, !tbaa !92
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i16 0, ptr %i.cq, align 1, !tbaa !93
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 6
  store i16 4096, ptr %i.cr, align 1, !tbaa !94
  %i.cs = add nuw nsw i64 %.096257, 2
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread211, label %bb.n, !llvm.loop !21

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ct = icmp eq i32 %i.b, 31
  br i1 %i.ct, label %bb.p, label %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit

bb.p:                                             ; preds = %bb.o
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  unreachable

_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit:    ; preds = %bb.o
  %i.cu = shl nuw nsw i64 %i.d, 2                 ; 2 uses
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #11 ; 5 uses
  store ptr %i.cv, ptr %6, align 8, !tbaa !98
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cv, i8 0, i64 %i.cu, i1 false), !tbaa !82
  %i.cx = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.cy = load ptr, ptr %0, align 8, !tbaa !80    ; 2 uses
  %.not268 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not268, label %._crit_edge260, label %.lr.ph259

.lr.ph259:                                        ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.q

._crit_edge260.loopexit:                          ; preds = %bb.ae
  %7 = and i64 %i.hm, 4294967295
  br label %._crit_edge260

._crit_edge260:                                   ; preds = %._crit_edge260.loopexit, %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit
  %i.dd = phi ptr [ null, %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit ], [ %i.hb, %._crit_edge260.loopexit ] ; 2 uses
  %i.de = phi ptr [ null, %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit ], [ %i.hc, %._crit_edge260.loopexit ] ; 2 uses
  %i.df = phi ptr [ null, %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit ], [ %i.ha, %._crit_edge260.loopexit ] ; 3 uses
  %i.dg = phi ptr [ null, %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit ], [ %i.hd, %._crit_edge260.loopexit ] ; 2 uses
  %i.dh = phi ptr [ null, %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit ], [ %i.he, %._crit_edge260.loopexit ] ; 2 uses
  %i.di = phi ptr [ null, %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit ], [ %i.hf, %._crit_edge260.loopexit ] ; 2 uses
  %.lcssa232 = phi i64 [ 0, %_ZNSt3__16vectorIjNS_9allocatorIjEEEC2Em.exit ], [ %7, %._crit_edge260.loopexit ] ; 2 uses
  %i.dj = icmp ult i64 %.lcssa232, %i.d
  br i1 %i.dj, label %.lr.ph264, label %.preheader217

.lr.ph264:                                        ; preds = %._crit_edge260
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.af

bb.q:                                             ; preds = %.lr.ph259, %bb.ae
  %i.dm = phi ptr [ null, %.lr.ph259 ], [ %i.ha, %bb.ae ] ; 8 uses
  %i.dn = phi ptr [ null, %.lr.ph259 ], [ %i.hb, %bb.ae ] ; 5 uses
  %i.do = phi ptr [ null, %.lr.ph259 ], [ %i.hc, %bb.ae ] ; 10 uses
  %i.dp = phi ptr [ null, %.lr.ph259 ], [ %i.hd, %bb.ae ] ; 8 uses
  %i.dq = phi ptr [ null, %.lr.ph259 ], [ %i.he, %bb.ae ] ; 5 uses
  %i.dr = phi ptr [ null, %.lr.ph259 ], [ %i.hf, %bb.ae ] ; 10 uses
  %i.ds = phi ptr [ %i.cy, %.lr.ph259 ], [ %i.hi, %bb.ae ]
  %.095258 = phi i64 [ 0, %.lr.ph259 ], [ %i.hg, %bb.ae ] ; 5 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.095258
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !82 ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.095258
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !82
  %i.dw = icmp ugt i32 %i.du, %i.bq
  br i1 %i.dw, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.dx = trunc i64 %.095258 to i32               ; 2 uses
  %i.dy = icmp ult ptr %i.do, %i.dn
  br i1 %i.dy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.dx, ptr %i.do, align 4, !tbaa !82
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit

bb.t:                                             ; preds = %bb.r
  %i.ea = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.eb = ptrtoint ptr %i.dm to i64               ; 4 uses
  %i.ec = sub i64 %i.ea, %i.eb                    ; 2 uses
  %i.ed = ashr exact i64 %i.ec, 2
  %i.ee = add nsw i64 %i.ed, 1                    ; 2 uses
  %i.ef = icmp ugt i64 %i.ee, 4611686018427387903
  br i1 %i.ef, label %bb.u, label %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i

bb.u:                                             ; preds = %bb.t
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  unreachable

_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i: ; preds = %bb.t
  %i.eg = ptrtoint ptr %i.dn to i64
  %i.eh = sub i64 %i.eg, %i.eb                    ; 3 uses
  %.not.i.i.i113 = icmp ult i64 %i.eh, 9223372036854775804
  %i.ei = ashr exact i64 %i.eh, 1
  %.sroa.speculated.i.i.i114 = tail call i64 @llvm.umax.i64(i64 %i.ei, i64 %i.ee)
  %.0.i.i.i115 = select i1 %.not.i.i.i113, i64 %.sroa.speculated.i.i.i114, i64 4611686018427387903 ; 4 uses
  %i.ej = icmp ne i64 %.0.i.i.i115, 0
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = icmp ugt i64 %.0.i.i.i115, 4611686018427387903
  br i1 %i.ek, label %bb.v, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i

bb.v:                                             ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #10
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i
  %i.el = shl nuw i64 %.0.i.i.i115, 2
  %i.em = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #11 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ec ; 6 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.0.i.i.i115 ; 3 uses
  store i32 %i.dx, ptr %i.en, align 4, !tbaa !82
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i116 = icmp eq ptr %i.do, %i.dm
  br i1 %.not4.i.i.i.i.i.i.i.i.i116, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader

.lr.ph.i.i.i.i.i.i.i.i.i117.preheader:            ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %i.eq = ptrtoaddr ptr %i.em to i64
  %i.er = add i64 %i.ea, -4
  %i.es = sub i64 %i.er, %i.eb                    ; 2 uses
  %i.et = lshr i64 %i.es, 2
  %i.eu = add nuw nsw i64 %i.et, 1                ; 2 uses
  %min.iters.check496 = icmp ult i64 %i.es, 28
  %i.ev = sub i64 %i.eq, %i.eb
  %diff.check494 = icmp ugt i64 %i.ev, -32
  %or.cond = or i1 %min.iters.check496, %diff.check494
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader625, label %vector.ph497

vector.ph497:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader
  %n.vec498 = and i64 %i.eu, 9223372036854775800  ; 3 uses
  %i.ew = mul i64 %n.vec498, -4                   ; 2 uses
  %i.ex = getelementptr i8, ptr %i.en, i64 %i.ew  ; 2 uses
  %i.ey = getelementptr i8, ptr %i.do, i64 %i.ew
  br label %vector.body499

vector.body499:                                   ; preds = %vector.body499, %vector.ph497
  %index500 = phi i64 [ 0, %vector.ph497 ], [ %index.next505, %vector.body499 ] ; 2 uses
  %i.ez = mul i64 %index500, -4                   ; 2 uses
  %next.gep501 = getelementptr i8, ptr %i.en, i64 %i.ez ; 2 uses
  %next.gep502 = getelementptr i8, ptr %i.do, i64 %i.ez ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %next.gep502, i64 -16
  %i.fb = getelementptr inbounds i8, ptr %next.gep502, i64 -32
  %wide.load503 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !82, !noalias !99
  %wide.load504 = load <4 x i32>, ptr %i.fb, align 4, !tbaa !82, !noalias !99
  %i.fc = getelementptr inbounds i8, ptr %next.gep501, i64 -16
  %i.fd = getelementptr inbounds i8, ptr %next.gep501, i64 -32
  store <4 x i32> %wide.load503, ptr %i.fc, align 4, !tbaa !82, !noalias !99
  store <4 x i32> %wide.load504, ptr %i.fd, align 4, !tbaa !82, !noalias !99
  %index.next505 = add nuw i64 %index500, 8       ; 2 uses
  %i.fe = icmp eq i64 %index.next505, %n.vec498
  br i1 %i.fe, label %middle.block506, label %vector.body499, !llvm.loop !30

middle.block506:                                  ; preds = %vector.body499
  %cmp.n507 = icmp eq i64 %i.eu, %n.vec498
  br i1 %cmp.n507, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader625

.lr.ph.i.i.i.i.i.i.i.i.i117.preheader625:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader, %middle.block506
  %.ph626 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader ], [ %i.ex, %middle.block506 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i118.ph = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader ], [ %i.ey, %middle.block506 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i117

.lr.ph.i.i.i.i.i.i.i.i.i117:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader625, %.lr.ph.i.i.i.i.i.i.i.i.i117
  %i.ff = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i.i.i.i117 ], [ %.ph626, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader625 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i118 = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i117 ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i118.ph, %.lr.ph.i.i.i.i.i.i.i.i.i117.preheader625 ]
  %i.fg = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i118, i64 -4 ; 3 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !82, !noalias !99
  %i.fi = getelementptr inbounds i8, ptr %i.ff, i64 -4 ; 3 uses
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !82, !noalias !99
  %.not.i.i.i.i.i.i.i.i.i119 = icmp eq ptr %i.fg, %i.dm
  br i1 %.not.i.i.i.i.i.i.i.i.i119, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i117, !llvm.loop !31

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117, %middle.block506, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %storemerge.i.i120 = phi ptr [ %i.en, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i ], [ %i.ex, %middle.block506 ], [ %i.fi, %.lr.ph.i.i.i.i.i.i.i.i.i117 ] ; 3 uses
  store ptr %storemerge.i.i120, ptr %5, align 8, !tbaa !84
  store ptr %i.eo, ptr %i.dc, align 8, !tbaa !84
  %.not.i4.i.i121 = icmp eq ptr %i.dm, null
  br i1 %.not.i4.i.i121, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.eh) #12
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit: ; preds = %bb.s, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, %bb.w
  %i.fj = phi ptr [ %i.dm, %bb.s ], [ %storemerge.i.i120, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i ], [ %storemerge.i.i120, %bb.w ]
  %i.fk = phi ptr [ %i.dn, %bb.s ], [ %i.eo, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i ], [ %i.eo, %bb.w ]
  %.0.i122 = phi ptr [ %i.dz, %bb.s ], [ %i.ep, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i ], [ %i.ep, %bb.w ] ; 2 uses
  store ptr %.0.i122, ptr %i.db, align 8, !tbaa !100
  br label %bb.ae

bb.x:                                             ; preds = %bb.q
  %i.fl = icmp ult i32 %i.du, %i.bq
  br i1 %i.fl, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.fm = trunc i64 %.095258 to i32               ; 2 uses
  %i.fn = icmp ult ptr %i.dr, %i.dq
  br i1 %i.fn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.fm, ptr %i.dr, align 4, !tbaa !82
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136

bb.aa:                                            ; preds = %bb.y
  %i.fp = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.fq = ptrtoint ptr %i.dp to i64               ; 4 uses
  %i.fr = sub i64 %i.fp, %i.fq                    ; 2 uses
  %i.fs = ashr exact i64 %i.fr, 2
  %i.ft = add nsw i64 %i.fs, 1                    ; 2 uses
  %i.fu = icmp ugt i64 %i.ft, 4611686018427387903
  br i1 %i.fu, label %bb.ab, label %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i123

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #10
  unreachable

_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i123: ; preds = %bb.aa
  %i.fv = ptrtoint ptr %i.dq to i64
  %i.fw = sub i64 %i.fv, %i.fq                    ; 3 uses
  %.not.i.i.i124 = icmp ult i64 %i.fw, 9223372036854775804
  %i.fx = ashr exact i64 %i.fw, 1
  %.sroa.speculated.i.i.i125 = tail call i64 @llvm.umax.i64(i64 %i.fx, i64 %i.ft)
  %.0.i.i.i126 = select i1 %.not.i.i.i124, i64 %.sroa.speculated.i.i.i125, i64 4611686018427387903 ; 4 uses
  %i.fy = icmp ne i64 %.0.i.i.i126, 0
  tail call void @llvm.assume(i1 %i.fy)
  %i.fz = icmp ugt i64 %.0.i.i.i126, 4611686018427387903
  br i1 %i.fz, label %bb.ac, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i127

bb.ac:                                            ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i123
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #10
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i127: ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i123
  %i.ga = shl nuw i64 %.0.i.i.i126, 2
  %i.gb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #11 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fr ; 6 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %.0.i.i.i126 ; 3 uses
  store i32 %i.fm, ptr %i.gc, align 4, !tbaa !82
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i128 = icmp eq ptr %i.dr, %i.dp
  br i1 %.not4.i.i.i.i.i.i.i.i.i128, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132, label %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader

.lr.ph.i.i.i.i.i.i.i.i.i129.preheader:            ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i127
  %i.gf = ptrtoaddr ptr %i.gb to i64
  %i.gg = add i64 %i.fp, -4
  %i.gh = sub i64 %i.gg, %i.fq                    ; 2 uses
  %i.gi = lshr i64 %i.gh, 2
  %i.gj = add nuw nsw i64 %i.gi, 1                ; 2 uses
  %min.iters.check513 = icmp ult i64 %i.gh, 28
  %i.gk = sub i64 %i.gf, %i.fq
  %diff.check511 = icmp ugt i64 %i.gk, -32
  %or.cond578 = or i1 %min.iters.check513, %diff.check511
  br i1 %or.cond578, label %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader627, label %vector.ph514

vector.ph514:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader
  %n.vec515 = and i64 %i.gj, 9223372036854775800  ; 3 uses
  %i.gl = mul i64 %n.vec515, -4                   ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gc, i64 %i.gl  ; 2 uses
  %i.gn = getelementptr i8, ptr %i.dr, i64 %i.gl
  br label %vector.body516

vector.body516:                                   ; preds = %vector.body516, %vector.ph514
  %index517 = phi i64 [ 0, %vector.ph514 ], [ %index.next522, %vector.body516 ] ; 2 uses
  %i.go = mul i64 %index517, -4                   ; 2 uses
  %next.gep518 = getelementptr i8, ptr %i.gc, i64 %i.go ; 2 uses
  %next.gep519 = getelementptr i8, ptr %i.dr, i64 %i.go ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %next.gep519, i64 -16
  %i.gq = getelementptr inbounds i8, ptr %next.gep519, i64 -32
  %wide.load520 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !82, !noalias !101
  %wide.load521 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !82, !noalias !101
  %i.gr = getelementptr inbounds i8, ptr %next.gep518, i64 -16
  %i.gs = getelementptr inbounds i8, ptr %next.gep518, i64 -32
  store <4 x i32> %wide.load520, ptr %i.gr, align 4, !tbaa !82, !noalias !101
  store <4 x i32> %wide.load521, ptr %i.gs, align 4, !tbaa !82, !noalias !101
  %index.next522 = add nuw i64 %index517, 8       ; 2 uses
  %i.gt = icmp eq i64 %index.next522, %n.vec515
  br i1 %i.gt, label %middle.block523, label %vector.body516, !llvm.loop !40

middle.block523:                                  ; preds = %vector.body516
  %cmp.n524 = icmp eq i64 %i.gj, %n.vec515
  br i1 %cmp.n524, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132, label %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader627

.lr.ph.i.i.i.i.i.i.i.i.i129.preheader627:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader, %middle.block523
  %.ph628 = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader ], [ %i.gm, %middle.block523 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i130.ph = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader ], [ %i.gn, %middle.block523 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i.i.i.i129:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader627, %.lr.ph.i.i.i.i.i.i.i.i.i129
  %i.gu = phi ptr [ %i.gx, %.lr.ph.i.i.i.i.i.i.i.i.i129 ], [ %.ph628, %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader627 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i130 = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.i.i129 ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i130.ph, %.lr.ph.i.i.i.i.i.i.i.i.i129.preheader627 ]
  %i.gv = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i130, i64 -4 ; 3 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !82, !noalias !101
  %i.gx = getelementptr inbounds i8, ptr %i.gu, i64 -4 ; 3 uses
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !82, !noalias !101
  %.not.i.i.i.i.i.i.i.i.i131 = icmp eq ptr %i.gv, %i.dp
  br i1 %.not.i.i.i.i.i.i.i.i.i131, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132, label %.lr.ph.i.i.i.i.i.i.i.i.i129, !llvm.loop !41

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i129, %middle.block523, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i127
  %storemerge.i.i133 = phi ptr [ %i.gc, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i127 ], [ %i.gm, %middle.block523 ], [ %i.gx, %.lr.ph.i.i.i.i.i.i.i.i.i129 ] ; 3 uses
  store ptr %storemerge.i.i133, ptr %4, align 8, !tbaa !84
  store ptr %i.gd, ptr %i.da, align 8, !tbaa !84
  %.not.i4.i.i134 = icmp eq ptr %i.dp, null
  br i1 %.not.i4.i.i134, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.fw) #12
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136

_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136: ; preds = %bb.z, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132, %bb.ad
  %i.gy = phi ptr [ %i.dp, %bb.z ], [ %storemerge.i.i133, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132 ], [ %storemerge.i.i133, %bb.ad ]
  %i.gz = phi ptr [ %i.dq, %bb.z ], [ %i.gd, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132 ], [ %i.gd, %bb.ad ]
  %.0.i135 = phi ptr [ %i.fo, %bb.z ], [ %i.ge, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i132 ], [ %i.ge, %bb.ad ] ; 2 uses
  store ptr %.0.i135, ptr %i.cz, align 8, !tbaa !100
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136, %bb.x
  %i.ha = phi ptr [ %i.fj, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit ], [ %i.dm, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136 ], [ %i.dm, %bb.x ] ; 2 uses
  %i.hb = phi ptr [ %i.fk, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit ], [ %i.dn, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136 ], [ %i.dn, %bb.x ] ; 2 uses
  %i.hc = phi ptr [ %.0.i122, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit ], [ %i.do, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136 ], [ %i.do, %bb.x ] ; 2 uses
  %i.hd = phi ptr [ %i.dp, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit ], [ %i.gy, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136 ], [ %i.dp, %bb.x ] ; 2 uses
  %i.he = phi ptr [ %i.dq, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit ], [ %i.gz, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136 ], [ %i.dq, %bb.x ] ; 2 uses
  %i.hf = phi ptr [ %i.dr, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit ], [ %.0.i135, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit136 ], [ %i.dr, %bb.x ] ; 2 uses
  %i.hg = add nuw i64 %.095258, 1                 ; 2 uses
  %i.hh = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.hi = load ptr, ptr %0, align 8, !tbaa !80    ; 2 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = ashr exact i64 %i.hl, 2                 ; 2 uses
  %i.hn = icmp ult i64 %i.hg, %i.hm
  br i1 %i.hn, label %bb.q, label %._crit_edge260.loopexit, !llvm.loop !42

.preheader217:                                    ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit, %._crit_edge260
  %i.ho = phi ptr [ %i.dh, %._crit_edge260 ], [ %i.jn, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit ] ; 2 uses
  %i.hp = phi ptr [ %i.di, %._crit_edge260 ], [ %.0.i149, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit ]
  %i.hq = phi ptr [ %i.dg, %._crit_edge260 ], [ %i.jm, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.hs = icmp eq ptr %i.df, %i.de
  %.pre300 = load ptr, ptr %6, align 8            ; 5 uses
  br i1 %i.hs, label %.preheader, label %.lr.ph265

.lr.ph265:                                        ; preds = %.preheader217
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.al

bb.af:                                            ; preds = %.lr.ph264, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit
  %i.hw = phi ptr [ %i.dg, %.lr.ph264 ], [ %i.jm, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit ] ; 6 uses
  %i.hx = phi ptr [ %i.dh, %.lr.ph264 ], [ %i.jn, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit ] ; 3 uses
  %i.hy = phi ptr [ %i.di, %.lr.ph264 ], [ %.0.i149, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit ] ; 8 uses
  %i.hz = phi i64 [ %.lcssa232, %.lr.ph264 ], [ %indvars.iv.next, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit ] ; 4 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.hz
  store i32 0, ptr %i.ia, align 4, !tbaa !82
  %i.ib = icmp ult ptr %i.hy, %i.hx
  br i1 %i.ib, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %8 = trunc nuw nsw i64 %i.hz to i32
  store i32 %8, ptr %i.hy, align 4, !tbaa !82
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit

bb.ah:                                            ; preds = %bb.af
  %i.id = ptrtoint ptr %i.hy to i64               ; 2 uses
  %i.ie = ptrtoint ptr %i.hw to i64               ; 4 uses
  %i.if = sub i64 %i.id, %i.ie                    ; 2 uses
  %i.ig = ashr exact i64 %i.if, 2
  %i.ih = add nsw i64 %i.ig, 1                    ; 2 uses
  %i.ii = icmp ugt i64 %i.ih, 4611686018427387903
  br i1 %i.ii, label %bb.ai, label %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i137

bb.ai:                                            ; preds = %bb.ah
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #10
  unreachable

_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i137: ; preds = %bb.ah
  %i.ij = ptrtoint ptr %i.hx to i64
  %i.ik = sub i64 %i.ij, %i.ie                    ; 3 uses
  %.not.i.i.i138 = icmp ult i64 %i.ik, 9223372036854775804
  %i.il = ashr exact i64 %i.ik, 1
  %.sroa.speculated.i.i.i139 = tail call i64 @llvm.umax.i64(i64 %i.il, i64 %i.ih)
  %.0.i.i.i140 = select i1 %.not.i.i.i138, i64 %.sroa.speculated.i.i.i139, i64 4611686018427387903 ; 4 uses
  %i.im = icmp ne i64 %.0.i.i.i140, 0
  tail call void @llvm.assume(i1 %i.im)
  %i.in = icmp ugt i64 %.0.i.i.i140, 4611686018427387903
  br i1 %i.in, label %bb.aj, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i141

bb.aj:                                            ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i137
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #10
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i141: ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i137
  %i.io = shl nuw i64 %.0.i.i.i140, 2
  %i.ip = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.io) #11 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.if ; 6 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %.0.i.i.i140 ; 3 uses
  %9 = trunc nuw nsw i64 %i.hz to i32
  store i32 %9, ptr %i.iq, align 4, !tbaa !82
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 4 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i142 = icmp eq ptr %i.hy, %i.hw
  br i1 %.not4.i.i.i.i.i.i.i.i.i142, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146, label %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader

.lr.ph.i.i.i.i.i.i.i.i.i143.preheader:            ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i141
  %i.it = ptrtoaddr ptr %i.ip to i64
  %i.iu = add i64 %i.id, -4
  %i.iv = sub i64 %i.iu, %i.ie                    ; 2 uses
  %i.iw = lshr i64 %i.iv, 2
  %i.ix = add nuw nsw i64 %i.iw, 1                ; 2 uses
  %min.iters.check530 = icmp ult i64 %i.iv, 28
  %i.iy = sub i64 %i.it, %i.ie
  %diff.check528 = icmp ugt i64 %i.iy, -32
  %or.cond579 = or i1 %min.iters.check530, %diff.check528
  br i1 %or.cond579, label %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader620, label %vector.ph531

vector.ph531:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader
  %n.vec532 = and i64 %i.ix, 9223372036854775800  ; 3 uses
  %i.iz = mul i64 %n.vec532, -4                   ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iq, i64 %i.iz  ; 2 uses
  %i.jb = getelementptr i8, ptr %i.hy, i64 %i.iz
  br label %vector.body533

vector.body533:                                   ; preds = %vector.body533, %vector.ph531
  %index534 = phi i64 [ 0, %vector.ph531 ], [ %index.next539, %vector.body533 ] ; 2 uses
  %i.jc = mul i64 %index534, -4                   ; 2 uses
  %next.gep535 = getelementptr i8, ptr %i.iq, i64 %i.jc ; 2 uses
  %next.gep536 = getelementptr i8, ptr %i.hy, i64 %i.jc ; 2 uses
  %i.jd = getelementptr inbounds i8, ptr %next.gep536, i64 -16
  %i.je = getelementptr inbounds i8, ptr %next.gep536, i64 -32
  %wide.load537 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !82, !noalias !102
  %wide.load538 = load <4 x i32>, ptr %i.je, align 4, !tbaa !82, !noalias !102
  %i.jf = getelementptr inbounds i8, ptr %next.gep535, i64 -16
  %i.jg = getelementptr inbounds i8, ptr %next.gep535, i64 -32
  store <4 x i32> %wide.load537, ptr %i.jf, align 4, !tbaa !82, !noalias !102
  store <4 x i32> %wide.load538, ptr %i.jg, align 4, !tbaa !82, !noalias !102
  %index.next539 = add nuw i64 %index534, 8       ; 2 uses
  %i.jh = icmp eq i64 %index.next539, %n.vec532
  br i1 %i.jh, label %middle.block540, label %vector.body533, !llvm.loop !51

middle.block540:                                  ; preds = %vector.body533
  %cmp.n541 = icmp eq i64 %i.ix, %n.vec532
  br i1 %cmp.n541, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146, label %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader620

.lr.ph.i.i.i.i.i.i.i.i.i143.preheader620:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader, %middle.block540
  %.ph621 = phi ptr [ %i.iq, %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader ], [ %i.ja, %middle.block540 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i144.ph = phi ptr [ %i.hy, %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader ], [ %i.jb, %middle.block540 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i143

.lr.ph.i.i.i.i.i.i.i.i.i143:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader620, %.lr.ph.i.i.i.i.i.i.i.i.i143
  %i.ji = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i.i.i.i.i143 ], [ %.ph621, %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader620 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i144 = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.i.i.i.i.i143 ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i144.ph, %.lr.ph.i.i.i.i.i.i.i.i.i143.preheader620 ]
  %i.jj = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i144, i64 -4 ; 3 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !82, !noalias !102
  %i.jl = getelementptr inbounds i8, ptr %i.ji, i64 -4 ; 3 uses
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !82, !noalias !102
  %.not.i.i.i.i.i.i.i.i.i145 = icmp eq ptr %i.jj, %i.hw
  br i1 %.not.i.i.i.i.i.i.i.i.i145, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146, label %.lr.ph.i.i.i.i.i.i.i.i.i143, !llvm.loop !52

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i143, %middle.block540, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i141
  %storemerge.i.i147 = phi ptr [ %i.iq, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i141 ], [ %i.ja, %middle.block540 ], [ %i.jl, %.lr.ph.i.i.i.i.i.i.i.i.i143 ] ; 3 uses
  store ptr %storemerge.i.i147, ptr %4, align 8, !tbaa !84
  store ptr %i.ir, ptr %i.dl, align 8, !tbaa !84
  %.not.i4.i.i148 = icmp eq ptr %i.hw, null
  br i1 %.not.i4.i.i148, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.ik) #12
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit: ; preds = %bb.ag, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146, %bb.ak
  %i.jm = phi ptr [ %i.hw, %bb.ag ], [ %storemerge.i.i147, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146 ], [ %storemerge.i.i147, %bb.ak ] ; 2 uses
  %i.jn = phi ptr [ %i.hx, %bb.ag ], [ %i.ir, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146 ], [ %i.ir, %bb.ak ] ; 2 uses
  %.0.i149 = phi ptr [ %i.ic, %bb.ag ], [ %i.is, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i146 ], [ %i.is, %bb.ak ] ; 3 uses
  store ptr %.0.i149, ptr %i.dk, align 8, !tbaa !100
  %indvars.iv.next = add nuw nsw i64 %i.hz, 1     ; 2 uses
  %i.jo = icmp ult i64 %indvars.iv.next, %i.d
  br i1 %i.jo, label %bb.af, label %.preheader217, !llvm.loop !53

.preheader.loopexit:                              ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177
  store ptr %.0.i176434, ptr %i.hr, align 8, !tbaa !100
  %.pre299 = load ptr, ptr %6, align 8, !tbaa !98
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader217
  %i.jp = phi ptr [ %i.ny, %.preheader.loopexit ], [ %i.ho, %.preheader217 ]
  %i.jq = phi ptr [ %i.ob, %.preheader.loopexit ], [ %i.hq, %.preheader217 ]
  %i.jr = phi ptr [ %i.nz, %.preheader.loopexit ], [ %i.dd, %.preheader217 ]
  %i.js = phi ptr [ %i.nx, %.preheader.loopexit ], [ %i.df, %.preheader217 ]
  %i.jt = phi ptr [ %.pre299, %.preheader.loopexit ], [ %.pre300, %.preheader217 ] ; 2 uses
  %i.ju = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.jv = load ptr, ptr %0, align 8, !tbaa !80    ; 3 uses
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %i.jz = ashr exact i64 %i.jy, 2                 ; 2 uses
  br label %bb.ba

bb.al:                                            ; preds = %.lr.ph265, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177
  %i.ka = phi ptr [ %i.df, %.lr.ph265 ], [ %i.nx, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177 ] ; 10 uses
  %i.kb = phi ptr [ %i.ho, %.lr.ph265 ], [ %i.ny, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177 ] ; 9 uses
  %i.kc = phi ptr [ %i.dd, %.lr.ph265 ], [ %i.nz, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177 ] ; 7 uses
  %i.kd = phi ptr [ %i.hp, %.lr.ph265 ], [ %i.oa, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177 ] ; 4 uses
  %i.ke = phi ptr [ %i.hq, %.lr.ph265 ], [ %i.ob, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177 ] ; 13 uses
  %i.kf = phi ptr [ %i.de, %.lr.ph265 ], [ %.0.i176434, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177 ] ; 3 uses
  %i.kg = ptrtoaddr ptr %i.kf to i64
  %i.kh = ptrtoaddr ptr %i.kd to i64
  %i.ki = getelementptr inbounds i8, ptr %i.kf, i64 -4 ; 15 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !82 ; 6 uses
  %i.kk = icmp eq ptr %i.ke, %i.kd
  br i1 %i.kk, label %.thread215, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kl = getelementptr inbounds i8, ptr %i.kd, i64 -4 ; 13 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !82
  store ptr %i.kl, ptr %i.ht, align 8, !tbaa !100
  %i.kn = zext i32 %i.km to i64                   ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.pre300, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !82
  %.neg = sub i32 %i.kp, %i.bq
  %i.kq = zext i32 %i.kj to i64
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.pre300, i64 %i.kq ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !82
  %i.kt = add i32 %.neg, %i.ks                    ; 4 uses
  store i32 %i.kt, ptr %i.kr, align 4, !tbaa !82
  %i.ku = trunc i32 %i.kj to i8
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.kn ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  store i8 %i.ku, ptr %i.kw, align 1, !tbaa !90
  %i.kx = trunc i32 %i.kt to i16
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  store i16 %i.kx, ptr %i.ky, align 1, !tbaa !92
  %i.kz = icmp ult i32 %i.kt, %i.bq
  br i1 %i.kz, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.la = icmp ult ptr %i.kl, %i.kb
  br i1 %i.la, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 %i.kj, ptr %i.kl, align 4, !tbaa !82
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163

bb.ap:                                            ; preds = %bb.an
  %i.lb = ptrtoint ptr %i.kl to i64
  %i.lc = ptrtoint ptr %i.ke to i64               ; 4 uses
  %i.ld = sub i64 %i.lb, %i.lc                    ; 2 uses
  %i.le = ashr exact i64 %i.ld, 2
  %i.lf = add nsw i64 %i.le, 1                    ; 2 uses
  %i.lg = icmp ugt i64 %i.lf, 4611686018427387903
  br i1 %i.lg, label %bb.aq, label %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i150

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.ki, ptr %i.hr, align 8, !tbaa !100
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #10
  unreachable

_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i150: ; preds = %bb.ap
  %i.lh = ptrtoint ptr %i.kb to i64
  %i.li = sub i64 %i.lh, %i.lc                    ; 3 uses
  %.not.i.i.i151 = icmp ult i64 %i.li, 9223372036854775804
  %i.lj = ashr exact i64 %i.li, 1
  %.sroa.speculated.i.i.i152 = tail call i64 @llvm.umax.i64(i64 %i.lj, i64 %i.lf)
  %.0.i.i.i153 = select i1 %.not.i.i.i151, i64 %.sroa.speculated.i.i.i152, i64 4611686018427387903 ; 4 uses
  %i.lk = icmp ne i64 %.0.i.i.i153, 0
  tail call void @llvm.assume(i1 %i.lk)
  %i.ll = icmp ugt i64 %.0.i.i.i153, 4611686018427387903
  br i1 %i.ll, label %bb.ar, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i154

bb.ar:                                            ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i150
  store ptr %i.ki, ptr %i.hr, align 8, !tbaa !100
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #10
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i154: ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i150
  %i.lm = shl nuw i64 %.0.i.i.i153, 2
  %i.ln = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lm) #11 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.ld ; 6 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %.0.i.i.i153 ; 3 uses
  store i32 %i.kj, ptr %i.lo, align 4, !tbaa !82
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 4 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i155 = icmp eq ptr %i.kl, %i.ke
  br i1 %.not4.i.i.i.i.i.i.i.i.i155, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159, label %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader

.lr.ph.i.i.i.i.i.i.i.i.i156.preheader:            ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i154
  %i.lr = ptrtoaddr ptr %i.ln to i64
  %i.ls = add i64 %i.kh, -8
  %i.lt = sub i64 %i.ls, %i.lc                    ; 2 uses
  %i.lu = lshr i64 %i.lt, 2
  %i.lv = add nuw nsw i64 %i.lu, 1                ; 2 uses
  %min.iters.check547 = icmp ult i64 %i.lt, 28
  %i.lw = sub i64 %i.lr, %i.lc
  %diff.check545 = icmp ugt i64 %i.lw, -32
  %or.cond580 = or i1 %min.iters.check547, %diff.check545
  br i1 %or.cond580, label %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader582, label %vector.ph548

vector.ph548:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader
  %n.vec549 = and i64 %i.lv, 9223372036854775800  ; 3 uses
  %i.lx = mul i64 %n.vec549, -4                   ; 2 uses
  %i.ly = getelementptr i8, ptr %i.lo, i64 %i.lx  ; 2 uses
  %i.lz = getelementptr i8, ptr %i.kl, i64 %i.lx
  br label %vector.body550

vector.body550:                                   ; preds = %vector.body550, %vector.ph548
  %index551 = phi i64 [ 0, %vector.ph548 ], [ %index.next556, %vector.body550 ] ; 2 uses
  %i.ma = mul i64 %index551, -4                   ; 2 uses
  %next.gep552 = getelementptr i8, ptr %i.lo, i64 %i.ma ; 2 uses
  %next.gep553 = getelementptr i8, ptr %i.kl, i64 %i.ma ; 2 uses
  %i.mb = getelementptr inbounds i8, ptr %next.gep553, i64 -16
  %i.mc = getelementptr inbounds i8, ptr %next.gep553, i64 -32
  %wide.load554 = load <4 x i32>, ptr %i.mb, align 4, !tbaa !82, !noalias !103
  %wide.load555 = load <4 x i32>, ptr %i.mc, align 4, !tbaa !82, !noalias !103
  %i.md = getelementptr inbounds i8, ptr %next.gep552, i64 -16
  %i.me = getelementptr inbounds i8, ptr %next.gep552, i64 -32
  store <4 x i32> %wide.load554, ptr %i.md, align 4, !tbaa !82, !noalias !103
  store <4 x i32> %wide.load555, ptr %i.me, align 4, !tbaa !82, !noalias !103
  %index.next556 = add nuw i64 %index551, 8       ; 2 uses
  %i.mf = icmp eq i64 %index.next556, %n.vec549
  br i1 %i.mf, label %middle.block557, label %vector.body550, !llvm.loop !62

middle.block557:                                  ; preds = %vector.body550
  %cmp.n558 = icmp eq i64 %i.lv, %n.vec549
  br i1 %cmp.n558, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159, label %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader582

.lr.ph.i.i.i.i.i.i.i.i.i156.preheader582:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader, %middle.block557
  %.ph = phi ptr [ %i.lo, %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader ], [ %i.ly, %middle.block557 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i157.ph = phi ptr [ %i.kl, %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader ], [ %i.lz, %middle.block557 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i156

.lr.ph.i.i.i.i.i.i.i.i.i156:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader582, %.lr.ph.i.i.i.i.i.i.i.i.i156
  %i.mg = phi ptr [ %i.mj, %.lr.ph.i.i.i.i.i.i.i.i.i156 ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader582 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i157 = phi ptr [ %i.mh, %.lr.ph.i.i.i.i.i.i.i.i.i156 ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i157.ph, %.lr.ph.i.i.i.i.i.i.i.i.i156.preheader582 ]
  %i.mh = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i157, i64 -4 ; 3 uses
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !82, !noalias !103
  %i.mj = getelementptr inbounds i8, ptr %i.mg, i64 -4 ; 3 uses
  store i32 %i.mi, ptr %i.mj, align 4, !tbaa !82, !noalias !103
  %.not.i.i.i.i.i.i.i.i.i158 = icmp eq ptr %i.mh, %i.ke
  br i1 %.not.i.i.i.i.i.i.i.i.i158, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159, label %.lr.ph.i.i.i.i.i.i.i.i.i156, !llvm.loop !63

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i156, %middle.block557, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i154
  %storemerge.i.i160 = phi ptr [ %i.lo, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i154 ], [ %i.ly, %middle.block557 ], [ %i.mj, %.lr.ph.i.i.i.i.i.i.i.i.i156 ] ; 3 uses
  store ptr %storemerge.i.i160, ptr %4, align 8, !tbaa !84
  store ptr %i.lp, ptr %i.hv, align 8, !tbaa !84
  %.not.i4.i.i161 = icmp eq ptr %i.ke, null
  br i1 %.not.i4.i.i161, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163, label %bb.as

bb.as:                                            ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.li) #12
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163

_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163: ; preds = %bb.ao, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159, %bb.as
  %i.mk = phi ptr [ %i.kb, %bb.ao ], [ %i.lp, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159 ], [ %i.lp, %bb.as ]
  %i.ml = phi ptr [ %i.ke, %bb.ao ], [ %storemerge.i.i160, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159 ], [ %storemerge.i.i160, %bb.as ]
  %.0.i162 = phi ptr [ %i.kd, %bb.ao ], [ %i.lq, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i159 ], [ %i.lq, %bb.as ] ; 2 uses
  store ptr %.0.i162, ptr %i.ht, align 8, !tbaa !100
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177

bb.at:                                            ; preds = %bb.am
  %i.mm = icmp ugt i32 %i.kt, %i.bq
  br i1 %i.mm, label %bb.au, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177

bb.au:                                            ; preds = %bb.at
  %i.mn = icmp ult ptr %i.ki, %i.kc
  br i1 %i.mn, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 %i.kj, ptr %i.ki, align 4, !tbaa !82
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177

bb.aw:                                            ; preds = %bb.au
  %i.mo = ptrtoint ptr %i.ki to i64
  %i.mp = ptrtoint ptr %i.ka to i64               ; 4 uses
  %i.mq = sub i64 %i.mo, %i.mp                    ; 2 uses
  %i.mr = ashr exact i64 %i.mq, 2
  %i.ms = add nsw i64 %i.mr, 1                    ; 2 uses
  %i.mt = icmp ugt i64 %i.ms, 4611686018427387903
  br i1 %i.mt, label %bb.ax, label %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i164

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.ki, ptr %i.hr, align 8, !tbaa !100
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  unreachable

_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i164: ; preds = %bb.aw
  %i.mu = ptrtoint ptr %i.kc to i64
  %i.mv = sub i64 %i.mu, %i.mp                    ; 3 uses
  %.not.i.i.i165 = icmp ult i64 %i.mv, 9223372036854775804
  %i.mw = ashr exact i64 %i.mv, 1
  %.sroa.speculated.i.i.i166 = tail call i64 @llvm.umax.i64(i64 %i.mw, i64 %i.ms)
  %.0.i.i.i167 = select i1 %.not.i.i.i165, i64 %.sroa.speculated.i.i.i166, i64 4611686018427387903 ; 4 uses
  %i.mx = icmp ne i64 %.0.i.i.i167, 0
  tail call void @llvm.assume(i1 %i.mx)
  %i.my = icmp ugt i64 %.0.i.i.i167, 4611686018427387903
  br i1 %i.my, label %bb.ay, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i168

bb.ay:                                            ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i164
  store ptr %i.ki, ptr %i.hr, align 8, !tbaa !100
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #10
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i168: ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i164
  %i.mz = shl nuw i64 %.0.i.i.i167, 2
  %i.na = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mz) #11 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.mq ; 6 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %.0.i.i.i167 ; 3 uses
  store i32 %i.kj, ptr %i.nb, align 4, !tbaa !82
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 4 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i169 = icmp eq ptr %i.ki, %i.ka
  br i1 %.not4.i.i.i.i.i.i.i.i.i169, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173, label %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader

.lr.ph.i.i.i.i.i.i.i.i.i170.preheader:            ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i168
  %i.ne = ptrtoaddr ptr %i.na to i64
  %i.nf = add i64 %i.kg, -8
  %i.ng = sub i64 %i.nf, %i.mp                    ; 2 uses
  %i.nh = lshr i64 %i.ng, 2
  %i.ni = add nuw nsw i64 %i.nh, 1                ; 2 uses
  %min.iters.check564 = icmp ult i64 %i.ng, 28
  %i.nj = sub i64 %i.ne, %i.mp
  %diff.check562 = icmp ugt i64 %i.nj, -32
  %or.cond581 = or i1 %min.iters.check564, %diff.check562
  br i1 %or.cond581, label %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader583, label %vector.ph565

vector.ph565:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader
  %n.vec566 = and i64 %i.ni, 9223372036854775800  ; 3 uses
  %i.nk = mul i64 %n.vec566, -4                   ; 2 uses
  %i.nl = getelementptr i8, ptr %i.nb, i64 %i.nk  ; 2 uses
  %i.nm = getelementptr i8, ptr %i.ki, i64 %i.nk
  br label %vector.body567

vector.body567:                                   ; preds = %vector.body567, %vector.ph565
  %index568 = phi i64 [ 0, %vector.ph565 ], [ %index.next573, %vector.body567 ] ; 2 uses
  %i.nn = mul i64 %index568, -4                   ; 2 uses
  %next.gep569 = getelementptr i8, ptr %i.nb, i64 %i.nn ; 2 uses
  %next.gep570 = getelementptr i8, ptr %i.ki, i64 %i.nn ; 2 uses
  %i.no = getelementptr inbounds i8, ptr %next.gep570, i64 -16
  %i.np = getelementptr inbounds i8, ptr %next.gep570, i64 -32
  %wide.load571 = load <4 x i32>, ptr %i.no, align 4, !tbaa !82, !noalias !104
  %wide.load572 = load <4 x i32>, ptr %i.np, align 4, !tbaa !82, !noalias !104
  %i.nq = getelementptr inbounds i8, ptr %next.gep569, i64 -16
  %i.nr = getelementptr inbounds i8, ptr %next.gep569, i64 -32
  store <4 x i32> %wide.load571, ptr %i.nq, align 4, !tbaa !82, !noalias !104
  store <4 x i32> %wide.load572, ptr %i.nr, align 4, !tbaa !82, !noalias !104
  %index.next573 = add nuw i64 %index568, 8       ; 2 uses
  %i.ns = icmp eq i64 %index.next573, %n.vec566
  br i1 %i.ns, label %middle.block574, label %vector.body567, !llvm.loop !72

middle.block574:                                  ; preds = %vector.body567
  %cmp.n575 = icmp eq i64 %i.ni, %n.vec566
  br i1 %cmp.n575, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173, label %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader583

.lr.ph.i.i.i.i.i.i.i.i.i170.preheader583:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader, %middle.block574
  %.ph584 = phi ptr [ %i.nb, %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader ], [ %i.nl, %middle.block574 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i171.ph = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader ], [ %i.nm, %middle.block574 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i170

.lr.ph.i.i.i.i.i.i.i.i.i170:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader583, %.lr.ph.i.i.i.i.i.i.i.i.i170
  %i.nt = phi ptr [ %i.nw, %.lr.ph.i.i.i.i.i.i.i.i.i170 ], [ %.ph584, %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader583 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i171 = phi ptr [ %i.nu, %.lr.ph.i.i.i.i.i.i.i.i.i170 ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i171.ph, %.lr.ph.i.i.i.i.i.i.i.i.i170.preheader583 ]
  %i.nu = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i171, i64 -4 ; 3 uses
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !82, !noalias !104
  %i.nw = getelementptr inbounds i8, ptr %i.nt, i64 -4 ; 3 uses
  store i32 %i.nv, ptr %i.nw, align 4, !tbaa !82, !noalias !104
  %.not.i.i.i.i.i.i.i.i.i172 = icmp eq ptr %i.nu, %i.ka
  br i1 %.not.i.i.i.i.i.i.i.i.i172, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173, label %.lr.ph.i.i.i.i.i.i.i.i.i170, !llvm.loop !73

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i170, %middle.block574, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i168
  %storemerge.i.i174 = phi ptr [ %i.nb, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i168 ], [ %i.nl, %middle.block574 ], [ %i.nw, %.lr.ph.i.i.i.i.i.i.i.i.i170 ] ; 3 uses
  store ptr %storemerge.i.i174, ptr %5, align 8, !tbaa !84
  store ptr %i.nc, ptr %i.hu, align 8, !tbaa !84
  %.not.i4.i.i175 = icmp eq ptr %i.ka, null
  br i1 %.not.i4.i.i175, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177, label %bb.az

bb.az:                                            ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ka, i64 noundef %i.mv) #12
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177

_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit177: ; preds = %bb.az, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173, %bb.av, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163, %bb.at
  %.0.i176434 = phi ptr [ %i.ki, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163 ], [ %i.ki, %bb.at ], [ %i.kf, %bb.av ], [ %i.nd, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173 ], [ %i.nd, %bb.az ] ; 3 uses
  %i.nx = phi ptr [ %i.ka, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163 ], [ %i.ka, %bb.at ], [ %i.ka, %bb.av ], [ %storemerge.i.i174, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173 ], [ %storemerge.i.i174, %bb.az ] ; 3 uses
  %i.ny = phi ptr [ %i.mk, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163 ], [ %i.kb, %bb.at ], [ %i.kb, %bb.av ], [ %i.kb, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173 ], [ %i.kb, %bb.az ] ; 2 uses
  %i.nz = phi ptr [ %i.kc, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163 ], [ %i.kc, %bb.at ], [ %i.kc, %bb.av ], [ %i.nc, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173 ], [ %i.nc, %bb.az ] ; 2 uses
  %i.oa = phi ptr [ %.0.i162, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163 ], [ %i.kl, %bb.at ], [ %i.kl, %bb.av ], [ %i.kl, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173 ], [ %i.kl, %bb.az ]
  %i.ob = phi ptr [ %i.ml, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100ERKj.exit163 ], [ %i.ke, %bb.at ], [ %i.ke, %bb.av ], [ %i.ke, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i173 ], [ %i.ke, %bb.az ] ; 2 uses
  %i.oc = icmp eq ptr %i.nx, %.0.i176434
  br i1 %i.oc, label %.preheader.loopexit, label %bb.al

bb.ba:                                            ; preds = %.preheader, %bb.bh
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.a, %bb.bh ] ; 8 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !82 ; 3 uses
  %i.of = icmp eq i32 %i.oe, %i.bq
  br i1 %i.of, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.og = trunc i64 %indvars.iv to i8
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 1
  store i8 %i.og, ptr %i.oi, align 1, !tbaa !90
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  store i16 0, ptr %i.oj, align 1, !tbaa !92
  store i8 0, ptr %i.oh, align 1, !tbaa !91
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 4 ; 2 uses
  %i.om = load i16, ptr %i.ol, align 1, !tbaa !92
  %i.on = trunc i32 %i.oe to i16
  %i.oo = sub i16 %i.om, %i.on
  store i16 %i.oo, ptr %i.ol, align 1, !tbaa !92
  %i.op = trunc i32 %i.oe to i8
  store i8 %i.op, ptr %i.ok, align 1, !tbaa !91
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.oq = icmp ugt i64 %i.jz, %indvars.iv
  br i1 %i.oq, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv
  %i.os = load i32, ptr %i.or, align 4, !tbaa !82
  %i.ot = zext i32 %i.os to i64
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %i.ou = phi i64 [ %i.ot, %bb.be ], [ 0, %bb.bd ] ; 3 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 1
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !90
  %i.oy = zext i8 %i.ox to i64                    ; 2 uses
  %i.oz = icmp ugt i64 %i.jz, %i.oy
  br i1 %i.oz, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.oy
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !82
  %i.pc = zext i32 %i.pb to i64
  %i.pd = xor i64 %i.ou, %i.pc
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.pe = phi i64 [ %i.pd, %bb.bg ], [ %i.ou, %bb.bf ]
  %i.pf = trunc i64 %i.ou to i16
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ov, i64 2
  store i16 %i.pf, ptr %i.pg, align 1, !tbaa !93
  %i.ph = trunc i64 %i.pe to i16
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ov, i64 6
  store i16 %i.ph, ptr %i.pi, align 1, !tbaa !94
  %indvars.iv.next.a = add nuw i64 %indvars.iv, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next.a, %i.d
  br i1 %exitcond302.not, label %.thread215.thread, label %bb.ba, !llvm.loop !74

.thread215:                                       ; preds = %bb.al
  store ptr %i.ki, ptr %i.hr, align 8, !tbaa !100
  %.not.i.i = icmp eq ptr %.pre300, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit, label %.thread215.thread

.thread215.thread:                                ; preds = %bb.bh, %.thread215
  %.sroa.0205.5378 = phi i32 [ 1, %.thread215 ], [ 0, %bb.bh ]
  %i.pj = phi ptr [ %.pre300, %.thread215 ], [ %i.jt, %bb.bh ] ; 2 uses
  %i.pk = phi ptr [ %i.ka, %.thread215 ], [ %i.js, %bb.bh ]
  %i.pl = phi ptr [ %i.kc, %.thread215 ], [ %i.jr, %bb.bh ]
  %i.pm = phi ptr [ %i.ke, %.thread215 ], [ %i.jq, %bb.bh ]
  %i.pn = phi ptr [ %i.kb, %.thread215 ], [ %i.jp, %bb.bh ]
  %i.po = ptrtoint ptr %i.cw to i64
  %i.pp = ptrtoint ptr %i.pj to i64
  %i.pq = sub i64 %i.po, %i.pp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pj, i64 noundef %i.pq) #12
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit: ; preds = %.thread215, %.thread215.thread
  %.sroa.0205.5379 = phi i32 [ 1, %.thread215 ], [ %.sroa.0205.5378, %.thread215.thread ]
  %i.pr = phi ptr [ %i.ka, %.thread215 ], [ %i.pk, %.thread215.thread ] ; 3 uses
  %i.ps = phi ptr [ %i.kc, %.thread215 ], [ %i.pl, %.thread215.thread ]
  %i.pt = phi ptr [ %i.ke, %.thread215 ], [ %i.pm, %.thread215.thread ] ; 3 uses
  %i.pu = phi ptr [ %i.kb, %.thread215 ], [ %i.pn, %.thread215.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.not.i.i178 = icmp eq ptr %i.pr, null
  br i1 %.not.i.i178, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit179, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit
  %i.pv = ptrtoint ptr %i.ps to i64
  %i.pw = ptrtoint ptr %i.pr to i64
  %i.px = sub i64 %i.pv, %i.pw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pr, i64 noundef %i.px) #12
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit179

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit179: ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.not.i.i180 = icmp eq ptr %i.pt, null
  br i1 %.not.i.i180, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit181, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit179
  %i.py = ptrtoint ptr %i.pu to i64
  %i.pz = ptrtoint ptr %i.pt to i64
  %i.qa = sub i64 %i.py, %i.pz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pt, i64 noundef %i.qa) #12
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit181

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit181: ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit179, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.thread211

.epil.preheader:                                  ; preds = %.preheader219
  %lcmp.mod648 = icmp eq i32 %i.b, 0
  tail call void @llvm.assume(i1 %lcmp.mod648)
  %i.qb = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.bz, ptr %i.qb, align 1, !tbaa !90
  store i8 0, ptr %3, align 1, !tbaa !91
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 0, ptr %i.qc, align 1, !tbaa !92
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 0, ptr %i.qd, align 1, !tbaa !93
  %i.qe = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 4096, ptr %i.qe, align 1, !tbaa !94
  br label %.thread211

.thread211:                                       ; preds = %bb.i, %.epil.preheader, %bb.n, %bb.h, %bb.m, %._crit_edge254, %.critedge, %bb.a, %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit181
  %.sroa.0205.6 = phi i32 [ 1, %.critedge ], [ 1, %bb.a ], [ 0, %.epil.preheader ], [ %.sroa.0205.5379, %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8nn180100Ev.exit181 ], [ 1, %bb.m ], [ 1, %._crit_edge254 ], [ 1, %bb.h ], [ 0, %bb.n ], [ 1, %bb.i ]
  ret i32 %.sroa.0205.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.8) #10
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  tail call void (ptr, ...) @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef nonnull @.str.9, ptr noundef %0) #14
  unreachable
}

; Function Attrs: noreturn
declare void @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() local_unnamed_addr #3 comdat {
bb.a:
  tail call void (ptr, ...) @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef nonnull @.str.10) #14
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.8) #10
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #3 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #4 = { noreturn "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn "no-builtin-fread" "no-builtin-fwrite" }
attributes #11 = { builtin nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }
attributes #12 = { builtin nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !83}
!10 = distinct !{!10, i1 true, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!11 = distinct !{!11, !10, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!12 = distinct !{!12, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPiEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!13 = distinct !{!13, !12, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPiEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!14 = distinct !{!14, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPiEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!15 = distinct !{!15, !14, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPiEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!16 = distinct !{!16, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPiEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!17 = distinct !{!17, !16, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPiEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!18 = distinct !{!18, !83, !86, !87}
!19 = distinct !{!19, !83, !86}
!20 = distinct !{!20, !83}
!21 = distinct !{!21, !83}
!22 = distinct !{!22, i1 true, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!23 = distinct !{!23, !22, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!24 = distinct !{!24, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!25 = distinct !{!25, !24, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!26 = distinct !{!26, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!27 = distinct !{!27, !26, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!28 = distinct !{!28, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!29 = distinct !{!29, !28, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!30 = distinct !{!30, !83, !86, !87}
!31 = distinct !{!31, !83, !86}
!32 = distinct !{!32, i1 true, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!33 = distinct !{!33, !32, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!34 = distinct !{!34, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!35 = distinct !{!35, !34, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!36 = distinct !{!36, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!37 = distinct !{!37, !36, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!38 = distinct !{!38, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!39 = distinct !{!39, !38, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!40 = distinct !{!40, !83, !86, !87}
!41 = distinct !{!41, !83, !86}
!42 = distinct !{!42, !83}
!43 = distinct !{!43, i1 true, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!44 = distinct !{!44, !43, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!45 = distinct !{!45, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!46 = distinct !{!46, !45, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!47 = distinct !{!47, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!48 = distinct !{!48, !47, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!49 = distinct !{!49, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!50 = distinct !{!50, !49, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!51 = distinct !{!51, !83, !86, !87}
!52 = distinct !{!52, !83, !86}
!53 = distinct !{!53, !83}
!54 = distinct !{!54, i1 true, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!55 = distinct !{!55, !54, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!56 = distinct !{!56, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
end_hunk_0
