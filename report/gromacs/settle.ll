Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/settle?download=true
inline.NumInlined: 1717
inline.NumDeleted: 255
loop-unroll.NumCompletelyUnrolled: 101
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 103
begin_hunk_0_@_ZN3gmx10SettleData14setConstraintsERK15InteractionListiNS_8ArrayRefIKfEES6_:bb.a
  call void @_ZN3gmx16settleParametersEffffff(ptr dead_on_unwind nonnull writable sret(%"struct.gmx::SettleParameters") align 4 %6, float noundef %i.v, float noundef %i.y, float noundef %i.ac, float noundef %i.ae, float noundef %i.ag, float noundef %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(88) %6, i64 88, i1 false), !tbaa.struct !47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aj = add nsw i32 %i.k, -1
  %i.ak = add nuw i32 %i.k, 15
  %i.al = sdiv i32 %i.ak, 16
  %i.am = shl nsw i32 %i.al, 4                    ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.ao = sext i32 %i.am to i64                   ; 16 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !57 ; 2 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !55 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.ao
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ax = sub nuw nsw i64 %i.ao, %i.av
  call void @_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 noundef %i.ax)
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit

bb.f:                                             ; preds = %bb.d
  %i.ay = icmp ugt i64 %i.av, %i.ao
  br i1 %i.ay, label %bb.g, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ao ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, %i.az
  br i1 %.not.i.i, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.az, ptr %i.ap, align 8, !tbaa !57
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !57 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !55 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2                 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %i.ao
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit
  %i.bj = sub nuw nsw i64 %i.ao, %i.bh
  call void @_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.bj)
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit44

bb.j:                                             ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit
  %i.bk = icmp ugt i64 %i.bh, %i.ao
  br i1 %i.bk, label %bb.k, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit44

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ao ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.bc, %i.bl
  br i1 %.not.i.i43, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit44, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.bl, ptr %i.bb, align 8, !tbaa !57
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit44

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit44: ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !57 ; 2 uses
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !55 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, %i.ao
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit44
  %i.bv = sub nuw nsw i64 %i.ao, %i.bt
  call void @_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 noundef %i.bv)
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit46

bb.n:                                             ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit44
  %i.bw = icmp ugt i64 %i.bt, %i.ao
  br i1 %i.bw, label %bb.o, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit46

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ao ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.bo, %i.bx
  br i1 %.not.i.i45, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit46, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.bx, ptr %i.bn, align 8, !tbaa !57
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit46

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit46: ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !58 ; 2 uses
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !54 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2                 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %i.ao
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit46
  %i.ch = sub nuw nsw i64 %i.ao, %i.cf
  call void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 noundef %i.ch)
  br label %.lr.ph

bb.r:                                             ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit46
  %i.ci = icmp ugt i64 %i.cf, %i.ao
  br i1 %i.ci, label %bb.s, label %.lr.ph

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ao ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.ca, %i.cj
  br i1 %.not.i.i47, label %.lr.ph, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.cj, ptr %i.bz, align 8, !tbaa !58
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.ck = load ptr, ptr %i.an, align 8, !tbaa !55 ; 10 uses
  %i.cl = load ptr, ptr %i.ba, align 8, !tbaa !55 ; 10 uses
  %i.cm = load ptr, ptr %i.bm, align 8, !tbaa !55 ; 10 uses
  %i.cn = load ptr, ptr %i.by, align 8, !tbaa !54 ; 4 uses
  %i.co = sext i32 %i.b to i64                    ; 4 uses
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 8 uses
  %min.iters.check = icmp ult i32 %i.k, 96
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.cp = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %i.cq = sext i32 %i.a to i64
  %i.cr = shl nsw i64 %i.cq, 2                    ; 2 uses
  %i.cs = add nsw i64 %i.cr, 4                    ; 3 uses
  %i.ct = sub nuw nsw i64 -4, %i.cr               ; 3 uses
  %scevgep = getelementptr i8, ptr %i.e, i64 4    ; 4 uses
  %i.cu = icmp slt i32 %i.a, -1                   ; 2 uses
  %i.cv = select i1 %i.cu, i64 %i.ct, i64 %i.cs
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.cv, i64 %i.cp) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.cw = sub i64 0, %mul.result
  %i.cx = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.cy = getelementptr i8, ptr %scevgep, i64 %i.cw
  %i.cz = icmp ult ptr %i.cx, %scevgep
  %i.da = icmp ugt ptr %i.cy, %scevgep
  %i.db = select i1 %i.cu, i1 %i.da, i1 %i.cz
  %i.dc = or i1 %i.db, %mul.overflow
  %scevgep76 = getelementptr i8, ptr %i.e, i64 8  ; 4 uses
  %i.dd = icmp slt i32 %i.a, -1                   ; 2 uses
  %i.de = select i1 %i.dd, i64 %i.ct, i64 %i.cs
  %mul77 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.de, i64 %i.cp) ; 2 uses
  %mul.result78 = extractvalue { i64, i1 } %mul77, 0 ; 2 uses
  %mul.overflow79 = extractvalue { i64, i1 } %mul77, 1
  %i.df = sub i64 0, %mul.result78
  %i.dg = getelementptr i8, ptr %scevgep76, i64 %mul.result78
  %i.dh = getelementptr i8, ptr %scevgep76, i64 %i.df
  %i.di = icmp ult ptr %i.dg, %scevgep76
  %i.dj = icmp ugt ptr %i.dh, %scevgep76
  %i.dk = select i1 %i.dd, i1 %i.dj, i1 %i.di
  %i.dl = or i1 %i.dk, %mul.overflow79
  %scevgep80 = getelementptr i8, ptr %i.e, i64 12 ; 4 uses
  %i.dm = icmp slt i32 %i.a, -1                   ; 2 uses
  %i.dn = select i1 %i.dm, i64 %i.ct, i64 %i.cs
  %mul81 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.dn, i64 %i.cp) ; 2 uses
  %mul.result82 = extractvalue { i64, i1 } %mul81, 0 ; 2 uses
  %mul.overflow83 = extractvalue { i64, i1 } %mul81, 1
  %i.do = sub i64 0, %mul.result82
  %i.dp = getelementptr i8, ptr %scevgep80, i64 %mul.result82
  %i.dq = getelementptr i8, ptr %scevgep80, i64 %i.do
  %i.dr = icmp ult ptr %i.dp, %scevgep80
  %i.ds = icmp ugt ptr %i.dq, %scevgep80
  %i.dt = select i1 %i.dm, i1 %i.ds, i1 %i.dr
  %i.du = or i1 %i.dt, %mul.overflow83
  %i.dv = or i1 %i.dc, %i.dl
  %i.dw = or i1 %i.dv, %i.du
  br i1 %i.dw, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dx = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.dy = getelementptr i8, ptr %i.ck, i64 %i.dx  ; 5 uses
  %i.dz = getelementptr i8, ptr %i.cl, i64 %i.dx  ; 5 uses
  %i.ea = getelementptr i8, ptr %i.cm, i64 %i.dx  ; 5 uses
  %i.eb = add nsw i64 %wide.trip.count, -1
  %i.ec = sext i32 %i.a to i64
  %i.ed = shl nsw i64 %i.ec, 2
  %i.ee = add nsw i64 %i.ed, 4
  %i.ef = mul i64 %i.eb, %i.ee                    ; 3 uses
  %i.eg = getelementptr i8, ptr %i.e, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 12     ; 4 uses
  %i.ei = getelementptr i8, ptr %i.e, i64 12      ; 4 uses
  %i.ej = icmp ult ptr %i.eh, %i.ei
  %i.ek = select i1 %i.ej, ptr %i.eh, ptr %i.ei   ; 3 uses
  %i.el = icmp ugt ptr %i.eh, %i.ei
  %i.em = select i1 %i.el, ptr %i.eh, ptr %i.ei
  %i.en = getelementptr i8, ptr %i.em, i64 4      ; 3 uses
  %i.eo = getelementptr i8, ptr %i.e, i64 %i.ef
  %i.ep = getelementptr i8, ptr %i.eo, i64 8      ; 4 uses
  %i.eq = getelementptr i8, ptr %i.e, i64 8       ; 4 uses
  %i.er = icmp ult ptr %i.ep, %i.eq
  %i.es = select i1 %i.er, ptr %i.ep, ptr %i.eq   ; 3 uses
  %i.et = icmp ugt ptr %i.ep, %i.eq
  %i.eu = select i1 %i.et, ptr %i.ep, ptr %i.eq
  %i.ev = getelementptr i8, ptr %i.eu, i64 4      ; 3 uses
  %i.ew = getelementptr i8, ptr %i.e, i64 %i.ef
  %i.ex = getelementptr i8, ptr %i.ew, i64 4      ; 4 uses
  %i.ey = getelementptr i8, ptr %i.e, i64 4       ; 4 uses
  %i.ez = icmp ult ptr %i.ex, %i.ey
  %i.fa = select i1 %i.ez, ptr %i.ex, ptr %i.ey   ; 3 uses
  %i.fb = icmp ugt ptr %i.ex, %i.ey
  %i.fc = select i1 %i.fb, ptr %i.ex, ptr %i.ey
  %i.fd = getelementptr i8, ptr %i.fc, i64 4      ; 3 uses
  %bound0 = icmp ult ptr %i.ck, %i.dz
  %bound1 = icmp ult ptr %i.cl, %i.dy
  %found.conflict = and i1 %bound0, %bound1
  %bound0143 = icmp ult ptr %i.ck, %i.ea
  %bound1144 = icmp ult ptr %i.cm, %i.dy
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx = or i1 %found.conflict, %found.conflict145
  %bound0146 = icmp ult ptr %i.ck, %i.en
  %bound1147 = icmp ult ptr %i.ek, %i.dy
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %conflict.rdx, %found.conflict148
  %bound0150 = icmp ult ptr %i.ck, %i.ev
  %bound1151 = icmp ult ptr %i.es, %i.dy
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx153 = or i1 %conflict.rdx149, %found.conflict152
  %bound0154 = icmp ult ptr %i.ck, %i.fd
  %bound1155 = icmp ult ptr %i.fa, %i.dy
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx157 = or i1 %conflict.rdx153, %found.conflict156
  %bound0158 = icmp ult ptr %i.cl, %i.ea
  %bound1159 = icmp ult ptr %i.cm, %i.dz
  %found.conflict160 = and i1 %bound0158, %bound1159
  %conflict.rdx161 = or i1 %conflict.rdx157, %found.conflict160
  %bound0162 = icmp ult ptr %i.cl, %i.en
  %bound1163 = icmp ult ptr %i.ek, %i.dz
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %conflict.rdx161, %found.conflict164
  %bound0166 = icmp ult ptr %i.cl, %i.ev
  %bound1167 = icmp ult ptr %i.es, %i.dz
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx165, %found.conflict168
  %bound0170 = icmp ult ptr %i.cl, %i.fd
  %bound1171 = icmp ult ptr %i.fa, %i.dz
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  %bound0174 = icmp ult ptr %i.cm, %i.en
  %bound1175 = icmp ult ptr %i.ek, %i.ea
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  %bound0178 = icmp ult ptr %i.cm, %i.ev
  %bound1179 = icmp ult ptr %i.es, %i.ea
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx177, %found.conflict180
  %bound0182 = icmp ult ptr %i.cm, %i.fd
  %bound1183 = icmp ult ptr %i.fa, %i.ea
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx181, %found.conflict184
  br i1 %conflict.rdx185, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.co, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert186 = insertelement <8 x i32> poison, i32 %2, i64 0
  %broadcast.splat187 = shufflevector <8 x i32> %broadcast.splatinsert186, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.fe = mul nsw <8 x i64> %vec.ind, %broadcast.splat
  %wide.gep = getelementptr [4 x i8], ptr %i.e, <8 x i64> %i.fe ; 3 uses
  %wide.gep188 = getelementptr i8, <8 x ptr> %wide.gep, i64 4 ; 2 uses
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep188, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !43, !alias.scope !86
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %index
  store <8 x i32> %wide.masked.gather, ptr %i.ff, align 4, !tbaa !43, !alias.scope !87, !noalias !88
  %wide.gep189 = getelementptr i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather190 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep189, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !43, !alias.scope !89
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index
  store <8 x i32> %wide.masked.gather190, ptr %i.fg, align 4, !tbaa !43, !alias.scope !90, !noalias !91
  %wide.gep191 = getelementptr i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather192 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep191, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !43, !alias.scope !92
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index
  store <8 x i32> %wide.masked.gather192, ptr %i.fh, align 4, !tbaa !43, !alias.scope !93, !noalias !94
  %wide.masked.gather193 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep188, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !43, !alias.scope !86
  %i.fi = icmp slt <8 x i32> %wide.masked.gather193, %broadcast.splat187
  %i.fj = uitofp <8 x i1> %i.fi to <8 x float>
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index
  store <8 x float> %i.fj, ptr %i.fk, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 8 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fm = mul nsw i64 %indvars.iv.ph, %i.co
  %i.fn = getelementptr [4 x i8], ptr %i.e, i64 %i.fm ; 3 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 4      ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !43
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.ph
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !43
  %i.fr = getelementptr i8, ptr %i.fn, i64 8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !43
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.ph
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !43
  %i.fu = getelementptr i8, ptr %i.fn, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !43
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.ph
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !43
  %i.fx = load i32, ptr %i.fo, align 4, !tbaa !43
  %i.fy = icmp slt i32 %i.fx, %2
  %i.fz = uitofp i1 %i.fy to float
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.ph
  store float %i.fz, ptr %i.ga, align 4, !tbaa !17
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.gb = add nsw i64 %wide.trip.count, -1
  %i.gc = icmp eq i64 %indvars.iv.ph, %i.gb
  br i1 %i.gc, label %.preheader, label %scalar.ph

.preheader:                                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gd = icmp slt i32 %i.k, %i.am
  br i1 %i.gd, label %.lr.ph57, label %.loopexit

.lr.ph57:                                         ; preds = %.preheader
  %i.ge = zext nneg i32 %i.aj to i64              ; 3 uses
  %i.gf = load ptr, ptr %i.an, align 8, !tbaa !55 ; 6 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.ge ; 5 uses
  %i.gh = load ptr, ptr %i.ba, align 8, !tbaa !55 ; 6 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.ge ; 5 uses
  %i.gj = load ptr, ptr %i.bm, align 8, !tbaa !55 ; 6 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.ge ; 5 uses
  %i.gl = load ptr, ptr %i.by, align 8, !tbaa !54 ; 5 uses
  %i.gm = zext nneg i32 %i.k to i64               ; 2 uses
  %i.gn = sub nsw i32 0, %i.k
  %xtraiter194 = and i32 %i.gn, 3                 ; 2 uses
  %lcmp.mod195.not = icmp eq i32 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph57, %.prol.preheader
  %indvars.iv59.prol = phi i64 [ %indvars.iv.next60.prol, %.prol.preheader ], [ %i.gm, %.lr.ph57 ] ; 5 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph57 ]
  %i.go = load i32, ptr %i.gg, align 4, !tbaa !43
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv59.prol
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !43
  %i.gq = load i32, ptr %i.gi, align 4, !tbaa !43
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv59.prol
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !43
  %i.gs = load i32, ptr %i.gk, align 4, !tbaa !43
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv59.prol
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !43
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv59.prol
  store float 0.000000e+00, ptr %i.gu, align 4, !tbaa !17
  %indvars.iv.next60.prol = add nuw nsw i64 %indvars.iv59.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter194
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !81

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph57
  %indvars.iv59.unr = phi i64 [ %i.gm, %.lr.ph57 ], [ %indvars.iv.next60.prol, %.prol.preheader ]
  %i.gv = sub i32 %i.k, %i.am
  %i.gw = icmp ugt i32 %i.gv, -4
  br i1 %i.gw, label %.loopexit, label %.lr.ph57.new

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.gx = mul nsw i64 %indvars.iv, %i.co
  %i.gy = getelementptr [4 x i8], ptr %i.e, i64 %i.gx ; 3 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 4      ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !43
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !43
  %i.hc = getelementptr i8, ptr %i.gy, i64 8
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !43
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !43
  %i.hf = getelementptr i8, ptr %i.gy, i64 12
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !43
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !43
  %i.hi = load i32, ptr %i.gz, align 4, !tbaa !43
  %i.hj = icmp slt i32 %i.hi, %2
  %i.hk = uitofp i1 %i.hj to float
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv
  store float %i.hk, ptr %i.hl, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.hm = mul nsw i64 %indvars.iv.next, %i.co
  %i.hn = getelementptr [4 x i8], ptr %i.e, i64 %i.hm ; 3 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 4      ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !43
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !43
end_hunk_0
begin_hunk_1_@_ZN3gmx7csettleERKNS_10SettleDataEiiPK5t_pbcNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEENS6_IS8_EEfSB_bPA3_fPb:bb.a
  %i.epg = fadd float %.sroa.27.0.i72.i48, %i.epf
  store float %i.epg, ptr %i.epe, align 4, !tbaa !17
  br label %_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit

_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit: ; preds = %bb.m, %._crit_edge.loopexit.i.i33, %_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb1ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i, %bb.p, %._crit_edge.loopexit.i66.i, %_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb0ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i
  %.0264.lcssa.i.sink.i = phi i8 [ %i.clj, %._crit_edge.loopexit.i.i33 ], [ %.0319.lcssa.i.i, %_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb0ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i ], [ %.0352.lcssa.i.i, %_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb1ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i ], [ 0, %bb.m ], [ 0, %bb.p ], [ %i.dot, %._crit_edge.loopexit.i66.i ]
  store i8 %.0264.lcssa.i.sink.i, ptr %10, align 1, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.r

bb.r:                                             ; preds = %_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit, %_ZN3gmxL21settleTemplateWrapperINS_9SimdFloatENS_9SimdFBoolELi16EPKfEEvRKNS_10SettleDataEiiT2_S4_PffS9_bPA3_fPb.exit
  ret void
}

declare void @_Z12set_pbc_simdPK5t_pbcPf(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float>, <16 x float>, i16) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #17

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scatter.dps.512(ptr, <16 x i1>, <16 x i32>, <16 x float>, i32 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <7 x float> @llvm.masked.load.v7f32.p0(ptr captures(none), <7 x i1>, <7 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.sqrt.v3f32(<3 x float>) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { cold noreturn }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { noreturn }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!"_ZTSN3gmx16SettleParametersE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !5, i64 52}
!11 = !{!10, !9, i64 0}
!12 = !{!10, !9, i64 4}
!13 = !{!10, !9, i64 8}
!14 = !{!10, !9, i64 12}
!15 = !{!10, !9, i64 16}
!16 = !{!10, !9, i64 28}
!17 = !{!9, !9, i64 0}
!18 = !{!10, !9, i64 32}
!19 = !{!10, !9, i64 36}
!20 = !{!10, !9, i64 40}
!21 = !{!"any pointer", !5, i64 0}
!22 = !{!10, !9, i64 20}
!23 = !{!10, !9, i64 24}
!24 = !{!"p1 int", !21, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE", !27, i64 0}
!29 = !{!"p1 float", !21, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !32, i64 0}
!34 = !{!"bool", !5, i64 0}
!35 = !{!"_ZTSN3gmx10SettleDataE", !10, i64 0, !10, i64 88, !6, i64 176, !28, i64 184, !28, i64 208, !28, i64 232, !33, i64 256, !34, i64 280}
!36 = !{!35, !34, i64 280}
!37 = !{!"p1 omnipotent char", !21, i64 0}
!38 = !{!"_ZTS22t_interaction_function", !37, i64 0, !37, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
!39 = !{!38, !6, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!41 = !{!40, !24, i64 8}
!42 = !{!40, !24, i64 0}
!43 = !{!6, !6, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!35, !9, i64 0}
!46 = !{!5, !5, i64 0}
!47 = !{i64 0, i64 4, !17, i64 4, i64 4, !17, i64 8, i64 4, !17, i64 12, i64 4, !17, i64 16, i64 4, !17, i64 20, i64 4, !17, i64 24, i64 4, !17, i64 28, i64 4, !17, i64 32, i64 4, !17, i64 36, i64 4, !17, i64 40, i64 4, !17, i64 44, i64 4, !17, i64 48, i64 4, !17, i64 52, i64 36, !46}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!49 = !{!"long", !5, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !48, i64 0, !49, i64 8, !5, i64 16}
!51 = !{!50, !37, i64 0}
!52 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !21, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!30, !29, i64 0}
!55 = !{!25, !24, i64 0}
!56 = !{!35, !6, i64 176}
!57 = !{!25, !24, i64 8}
!58 = !{!30, !29, i64 8}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = !{!"vtable pointer", !4, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!"branch_weights", i32 8, i32 24}
!64 = !{!"p1 _ZTS8_IO_FILE", !21, i64 0}
!65 = !{!64, !64, i64 0}
!66 = distinct !{!66, !44}
!67 = !{!"p1 _ZTS9t_iparams", !21, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseI9t_iparamsSaIS0_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!69 = !{!68, !67, i64 0}
!70 = !{!48, !37, i64 0}
!71 = !{!49, !49, i64 0}
!72 = !{!50, !49, i64 8}
!73 = distinct !{!73, i1 false, !"LVerDomain"}
!74 = distinct !{!74, !73}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !73}
!77 = distinct !{!77, !73}
!78 = distinct !{!78, !73}
!79 = distinct !{!79, !73}
!80 = distinct !{!80, !44, !59, !60}
!81 = distinct !{!81, !95}
!82 = distinct !{!82, !44, !59}
!83 = distinct !{!83, !44}
!84 = !{!35, !9, i64 100}
!85 = !{!35, !9, i64 104}
!86 = !{!74}
!87 = !{!75}
!88 = !{!79, !78, !77, !76, !74}
!89 = !{!76}
!90 = !{!79}
!91 = !{!78, !77, !76, !74}
!92 = !{!77}
!93 = !{!78}
!94 = !{!77, !76, !74}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = distinct !{!96, i1 true, !"_ZSt19__relocate_object_aIiiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_"}
!97 = distinct !{!97, !96, !"_ZSt19__relocate_object_aIiiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 0"}
!98 = distinct !{!98, !96, !"_ZSt19__relocate_object_aIiiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 1"}
!99 = distinct !{!99, !44, !59, !60}
!100 = distinct !{!100, !44, !59, !60}
!101 = distinct !{!101, !44, !59}
!102 = !{!25, !24, i64 16}
!103 = !{!97}
!104 = !{!98}
!105 = distinct !{!105, i1 true, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_"}
!106 = distinct !{!106, !105, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 0"}
!107 = distinct !{!107, !105, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 1"}
!108 = distinct !{!108, !44, !59, !60}
!109 = distinct !{!109, !44, !59, !60}
!110 = distinct !{!110, !44, !59}
!111 = !{!30, !29, i64 16}
!112 = !{!106}
!113 = !{!107}
!114 = distinct !{!114, !44}
!115 = !{!10, !9, i64 44}
!116 = !{!10, !9, i64 48}
!117 = distinct !{!117, i1 true, !"_ZN3gmxL14settleTemplateINS_9SimdFloatENS_9SimdFBoolELi16EPKfLb1ELb0EEEvRKNS_10SettleDataEiiT2_S4_PffS9_PA3_fPb"}
!118 = distinct !{!118, !117, !"_ZN3gmxL14settleTemplateINS_9SimdFloatENS_9SimdFBoolELi16EPKfLb1ELb0EEEvRKNS_10SettleDataEiiT2_S4_PffS9_PA3_fPb: argument 0"}
!119 = distinct !{!119, !44}
!120 = distinct !{!120, i1 true, !"_ZN3gmxL14settleTemplateINS_9SimdFloatENS_9SimdFBoolELi16EPKfLb1ELb1EEEvRKNS_10SettleDataEiiT2_S4_PffS9_PA3_fPb"}
!121 = distinct !{!121, !120, !"_ZN3gmxL14settleTemplateINS_9SimdFloatENS_9SimdFBoolELi16EPKfLb1ELb1EEEvRKNS_10SettleDataEiiT2_S4_PffS9_PA3_fPb: argument 0"}
!122 = distinct !{!122, !44}
!123 = distinct !{!123, !44}
!124 = distinct !{!124, !44}
!125 = distinct !{!125, i1 true, !"_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb1ELb0EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb"}
!126 = distinct !{!126, !125, !"_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb1ELb0EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb: argument 0"}
!127 = distinct !{!127, !44}
!128 = distinct !{!128, i1 true, !"_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb1ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb"}
!129 = distinct !{!129, !128, !"_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb1ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb: argument 0"}
!130 = distinct !{!130, !44}
!131 = distinct !{!131, !44}
!132 = distinct !{!132, !44}
!133 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !21, i64 0}
!134 = !{!"_ZTSN3gmx19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEE", !133, i64 0, !133, i64 8, !133, i64 16}
!135 = !{!134, !133, i64 0}
!136 = !{!"_ZTSN3gmx19ArrayRefWithPaddingINS_11BasicVectorIfEEEE", !133, i64 0, !133, i64 8, !133, i64 16}
!137 = !{!136, !133, i64 0}
!138 = !{i8 0, i8 2}
!139 = !{}
!140 = !{!118}
!141 = !{!121}
!142 = !{!34, !34, i64 0}
!143 = !{!126}
!144 = !{!129}
end_hunk_1
