Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/spdlog/original/spdlog?download=true
inline.NumInlined: 6885
inline.NumDeleted: 3933
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_ZN6spdlog7details14log_msg_bufferC2ERKS1_:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !108 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !100 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bm ; 2 uses
  %.not31.i3 = icmp samesign eq i64 %i.bm, 0
  br i1 %.not31.i3, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit18, label %.lr.ph34.i4

.lr.ph34.i4:                                      ; preds = %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.bo = ptrtoint ptr %i.bn to i64
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i15, %.lr.ph34.i4
  %i.bp = phi i64 [ %.pre.i5, %.lr.ph34.i4 ], [ %i.cw, %._crit_edge.i15 ] ; 3 uses
  %.02732.i6 = phi ptr [ %i.bk, %.lr.ph34.i4 ], [ %i.cx, %._crit_edge.i15 ] ; 9 uses
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !68
  %i.br = sub i64 %i.bq, %i.bp
  %i.bs = ptrtoint ptr %.02732.i6 to i64          ; 2 uses
  %i.bt = sub i64 %i.bo, %i.bs                    ; 4 uses
  %i.bu = icmp ult i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.bw = add i64 %i.bt, %i.bp
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.bw)
          to label %.noexc17 unwind label %.loopexit, !inline_history !2

.noexc17:                                         ; preds = %bb.f
  %i.bx = load i64, ptr %i.d, align 8, !tbaa !69  ; 2 uses
  %i.by = load i64, ptr %i.b, align 8, !tbaa !68
  %i.bz = sub i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bz)
  br label %bb.g

bb.g:                                             ; preds = %.noexc17, %bb.e
  %.026.i7 = phi i64 [ %i.bx, %.noexc17 ], [ %i.bp, %bb.e ] ; 3 uses
  %.025.i8 = phi i64 [ %i.ca, %.noexc17 ], [ %i.bt, %bb.e ] ; 13 uses
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.cc = ptrtoaddr ptr %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.026.i7 ; 7 uses
  %.not36.i9 = icmp eq i64 %.025.i8, 0
  br i1 %.not36.i9, label %._crit_edge.i15, label %iter.check47

iter.check47:                                     ; preds = %bb.g
  %min.iters.check34 = icmp ult i64 %.025.i8, 4
  br i1 %min.iters.check34, label %.lr.ph.i10.preheader, label %vector.memcheck32

vector.memcheck32:                                ; preds = %iter.check47
  %i.ce = add i64 %.026.i7, %i.cc
  %i.cf = sub i64 %i.bs, %i.ce
  %diff.check33 = icmp ugt i64 %i.cf, -32
  br i1 %diff.check33, label %.lr.ph.i10.preheader, label %vector.main.loop.iter.check35

vector.main.loop.iter.check35:                    ; preds = %vector.memcheck32
  %min.iters.check36 = icmp ult i64 %.025.i8, 32
  br i1 %min.iters.check36, label %vec.epilog.ph51, label %vector.ph37

vector.ph37:                                      ; preds = %vector.main.loop.iter.check35
  %i.cg = and i64 %.025.i8, 28
  %n.vec38 = and i64 %.025.i8, -32                ; 4 uses
  br label %vector.body39

vector.body39:                                    ; preds = %vector.ph37, %vector.body39
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next43, %vector.body39 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.02732.i6, i64 %index40 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load41 = load <16 x i8>, ptr %i.ch, align 1, !tbaa !64
  %wide.load42 = load <16 x i8>, ptr %i.ci, align 1, !tbaa !64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %index40 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <16 x i8> %wide.load41, ptr %i.cj, align 1, !tbaa !64
  store <16 x i8> %wide.load42, ptr %i.ck, align 1, !tbaa !64
  %index.next43 = add nuw i64 %index40, 32        ; 2 uses
  %i.cl = icmp eq i64 %index.next43, %n.vec38
  br i1 %i.cl, label %middle.block44, label %vector.body39, !llvm.loop !362

middle.block44:                                   ; preds = %vector.body39
  %cmp.n45 = icmp eq i64 %.025.i8, %n.vec38
  br i1 %cmp.n45, label %._crit_edge.loopexit.i13, label %vec.epilog.iter.check49

vec.epilog.iter.check49:                          ; preds = %middle.block44
  %min.epilog.iters.check50 = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check50, label %.lr.ph.i10.preheader, label %vec.epilog.ph51, !prof !109

vec.epilog.ph51:                                  ; preds = %vector.main.loop.iter.check35, %vec.epilog.iter.check49
  %vec.epilog.resume.val46 = phi i64 [ %n.vec38, %vec.epilog.iter.check49 ], [ 0, %vector.main.loop.iter.check35 ]
  %n.vec52 = and i64 %.025.i8, -4                 ; 3 uses
  br label %vec.epilog.vector.body53

vec.epilog.vector.body53:                         ; preds = %vec.epilog.vector.body53, %vec.epilog.ph51
  %index54 = phi i64 [ %vec.epilog.resume.val46, %vec.epilog.ph51 ], [ %index.next56, %vec.epilog.vector.body53 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02732.i6, i64 %index54
  %wide.load55 = load <4 x i8>, ptr %i.cm, align 1, !tbaa !64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %index54
  store <4 x i8> %wide.load55, ptr %i.cn, align 1, !tbaa !64
  %index.next56 = add nuw i64 %index54, 4         ; 2 uses
  %i.co = icmp eq i64 %index.next56, %n.vec52
  br i1 %i.co, label %vec.epilog.middle.block57, label %vec.epilog.vector.body53, !llvm.loop !363

vec.epilog.middle.block57:                        ; preds = %vec.epilog.vector.body53
  %cmp.n58 = icmp eq i64 %.025.i8, %n.vec52
  br i1 %cmp.n58, label %._crit_edge.loopexit.i13, label %.lr.ph.i10.preheader

.lr.ph.i10.preheader:                             ; preds = %iter.check47, %vector.memcheck32, %vec.epilog.iter.check49, %vec.epilog.middle.block57
  %.030.i11.ph = phi i64 [ 0, %iter.check47 ], [ 0, %vector.memcheck32 ], [ %n.vec38, %vec.epilog.iter.check49 ], [ %n.vec52, %vec.epilog.middle.block57 ] ; 3 uses
  %xtraiter60 = and i64 %.025.i8, 3               ; 2 uses
  %lcmp.mod61.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod61.not, label %.lr.ph.i10.prol.loopexit, label %.lr.ph.i10.prol

.lr.ph.i10.prol:                                  ; preds = %.lr.ph.i10.preheader, %.lr.ph.i10.prol
  %.030.i11.prol = phi i64 [ %i.cs, %.lr.ph.i10.prol ], [ %.030.i11.ph, %.lr.ph.i10.preheader ] ; 3 uses
  %prol.iter62 = phi i64 [ %prol.iter62.next, %.lr.ph.i10.prol ], [ 0, %.lr.ph.i10.preheader ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.02732.i6, i64 %.030.i11.prol
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.030.i11.prol
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !64
  %i.cs = add nuw i64 %.030.i11.prol, 1           ; 2 uses
  %prol.iter62.next = add i64 %prol.iter62, 1     ; 2 uses
  %prol.iter62.cmp.not = icmp eq i64 %prol.iter62.next, %xtraiter60
  br i1 %prol.iter62.cmp.not, label %.lr.ph.i10.prol.loopexit, label %.lr.ph.i10.prol, !llvm.loop !364

.lr.ph.i10.prol.loopexit:                         ; preds = %.lr.ph.i10.prol, %.lr.ph.i10.preheader
  %.030.i11.unr = phi i64 [ %.030.i11.ph, %.lr.ph.i10.preheader ], [ %i.cs, %.lr.ph.i10.prol ]
  %i.ct = sub i64 %.030.i11.ph, %.025.i8
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %._crit_edge.loopexit.i13, label %.lr.ph.i10

._crit_edge.loopexit.i13:                         ; preds = %.lr.ph.i10.prol.loopexit, %.lr.ph.i10, %vec.epilog.middle.block57, %middle.block44
  %.pre37.i14 = load i64, ptr %i.d, align 8, !tbaa !69
  br label %._crit_edge.i15

._crit_edge.i15:                                  ; preds = %._crit_edge.loopexit.i13, %bb.g
  %i.cv = phi i64 [ %.pre37.i14, %._crit_edge.loopexit.i13 ], [ %.026.i7, %bb.g ]
  %i.cw = add i64 %i.cv, %.025.i8                 ; 2 uses
  store i64 %i.cw, ptr %i.d, align 8, !tbaa !69
  %i.cx = getelementptr inbounds nuw i8, ptr %.02732.i6, i64 %.025.i8 ; 2 uses
  %.not.i16 = icmp eq ptr %i.cx, %i.bn
  br i1 %.not.i16, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit18, label %bb.e, !llvm.loop !3

.lr.ph.i10:                                       ; preds = %.lr.ph.i10.prol.loopexit, %.lr.ph.i10
  %.030.i11 = phi i64 [ %i.dn, %.lr.ph.i10 ], [ %.030.i11.unr, %.lr.ph.i10.prol.loopexit ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.02732.i6, i64 %.030.i11
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.030.i11
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !64
  %i.db = add nuw i64 %.030.i11, 1                ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.02732.i6, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !64
  %i.de = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.db
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !64
  %i.df = add nuw i64 %.030.i11, 2                ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.02732.i6, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !64
  %i.di = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.df
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !64
  %i.dj = add nuw i64 %.030.i11, 3                ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.02732.i6, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.dj
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !64
  %i.dn = add nuw i64 %.030.i11, 4                ; 2 uses
  %exitcond.not.i12.3 = icmp eq i64 %i.dn, %.025.i8
  br i1 %exitcond.not.i12.3, label %._crit_edge.loopexit.i13, label %.lr.ph.i10, !llvm.loop !365

_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit18: ; preds = %._crit_edge.i15, %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.dp = load i64, ptr %i.g, align 8, !tbaa !100
  store ptr %i.do, ptr %0, align 8, !tbaa !55
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dp
  store ptr %i.dq, ptr %i.bj, align 8, !tbaa !55
  ret void

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %.not.i.i = icmp eq ptr %i.dr, %i.e
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef %i.dr) #36
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6spdlog7details14log_msg_bufferC2EOS1_(ptr noundef nonnull align 8 dereferenceable(384) initializes((0, 128)) %0, ptr noundef nonnull align 8 dereferenceable(384) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !tbaa.struct !95
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(283) %i.c, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.f, align 8, !tbaa !66
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !69   ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.k = load i64, ptr %i.j, align 8, !tbaa !68   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 8 uses
  %i.m = icmp eq ptr %i.g, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !67
  store i64 %i.k, ptr %i.e, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %.not6.i.i.i = icmp samesign eq i64 %i.i, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i, label %iter.check

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.i, 8
  %i.p = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.i, 24
  %n.vec = and i64 %i.i, -32                      ; 5 uses
  %i.r = getelementptr i8, ptr %i.n, i64 %n.vec
  %i.s = getelementptr i8, ptr %i.l, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.l, i64 %index ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep7, align 8, !tbaa !64
  %wide.load8 = load <16 x i8>, ptr %i.t, align 8, !tbaa !64
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 8, !tbaa !64
  store <16 x i8> %wide.load8, ptr %i.u, align 8, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !98

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.i, -8                     ; 4 uses
  %i.w = getelementptr i8, ptr %i.n, i64 %n.vec10
  %i.x = getelementptr i8, ptr %i.l, i64 %n.vec10
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %next.gep12 = getelementptr i8, ptr %i.n, i64 %index11
  %next.gep13 = getelementptr i8, ptr %i.l, i64 %index11
  %wide.load14 = load <8 x i8>, ptr %next.gep13, align 8, !tbaa !64
  store <8 x i8> %wide.load14, ptr %next.gep12, align 8, !tbaa !64
  %index.next15 = add nuw i64 %index11, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next15, %n.vec10
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !367

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.i, %n.vec10
  br i1 %cmp.n16, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.ph = phi ptr [ %i.n, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.i.i.ph = phi ptr [ %i.l, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 3 uses
  %i.z = add i64 %i.i, %i.b
  %.057.i.i.i.ph19 = ptrtoaddr ptr %.057.i.i.i.ph to i64 ; 2 uses
  %i.aa = sub i64 %i.i, %.057.i.i.i.ph19
  %i.ab = add i64 %i.z, 127
  %i.ac = sub i64 %i.ab, %.057.i.i.i.ph19
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.af, %.lr.ph.i.i.i.prol ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.prol ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.057.i.i.i.prol, i64 1 ; 2 uses
  %i.ae = load i8, ptr %.057.i.i.i.prol, align 1, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ae, ptr %.08.i.i.i.prol, align 1, !tbaa !64
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !368

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.08.i.i.i.unr = phi ptr [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi ptr [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.prol ]
  %i.ag = icmp ult i64 %i.ac, 7
  br i1 %i.ag, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 1
  %i.ai = load i8, ptr %.057.i.i.i, align 1, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1
  store i8 %i.ai, ptr %.08.i.i.i, align 1, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 2
  %i.al = load i8, ptr %i.ah, align 1, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 2
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 3
  %i.ao = load i8, ptr %i.ak, align 1, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 3
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !64
  %i.aq = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 4
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 4
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 5
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 5
  store i8 %i.au, ptr %i.as, align 1, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 6
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !64
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 6
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 7
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 7
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 8 ; 2 uses
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !64
  %.not.i.i.i.7 = icmp eq ptr %i.bc, %i.o
  br i1 %.not.i.i.i.7, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !369

bb.c:                                             ; preds = %bb.a
  store ptr %i.g, ptr %i.c, align 8, !tbaa !67
  store i64 %i.k, ptr %i.e, align 8, !tbaa !68
  store ptr %i.l, ptr %i.d, align 8, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i

_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.c, %bb.b
  %i.bf = load i64, ptr %i.e, align 8, !tbaa !68  ; 2 uses
  %i.bg = icmp ugt i64 %i.i, %i.bf
  br i1 %i.bg, label %bb.d, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEEC2EOS5_.exit

bb.d:                                             ; preds = %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !66
  invoke void %i.bh(ptr noundef nonnull align 8 dereferenceable(283) %i.c, i64 noundef %i.i)
          to label %.noexc.i unwind label %bb.e, !inline_history !1

.noexc.i:                                         ; preds = %bb.d
  %.pre.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !68
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEEC2EOS5_.exit

bb.e:                                             ; preds = %bb.d
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #41
  unreachable

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEEC2EOS5_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i, %.noexc.i
  %i.bk = phi i64 [ %i.bf, %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i ], [ %.pre.i.i.i.i, %.noexc.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 %i.bk)
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !69
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !67  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !100
  store ptr %i.bn, ptr %0, align 8, !tbaa !55
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(384) ptr @_ZN6spdlog7details14log_msg_bufferaSERKS1_(ptr noundef nonnull returned align 8 dereferenceable(384) initializes((0, 96), (104, 112)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(384) %1) local_unnamed_addr #6 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !tbaa.struct !95
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 2 uses
  %.not31.i = icmp samesign eq i64 %i.f, 0
  br i1 %.not31.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph34.i
  %i.k = phi i64 [ 0, %.lr.ph34.i ], [ %i.ar, %._crit_edge.i ] ; 3 uses
  %.02732.i = phi ptr [ %i.d, %.lr.ph34.i ], [ %i.as, %._crit_edge.i ] ; 9 uses
  %i.l = load i64, ptr %i.h, align 8, !tbaa !68
  %i.m = sub i64 %i.l, %i.k
  %i.n = ptrtoint ptr %.02732.i to i64            ; 2 uses
  %i.o = sub i64 %i.i, %i.n                       ; 4 uses
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.r = add i64 %i.o, %i.k
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.r), !inline_history !2
  %i.s = load i64, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %i.t = load i64, ptr %i.h, align 8, !tbaa !68
  %i.u = sub i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.u)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.026.i = phi i64 [ %i.s, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %.025.i = phi i64 [ %i.v, %bb.c ], [ %i.o, %bb.b ] ; 13 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %.026.i ; 7 uses
  %.not36.i = icmp eq i64 %.025.i, 0
  br i1 %.not36.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp ult i64 %.025.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.z = add i64 %.026.i, %i.x
  %i.aa = sub i64 %i.n, %i.z
  %diff.check = icmp ugt i64 %i.aa, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check6 = icmp ult i64 %.025.i, 32
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %.025.i, 28
  %n.vec = and i64 %.025.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <16 x i8>, ptr %i.ac, align 1, !tbaa !64
  %wide.load7 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <16 x i8> %wide.load, ptr %i.ae, align 1, !tbaa !64
  store <16 x i8> %wide.load7, ptr %i.af, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !370

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %.025.i, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %index9
  %wide.load10 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 %index9
  store <4 x i8> %wide.load10, ptr %i.ai, align 1, !tbaa !64
  %index.next11 = add nuw i64 %index9, 4          ; 2 uses
  %i.aj = icmp eq i64 %index.next11, %n.vec8
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !371

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %.025.i, %n.vec8
  br i1 %cmp.n12, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.030.i.prol = phi i64 [ %i.an, %.lr.ph.i.prol ], [ %.030.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %.030.i.prol
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 %.030.i.prol
  store i8 %i.al, ptr %i.am, align 1, !tbaa !64
  %i.an = add nuw i64 %.030.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !372

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.030.i.unr = phi i64 [ %.030.i.ph, %.lr.ph.i.preheader ], [ %i.an, %.lr.ph.i.prol ]
  %i.ao = sub i64 %.030.i.ph, %.025.i
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i = load i64, ptr %i.b, align 8, !tbaa !69
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.d
  %i.aq = phi i64 [ %.pre37.i, %._crit_edge.loopexit.i ], [ %.026.i, %bb.d ]
  %i.ar = add i64 %i.aq, %.025.i                  ; 2 uses
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !69
  %i.as = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %.025.i ; 2 uses
  %.not.i = icmp eq ptr %i.as, %i.g
  br i1 %.not.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %bb.b, !llvm.loop !3

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.030.i = phi i64 [ %i.bi, %.lr.ph.i ], [ %.030.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %.030.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %.030.i
  store i8 %i.au, ptr %i.av, align 1, !tbaa !64
  %i.aw = add nuw i64 %.030.i, 1                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aw
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !64
  %i.ba = add nuw i64 %.030.i, 2                  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ba
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !64
  %i.be = add nuw i64 %.030.i, 3                  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.be
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !64
  %i.bi = add nuw i64 %.030.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bi, %.025.i
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !373

_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit: ; preds = %._crit_edge.i, %bb.a
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !100
  store ptr %i.bj, ptr %0, align 8, !tbaa !55
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !55
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(384) ptr @_ZN6spdlog7details14log_msg_bufferaSEOS1_(ptr noundef nonnull returned align 8 dereferenceable(384) initializes((0, 96)) %0, ptr noundef nonnull align 8 dereferenceable(384) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !tbaa.struct !95
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %.not.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.e) #36
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i: ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !69   ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.k = load i64, ptr %i.j, align 8, !tbaa !68   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 8 uses
  %i.m = icmp eq ptr %i.g, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i
  store ptr %i.f, ptr %i.d, align 8, !tbaa !67
  store i64 %i.k, ptr %i.n, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %.not6.i.i.i = icmp samesign eq i64 %i.i, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i, label %iter.check

iter.check:                                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.i, 8
  %i.p = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.i, 24
  %n.vec = and i64 %i.i, -32                      ; 5 uses
  %i.r = getelementptr i8, ptr %i.f, i64 %n.vec
  %i.s = getelementptr i8, ptr %i.l, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %index ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.l, i64 %index ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep8, align 8, !tbaa !64
  %wide.load9 = load <16 x i8>, ptr %i.t, align 8, !tbaa !64
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 8, !tbaa !64
  store <16 x i8> %wide.load9, ptr %i.u, align 8, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !98

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %i.i, -8                     ; 4 uses
  %i.w = getelementptr i8, ptr %i.f, i64 %n.vec11
  %i.x = getelementptr i8, ptr %i.l, i64 %n.vec11
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %next.gep13 = getelementptr i8, ptr %i.f, i64 %index12
  %next.gep14 = getelementptr i8, ptr %i.l, i64 %index12
  %wide.load15 = load <8 x i8>, ptr %next.gep14, align 8, !tbaa !64
  store <8 x i8> %wide.load15, ptr %next.gep13, align 8, !tbaa !64
  %index.next16 = add nuw i64 %index12, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next16, %n.vec11
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !375

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %i.i, %n.vec11
  br i1 %cmp.n17, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.ph = phi ptr [ %i.f, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.i.i.ph = phi ptr [ %i.l, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 3 uses
  %i.z = add i64 %i.i, %i.b
  %.057.i.i.i.ph20 = ptrtoaddr ptr %.057.i.i.i.ph to i64 ; 2 uses
  %i.aa = sub i64 %i.i, %.057.i.i.i.ph20
  %i.ab = add i64 %i.z, 127
  %i.ac = sub i64 %i.ab, %.057.i.i.i.ph20
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.af, %.lr.ph.i.i.i.prol ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.prol ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.057.i.i.i.prol, i64 1 ; 2 uses
  %i.ae = load i8, ptr %.057.i.i.i.prol, align 1, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ae, ptr %.08.i.i.i.prol, align 1, !tbaa !64
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !376

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.08.i.i.i.unr = phi ptr [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi ptr [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.prol ]
  %i.ag = icmp ult i64 %i.ac, 7
  br i1 %i.ag, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 1
  %i.ai = load i8, ptr %.057.i.i.i, align 1, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1
  store i8 %i.ai, ptr %.08.i.i.i, align 1, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 2
  %i.al = load i8, ptr %i.ah, align 1, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 2
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 3
  %i.ao = load i8, ptr %i.ak, align 1, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 3
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !64
  %i.aq = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 4
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 4
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 5
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 5
  store i8 %i.au, ptr %i.as, align 1, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 6
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !64
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 6
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 7
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 7
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 8 ; 2 uses
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !64
  %.not.i.i.i.7 = icmp eq ptr %i.bc, %i.o
  br i1 %.not.i.i.i.7, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !377

bb.d:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i
  store ptr %i.g, ptr %i.d, align 8, !tbaa !67
  store i64 %i.k, ptr %i.n, align 8, !tbaa !68
  store ptr %i.l, ptr %i.c, align 8, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i

_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.d, %bb.c
  %i.bf = load i64, ptr %i.n, align 8, !tbaa !68  ; 2 uses
  %i.bg = icmp ugt i64 %i.i, %i.bf
  br i1 %i.bg, label %bb.e, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEEaSEOS5_.exit

bb.e:                                             ; preds = %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !66
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(283) %i.d, i64 noundef %i.i)
          to label %.noexc.i unwind label %bb.f, !inline_history !1

.noexc.i:                                         ; preds = %bb.e
  %.pre.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !68
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEEaSEOS5_.exit

bb.f:                                             ; preds = %bb.e
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  tail call void @__clang_call_terminate(ptr %i.bk) #41
  unreachable

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEEaSEOS5_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i, %.noexc.i
  %i.bl = phi i64 [ %i.bf, %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i ], [ %.pre.i.i.i.i, %.noexc.i ]
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 %i.bl)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !69
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !67  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !100
  store ptr %i.bo, ptr %0, align 8, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !55
  ret ptr %0
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6spdlog7details2os9localtimeERKl(ptr dead_on_unwind noalias writable sret(%struct.tm) align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @localtime_r(ptr noundef nonnull %1, ptr noundef %0) #36 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6spdlog7details2os9localtimeEv(ptr dead_on_unwind noalias writable sret(%struct.tm) align 8 %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = tail call i64 @time(ptr noundef null) #36
  store i64 %i.b, ptr %i.a, align 8, !tbaa !70
  %i.c = call ptr @localtime_r(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef align 8 %0) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6spdlog7details2os6gmtimeERKl(ptr dead_on_unwind noalias writable sret(%struct.tm) align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @gmtime_r(ptr noundef nonnull %1, ptr noundef %0) #36 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6spdlog7details2os6gmtimeEv(ptr dead_on_unwind noalias writable sret(%struct.tm) align 8 %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = tail call i64 @time(ptr noundef null) #36
  store i64 %i.b, ptr %i.a, align 8, !tbaa !70
  %i.c = call ptr @gmtime_r(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef align 8 %0) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6spdlog7details2os7fopen_sEPP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !60
  %i.b = load ptr, ptr %2, align 8, !tbaa !60
  %i.c = tail call noalias ptr @fopen(ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !111
  %i.d = icmp eq ptr %i.c, null
  ret i1 %i.d
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef i32 @_ZN6spdlog7details2os6removeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60
  %i.b = tail call i32 @remove(ptr noundef %i.a) #36
  ret i32 %i.b
}

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef i32 @_ZN6spdlog7details2os16remove_if_existsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #14 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.a = load ptr, ptr %0, align 8, !tbaa !60
  %i.b = call i32 @stat(ptr noundef %i.a, ptr noundef nonnull %1) #36
  %i.c = icmp eq i32 %i.b, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !60
  %i.e = tail call noundef i32 @remove(ptr noundef %i.d) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_0
