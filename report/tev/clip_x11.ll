Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/clip_x11?download=true
inline.NumInlined: 2387
inline.NumDeleted: 1445
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4clip3x1113write_data_fnEP14png_struct_defPhm:bb.a
  %.pre24.i.i = load ptr, ptr %i.a, align 8, !tbaa !18 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.0.i.i.i
  %i.v = getelementptr i8, ptr %i.r, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %2, i1 false), !tbaa !20
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i, %.pre24.i.i
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.e
  %.pre24.i.i19 = ptrtoaddr ptr %.pre24.i.i to i64 ; 3 uses
  %i.w = sub i64 %.pre.i.i18, %.pre24.i.i19       ; 7 uses
  %min.iters.check = icmp ult i64 %i.w, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.x = add i64 %i.f, %.pre.i.i18
  %i.y = add i64 %i.s, %i.e
  %i.z = sub i64 %i.y, %i.x
  %diff.check = icmp ugt i64 %i.z, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i64 %i.w, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.w, 24
  %n.vec = and i64 %i.w, -32                      ; 4 uses
  %i.ab = sub i64 0, %n.vec                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %.pre.i.i, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = sub i64 0, %index                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ae ; 2 uses
  %next.gep21 = getelementptr i8, ptr %.pre.i.i, i64 %i.ae ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %next.gep21, i64 -16
  %i.ag = getelementptr inbounds i8, ptr %next.gep21, i64 -32
  %wide.load = load <16 x i8>, ptr %i.af, align 1, !tbaa !20, !noalias !168
  %wide.load22 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !20, !noalias !168
  %i.ah = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ai = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <16 x i8> %wide.load, ptr %i.ah, align 1, !tbaa !20, !noalias !168
  store <16 x i8> %wide.load22, ptr %i.ai, align 1, !tbaa !20, !noalias !168
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %i.w, -8                     ; 3 uses
  %i.ak = sub i64 0, %n.vec24                     ; 2 uses
  %i.al = getelementptr i8, ptr %i.t, i64 %i.ak   ; 2 uses
  %i.am = getelementptr i8, ptr %.pre.i.i, i64 %i.ak
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index25 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 2 uses
  %i.an = sub i64 0, %index25                     ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.t, i64 %i.an
  %next.gep27 = getelementptr i8, ptr %.pre.i.i, i64 %i.an
  %i.ao = getelementptr inbounds i8, ptr %next.gep27, i64 -8
  %wide.load28 = load <8 x i8>, ptr %i.ao, align 1, !tbaa !20, !noalias !168
  %i.ap = getelementptr inbounds i8, ptr %next.gep26, i64 -8
  store <8 x i8> %wide.load28, ptr %i.ap, align 1, !tbaa !20, !noalias !168
  %index.next29 = add nuw i64 %index25, 8         ; 2 uses
  %i.aq = icmp eq i64 %index.next29, %n.vec24
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !165

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %i.w, %n.vec24
  br i1 %cmp.n30, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.t, %iter.check ], [ %i.t, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.pre.i.i, %iter.check ], [ %.pre.i.i, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph33 = ptrtoaddr ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph to i64 ; 2 uses
  %i.ar = sub i64 %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph33, %.pre24.i.i19
  %xtraiter = and i64 %i.ar, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %i.as = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.at = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i.prol, i64 -1 ; 3 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !20, !noalias !168
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 -1 ; 4 uses
  store i8 %i.au, ptr %i.av, align 1, !tbaa !20, !noalias !168
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !166

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.aw = sub i64 %.pre24.i.i19, %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph33
  %i.ax = icmp ugt i64 %i.aw, -8
  br i1 %i.ax, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ay = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !20, !noalias !168
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 -1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !20, !noalias !168
  %i.bc = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !20, !noalias !168
  %i.be = getelementptr inbounds i8, ptr %i.ay, i64 -2
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !20, !noalias !168
  %i.bf = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !20, !noalias !168
  %i.bh = getelementptr inbounds i8, ptr %i.ay, i64 -3
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !20, !noalias !168
  %i.bi = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -4
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !20, !noalias !168
  %i.bk = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !20, !noalias !168
  %i.bl = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -5
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !20, !noalias !168
  %i.bn = getelementptr inbounds i8, ptr %i.ay, i64 -5
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !20, !noalias !168
  %i.bo = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -6
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !20, !noalias !168
  %i.bq = getelementptr inbounds i8, ptr %i.ay, i64 -6
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !20, !noalias !168
  %i.br = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !20, !noalias !168
  %i.bt = getelementptr inbounds i8, ptr %i.ay, i64 -7
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !20, !noalias !168
  %i.bu = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !20, !noalias !168
  %i.bw = getelementptr inbounds i8, ptr %i.ay, i64 -8 ; 3 uses
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !20, !noalias !168
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.bu, %.pre24.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !167

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.e
  %storemerge.i.i = phi ptr [ %i.t, %bb.e ], [ %i.al, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %storemerge.i.i, ptr %i.a, align 8, !tbaa !19
  store ptr %i.v, ptr %i.b, align 8, !tbaa !19
  store ptr %i.u, ptr %i.j, align 8, !tbaa !19
  %.not.i8.i.i = icmp eq ptr %.pre24.i.i, null
  br i1 %.not.i8.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.pre24.i.i) #30
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.thread

bb.g:                                             ; preds = %bb.a
  %i.bx = icmp ugt i64 %i.g, %i.h
  br i1 %i.bx, label %bb.h, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.sink.split

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.sink.split: ; preds = %bb.h, %.lr.ph.preheader.i.i.i
  %.sink = phi ptr [ %i.n, %.lr.ph.preheader.i.i.i ], [ %i.by, %bb.h ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !17
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.sink.split, %bb.g
  %.not.i.i.i.i.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100IPhNS_11__wrap_iterIS1_EEEET0_T_S5_S4_.exit, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.thread

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.thread: ; preds = %bb.f, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ca, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt3__14copyB8ne180100IPhNS_11__wrap_iterIS1_EEEET0_T_S5_S4_.exit

_ZNSt3__14copyB8ne180100IPhNS_11__wrap_iterIS1_EEEET0_T_S5_S4_.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @png_get_io_ptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4clip3x119write_pngERKNS_5imageERNSt3__16vectorIhNS4_9allocatorIhEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 16 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.d = call noalias ptr @png_create_write_struct(ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null) ; 3 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.e = call noalias ptr @png_create_info_struct(ptr noundef nonnull %i.d) ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !29
  %.not39 = icmp eq ptr %i.e, null
  br i1 %.not39, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @png_destroy_write_struct(ptr noundef nonnull %i.a, ptr noundef null)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %2 = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.f = call ptr @png_set_longjmp_fn(ptr noundef %2, ptr noundef nonnull @longjmp, i64 noundef 200)
  %i.g = call i32 @_setjmp(ptr noundef %i.f) #32
  %.not40 = icmp eq i32 %i.g, 0
  br i1 %.not40, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @png_destroy_write_struct(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !27
  call void @png_set_write_fn(ptr noundef %i.h, ptr noundef nonnull %1, ptr noundef nonnull @_ZN4clip3x1113write_data_fnEP14png_struct_defPhm, ptr noundef null)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32
  %.fr = freeze i64 %i.k
  %.not41 = icmp eq i64 %.fr, 0                   ; 2 uses
  %i.l = select i1 %.not41, i32 2, i32 6
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.o = load i64, ptr %i.i, align 8, !tbaa !33
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !34
  %i.s = trunc i64 %i.r to i32
  call void @png_set_IHDR(ptr noundef %i.m, ptr noundef %i.n, i32 noundef %i.p, i32 noundef %i.s, i32 noundef 8, i32 noundef %i.l, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !29
  call void @png_write_info(ptr noundef %i.t, ptr noundef %i.u)
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !27
  call void @png_set_packing(ptr noundef %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.y = call i64 @png_get_rowbytes(ptr noundef %i.w, ptr noundef %i.x)
  %i.z = call noalias ptr @png_malloc(ptr noundef %i.w, i64 noundef %i.y)
  store ptr %i.z, ptr %i.c, align 8, !tbaa !19
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !34
  %.not49 = icmp eq i64 %i.aa, 0
  br i1 %.not49, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  br i1 %.not41, label %.lr.ph47.split.us, label %.lr.ph47.split

.lr.ph47.split.us:                                ; preds = %.lr.ph47, %._crit_edge.split.us.us
  %i.ak = phi i64 [ %i.bs, %._crit_edge.split.us.us ], [ 0, %.lr.ph47 ]
  %.03545.us = phi i32 [ %i.br, %._crit_edge.split.us.us ], [ 0, %.lr.ph47 ]
  %i.al = load i64, ptr %i.i, align 8, !tbaa !33
  %.not51 = icmp eq i64 %i.al, 0
  br i1 %.not51, label %._crit_edge.split.us.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph47.split.us
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.ao = load i64, ptr %i.ac, align 8, !tbaa !38
  %i.ap = mul i64 %i.ao, %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.044.us.us = phi i32 [ %i.bm, %.lr.ph.us ], [ 0, %.lr.ph.us.preheader ]
  %.03343.us.us = phi ptr [ %i.bl, %.lr.ph.us ], [ %i.am, %.lr.ph.us.preheader ] ; 4 uses
  %.03442.us.us = phi ptr [ %i.ar, %.lr.ph.us ], [ %i.aq, %.lr.ph.us.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03442.us.us, i64 4
  %i.as = load i32, ptr %.03442.us.us, align 4, !tbaa !39
  %i.at = zext i32 %i.as to i64                   ; 3 uses
  %i.au = load i64, ptr %i.ad, align 8, !tbaa !40
  %i.av = and i64 %i.au, %i.at
  %i.aw = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.ax = lshr i64 %i.av, %i.aw
  %i.ay = trunc i64 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %.03343.us.us, i64 1
  store i8 %i.ay, ptr %.03343.us.us, align 1, !tbaa !20
  %i.ba = load i64, ptr %i.af, align 8, !tbaa !42
  %i.bb = and i64 %i.ba, %i.at
  %i.bc = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.bd = lshr i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %.03343.us.us, i64 2
  store i8 %i.be, ptr %i.az, align 1, !tbaa !20
  %i.bg = load i64, ptr %i.ah, align 8, !tbaa !44
  %i.bh = and i64 %i.bg, %i.at
  %i.bi = load i64, ptr %i.ai, align 8, !tbaa !45
  %i.bj = lshr i64 %i.bh, %i.bi
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.03343.us.us, i64 3
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !20
  %i.bm = add i32 %.044.us.us, 1                  ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = load i64, ptr %i.i, align 8, !tbaa !33
  %i.bp = icmp ugt i64 %i.bo, %i.bn
  br i1 %i.bp, label %.lr.ph.us, label %._crit_edge.split.us.us, !llvm.loop !169

._crit_edge.split.us.us:                          ; preds = %.lr.ph.us, %.lr.ph47.split.us
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !27
  call void @png_write_rows(ptr noundef %i.bq, ptr noundef nonnull %i.c, i32 noundef 1)
  %i.br = add i32 %.03545.us, 1                   ; 2 uses
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = load i64, ptr %i.q, align 8, !tbaa !34
  %i.bu = icmp ugt i64 %i.bt, %i.bs
  br i1 %i.bu, label %.lr.ph47.split.us, label %._crit_edge48, !llvm.loop !170

._crit_edge48:                                    ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %bb.f
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !19
  call void @png_free(ptr noundef %i.bv, ptr noundef %i.bw)
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !29
  call void @png_write_end(ptr noundef %i.bx, ptr noundef %i.by)
  call void @png_destroy_write_struct(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.g

.lr.ph47.split:                                   ; preds = %.lr.ph47, %._crit_edge.split
  %i.bz = phi i64 [ %i.dn, %._crit_edge.split ], [ 0, %.lr.ph47 ]
  %.03545 = phi i32 [ %i.dm, %._crit_edge.split ], [ 0, %.lr.ph47 ]
  %i.ca = load i64, ptr %i.i, align 8, !tbaa !33
  %.not50 = icmp eq i64 %i.ca, 0
  br i1 %.not50, label %._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph47.split
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.cc = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.cd = load i64, ptr %i.ac, align 8, !tbaa !38
  %i.ce = mul i64 %i.cd, %i.bz
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ce
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.044 = phi i32 [ %i.dh, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.03343 = phi ptr [ %i.dg, %.lr.ph ], [ %i.cb, %.lr.ph.preheader ] ; 5 uses
  %.03442 = phi ptr [ %i.cg, %.lr.ph ], [ %i.cf, %.lr.ph.preheader ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.03442, i64 4
  %i.ch = load i32, ptr %.03442, align 4, !tbaa !39
  %i.ci = zext i32 %i.ch to i64                   ; 4 uses
  %i.cj = load i64, ptr %i.ad, align 8, !tbaa !40
  %i.ck = and i64 %i.cj, %i.ci
  %i.cl = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.cm = lshr i64 %i.ck, %i.cl
  %i.cn = trunc i64 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.03343, i64 1
  store i8 %i.cn, ptr %.03343, align 1, !tbaa !20
  %i.cp = load i64, ptr %i.af, align 8, !tbaa !42
  %i.cq = and i64 %i.cp, %i.ci
  %i.cr = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.cs = lshr i64 %i.cq, %i.cr
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %.03343, i64 2
  store i8 %i.ct, ptr %i.co, align 1, !tbaa !20
  %i.cv = load i64, ptr %i.ah, align 8, !tbaa !44
  %i.cw = and i64 %i.cv, %i.ci
  %i.cx = load i64, ptr %i.ai, align 8, !tbaa !45
  %i.cy = lshr i64 %i.cw, %i.cx
  %i.cz = trunc i64 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %.03343, i64 3
  store i8 %i.cz, ptr %i.cu, align 1, !tbaa !20
  %i.db = load i64, ptr %i.j, align 8, !tbaa !32
  %i.dc = and i64 %i.db, %i.ci
  %i.dd = load i64, ptr %i.aj, align 8, !tbaa !46
  %i.de = lshr i64 %i.dc, %i.dd
  %i.df = trunc i64 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %.03343, i64 4
  store i8 %i.df, ptr %i.da, align 1, !tbaa !20
  %i.dh = add i32 %.044, 1                        ; 2 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = load i64, ptr %i.i, align 8, !tbaa !33
  %i.dk = icmp ugt i64 %i.dj, %i.di
  br i1 %i.dk, label %.lr.ph, label %._crit_edge.split, !llvm.loop !169

._crit_edge.split:                                ; preds = %.lr.ph, %.lr.ph47.split
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !27
  call void @png_write_rows(ptr noundef %i.dl, ptr noundef nonnull %i.c, i32 noundef 1)
  %i.dm = add i32 %.03545, 1                      ; 2 uses
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = load i64, ptr %i.q, align 8, !tbaa !34
  %i.dp = icmp ugt i64 %i.do, %i.dn
  br i1 %i.dp, label %.lr.ph47.split, label %._crit_edge48, !llvm.loop !170

bb.g:                                             ; preds = %._crit_edge48, %bb.e, %bb.c
  %.036 = phi i1 [ false, %bb.e ], [ true, %._crit_edge48 ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.137 = phi i1 [ %.036, %bb.g ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i1 %.137
}

declare noalias ptr @png_create_write_struct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @png_create_info_struct(ptr noundef) local_unnamed_addr #2
end_hunk_0
