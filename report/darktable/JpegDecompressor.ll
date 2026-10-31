Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/JpegDecompressor?download=true
inline.NumInlined: 144
inline.NumDeleted: 91
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

@.str = private unnamed_addr constant [41 x i8] c"%s, line 140: Unable to read JPEG header\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed16JpegDecompressor6decodeEjj = private unnamed_addr constant [60 x i8] c"void rawspeed::JpegDecompressor::decode(uint32_t, uint32_t)\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"%s, line 144: Component count doesn't match\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"%s, line 157: JPEG Error while decompressing image.\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%s, line 105: JPEG decoder error: %s\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed12_GLOBAL__N_114my_error_throwEP18jpeg_common_struct = private unnamed_addr constant [67 x i8] c"void rawspeed::(anonymous namespace)::my_error_throw(j_common_ptr)\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.60" zeroinitializer, comdat, align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed16JpegDecompressor6decodeEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.rawspeed::JpegDecompressor::JpegDecompressStruct", align 8 ; 17 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @jpeg_CreateDecompress(ptr noundef nonnull align 8 dereferenceable(824) %3, i32 noundef 80, i64 noundef 656)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 656 ; 2 uses
  %i.c = call ptr @jpeg_std_error(ptr noundef nonnull %i.b)
  store ptr %i.c, ptr %3, align 8, !tbaa !53
  store ptr @_ZN8rawspeed12_GLOBAL__N_114my_error_throwEP18jpeg_common_struct, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %0, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  call void @llvm.assume(i1 %i.g)
  %i.h = zext nneg i32 %i.f to i64
  invoke void @jpeg_mem_src(ptr noundef nonnull %3, ptr noundef %i.d, i64 noundef %i.h)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.i = invoke i32 @jpeg_read_header(ptr noundef nonnull %3, i32 noundef 1)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.i, 1
  br i1 %.not, label %bb.d, label %.invoke

.invoke:                                          ; preds = %bb.e, %bb.c
  %i.j = phi ptr [ @.str, %bb.c ], [ @.str.1, %bb.e ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.j, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed16JpegDecompressor6decodeEjj) #14
          to label %.cont unwind label %.thread

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = invoke i32 @jpeg_start_decompress(ptr noundef nonnull %3)
          to label %bb.e unwind label %.thread    ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 148 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !59   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 592
  %i.q = load i32, ptr %i.p, align 8, !tbaa !131
  %.not24 = icmp eq i32 %i.m, %i.q
  br i1 %.not24, label %bb.f, label %.invoke

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !132
  %i.t = mul i32 %i.s, %i.m                       ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 140 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !133  ; 2 uses
  %i.w = mul i32 %i.v, %i.t                       ; 2 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %.not122 = icmp ne i32 %i.w, 0                  ; 3 uses
  br i1 %.not122, label %_ZNKSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE12_M_check_lenEmPKc.exit.i.i, label %_ZNSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE6resizeEm.exit

_ZNKSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.y = invoke noalias noundef nonnull align 16 ptr @_ZnwmSt11align_val_t(i64 noundef %i.x, i64 noundef 16) #20
          to label %_ZNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE13_M_deallocateEPhm.exit.i.i unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE13_M_deallocateEPhm.exit.i.i: ; preds = %_ZNKSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.y, i8 0, i64 %i.x, i1 false), !tbaa !134
  %.pre = load i32, ptr %i.l, align 4, !tbaa !59
  %.pre135 = load i32, ptr %i.r, align 8, !tbaa !132
  %.pre136 = load i32, ptr %i.u, align 4, !tbaa !133
  %.pre138 = mul i32 %.pre135, %.pre
  br label %_ZNSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE6resizeEm.exit

_ZNSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE6resizeEm.exit: ; preds = %_ZNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE13_M_deallocateEPhm.exit.i.i, %bb.f
  %.pre-phi = phi i32 [ %.pre138, %_ZNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE13_M_deallocateEPhm.exit.i.i ], [ %i.t, %bb.f ] ; 2 uses
  %i.z = phi i32 [ %.pre136, %_ZNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE13_M_deallocateEPhm.exit.i.i ], [ %i.v, %bb.f ] ; 5 uses
  %.sroa.093.1 = phi ptr [ %i.y, %_ZNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE13_M_deallocateEPhm.exit.i.i ], [ null, %bb.f ] ; 8 uses
  %i.aa = icmp sgt i32 %i.z, -1
  call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp ne i32 %i.t, 0
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp sge i32 %i.t, %.pre-phi
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp ne i32 %i.z, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !135 ; 2 uses
  %i.ag = icmp ult i32 %i.af, %i.z
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE6resizeEm.exit
  call void @llvm.assume(i1 %i.ad)
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.l
  %i.ah = phi i32 [ %i.af, %.lr.ph ], [ %i.aq, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ai = icmp samesign ult i32 %i.ah, %i.z
  call void @llvm.assume(i1 %i.ai)
  %i.aj = mul nuw nsw i32 %i.ah, %i.t
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.093.1, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8, !tbaa !136
  %i.am = invoke i32 @jpeg_read_scanlines(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i32 noundef 1)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed16JpegDecompressor6decodeEjj) #14
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  unreachable

.thread:                                          ; preds = %.invoke, %bb.a, %bb.b, %bb.d, %_ZNKSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE12_M_check_lenEmPKc.exit.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEED2Ev.exit45

bb.k:                                             ; preds = %._crit_edge
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.i
  %lpad.loopexit.split-lp170 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.o

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.aq = load i32, ptr %i.ae, align 8, !tbaa !135 ; 2 uses
  %i.ar = load i32, ptr %i.u, align 4, !tbaa !133
  %i.as = icmp ult i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.g, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.l, %_ZNSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE6resizeEm.exit
  %i.at = invoke i32 @jpeg_finish_decompress(ptr noundef nonnull %3)
          to label %bb.m unwind label %bb.k       ; 0 uses

bb.m:                                             ; preds = %._crit_edge
  %i.au = load ptr, ptr %i.n, align 8, !tbaa !64  ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !138
  %i.ax = sub i32 %i.aw, %2
  %i.ay = load i32, ptr %i.u, align 4, !tbaa !139
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.ay, i32 %i.ax) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 568
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !140, !noalias !141 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 592
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !131, !noalias !141
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 608
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !142, !noalias !141
  %i.bf = mul nsw i32 %i.be, %i.bc                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 612
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !143, !noalias !141
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !144, !noalias !141
  %i.bk = ashr i32 %i.bj, 1                       ; 3 uses
  %i.bl = icmp ne i32 %i.bk, 0
  call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp sge i32 %i.bk, %i.bf
  call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.bn, label %.preheader.lr.ph, label %._crit_edge127.split

.preheader.lr.ph:                                 ; preds = %bb.m
  %i.bo = load i32, ptr %i.r, align 8, !tbaa !139
  %i.bp = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !145
  %i.br = sub i32 %i.bq, %1
  %.sroa.speculated61 = call i32 @llvm.umin.i32(i32 %i.bo, i32 %i.br)
  %i.bs = load i32, ptr %i.l, align 4, !tbaa !59  ; 2 uses
  %i.bt = mul nsw i32 %i.bs, %.sroa.speculated61  ; 4 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.preheader.preheader, label %._crit_edge127.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bv = mul i32 %i.bs, %1
  %i.bw = zext nneg i32 %.pre-phi to i64          ; 2 uses
  %i.bx = zext i32 %i.bv to i64                   ; 13 uses
  %i.by = zext nneg i32 %i.bf to i64              ; 9 uses
  %i.bz = zext nneg i32 %i.t to i64               ; 2 uses
  %i.ca = zext nneg i32 %i.z to i64
  %i.cb = sext i32 %2 to i64                      ; 3 uses
  %i.cc = zext nneg i32 %i.bh to i64
  %i.cd = zext nneg i32 %i.bk to i64              ; 3 uses
  %wide.trip.count133 = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bt to i64   ; 10 uses
  %4 = add nsw i64 %wide.trip.count133, -1
  %5 = mul nsw i64 %4, %i.bz
  %6 = getelementptr i8, ptr %.sroa.093.1, i64 %5
  %scevgep = getelementptr i8, ptr %6, i64 %wide.trip.count
  %i.ce = add nsw i64 %wide.trip.count133, %i.cb
  %i.cf = shl nsw i64 %i.ce, 1
  %i.cg = add nsw i64 %i.cf, -2
  %i.ch = mul i64 %i.cg, %i.cd
  %7 = shl nuw nsw i64 %i.bx, 1
  %i.ci = shl nuw nsw i64 %wide.trip.count, 1
  %i.cj = getelementptr i8, ptr %i.ba, i64 %i.ch
  %scevgep147 = getelementptr i8, ptr %i.cj, i64 %7
  %scevgep149 = getelementptr i8, ptr %scevgep147, i64 %i.ci
  %i.ck = mul nsw i64 %i.cb, %i.cd
  %8 = add i64 %i.ck, %i.bx
  %9 = shl i64 %8, 1
  %scevgep148 = getelementptr i8, ptr %i.ba, i64 %9
  %min.iters.check = icmp ult i32 %i.bt, 8
  %bound0 = icmp ult ptr %scevgep148, %scevgep
  %bound1 = icmp ult ptr %.sroa.093.1, %scevgep149
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check149 = icmp ult i32 %i.bt, 32
  %i.cl = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.cl, 0
  %n.vec155 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n169 = icmp eq i64 %n.vec155, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge125
  %indvars.iv130 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next131, %._crit_edge125 ] ; 4 uses
  %i.cm = icmp samesign ult i64 %indvars.iv130, %i.ca
  call void @llvm.assume(i1 %i.cm)
  %i.cn = mul nuw nsw i64 %indvars.iv130, %i.bz
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.093.1, i64 %i.cn ; 11 uses
  %i.cp = add nuw nsw i64 %indvars.iv130, %i.cb   ; 2 uses
  %i.cq = icmp samesign ult i64 %i.cp, %i.cc
  call void @llvm.assume(i1 %i.cq)
  %i.cr = mul nuw nsw i64 %i.cp, %i.cd
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.cr ; 11 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check149, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %invariant.gep = getelementptr [2 x i8], ptr %i.cs, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ct = phi i64 [ 0, %vector.ph ], [ %i.cz, %vector.body ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load = load <16 x i8>, ptr %i.cu, align 1, !tbaa !134, !alias.scope !146
  %wide.load154 = load <16 x i8>, ptr %i.cv, align 1, !tbaa !134, !alias.scope !146
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ct ; 2 uses
  %i.cw = zext <16 x i8> %wide.load to <16 x i16>
  %i.cx = zext <16 x i8> %wide.load154 to <16 x i16>
  %i.cy = getelementptr inbounds nuw i8, ptr %gep, i64 32
  store <16 x i16> %i.cw, ptr %gep, align 2, !tbaa !147, !alias.scope !148, !noalias !146
  store <16 x i16> %i.cx, ptr %i.cy, align 2, !tbaa !147, !alias.scope !148, !noalias !146
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cz = add nuw i64 %i.ct, 32
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge125, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !151

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %invariant.gep171 = getelementptr inbounds [2 x i8], ptr %i.cs, i64 %i.bx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index164 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next167, %vec.epilog.vector.body ] ; 2 uses
  %i.db = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %i.de, %vec.epilog.vector.body ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 %index164
  %wide.load166 = load <8 x i8>, ptr %i.dc, align 1, !tbaa !134, !alias.scope !146
  %gep172 = getelementptr inbounds [2 x i8], ptr %invariant.gep171, i64 %i.db
  %i.dd = zext <8 x i8> %wide.load166 to <8 x i16>
  store <8 x i16> %i.dd, ptr %gep172, align 2, !tbaa !147, !alias.scope !148, !noalias !146
  %index.next167 = add nuw i64 %index164, 8       ; 2 uses
  %i.de = add nuw nsw i64 %i.db, 8
  %i.df = icmp eq i64 %index.next167, %n.vec155
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n169, label %._crit_edge125, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec155, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dg = icmp samesign ult i64 %indvars.iv.prol, %i.bw
  call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.prol
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !134
  %i.dj = add nuw nsw i64 %indvars.iv.prol, %i.bx ; 2 uses
  %i.dk = icmp samesign ult i64 %i.dj, %i.by
  call void @llvm.assume(i1 %i.dk)
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.dj
  %i.dm = zext i8 %i.di to i16
  store i16 %i.dm, ptr %i.dl, align 2, !tbaa !147
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !29

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.dn = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.do = icmp ugt i64 %i.dn, -8
  br i1 %i.do, label %._crit_edge125, label %vec.epilog.scalar.ph

._crit_edge127.split:                             ; preds = %.preheader.lr.ph, %bb.m
  %.not.i.i.i = icmp eq ptr %.sroa.093.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEED2Ev.exit, label %._crit_edge127.split.thread

._crit_edge127.split.thread:                      ; preds = %._crit_edge125, %._crit_edge127.split
  call void @llvm.assume(i1 %.not122)
  call void @_ZdlPvSt11align_val_t(ptr noundef nonnull %.sroa.093.1, i64 noundef 16) #19
  br label %_ZNSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEED2Ev.exit

_ZNSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEED2Ev.exit: ; preds = %._crit_edge127.split, %._crit_edge127.split.thread
  invoke void @jpeg_destroy_decompress(ptr noundef nonnull align 8 dereferenceable(824) %3)
          to label %_ZN8rawspeed16JpegDecompressor20JpegDecompressStructD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEED2Ev.exit
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #21
  unreachable

_ZN8rawspeed16JpegDecompressor20JpegDecompressStructD2Ev.exit: ; preds = %_ZNSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

._crit_edge125:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge127.split.thread, label %iter.check, !llvm.loop !30

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !134
  %i.dt = add nuw nsw i64 %indvars.iv, %i.bx      ; 2 uses
  %i.du = icmp samesign ult i64 %i.dt, %i.by
  call void @llvm.assume(i1 %i.du)
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.dt
  %i.dw = zext i8 %i.ds to i16
  store i16 %i.dw, ptr %i.dv, align 2, !tbaa !147
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.next
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !134
  %i.dz = add nuw nsw i64 %indvars.iv.next, %i.bx ; 2 uses
  %i.ea = icmp samesign ult i64 %i.dz, %i.by
  call void @llvm.assume(i1 %i.ea)
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.dz
  %i.ec = zext i8 %i.dy to i16
  store i16 %i.ec, ptr %i.eb, align 2, !tbaa !147
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.next.1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !134
  %i.ef = add nuw nsw i64 %indvars.iv.next.1, %i.bx ; 2 uses
  %i.eg = icmp samesign ult i64 %i.ef, %i.by
  call void @llvm.assume(i1 %i.eg)
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.ef
  %i.ei = zext i8 %i.ee to i16
  store i16 %i.ei, ptr %i.eh, align 2, !tbaa !147
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.next.2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !134
  %i.el = add nuw nsw i64 %indvars.iv.next.2, %i.bx ; 2 uses
  %i.em = icmp samesign ult i64 %i.el, %i.by
  call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.el
  %i.eo = zext i8 %i.ek to i16
  store i16 %i.eo, ptr %i.en, align 2, !tbaa !147
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.next.3
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !134
  %i.er = add nuw nsw i64 %indvars.iv.next.3, %i.bx ; 2 uses
  %i.es = icmp samesign ult i64 %i.er, %i.by
  call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.er
  %i.eu = zext i8 %i.eq to i16
  store i16 %i.eu, ptr %i.et, align 2, !tbaa !147
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.next.4
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !134
  %i.ex = add nuw nsw i64 %indvars.iv.next.4, %i.bx ; 2 uses
  %i.ey = icmp samesign ult i64 %i.ex, %i.by
  call void @llvm.assume(i1 %i.ey)
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.ex
  %i.fa = zext i8 %i.ew to i16
  store i16 %i.fa, ptr %i.ez, align 2, !tbaa !147
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.next.5
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !134
  %i.fd = add nuw nsw i64 %indvars.iv.next.5, %i.bx ; 2 uses
  %i.fe = icmp samesign ult i64 %i.fd, %i.by
  call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.fd
  %i.fg = zext i8 %i.fc to i16
  store i16 %i.fg, ptr %i.ff, align 2, !tbaa !147
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 3 uses
end_hunk_0
