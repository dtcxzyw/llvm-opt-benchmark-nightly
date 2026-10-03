Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachOObjectFile?download=true
inline.NumInlined: 6417
inline.NumDeleted: 1696
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm6object14MachOBindEntry8moveNextEv:bb.a
  %165 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %166 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %167 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %168 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %169 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %170 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %171 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %172 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %173 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %174 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %175 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %176 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %177 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %178 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %179 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %180 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %181 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %182 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %183 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %184 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %185 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %186 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %187 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %188 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %189 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %190 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %191 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %192 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %193 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %194 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %195 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %196 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %197 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %198 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %199 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %200 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %201 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %202 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %203 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %204 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %205 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %206 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %207 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %208 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %209 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %210 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %211 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %212 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %213 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %214 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %215 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %216 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %217 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %218 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %219 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %220 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !4349
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !249
  %i.f = add i64 %i.e, %i.c                       ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !249
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 38 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !256  ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.preheader305, label %bb.b

.preheader305:                                    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 44 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 60 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !145  ; 14 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 35 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !146  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 113 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 36 uses
  %.promoted503 = load ptr, ptr %i.i, align 8     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 5 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 5 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 8 uses
  %i.af = ptrtoaddr ptr %i.o to i64
  %i.ag = icmp eq ptr %.promoted503, %i.o
  br i1 %i.ag, label %._crit_edge993, label %.lr.ph992

.lr.ph992:                                        ; preds = %.preheader305
  %i.ah = add i64 %i.n, %i.l
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = add i64 %i.h, -1
  store i64 %i.ai, ptr %i.g, align 8, !tbaa !256
  br label %.loopexit306

._crit_edge993:                                   ; preds = %bb.ck, %.preheader305
  store i8 1, ptr %i.z, align 8, !tbaa !255
  br label %.loopexit306

bb.c:                                             ; preds = %.lr.ph992, %bb.ck
  %.promoted504990 = phi ptr [ %.promoted503, %.lr.ph992 ], [ %.promoted505, %bb.ck ] ; 38 uses
  %i.aj = phi i64 [ %i.f, %.lr.ph992 ], [ %i.aic, %bb.ck ] ; 11 uses
  %.promoted504615991 = ptrtoaddr ptr %.promoted504990 to i64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.promoted504990, i64 1 ; 41 uses
  store ptr %i.ak, ptr %i.i, align 8, !tbaa !248
  %i.al = load i8, ptr %.promoted504990, align 1, !tbaa !72 ; 4 uses
  %i.am = and i8 %i.al, 15                        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8, !tbaa !79
  %i.an = lshr i8 %i.al, 4
  switch i8 %i.an, label %_ZN4llvm5ErrorD2Ev.exit287 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.g
    i8 3, label %bb.o
    i8 4, label %bb.t
    i8 5, label %bb.v
    i8 6, label %.preheader
    i8 7, label %bb.aa
    i8 8, label %bb.an
    i8 9, label %bb.bb
    i8 10, label %bb.bg
    i8 11, label %bb.bt
    i8 12, label %bb.by
  ]

.preheader:                                       ; preds = %bb.c
  %i.ao = icmp eq ptr %i.ak, %i.ae
  br i1 %i.ao, label %.preheader._crit_edge, label %.lr.ph961, !prof !147

bb.d:                                             ; preds = %bb.c
  %i.ap = load i32, ptr %i.w, align 4, !tbaa !254
  %i.aq = icmp eq i32 %i.ap, 1
  %i.ar = icmp ult ptr %i.ak, %i.o
  %or.cond508 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond508, label %iter.check, label %.critedge506

iter.check:                                       ; preds = %bb.d
  %i.as = getelementptr i8, ptr %.promoted504990, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.l
  %i.at = sub i64 0, %.promoted504615991
  %scevgep616 = getelementptr i8, ptr %scevgep, i64 %i.at
  %i.au = xor i64 %.promoted504615991, -1
  %i.av = add i64 %i.ah, %i.au                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.av, 4
  br i1 %min.iters.check, label %.lr.ph500.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check994 = icmp ult i64 %i.av, 32
  br i1 %min.iters.check994, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %i.av, 28
  %n.vec = and i64 %i.av, -32                     ; 4 uses
  %i.ax = getelementptr i8, ptr %i.ak, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi995 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.ak, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !72
  %wide.load996 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !72
  %i.az = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.ba = icmp ne <16 x i8> %wide.load996, zeroinitializer
  %i.bb = or <16 x i1> %vec.phi, %i.az            ; 2 uses
  %i.bc = or <16 x i1> %vec.phi995, %i.ba         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !4275

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.bc, %i.bb
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.be = bitcast <16 x i1> %bin.rdx.fr to i16
  %i.bf = icmp ne i16 %i.be, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph500.preheader, label %vec.epilog.ph, !prof !4350

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.bf, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec997 = and i64 %i.av, -4                   ; 3 uses
  %221 = getelementptr i8, ptr %i.ak, i64 %n.vec997
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index998 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1002, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi999 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.bh, %vec.epilog.vector.body ]
  %next.gep1000 = getelementptr i8, ptr %i.ak, i64 %index998
  %wide.load1001 = load <4 x i8>, ptr %next.gep1000, align 1, !tbaa !72
  %wide.load1001.fr = freeze <4 x i8> %wide.load1001
  %i.bg = icmp ne <4 x i8> %wide.load1001.fr, zeroinitializer
  %i.bh = or <4 x i1> %vec.phi999, %i.bg          ; 2 uses
  %index.next1002 = add nuw i64 %index998, 4      ; 2 uses
  %i.bi = icmp eq i64 %index.next1002, %n.vec997
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4276

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bj = bitcast <4 x i1> %i.bh to i4
  %i.bk = icmp ne i4 %i.bj, 0                     ; 2 uses
  %cmp.n1003 = icmp eq i64 %i.av, %n.vec997
  br i1 %cmp.n1003, label %._crit_edge, label %.lr.ph500.preheader

.lr.ph500.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.073499.ph = phi ptr [ %i.ak, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %221, %vec.epilog.middle.block ]
  %.074498.ph = phi i1 [ false, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  br label %.lr.ph500

._crit_edge:                                      ; preds = %.lr.ph500, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i1 [ %i.bk, %vec.epilog.middle.block ], [ %i.bf, %middle.block ], [ %spec.select, %.lr.ph500 ]
  br i1 %spec.select.lcssa, label %bb.ck, label %.critedge506

.lr.ph500:                                        ; preds = %.lr.ph500.preheader, %.lr.ph500
  %.073499 = phi ptr [ %i.bm, %.lr.ph500 ], [ %.073499.ph, %.lr.ph500.preheader ] ; 2 uses
  %.074498 = phi i1 [ %spec.select, %.lr.ph500 ], [ %.074498.ph, %.lr.ph500.preheader ]
  %i.bl = load i8, ptr %.073499, align 1, !tbaa !72
  %.not103 = icmp ne i8 %i.bl, 0
  %spec.select = select i1 %.not103, i1 true, i1 %.074498 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.073499, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.bm, %scevgep616
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph500, !llvm.loop !4277

.critedge506:                                     ; preds = %._crit_edge, %bb.d
  store ptr %i.o, ptr %i.i, align 8, !tbaa !248
  store i8 1, ptr %i.z, align 8, !tbaa !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.loopexit306

bb.e:                                             ; preds = %bb.c
  %i.bn = load i32, ptr %i.w, align 4, !tbaa !254
  %i.bo = icmp eq i32 %i.bn, 2
  br i1 %i.bo, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.f

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.bq, align 1, !tbaa !71
  store ptr @.str.280, ptr %3, align 8, !tbaa !72
  store i8 3, ptr %i.bp, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.br = ptrtoint ptr %.promoted504990 to i64
  %i.bs = ptrtoint ptr %i.k to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = inttoptr i64 %i.bt to ptr
  store ptr %i.bu, ptr %4, align 8, !alias.scope !4351
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.bv, align 8, !alias.scope !4351
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 15, ptr %i.bw, align 8, !tbaa !70, !alias.scope !4351
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.bx, align 1, !tbaa !71, !alias.scope !4351
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %2, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef nonnull align 8 dereferenceable(34) %4)
  call fastcc void @_ZL14malformedErrorRKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %1, ptr noundef nonnull align 8 dereferenceable(34) %2)
  %i.by = load ptr, ptr %0, align 8, !tbaa !246
  %i.bz = load ptr, ptr %1, align 8, !tbaa !28
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.ca = load ptr, ptr %i.j, align 8, !tbaa !145
  %i.cb = load i64, ptr %i.m, align 8, !tbaa !146
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb
  store ptr %i.cc, ptr %i.i, align 8, !tbaa !248
  store i64 0, ptr %i.g, align 8, !tbaa !256
  store i8 1, ptr %i.z, align 8, !tbaa !255
  br label %.critedge105

bb.f:                                             ; preds = %bb.e
  %i.cd = zext nneg i8 %i.am to i32               ; 3 uses
  store i32 %i.cd, ptr %i.x, align 4, !tbaa !251
  store i8 1, ptr %i.y, align 8, !tbaa !4352
  %i.ce = load ptr, ptr %i.p, align 8, !tbaa !247
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 112
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !34
  %i.ch = icmp ult i32 %i.cg, %i.cd
  br i1 %i.ch, label %_ZN4llvm5ErrorD2Ev.exit106, label %bb.ck

_ZN4llvm5ErrorD2Ev.exit106:                       ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.cj, align 1, !tbaa !71
  store ptr @.str.281, ptr %11, align 8, !tbaa !72
  store i8 3, ptr %i.ci, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 10, ptr %i.ck, align 8, !tbaa !70
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.cl, align 1, !tbaa !71
  store i32 %i.cd, ptr %12, align 8, !tbaa !72
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %10, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr noundef nonnull align 8 dereferenceable(34) %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.cn, align 1, !tbaa !71
  store ptr @.str.243, ptr %13, align 8, !tbaa !72
  store i8 3, ptr %i.cm, align 8, !tbaa !70
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %9, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr noundef nonnull align 8 dereferenceable(34) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.co = load ptr, ptr %i.p, align 8, !tbaa !247
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 112
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !34
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 10, ptr %i.cr, align 8, !tbaa !70
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.cs, align 1, !tbaa !71
  store i32 %i.cq, ptr %14, align 8, !tbaa !72
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %8, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef nonnull align 8 dereferenceable(34) %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.cu, align 1, !tbaa !71
  store ptr @.str.282, ptr %15, align 8, !tbaa !72
  store i8 3, ptr %i.ct, align 8, !tbaa !70
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %7, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull align 8 dereferenceable(34) %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.cv = load ptr, ptr %i.j, align 8, !tbaa !145
  %i.cw = ptrtoint ptr %.promoted504990 to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = inttoptr i64 %i.cy to ptr
  store ptr %i.cz, ptr %16, align 8, !alias.scope !4353
  %i.da = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr null, ptr %i.da, align 8, !alias.scope !4353
  %i.db = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 15, ptr %i.db, align 8, !tbaa !70, !alias.scope !4353
  %i.dc = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.dc, align 1, !tbaa !71, !alias.scope !4353
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %6, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef nonnull align 8 dereferenceable(34) %16)
  call fastcc void @_ZL14malformedErrorRKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(34) %6)
  %i.dd = load ptr, ptr %0, align 8, !tbaa !246
  %i.de = load ptr, ptr %5, align 8, !tbaa !28
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.df = load ptr, ptr %i.j, align 8, !tbaa !145
  %i.dg = load i64, ptr %i.m, align 8, !tbaa !146
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  store ptr %i.dh, ptr %i.i, align 8, !tbaa !248
  store i64 0, ptr %i.g, align 8, !tbaa !256
  store i8 1, ptr %i.z, align 8, !tbaa !255
  br label %.critedge105

bb.g:                                             ; preds = %bb.c
  %i.di = load i32, ptr %i.w, align 4, !tbaa !254
  %i.dj = icmp eq i32 %i.di, 2
  br i1 %i.dj, label %_ZN4llvm5ErrorD2Ev.exit107, label %bb.h

_ZN4llvm5ErrorD2Ev.exit107:                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.dl, align 1, !tbaa !71
  store ptr @.str.283, ptr %19, align 8, !tbaa !72
  store i8 3, ptr %i.dk, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.dm = ptrtoint ptr %.promoted504990 to i64
  %i.dn = ptrtoint ptr %i.k to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = inttoptr i64 %i.do to ptr
  store ptr %i.dp, ptr %20, align 8, !alias.scope !4354
end_hunk_0
