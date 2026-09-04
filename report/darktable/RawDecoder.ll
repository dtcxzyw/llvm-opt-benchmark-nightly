Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/RawDecoder?download=true
inline.NumInlined: 1110
inline.NumDeleted: 646
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8rawspeed10RawDecoder11setMetaDataEPKNS_14CameraMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_i:bb.a
  %i.p = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.m) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.r = load i64, ptr %i.g, align 8
  store i64 %i.r, ptr %i.q, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 432 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2571
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 440
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2571
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 280
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.s) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 416
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 448
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 480
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 512
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 320
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 352
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 384
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.at = load i8, ptr %i.as, align 1, !tbaa !2572, !range !280, !noundef !248
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !2573, !range !280, !noundef !248
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 308
  %i.az = load i64, ptr %i.ay, align 4            ; 2 uses
  %.sroa.0193.0.extract.trunc = trunc i64 %i.az to i32 ; 3 uses
  %.sroa.6195.0.extract.shift = lshr i64 %i.az, 32 ; 2 uses
  %.sroa.6195.0.extract.trunc = trunc nuw i64 %.sroa.6195.0.extract.shift to i32 ; 2 uses
  %i.ba = icmp slt i32 %.sroa.0193.0.extract.trunc, 1
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !108 ; 3 uses
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 40
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !2574
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 316
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !2575
  %i.bf = add i32 %i.bc, %.sroa.0193.0.extract.trunc
  %i.bg = sub i32 %i.bf, %i.be
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0193.0 = phi i32 [ %i.bg, %bb.i ], [ %.sroa.0193.0.extract.trunc, %bb.h ]
  %i.bh = icmp slt i32 %.sroa.6195.0.extract.trunc, 1
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 44
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !192
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !2576
  %i.bm = add i32 %i.bj, %.sroa.6195.0.extract.trunc
  %i.bn = sub i32 %i.bm, %i.bl
  %i.bo = zext i32 %i.bn to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.6195.0 = phi i64 [ %i.bo, %bb.k ], [ %.sroa.6195.0.extract.shift, %bb.j ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 316
  %i.bq = load i64, ptr %i.bp, align 4
  %.sroa.6195.0.insert.shift = shl nuw i64 %.sroa.6195.0, 32
  %.sroa.0193.0.insert.ext = zext i32 %.sroa.0193.0 to i64
  %.sroa.0193.0.insert.insert = or disjoint i64 %.sroa.6195.0.insert.shift, %.sroa.0193.0.insert.ext
  tail call void @_ZN8rawspeed12RawImageData8subFrameENS_12iRectangle2DE(ptr noundef nonnull align 8 dereferenceable(624) %.pre.pre, i64 %i.bq, i64 %.sroa.0193.0.insert.insert)
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.bs = load ptr, ptr %0, align 8, !tbaa !99
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call { i64, i64 } %i.bu(ptr noundef nonnull align 8 dereferenceable(96) %0), !call_target !336 ; 2 uses
  %i.bw = extractvalue { i64, i64 } %i.bv, 0
  %i.bx = extractvalue { i64, i64 } %i.bv, 1
  tail call void @_ZN8rawspeed12RawImageData8subFrameENS_12iRectangle2DE(ptr noundef nonnull align 8 dereferenceable(624) %i.br, i64 %i.bw, i64 %i.bx)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 328
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 168
  %i.cb = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.by) ; 0 uses
  %i.cc = tail call noundef ptr @_ZNK8rawspeed6Camera13getSensorInfoEi(ptr noundef nonnull align 8 dereferenceable(464) %i.f, i32 noundef %5) ; 5 uses
  %.not65 = icmp eq ptr %i.cc, null
  br i1 %.not65, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !2582
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !108 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  store i32 %i.cd, ptr %i.cf, align 8, !tbaa !2583
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !114
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 160
  %.sroa.0189.0.insert.ext = zext i32 %i.ch to i64
  %.sroa.0189.0.insert.insert = or disjoint i64 %.sroa.0189.0.insert.ext, 4294967296
  store i64 %.sroa.0189.0.insert.insert, ptr %i.ci, align 8
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !108 ; 20 uses
  %i.ck = ptrtoaddr ptr %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 168
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !2584
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 176
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !2584
  %i.cp = icmp eq ptr %i.cm, %i.co
  br i1 %i.cp, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !2585 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !2585 ; 3 uses
  %i.cu = icmp eq ptr %i.cr, %i.ct
  br i1 %i.cu, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 88
  %.sroa.0.0.copyload.i77 = load i64, ptr %i.cv, align 8 ; 2 uses
  %.sroa.0187.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i77 to i32
  %.sroa.4188.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i77, 32
  %.sroa.4188.0.extract.trunc = trunc nuw i64 %.sroa.4188.0.extract.shift to i32
  %i.cw = tail call i32 @llvm.abs.i32(i32 %.sroa.0187.0.extract.trunc, i1 false)
  %i.cx = tail call i32 @llvm.abs.i32(i32 %.sroa.4188.0.extract.trunc, i1 false)
  %i.cy = mul i32 %i.cx, %i.cw                    ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !2586, !range !280, !noundef !248
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.dc = ptrtoint ptr %i.ct to i64
  %i.dd = ptrtoint ptr %i.cr to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = lshr exact i64 %i.de, 2
  %i.dg = trunc i64 %i.df to i32
  %.not66 = icmp sgt i32 %i.cy, %i.dg
  br i1 %.not66, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cj, i64 100 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cj, i64 120
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cj, i64 152 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !2587, !range !280, !noundef !248
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %i.dj, align 8, !tbaa !2587
  br label %_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit

_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit: ; preds = %bb.s, %bb.t
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !2585
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 128
  store i32 4, ptr %i.dm, align 8, !tbaa !114
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  store i32 2, ptr %i.dn, align 8, !tbaa !114
  %i.do = getelementptr inbounds nuw i8, ptr %i.cj, i64 140
  store i32 2, ptr %i.do, align 4, !tbaa !114
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cj, i64 144
  store i32 2, ptr %i.dp, align 8, !tbaa !114
  %i.dq = icmp sgt i32 %i.cy, 0
  br i1 %i.dq, label %iter.check, label %.thread

iter.check:                                       ; preds = %_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit
  %i.dr = load ptr, ptr %i.cq, align 8, !tbaa !2588 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.cy to i64   ; 7 uses
  %min.iters.check = icmp ult i32 %i.cy, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ds = ptrtoaddr ptr %i.dr to i64
  %i.dt = sub i64 %i.ck, %i.ds
  %i.du = add i64 %i.dt, 99
  %diff.check = icmp ult i64 %i.du, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check252 = icmp ult i32 %i.cy, 32
  br i1 %min.iters.check252, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dv = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %index ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %wide.load = load <8 x i32>, ptr %i.dw, align 4, !tbaa !114
  %wide.load253 = load <8 x i32>, ptr %i.dx, align 4, !tbaa !114
  %wide.load254 = load <8 x i32>, ptr %i.dy, align 4, !tbaa !114
  %wide.load255 = load <8 x i32>, ptr %i.dz, align 4, !tbaa !114
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  store <8 x i32> %wide.load, ptr %i.ea, align 4, !tbaa !114
  store <8 x i32> %wide.load253, ptr %i.eb, align 4, !tbaa !114
  store <8 x i32> %wide.load254, ptr %i.ec, align 4, !tbaa !114
  store <8 x i32> %wide.load255, ptr %i.ed, align 4, !tbaa !114
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !2559

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2591

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec256 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index257 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next260, %vec.epilog.vector.body ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %index257
  %wide.load259 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !114
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index257
  store <4 x i32> %wide.load259, ptr %i.eg, align 4, !tbaa !114
  %index.next260 = add nuw i64 %index257, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next260, %n.vec256
  br i1 %i.eh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2560

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n262 = icmp eq i64 %n.vec256, %wide.trip.count
  br i1 %cmp.n262, label %.thread, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv212.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec256, %vec.epilog.middle.block ] ; 3 uses
  %12 = sub nsw i64 %wide.trip.count, %indvars.iv212.ph
  %xtraiter = and i64 %12, 7                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv212.prol = phi i64 [ %indvars.iv.next213.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv212.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv212.prol
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !114
  %i.ek = icmp samesign ult i64 %indvars.iv212.prol, 4
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv212.prol
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !114
  %indvars.iv.next213.prol = add nuw nsw i64 %indvars.iv212.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !2561

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %i.em = sub nsw i64 %indvars.iv212.ph, %wide.trip.count
  %i.en = icmp ugt i64 %i.em, -8
  call void @llvm.assume(i1 %i.en)
  br label %.thread

bb.u:                                             ; preds = %bb.q
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cj, i64 592 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !2593 ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = ptrtoint ptr %i.ct to i64
  %i.es = ptrtoint ptr %i.cr to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 2
  %.not67 = icmp ult i64 %i.eu, %i.eq
  br i1 %.not67, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cj, i64 100 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cj, i64 120
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cj, i64 152 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !2587, !range !280, !noundef !248
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit84, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.ex, align 8, !tbaa !2587
  br label %_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit84

_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit84: ; preds = %bb.v, %bb.w
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !2585
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cj, i64 128
  store i32 4, ptr %i.fa, align 8, !tbaa !114
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  store i32 2, ptr %i.fb, align 8, !tbaa !114
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cj, i64 140
  store i32 2, ptr %i.fc, align 4, !tbaa !114
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cj, i64 144
  store i32 2, ptr %i.fd, align 8, !tbaa !114
  %.not207 = icmp eq i32 %i.ep, 0
  br i1 %.not207, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit84
  %i.fe = load ptr, ptr %i.cq, align 8, !tbaa !2588
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 4 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !114
  %i.fh = icmp samesign ult i64 %indvars.iv, 4
  tail call void @llvm.assume(i1 %i.fh)
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv
  store i32 %i.fg, ptr %i.fi, align 4, !tbaa !114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fj = load i32, ptr %i.eo, align 8, !tbaa !2593
  %i.fk = zext i32 %i.fj to i64
  %i.fl = icmp samesign ult i64 %indvars.iv.next, %i.fk
  br i1 %i.fl, label %bb.x, label %.thread, !llvm.loop !2562

.thread:                                          ; preds = %bb.x, %vec.epilog.scalar.ph.prol.loopexit, %middle.block, %vec.epilog.middle.block, %_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit84, %_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit, %bb.r, %bb.u, %bb.o, %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.fm, ptr %8, align 8, !tbaa !2497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.fm, ptr noundef nonnull align 1 dereferenceable(15) @.str.14, i64 15, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 15, ptr %i.fn, align 8, !tbaa !274
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 31
  store i8 0, ptr %i.fo, align 1, !tbaa !194
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.fq, ptr %9, align 8, !tbaa !2497
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.fr, align 8, !tbaa !274
  store i8 0, ptr %i.fq, align 8, !tbaa !194
  invoke void @_ZNK8rawspeed5Hints3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 %9)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %.thread
  %i.fs = load ptr, ptr %9, align 8, !tbaa !275   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.fq
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.fu = load i64, ptr %i.fq, align 8, !tbaa !194
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.fw = load ptr, ptr %8, align 8, !tbaa !275   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.fm
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fy = load i64, ptr %i.fm, align 8, !tbaa !194
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !274 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %bb.be, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.lr.ph.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.lr.ph.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !2594)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !alias.scope !2594
  %i.gd = load ptr, ptr %7, align 8, !tbaa !275, !noalias !2594
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.ab, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.lr.ph.i
  %.sroa.11.024.i = phi ptr [ %i.gd, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.lr.ph.i ], [ %i.gp, %bb.ab ] ; 4 uses
  %.sroa.0.023.i = phi i64 [ %i.gb, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.lr.ph.i ], [ %i.gq, %bb.ab ] ; 5 uses
  %i.gf = call ptr @memchr(ptr noundef %.sroa.11.024.i, i32 noundef 44, i64 noundef %.sroa.0.023.i) #31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gf, null
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %.sroa.11.024.i to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !2594
  %i.gj = call i64 @llvm.umin.i64(i64 %.sroa.0.023.i, i64 %i.gi)
  %.sroa.speculated.i.i = select i1 %.not.i.i.i, i64 %.sroa.0.023.i, i64 %i.gj ; 2 uses
  store i64 %.sroa.speculated.i.i, ptr %6, align 8, !noalias !2594
  store ptr %.sroa.11.024.i, ptr %i.ge, align 8, !noalias !2594
  %i.gk = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.gk, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.gl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %._crit_edge25.i unwind label %bb.aa ; 0 uses

._crit_edge25.i:                                  ; preds = %bb.z
  %.pre.i = load i64, ptr %6, align 8, !tbaa !2596, !noalias !2594
  %i.gm = add i64 %.pre.i, 1
  %i.gn = call i64 @llvm.umin.i64(i64 %i.gm, i64 %.sroa.0.023.i)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !2594
  br label %.body

bb.ab:                                            ; preds = %._crit_edge25.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.sroa.speculated.i = phi i64 [ %i.gn, %._crit_edge25.i ], [ 1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.11.024.i, i64 %.sroa.speculated.i
  %i.gq = sub i64 %.sroa.0.023.i, %.sroa.speculated.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !2594
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %_ZN8rawspeed11splitStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !2565

_ZN8rawspeed11splitStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit: ; preds = %bb.ab
  %i.gs = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !2498
  %i.gu = load ptr, ptr %10, align 8, !tbaa !2499 ; 2 uses
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %.not69 = icmp eq i64 %i.gx, 128
  %i.gy = load ptr, ptr %i.b, align 8, !tbaa !108 ; 5 uses
  br i1 %.not69, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i91: ; preds = %_ZN8rawspeed11splitStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.gz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.gz, ptr %11, align 8, !tbaa !2497
  %i.ha = invoke noalias noundef nonnull dereferenceable(68) ptr @_Znwm(i64 noundef 68) #28
          to label %.noexc96 unwind label %bb.ae  ; 3 uses

.noexc96:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i91
  store ptr %i.ha, ptr %11, align 8, !tbaa !275
  store i64 67, ptr %i.gz, align 8, !tbaa !194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(67) %i.ha, ptr noundef nonnull align 1 dereferenceable(67) @.str.15, i64 67, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 67, ptr %i.hb, align 8, !tbaa !274
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 67
  store i8 0, ptr %i.hc, align 1, !tbaa !194
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!2391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!2392 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2391, size: 64)
!2393 = !{null, !2387, !2392}
!2394 = !DISubroutineType(types: !2393)
!2395 = !DISubprogram(name: "__shared_ptr", linkageName: "_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EEC4ERKS4_", scope: !81, file: !195, line: 1522, type: !2394, scopeLine: 1522, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2396 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !81, size: 64)
!2397 = !{!2396, !2387, !2392}
!2398 = !DISubroutineType(types: !2397)
!2399 = !DISubprogram(name: "operator=", linkageName: "_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EEaSERKS4_", scope: !81, file: !195, line: 1523, type: !2398, scopeLine: 1523, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2400 = !DISubprogram(name: "~__shared_ptr", linkageName: "_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED4Ev", scope: !81, file: !195, line: 1524, type: !2389, scopeLine: 1524, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2401 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !81, size: 64)
!2402 = !{null, !2387, !2401}
!2403 = !DISubroutineType(types: !2402)
!2404 = !DISubprogram(name: "__shared_ptr", linkageName: "_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EEC4EOS4_", scope: !81, file: !195, line: 1531, type: !2403, scopeLine: 1531, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2405 = !{null, !2387, !1989}
!2406 = !DISubroutineType(types: !2405)
!2407 = !DISubprogram(name: "__shared_ptr", linkageName: "_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EEC4EDn", scope: !81, file: !195, line: 1593, type: !2406, scopeLine: 1593, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2408 = !{!2396, !2387, !2401}
!2409 = !DISubroutineType(types: !2408)
!2410 = !DISubprogram(name: "operator=", linkageName: "_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EEaSEOS4_", scope: !81, file: !195, line: 1618, type: !2409, scopeLine: 1618, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2411 = !DISubprogram(name: "reset", linkageName: "_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE5resetEv", scope: !81, file: !195, line: 1641, type: !2389, scopeLine: 1641, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2413 = !{!2384, !2412}
!2414 = !DISubroutineType(types: !2413)
!2415 = !DISubprogram(name: "get", linkageName: "_ZNKSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE3getEv", scope: !81, file: !195, line: 1665, type: !2414, scopeLine: 1665, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2416 = !{!223, !2412}
!2417 = !DISubroutineType(types: !2416)
!2418 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EEcvbEv", scope: !81, file: !195, line: 1669, type: !2417, scopeLine: 1669, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2419 = !DISubprogram(name: "unique", linkageName: "_ZNKSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE6uniqueEv", scope: !81, file: !195, line: 1674, type: !2417, scopeLine: 1674, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2420 = !{!232, !2412}
!2421 = !DISubroutineType(types: !2420)
!2422 = !DISubprogram(name: "use_count", linkageName: "_ZNKSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE9use_countEv", scope: !81, file: !195, line: 1679, type: !2421, scopeLine: 1679, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2423 = !{null, !2387, !2396}
!2424 = !DISubroutineType(types: !2423)
!2425 = !DISubprogram(name: "swap", linkageName: "_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE4swapERS4_", scope: !81, file: !195, line: 1684, type: !2424, scopeLine: 1684, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!2427 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2426, size: 64)
!2428 = !{null, !2387, !2427, !74}
!2429 = !DISubroutineType(types: !2428)
!2430 = !DISubprogram(name: "__shared_ptr", linkageName: "_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EEC4ERKSt10__weak_ptrIS1_LS3_2EESt9nothrow_t", scope: !81, file: !195, line: 1731, type: !2429, scopeLine: 1731, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2431 = !{!215, !2412, !217}
!2432 = !DISubroutineType(types: !2431)
!2433 = !DISubprogram(name: "_M_get_deleter", linkageName: "_ZNKSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info", scope: !81, file: !195, line: 1769, type: !2432, scopeLine: 1769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2434 = !{!2381, !2385, !2386, !2390, !2395, !2399, !2400, !2404, !2407, !2410, !2411, !2415, !2418, !2419, !2422, !2425, !2430, !2433}
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_M_pi", scope: !78, file: !195, line: 1135, baseType: !2435, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2438 = !{null, !2437}
!2439 = !DISubroutineType(types: !2438)
!2440 = !DISubprogram(name: "__shared_count", linkageName: "_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC4Ev", scope: !78, file: !195, line: 908, type: !2439, scopeLine: 908, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!2442 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2441, size: 64)
!2443 = !{null, !2437, !2442}
!2444 = !DISubroutineType(types: !2443)
!2445 = !DISubprogram(name: "__shared_count", linkageName: "_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC4ERKSt12__weak_countILS1_2EE", scope: !78, file: !195, line: 1062, type: !2444, scopeLine: 1062, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2446 = !{null, !2437, !2442, !74}
!2447 = !DISubroutineType(types: !2446)
!2448 = !DISubprogram(name: "__shared_count", linkageName: "_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC4ERKSt12__weak_countILS1_2EESt9nothrow_t", scope: !78, file: !195, line: 1066, type: !2447, scopeLine: 1066, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2449 = !DISubprogram(name: "~__shared_count", linkageName: "_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED4Ev", scope: !78, file: !195, line: 1068, type: !2439, scopeLine: 1068, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!2451 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2450, size: 64)
!2452 = !{null, !2437, !2451}
!2453 = !DISubroutineType(types: !2452)
!2454 = !DISubprogram(name: "__shared_count", linkageName: "_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC4ERKS2_", scope: !78, file: !195, line: 1074, type: !2453, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2455 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !78, size: 64)
!2456 = !{!2455, !2437, !2451}
!2457 = !DISubroutineType(types: !2456)
!2458 = !DISubprogram(name: "operator=", linkageName: "_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_", scope: !78, file: !195, line: 1082, type: !2457, scopeLine: 1082, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2459 = !{null, !2437, !2455}
!2460 = !DISubroutineType(types: !2459)
!2461 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_", scope: !78, file: !195, line: 1097, type: !2460, scopeLine: 1097, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2463 = !{!232, !2462}
!2464 = !DISubroutineType(types: !2463)
!2465 = !DISubprogram(name: "_M_get_use_count", linkageName: "_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv", scope: !78, file: !195, line: 1105, type: !2464, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2466 = !{!223, !2462}
!2467 = !DISubroutineType(types: !2466)
!2468 = !DISubprogram(name: "_M_unique", linkageName: "_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE9_M_uniqueEv", scope: !78, file: !195, line: 1109, type: !2467, scopeLine: 1109, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2469 = !{!215, !2462, !217}
!2470 = !DISubroutineType(types: !2469)
!2471 = !DISubprogram(name: "_M_get_deleter", linkageName: "_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info", scope: !78, file: !195, line: 1113, type: !2470, scopeLine: 1113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2472 = !{!223, !2462, !2451}
!2473 = !DISubroutineType(types: !2472)
!2474 = !DISubprogram(name: "_M_less", linkageName: "_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_", scope: !78, file: !195, line: 1117, type: !2473, scopeLine: 1117, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2475 = !{!223, !2462, !2442}
!2476 = !DISubroutineType(types: !2475)
!2477 = !DISubprogram(name: "_M_less", linkageName: "_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKSt12__weak_countILS1_2EE", scope: !78, file: !195, line: 1121, type: !2476, scopeLine: 1121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2478 = !{!2436, !2440, !2445, !2448, !2449, !2454, !2458, !2461, !2465, !2468, !2471, !2474, !2477}
!2479 = !DITemplateTypeParameter(name: "_Tp", type: !72)
!2480 = !{!2479}
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "element_type", scope: !80, file: !195, line: 1344, baseType: !72, flags: DIFlagPublic)
!2482 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2481, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2485 = !{!2482, !2484}
!2486 = !DISubroutineType(types: !2485)
!2487 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt19__shared_ptr_accessIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEdeEv", scope: !80, file: !195, line: 1347, type: !2486, scopeLine: 1347, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2489 = !{!2488, !2484}
!2490 = !DISubroutineType(types: !2489)
!2491 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt19__shared_ptr_accessIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv", scope: !80, file: !195, line: 1354, type: !2490, scopeLine: 1354, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2492 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt19__shared_ptr_accessIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv", scope: !80, file: !195, line: 1362, type: !2490, scopeLine: 1362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2493 = !{!2487, !2491, !2492}
!2494 = !DITemplateValueParameter(type: !223, defaulted: true, value: i1 false)
!2495 = !{!2479, !249, !2494, !2494}
!2496 = !{!2479, !258}
!2497 = !{!174, !112, i64 0}
!2498 = !{!127, !126, i64 8}
!2499 = !{!127, !126, i64 0}
!2500 = !{!127, !126, i64 16}
!2501 = !{!170, !169, i64 0}
!2502 = !{!170, !169, i64 16}
!2503 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!2504 = !{!150, !149, i64 0}
!2505 = !{!150, !149, i64 16}
!2506 = !{!116, !116, i64 0}
!2507 = !{!"_ZTSSi", !118, i64 8}
!2508 = !{!2507, !118, i64 8}
!2509 = !{!133, !103, i64 0}
!2510 = !{!133, !103, i64 16}
!2511 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE", !103, i64 0}
!2512 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE20_Reuse_or_alloc_nodeE", !116, i64 0, !116, i64 8, !2511, i64 16}
!2513 = !{!2512, !116, i64 0}
!2514 = !{!2512, !116, i64 8}
!2515 = !{!117, !116, i64 8}
!2516 = !{!117, !116, i64 16}
!2517 = !{!117, !116, i64 24}
!2518 = !{!2512, !2511, i64 16}
!2519 = !{!118, !118, i64 0}
!2520 = distinct !{!2520, !"_ZN8rawspeed8RawImage6createENS_12RawImageTypeE"}
!2521 = distinct !{!2521, !2520, !"_ZN8rawspeed8RawImage6createENS_12RawImageTypeE: argument 0"}
!2522 = distinct !{!2522, !"_ZSt11make_sharedIN8rawspeed15RawImageDataU16EJEESt10shared_ptrIT_EDpOT0_"}
!2523 = distinct !{!2523, !2522, !"_ZSt11make_sharedIN8rawspeed15RawImageDataU16EJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!2524 = distinct !{!2524, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!2525 = distinct !{!2525, !2524, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!2526 = !{!2521}
!2527 = !{!2525, !2523, !2521}
!2528 = !{!2523, !2521}
!2529 = !{!119, !115, i64 0}
!2530 = distinct !{!2530, !"_ZSt19__relocate_object_aIN8rawspeed10RawDecoder8RawSliceES2_SaIS2_EEvPT_PT0_RT1_"}
!2531 = distinct !{!2531, !2530, !"_ZSt19__relocate_object_aIN8rawspeed10RawDecoder8RawSliceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!2532 = distinct !{!2532, !2530, !"_ZSt19__relocate_object_aIN8rawspeed10RawDecoder8RawSliceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!2533 = distinct !{!2533, !193}
!2534 = distinct !{!2534, !193}
!2535 = distinct !{ptr @_ZN8rawspeed24UncompressedDecompressorD2Ev, ptr @_ZN8rawspeed8RawImageD2Ev, null, null, null}
!2536 = !{!"p1 _ZTSN8rawspeed7TiffIFDE", !103, i64 0}
!2537 = !{!"_ZTSN8rawspeed10EndiannessE", !94, i64 0}
!2538 = !{!"_ZTSN8rawspeed10DataBufferE", !124, i64 0, !2537, i64 12}
!2539 = !{!"_ZTSN8rawspeed10ByteStreamE", !2538, i64 0, !95, i64 16}
!2540 = !{!"_ZTSN8rawspeed7TiffTagE", !94, i64 0}
!2541 = !{!"_ZTSN8rawspeed12TiffDataTypeE", !94, i64 0}
!2542 = !{!"_ZTSN8rawspeed9TiffEntryE", !2536, i64 8, !2539, i64 16, !2540, i64 40, !2541, i64 42, !95, i64 44}
!2543 = !{!2542, !95, i64 44}
!2544 = !{!124, !95, i64 8}
!2545 = !{i64 0, i64 4, !114, i64 4, i64 4, !114, i64 8, i64 4, !114}
!2546 = !{!2532, !2531}
!2547 = !{!"_ZTSN8rawspeed10RawDecoder8RawSliceE", !95, i64 0, !95, i64 4, !95, i64 8}
!2548 = !{!2547, !95, i64 0}
!2549 = !{!2547, !95, i64 8}
!2550 = !{!2547, !95, i64 4}
!2551 = !{!124, !112, i64 0}
!2552 = !{!2539, !95, i64 16}
!2553 = !{!103, !103, i64 0}
!2554 = distinct !{null, null, null}
!2555 = !{!273, !261, i64 304}
!2556 = !{!279, !110, i64 31}
!2557 = !{!279, !110, i64 24}
!2558 = !{!273, !95, i64 376}
!2559 = distinct !{!2559, !193, !2589, !2590}
!2560 = distinct !{!2560, !193, !2589, !2590}
!2561 = distinct !{!2561, !2592}
!2562 = distinct !{!2562, !193}
!2563 = distinct !{!2563, !"_ZN8rawspeed11splitStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc"}
!2564 = distinct !{!2564, !2563, !"_ZN8rawspeed11splitStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc: argument 0"}
!2565 = distinct !{!2565, !193}
!2566 = distinct !{!2566, !"_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv"}
!2567 = distinct !{!2567, !2566, !"_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv: argument 0"}
!2568 = distinct !{!2568, !"_ZNK8rawspeed10Array1DRefIiE7getCropEii"}
!2569 = distinct !{!2569, !2568, !"_ZNK8rawspeed10Array1DRefIiE7getCropEii: argument 0"}
!2570 = !{!191, !95, i64 544}
!2571 = !{!169, !169, i64 0}
!2572 = !{!279, !110, i64 27}
!2573 = !{!273, !110, i64 456}
!2574 = !{!191, !95, i64 40}
!2575 = !{!273, !95, i64 316}
!2576 = !{!273, !95, i64 320}
!2577 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !154, i64 0, !154, i64 8, !154, i64 16}
!2578 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !2577, i64 0}
!2579 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !2578, i64 0}
!2580 = !{!"_ZTSSt6vectorIiSaIiEE", !2579, i64 0}
!2581 = !{!"_ZTSN8rawspeed16CameraSensorInfoE", !95, i64 0, !95, i64 4, !95, i64 8, !95, i64 12, !2580, i64 16}
!2582 = !{!2581, !95, i64 0}
!2583 = !{!191, !95, i64 96}
!2584 = !{!149, !149, i64 0}
!2585 = !{!154, !154, i64 0}
!2586 = !{!191, !110, i64 56}
!2587 = !{!139, !110, i64 32}
!2588 = !{!2577, !154, i64 0}
!2589 = !{!"llvm.loop.isvectorized", i32 1}
!2590 = !{!"llvm.loop.unroll.runtime.disable"}
!2591 = !{!"branch_weights", i32 4, i32 28}
!2592 = !{!"llvm.loop.unroll.disable"}
!2593 = !{!191, !95, i64 592}
!2594 = !{!2564}
!2595 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !118, i64 0, !112, i64 8}
!2596 = !{!2595, !118, i64 0}
!2597 = !{!"_ZTSN8rawspeed10Array1DRefIiEE", !154, i64 0, !95, i64 8}
!2598 = !{!"_ZTSN8rawspeed10Array2DRefIiEE", !2597, i64 0, !95, i64 16, !95, i64 20, !95, i64 24}
!2599 = !{!2598, !95, i64 20}
!2600 = !{!2567}
!2601 = !{!2598, !95, i64 24}
!2602 = !{!2598, !95, i64 16}
!2603 = !{!2569, !2567}
!2604 = !{!170, !169, i64 8}
!2605 = distinct !{!2605, !193}
!2606 = !{!150, !149, i64 8}
!2607 = !{i64 0, i64 4, !114, i64 4, i64 4, !114, i64 8, i64 1, !111}
!2608 = distinct !{!2608, !"_ZN8rawspeed12RawImageData32getByteDataAsUncroppedArray2DRefEv"}
!2609 = distinct !{!2609, !2608, !"_ZN8rawspeed12RawImageData32getByteDataAsUncroppedArray2DRefEv: argument 0"}
!2610 = distinct !{!2610, !"_ZN8rawspeed12RawImageData32getByteDataAsUncroppedArray2DRefEv"}
!2611 = distinct !{!2611, !2610, !"_ZN8rawspeed12RawImageData32getByteDataAsUncroppedArray2DRefEv: argument 0"}
!2612 = !{!191, !95, i64 612}
!2613 = !{!2609}
!2614 = !{!191, !163, i64 248}
!2615 = !{!279, !110, i64 25}
!2616 = !{!2611}
!2617 = !{!163, !163, i64 0}
!2618 = !{!"_ZTSSt9type_info", !112, i64 8}
!2619 = !{!2618, !112, i64 8}
!2620 = distinct !{null}
!2621 = !{!184, !184, i64 0}
!2622 = !{!"p1 short", !103, i64 0}
!2623 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !2622, i64 0, !2622, i64 8, !2622, i64 16}
!2624 = !{!2623, !2622, i64 0}
!2625 = !{!2623, !2622, i64 16}
!2626 = !{!180, !112, i64 0}
!2627 = !{!180, !112, i64 16}
!2628 = !{!159, !112, i64 0}
!2629 = !{!159, !112, i64 16}
!2630 = !{!155, !154, i64 0}
!2631 = !{!155, !154, i64 16}
!2632 = distinct !{!2632, !193}
!2633 = distinct !{!2633, !193}
!2634 = !{!2511, !2511, i64 0}
!2635 = !{i64 8}
!2636 = distinct !{!2636, !193}
!2637 = !{!117, !115, i64 0}
!2638 = distinct !{!2638, !193}
!2639 = distinct !{!2639, !193}
!2640 = !{!133, !103, i64 8}
!2641 = !{!"_ZTSN8rawspeed8CFAColorE", !94, i64 0}
!2642 = !{!2641, !2641, i64 0}
!2643 = !{!126, !126, i64 0}
!2644 = distinct !{!2644, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!2645 = distinct !{!2645, !2644, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!2646 = distinct !{!2646, !2644, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!2647 = distinct !{!2647, !193}
!2648 = distinct !{!2648, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!2649 = distinct !{!2649, !2648, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!2650 = distinct !{!2650, !2648, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!2651 = !{!2645}
!2652 = !{!2646}
!2653 = !{!2645, !2646}
!2654 = !{!2649}
!2655 = !{!2650}
!2656 = !{!2649, !2650}
end_hunk_1
