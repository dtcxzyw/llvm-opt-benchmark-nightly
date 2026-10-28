Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bitmap_ops?download=true
inline.NumInlined: 424
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5arrow8internal9BitmapAndEPNS_10MemoryPoolEPKhlS4_lll:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <16 x i8>, ptr %i.az, align 1, !tbaa !9, !noalias !115
  %wide.load14 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !9, !noalias !115
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load15 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !9, !noalias !115
  %wide.load16 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !9, !noalias !115
  %i.bd = and <16 x i8> %wide.load15, %wide.load
  %i.be = and <16 x i8> %wide.load16, %wide.load14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !9, !noalias !115
  store <16 x i8> %i.be, ptr %i.bg, align 1, !tbaa !9, !noalias !115
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.al, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 %index18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index18
  %wide.load19 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !9, !noalias !115
  %wide.load20 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !9, !noalias !115
  %i.bk = and <4 x i8> %wide.load20, %wide.load19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index18
  store <4 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !9, !noalias !115
  %index.next21 = add nuw i64 %index18, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next21, %n.vec17
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !111

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.al, %n.vec17
  br i1 %cmp.n22, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec17, %vec.epilog.middle.block ] ; 3 uses
  %i.bn = add nsw i64 %i.ah, %i.ak                ; 2 uses
  %xtraiter = and i64 %i.bn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.016.i.i.i.prol = phi i64 [ %i.bu, %.lr.ph.i.i.i.prol ], [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i.prol
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i.prol
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !9, !noalias !115
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !9, !noalias !115
  %i.bs = and i8 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i.prol
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !9, !noalias !115
  %i.bu = add nuw nsw i64 %.016.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !112

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.016.i.i.i.unr = phi i64 [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bu, %.lr.ph.i.i.i.prol ]
  %i.bv = sub i64 %.016.i.i.i.ph, %i.bn
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.016.i.i.i = phi i64 [ %i.cy, %.lr.ph.i.i.i ], [ %.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !9, !noalias !115
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !9, !noalias !115
  %i.cb = and i8 %i.ca, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !9, !noalias !115
  %i.cd = add nuw nsw i64 %.016.i.i.i, 1          ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cd
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !9, !noalias !115
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !9, !noalias !115
  %i.ci = and i8 %i.ch, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cd
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !9, !noalias !115
  %i.ck = add nuw nsw i64 %.016.i.i.i, 2          ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ck
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !9, !noalias !115
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !9, !noalias !115
  %i.cp = and i8 %i.co, %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ck
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !9, !noalias !115
  %i.cr = add nuw nsw i64 %.016.i.i.i, 3          ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cr
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !9, !noalias !115
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !9, !noalias !115
  %i.cw = and i8 %i.cv, %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cr
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !9, !noalias !115
  %i.cy = add nuw nsw i64 %.016.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cy, %i.al
  br i1 %exitcond.not.i.i.i.3, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !113

bb.h:                                             ; preds = %bb.c
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %6), !noalias !115
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.g, %bb.f
  store ptr null, ptr %0, align 8, !tbaa !21, !alias.scope !115
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.g, ptr %i.cz, align 8, !tbaa !22, !alias.scope !115
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.da = load ptr, ptr %8, align 8, !tbaa !21, !noalias !115 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !39, !noalias !115 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.de, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !42
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !44
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21, !inline_history !114
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21, !inline_history !114
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9, !noalias !115
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dh, %bb.n ], [ %i.dr, %bb.o ]
  %i.ds = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ds, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !12

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.l, %bb.j
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !21, !noalias !115 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !45

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.i
  %i.dt = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.da, %bb.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !53, !range !37, !noundef !38
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !115
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal9BitmapAndEPKhlS2_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %6 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = srem i64 %5, 8                           ; 3 uses
  %i.e = srem i64 %1, 8
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = srem i64 %3, 8
  %i.h = icmp eq i64 %i.d, %i.g
  %or.cond.i = and i1 %i.f, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.i, 7                          ; 7 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp sgt i64 %4, %i.j
  br i1 %i.k, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, %1                     ; 2 uses
  %i.m = add nsw i64 %i.j, %3
  %i.n = add nsw i64 %i.j, %5
  %i.o = sub nuw nsw i64 %4, %i.j
  %i.p = srem i64 %i.l, 8
  %i.q = add nsw i64 %i.p, %i.o                   ; 2 uses
  %i.r = ashr i64 %i.q, 3                         ; 2 uses
  %i.s = and i64 %i.q, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i64                      ; 2 uses
  %i.v = add nsw i64 %i.r, %i.u                   ; 9 uses
  %i.w = sdiv i64 %i.l, 8                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 7 uses
  %i.y = sdiv i64 %i.m, 8                         ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 7 uses
  %i.aa = sdiv i64 %i.n, 8                        ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 7 uses
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add i64 %i.w, %i.a
  %i.ae = add i64 %i.aa, %i.b                     ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  %i.ag = add i64 %i.y, %i.c
  %i.ah = sub i64 %i.ag, %i.ae
  %diff.check10 = icmp ugt i64 %i.ah, -32
  %conflict.rdx = or i1 %diff.check, %diff.check10
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !tbaa !9
  %wide.load12 = load <16 x i8>, ptr %i.al, align 1, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load13 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !9
  %wide.load14 = load <16 x i8>, ptr %i.am, align 1, !tbaa !9
  %i.an = and <16 x i8> %wide.load13, %wide.load
  %i.ao = and <16 x i8> %wide.load14, %wide.load12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !9
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %index16
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.as, align 1, !tbaa !9
  %wide.load18 = load <4 x i8>, ptr %i.at, align 1, !tbaa !9
  %i.au = and <4 x i8> %wide.load18, %wide.load17
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index16
  store <4 x i8> %i.au, ptr %i.av, align 1, !tbaa !9
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !118

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.v, %n.vec15
  br i1 %cmp.n20, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %i.ax = add nsw i64 %i.r, %i.u                  ; 2 uses
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.prol ], [ %.016.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i.prol
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i.prol
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !9
  %i.bc = and i8 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i.prol
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !9
  %i.be = add nuw nsw i64 %.016.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !119

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.016.i.i.unr = phi i64 [ %.016.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.be, %.lr.ph.i.i.prol ]
  %i.bf = sub i64 %.016.i.i.ph, %i.ax
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.ci, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !9
  %i.bl = and i8 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !9
  %i.bn = add nuw nsw i64 %.016.i.i, 1            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bn
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !9
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.bs = and i8 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bn
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !9
  %i.bu = add nuw nsw i64 %.016.i.i, 2            ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bu
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !9
  %i.bz = and i8 %i.by, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bu
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !9
  %i.cb = add nuw nsw i64 %.016.i.i, 3            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.cb
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cg = and i8 %i.cf, %i.ce
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.cb
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !9
  %i.ci = add nuw nsw i64 %.016.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ci, %i.v
  br i1 %exitcond.not.i.i.3, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i, !llvm.loop !120

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %4)
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal8BitmapOrEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.c = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !132
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.c, ptr noundef %1), !noalias !132
  %i.d = load ptr, ptr %8, align 8, !tbaa !21, !noalias !132
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !22, !noalias !133
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !27, !noalias !133 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !132
  %i.j = load i8, ptr %i.i, align 1, !tbaa !36, !range !37, !noalias !132, !noundef !38
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load i8, ptr %i.l, align 8, !range !37, !noalias !132
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.k, i1 %i.n, i1 false, !prof !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !132 ; 3 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = select i1 %i.o, ptr %i.q, ptr null, !prof !16 ; 2 uses
  %i.t = srem i64 %7, 8                           ; 3 uses
  %i.u = srem i64 %3, 8
  %i.v = icmp eq i64 %i.t, %i.u
  %i.w = srem i64 %5, 8
  %i.x = icmp eq i64 %i.t, %i.w
  %or.cond.i.i = and i1 %i.v, %i.x
  br i1 %or.cond.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.y = sub nsw i64 0, %i.t
  %i.z = and i64 %i.y, 7                          ; 7 uses
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %i.z), !noalias !132
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = icmp sgt i64 %6, %i.z
  br i1 %i.aa, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i64 %i.z, %3                    ; 2 uses
  %i.ac = add nsw i64 %i.z, %5
  %i.ad = add nsw i64 %i.z, %7
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal8BitmapOrEPNS_10MemoryPoolEPKhlS4_lll:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <16 x i8>, ptr %i.az, align 1, !tbaa !9, !noalias !132
  %wide.load14 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !9, !noalias !132
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load15 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !9, !noalias !132
  %wide.load16 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !9, !noalias !132
  %i.bd = or <16 x i8> %wide.load15, %wide.load
  %i.be = or <16 x i8> %wide.load16, %wide.load14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !9, !noalias !132
  store <16 x i8> %i.be, ptr %i.bg, align 1, !tbaa !9, !noalias !132
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.al, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 %index18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index18
  %wide.load19 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !9, !noalias !132
  %wide.load20 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !9, !noalias !132
  %i.bk = or <4 x i8> %wide.load20, %wide.load19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index18
  store <4 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !9, !noalias !132
  %index.next21 = add nuw i64 %index18, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next21, %n.vec17
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !128

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.al, %n.vec17
  br i1 %cmp.n22, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec17, %vec.epilog.middle.block ] ; 3 uses
  %i.bn = add nsw i64 %i.ah, %i.ak                ; 2 uses
  %xtraiter = and i64 %i.bn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.016.i.i.i.prol = phi i64 [ %i.bu, %.lr.ph.i.i.i.prol ], [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i.prol
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i.prol
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !9, !noalias !132
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !9, !noalias !132
  %i.bs = or i8 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i.prol
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !9, !noalias !132
  %i.bu = add nuw nsw i64 %.016.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !129

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.016.i.i.i.unr = phi i64 [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bu, %.lr.ph.i.i.i.prol ]
  %i.bv = sub i64 %.016.i.i.i.ph, %i.bn
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.016.i.i.i = phi i64 [ %i.cy, %.lr.ph.i.i.i ], [ %.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !9, !noalias !132
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !9, !noalias !132
  %i.cb = or i8 %i.ca, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !9, !noalias !132
  %i.cd = add nuw nsw i64 %.016.i.i.i, 1          ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cd
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !9, !noalias !132
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !9, !noalias !132
  %i.ci = or i8 %i.ch, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cd
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !9, !noalias !132
  %i.ck = add nuw nsw i64 %.016.i.i.i, 2          ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ck
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !9, !noalias !132
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !9, !noalias !132
  %i.cp = or i8 %i.co, %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ck
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !9, !noalias !132
  %i.cr = add nuw nsw i64 %.016.i.i.i, 3          ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cr
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !9, !noalias !132
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !9, !noalias !132
  %i.cw = or i8 %i.cv, %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cr
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !9, !noalias !132
  %i.cy = add nuw nsw i64 %.016.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cy, %i.al
  br i1 %exitcond.not.i.i.i.3, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !130

bb.h:                                             ; preds = %bb.c
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %6), !noalias !132
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.g, %bb.f
  store ptr null, ptr %0, align 8, !tbaa !21, !alias.scope !132
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.g, ptr %i.cz, align 8, !tbaa !22, !alias.scope !132
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.da = load ptr, ptr %8, align 8, !tbaa !21, !noalias !132 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !39, !noalias !132 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.de, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !42
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !44
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21, !inline_history !131
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21, !inline_history !131
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9, !noalias !132
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dh, %bb.n ], [ %i.dr, %bb.o ]
  %i.ds = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ds, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !12

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.l, %bb.j
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !21, !noalias !132 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !45

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.i
  %i.dt = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.da, %bb.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !53, !range !37, !noundef !38
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !132
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal8BitmapOrEPKhlS2_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %6 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = srem i64 %5, 8                           ; 3 uses
  %i.e = srem i64 %1, 8
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = srem i64 %3, 8
  %i.h = icmp eq i64 %i.d, %i.g
  %or.cond.i = and i1 %i.f, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.i, 7                          ; 7 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp sgt i64 %4, %i.j
  br i1 %i.k, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, %1                     ; 2 uses
  %i.m = add nsw i64 %i.j, %3
  %i.n = add nsw i64 %i.j, %5
  %i.o = sub nuw nsw i64 %4, %i.j
  %i.p = srem i64 %i.l, 8
  %i.q = add nsw i64 %i.p, %i.o                   ; 2 uses
  %i.r = ashr i64 %i.q, 3                         ; 2 uses
  %i.s = and i64 %i.q, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i64                      ; 2 uses
  %i.v = add nsw i64 %i.r, %i.u                   ; 9 uses
  %i.w = sdiv i64 %i.l, 8                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 7 uses
  %i.y = sdiv i64 %i.m, 8                         ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 7 uses
  %i.aa = sdiv i64 %i.n, 8                        ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 7 uses
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add i64 %i.w, %i.a
  %i.ae = add i64 %i.aa, %i.b                     ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  %i.ag = add i64 %i.y, %i.c
  %i.ah = sub i64 %i.ag, %i.ae
  %diff.check10 = icmp ugt i64 %i.ah, -32
  %conflict.rdx = or i1 %diff.check, %diff.check10
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !tbaa !9
  %wide.load12 = load <16 x i8>, ptr %i.al, align 1, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load13 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !9
  %wide.load14 = load <16 x i8>, ptr %i.am, align 1, !tbaa !9
  %i.an = or <16 x i8> %wide.load13, %wide.load
  %i.ao = or <16 x i8> %wide.load14, %wide.load12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !9
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %index16
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.as, align 1, !tbaa !9
  %wide.load18 = load <4 x i8>, ptr %i.at, align 1, !tbaa !9
  %i.au = or <4 x i8> %wide.load18, %wide.load17
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index16
  store <4 x i8> %i.au, ptr %i.av, align 1, !tbaa !9
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !135

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.v, %n.vec15
  br i1 %cmp.n20, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %i.ax = add nsw i64 %i.r, %i.u                  ; 2 uses
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.prol ], [ %.016.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i.prol
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i.prol
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !9
  %i.bc = or i8 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i.prol
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !9
  %i.be = add nuw nsw i64 %.016.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !136

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.016.i.i.unr = phi i64 [ %.016.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.be, %.lr.ph.i.i.prol ]
  %i.bf = sub i64 %.016.i.i.ph, %i.ax
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.ci, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !9
  %i.bl = or i8 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !9
  %i.bn = add nuw nsw i64 %.016.i.i, 1            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bn
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !9
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.bs = or i8 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bn
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !9
  %i.bu = add nuw nsw i64 %.016.i.i, 2            ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bu
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !9
  %i.bz = or i8 %i.by, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bu
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !9
  %i.cb = add nuw nsw i64 %.016.i.i, 3            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.cb
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cg = or i8 %i.cf, %i.ce
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.cb
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !9
  %i.ci = add nuw nsw i64 %.016.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ci, %i.v
  br i1 %exitcond.not.i.i.3, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i, !llvm.loop !137

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %4)
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal9BitmapXorEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.c = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !149
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.c, ptr noundef %1), !noalias !149
  %i.d = load ptr, ptr %8, align 8, !tbaa !21, !noalias !149
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !22, !noalias !150
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !27, !noalias !150 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !149
  %i.j = load i8, ptr %i.i, align 1, !tbaa !36, !range !37, !noalias !149, !noundef !38
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load i8, ptr %i.l, align 8, !range !37, !noalias !149
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.k, i1 %i.n, i1 false, !prof !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !149 ; 3 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = select i1 %i.o, ptr %i.q, ptr null, !prof !16 ; 2 uses
  %i.t = srem i64 %7, 8                           ; 3 uses
  %i.u = srem i64 %3, 8
  %i.v = icmp eq i64 %i.t, %i.u
  %i.w = srem i64 %5, 8
  %i.x = icmp eq i64 %i.t, %i.w
  %or.cond.i.i = and i1 %i.v, %i.x
  br i1 %or.cond.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.y = sub nsw i64 0, %i.t
  %i.z = and i64 %i.y, 7                          ; 7 uses
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %i.z), !noalias !149
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = icmp sgt i64 %6, %i.z
  br i1 %i.aa, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i64 %i.z, %3                    ; 2 uses
  %i.ac = add nsw i64 %i.z, %5
  %i.ad = add nsw i64 %i.z, %7
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal9BitmapXorEPNS_10MemoryPoolEPKhlS4_lll:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <16 x i8>, ptr %i.az, align 1, !tbaa !9, !noalias !149
  %wide.load14 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !9, !noalias !149
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load15 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !9, !noalias !149
  %wide.load16 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !9, !noalias !149
  %i.bd = xor <16 x i8> %wide.load15, %wide.load
  %i.be = xor <16 x i8> %wide.load16, %wide.load14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !9, !noalias !149
  store <16 x i8> %i.be, ptr %i.bg, align 1, !tbaa !9, !noalias !149
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.al, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 %index18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index18
  %wide.load19 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !9, !noalias !149
  %wide.load20 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !9, !noalias !149
  %i.bk = xor <4 x i8> %wide.load20, %wide.load19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index18
  store <4 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !9, !noalias !149
  %index.next21 = add nuw i64 %index18, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next21, %n.vec17
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !145

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.al, %n.vec17
  br i1 %cmp.n22, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec17, %vec.epilog.middle.block ] ; 3 uses
  %i.bn = add nsw i64 %i.ah, %i.ak                ; 2 uses
  %xtraiter = and i64 %i.bn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.016.i.i.i.prol = phi i64 [ %i.bu, %.lr.ph.i.i.i.prol ], [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i.prol
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i.prol
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !9, !noalias !149
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !9, !noalias !149
  %i.bs = xor i8 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i.prol
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !9, !noalias !149
  %i.bu = add nuw nsw i64 %.016.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !146

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.016.i.i.i.unr = phi i64 [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bu, %.lr.ph.i.i.i.prol ]
  %i.bv = sub i64 %.016.i.i.i.ph, %i.bn
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.016.i.i.i = phi i64 [ %i.cy, %.lr.ph.i.i.i ], [ %.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !9, !noalias !149
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !9, !noalias !149
  %i.cb = xor i8 %i.ca, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !9, !noalias !149
  %i.cd = add nuw nsw i64 %.016.i.i.i, 1          ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cd
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !9, !noalias !149
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !9, !noalias !149
  %i.ci = xor i8 %i.ch, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cd
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !9, !noalias !149
  %i.ck = add nuw nsw i64 %.016.i.i.i, 2          ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ck
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !9, !noalias !149
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !9, !noalias !149
  %i.cp = xor i8 %i.co, %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ck
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !9, !noalias !149
  %i.cr = add nuw nsw i64 %.016.i.i.i, 3          ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cr
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !9, !noalias !149
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !9, !noalias !149
  %i.cw = xor i8 %i.cv, %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cr
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !9, !noalias !149
  %i.cy = add nuw nsw i64 %.016.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cy, %i.al
  br i1 %exitcond.not.i.i.i.3, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !147

bb.h:                                             ; preds = %bb.c
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %6), !noalias !149
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.g, %bb.f
  store ptr null, ptr %0, align 8, !tbaa !21, !alias.scope !149
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.g, ptr %i.cz, align 8, !tbaa !22, !alias.scope !149
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.da = load ptr, ptr %8, align 8, !tbaa !21, !noalias !149 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !39, !noalias !149 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.de, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !42
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !44
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21, !inline_history !148
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21, !inline_history !148
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9, !noalias !149
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dh, %bb.n ], [ %i.dr, %bb.o ]
  %i.ds = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ds, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !12

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.l, %bb.j
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !21, !noalias !149 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !45

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.i
  %i.dt = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.da, %bb.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !53, !range !37, !noundef !38
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal9BitmapXorEPKhlS2_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %6 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = srem i64 %5, 8                           ; 3 uses
  %i.e = srem i64 %1, 8
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = srem i64 %3, 8
  %i.h = icmp eq i64 %i.d, %i.g
  %or.cond.i = and i1 %i.f, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.i, 7                          ; 7 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp sgt i64 %4, %i.j
  br i1 %i.k, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, %1                     ; 2 uses
  %i.m = add nsw i64 %i.j, %3
  %i.n = add nsw i64 %i.j, %5
  %i.o = sub nuw nsw i64 %4, %i.j
  %i.p = srem i64 %i.l, 8
  %i.q = add nsw i64 %i.p, %i.o                   ; 2 uses
  %i.r = ashr i64 %i.q, 3                         ; 2 uses
  %i.s = and i64 %i.q, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i64                      ; 2 uses
  %i.v = add nsw i64 %i.r, %i.u                   ; 9 uses
  %i.w = sdiv i64 %i.l, 8                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 7 uses
  %i.y = sdiv i64 %i.m, 8                         ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 7 uses
  %i.aa = sdiv i64 %i.n, 8                        ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 7 uses
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add i64 %i.w, %i.a
  %i.ae = add i64 %i.aa, %i.b                     ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  %i.ag = add i64 %i.y, %i.c
  %i.ah = sub i64 %i.ag, %i.ae
  %diff.check10 = icmp ugt i64 %i.ah, -32
  %conflict.rdx = or i1 %diff.check, %diff.check10
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !tbaa !9
  %wide.load12 = load <16 x i8>, ptr %i.al, align 1, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load13 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !9
  %wide.load14 = load <16 x i8>, ptr %i.am, align 1, !tbaa !9
  %i.an = xor <16 x i8> %wide.load13, %wide.load
  %i.ao = xor <16 x i8> %wide.load14, %wide.load12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !9
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %index16
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.as, align 1, !tbaa !9
  %wide.load18 = load <4 x i8>, ptr %i.at, align 1, !tbaa !9
  %i.au = xor <4 x i8> %wide.load18, %wide.load17
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index16
  store <4 x i8> %i.au, ptr %i.av, align 1, !tbaa !9
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !152

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.v, %n.vec15
  br i1 %cmp.n20, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %i.ax = add nsw i64 %i.r, %i.u                  ; 2 uses
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.prol ], [ %.016.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i.prol
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i.prol
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !9
  %i.bc = xor i8 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i.prol
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !9
  %i.be = add nuw nsw i64 %.016.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !153

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.016.i.i.unr = phi i64 [ %.016.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.be, %.lr.ph.i.i.prol ]
  %i.bf = sub i64 %.016.i.i.ph, %i.ax
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.ci, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !9
  %i.bl = xor i8 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !9
  %i.bn = add nuw nsw i64 %.016.i.i, 1            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bn
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !9
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.bs = xor i8 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bn
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !9
  %i.bu = add nuw nsw i64 %.016.i.i, 2            ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bu
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !9
  %i.bz = xor i8 %i.by, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bu
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !9
  %i.cb = add nuw nsw i64 %.016.i.i, 3            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.cb
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cg = xor i8 %i.cf, %i.ce
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.cb
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !9
  %i.ci = add nuw nsw i64 %.016.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ci, %i.v
  br i1 %exitcond.not.i.i.3, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i, !llvm.loop !154

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %4)
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal12BitmapAndNotEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.a = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !162
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.a, ptr noundef %1), !noalias !162
  %i.b = load ptr, ptr %8, align 8, !tbaa !21, !noalias !162
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !22, !noalias !163
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !27, !noalias !163 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !162
  %i.i = load i8, ptr %i.h, align 1, !tbaa !36, !range !37, !noalias !162, !noundef !38
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !37, !noalias !162
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !162
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !16
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEEvPKhlS5_lllPh(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %i.q), !noalias !162
  store ptr null, ptr %0, align 8, !tbaa !21, !alias.scope !162
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !22, !alias.scope !162
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !21, !noalias !162 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39, !noalias !162 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !42
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !161
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !161
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9, !noalias !162
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !12

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !21, !noalias !162 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !45

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.c
  %i.ak = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.r, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !53, !range !37, !noundef !38
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !162
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal12BitmapAndNotEPKhlS2_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEEvPKhlS5_lllPh(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEEvPKhlS5_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %6 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = srem i64 %5, 8                           ; 3 uses
  %i.e = srem i64 %1, 8
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = srem i64 %3, 8
  %i.h = icmp eq i64 %i.d, %i.g
  %or.cond = and i1 %i.f, %i.h
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.i, 7                          ; 7 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp sgt i64 %4, %i.j
  br i1 %i.k, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, %1                     ; 2 uses
  %i.m = add nsw i64 %3, %i.j
  %i.n = add nsw i64 %5, %i.j
  %i.o = sub nuw nsw i64 %4, %i.j
  %i.p = srem i64 %i.l, 8
  %i.q = add nsw i64 %i.o, %i.p                   ; 2 uses
  %i.r = ashr i64 %i.q, 3                         ; 2 uses
  %i.s = and i64 %i.q, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i64                      ; 2 uses
  %i.v = add nsw i64 %i.r, %i.u                   ; 9 uses
  %i.w = sdiv i64 %i.l, 8                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 5 uses
  %i.y = sdiv i64 %i.m, 8                         ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 5 uses
  %i.aa = sdiv i64 %i.n, 8                        ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 5 uses
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add i64 %i.w, %i.a
  %i.ae = add i64 %i.aa, %i.b                     ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  %i.ag = add i64 %i.y, %i.c
  %i.ah = sub i64 %i.ag, %i.ae
  %diff.check40 = icmp ugt i64 %i.ah, -32
  %conflict.rdx = or i1 %diff.check, %diff.check40
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !tbaa !9
  %wide.load42 = load <16 x i8>, ptr %i.al, align 1, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load43 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !9
  %wide.load44 = load <16 x i8>, ptr %i.am, align 1, !tbaa !9
  %i.an = xor <16 x i8> %wide.load43, splat (i8 -1)
  %i.ao = xor <16 x i8> %wide.load44, splat (i8 -1)
  %i.ap = and <16 x i8> %wide.load, %i.an
  %i.aq = and <16 x i8> %wide.load42, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <16 x i8> %i.ap, ptr %i.ar, align 1, !tbaa !9
  store <16 x i8> %i.aq, ptr %i.as, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %index46
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 %index46
  %wide.load47 = load <4 x i8>, ptr %i.au, align 1, !tbaa !9
  %wide.load48 = load <4 x i8>, ptr %i.av, align 1, !tbaa !9
  %i.aw = xor <4 x i8> %wide.load48, splat (i8 -1)
  %i.ax = and <4 x i8> %wide.load47, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index46
  store <4 x i8> %i.ax, ptr %i.ay, align 1, !tbaa !9
  %index.next49 = add nuw i64 %index46, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next49, %n.vec45
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !165

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %i.v, %n.vec45
  br i1 %cmp.n50, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ] ; 6 uses
  %i.ba = add nsw i64 %i.r, %i.u                  ; 2 uses
  %.neg = or disjoint i64 %.016.i.ph, 1
  %xtraiter = and i64 %i.ba, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.ph
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !9
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.bf = xor i8 %i.be, -1
  %i.bg = and i8 %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.ph
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !9
  %i.bi = or disjoint i64 %.016.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.016.i.unr = phi i64 [ %.016.i.ph, %.lr.ph.i.preheader ], [ %i.bi, %.lr.ph.i.prol ]
  %i.bj = icmp eq i64 %i.ba, %.neg
  br i1 %i.bj, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.bz, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !9
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !9
  %i.bo = xor i8 %i.bn, -1
  %i.bp = and i8 %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !9
  %i.br = add nuw nsw i64 %.016.i, 1              ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.br
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.bw = xor i8 %i.bv, -1
  %i.bx = and i8 %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.br
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !9
  %i.bz = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bz, %i.v
  br i1 %exitcond.not.i.1, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i, !llvm.loop !166

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %4)
  br label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit

_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11BitmapOrNotEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.a = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !174
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.a, ptr noundef %1), !noalias !174
  %i.b = load ptr, ptr %8, align 8, !tbaa !21, !noalias !174
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !22, !noalias !175
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !27, !noalias !175 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !174
  %i.i = load i8, ptr %i.h, align 1, !tbaa !36, !range !37, !noalias !174, !noundef !38
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !37, !noalias !174
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !174
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !16
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEEvPKhlS5_lllPh(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %i.q), !noalias !174
  store ptr null, ptr %0, align 8, !tbaa !21, !alias.scope !174
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !22, !alias.scope !174
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !21, !noalias !174 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39, !noalias !174 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !42
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !173
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !173
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9, !noalias !174
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !12

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !21, !noalias !174 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !45

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.c
  %i.ak = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.r, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !53, !range !37, !noundef !38
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !174
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal11BitmapOrNotEPKhlS2_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEEvPKhlS5_lllPh(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEEvPKhlS5_lllPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %6 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = srem i64 %5, 8                           ; 3 uses
  %i.e = srem i64 %1, 8
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = srem i64 %3, 8
  %i.h = icmp eq i64 %i.d, %i.g
  %or.cond = and i1 %i.f, %i.h
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.i, 7                          ; 7 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp sgt i64 %4, %i.j
  br i1 %i.k, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, %1                     ; 2 uses
  %i.m = add nsw i64 %3, %i.j
  %i.n = add nsw i64 %5, %i.j
  %i.o = sub nuw nsw i64 %4, %i.j
  %i.p = srem i64 %i.l, 8
  %i.q = add nsw i64 %i.o, %i.p                   ; 2 uses
  %i.r = ashr i64 %i.q, 3                         ; 2 uses
  %i.s = and i64 %i.q, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i64                      ; 2 uses
  %i.v = add nsw i64 %i.r, %i.u                   ; 9 uses
  %i.w = sdiv i64 %i.l, 8                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 5 uses
  %i.y = sdiv i64 %i.m, 8                         ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 5 uses
  %i.aa = sdiv i64 %i.n, 8                        ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 5 uses
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add i64 %i.w, %i.a
  %i.ae = add i64 %i.aa, %i.b                     ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  %i.ag = add i64 %i.y, %i.c
  %i.ah = sub i64 %i.ag, %i.ae
  %diff.check40 = icmp ugt i64 %i.ah, -32
  %conflict.rdx = or i1 %diff.check, %diff.check40
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !tbaa !9
  %wide.load42 = load <16 x i8>, ptr %i.al, align 1, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load43 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !9
  %wide.load44 = load <16 x i8>, ptr %i.am, align 1, !tbaa !9
  %i.an = xor <16 x i8> %wide.load43, splat (i8 -1)
  %i.ao = xor <16 x i8> %wide.load44, splat (i8 -1)
  %i.ap = or <16 x i8> %wide.load, %i.an
  %i.aq = or <16 x i8> %wide.load42, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <16 x i8> %i.ap, ptr %i.ar, align 1, !tbaa !9
  store <16 x i8> %i.aq, ptr %i.as, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %index46
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 %index46
  %wide.load47 = load <4 x i8>, ptr %i.au, align 1, !tbaa !9
  %wide.load48 = load <4 x i8>, ptr %i.av, align 1, !tbaa !9
  %i.aw = xor <4 x i8> %wide.load48, splat (i8 -1)
  %i.ax = or <4 x i8> %wide.load47, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index46
  store <4 x i8> %i.ax, ptr %i.ay, align 1, !tbaa !9
  %index.next49 = add nuw i64 %index46, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next49, %n.vec45
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !177

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %i.v, %n.vec45
  br i1 %cmp.n50, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ] ; 6 uses
  %i.ba = add nsw i64 %i.r, %i.u                  ; 2 uses
  %.neg = or disjoint i64 %.016.i.ph, 1
  %xtraiter = and i64 %i.ba, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.ph
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !9
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.bf = xor i8 %i.be, -1
  %i.bg = or i8 %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.ph
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !9
  %i.bi = or disjoint i64 %.016.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.016.i.unr = phi i64 [ %.016.i.ph, %.lr.ph.i.preheader ], [ %i.bi, %.lr.ph.i.prol ]
  %i.bj = icmp eq i64 %i.ba, %.neg
  br i1 %i.bj, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.bz, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !9
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !9
  %i.bo = xor i8 %i.bn, -1
  %i.bp = or i8 %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !9
  %i.br = add nuw nsw i64 %.016.i, 1              ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.br
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.bw = xor i8 %i.bv, -1
  %i.bx = or i8 %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.br
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !9
  %i.bz = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bz, %i.v
  br i1 %exitcond.not.i.1, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i, !llvm.loop !178

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %4)
  br label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit

_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d, %bb.f
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !179
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !8    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !179
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
end_hunk_2
