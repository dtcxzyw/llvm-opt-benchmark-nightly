Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/imagefilters?download=true
inline.NumInlined: 370
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.(anonymous namespace)::LUT8" = type { %"struct.std::array" }
%"struct.std::array" = type { [256 x float] }
%"class.video::SColor" = type { i32 }
%class.Bitmap = type { i32, i32, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh = comdat any

$_ZNSt6vectorIhSaIhEEaSERKS1_ = comdat any

@_ZN12_GLOBAL__N_118srgb_to_linear_lutE = internal unnamed_addr global %"struct.(anonymous namespace)::LUT8" zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_imagefilters.cpp, ptr null }]

; Function Attrs: mustprogress uwtable
define dso_local void @_Z21imageCleanTransparentPN5video6IImageEj(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.video::SColor", align 4     ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.Bitmap, align 8              ; 16 uses
  %4 = alloca %class.Bitmap, align 8              ; 11 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %class.Bitmap, align 8              ; 16 uses
  %6 = alloca %class.Bitmap, align 8              ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr i8, ptr %0, i64 12         ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.ay

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.f, align 4             ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24
  %.val4 = load ptr, ptr %i.g, align 8, !tbaa !16 ; 3 uses
  %.sroa.020.0.extract.trunc.i = trunc i64 %.val to i32 ; 9 uses
  %.sroa.11.0.extract.shift.i = lshr i64 %.val, 32 ; 3 uses
  %.sroa.11.0.extract.trunc.i = trunc nuw i64 %.sroa.11.0.extract.shift.i to i32 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store i64 %.val, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.j = icmp ne i32 %.sroa.020.0.extract.trunc.i, 0
  %i.k = icmp ne i64 %.sroa.11.0.extract.shift.i, 0
  %or.cond.i.i.i = and i1 %i.j, %i.k
  br i1 %or.cond.i.i.i, label %bb.c, label %._crit_edge55.split.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.l = mul i32 %.sroa.11.0.extract.trunc.i, %.sroa.020.0.extract.trunc.i
  %i.m = lshr i32 %i.l, 3
  %i.n = add nuw nsw i32 %i.m, 1
  %i.o = zext nneg i32 %i.n to i64
  invoke void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr null, i64 noundef %i.o, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %.preheader52.preheader.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !19   ; 3 uses
  %.not.i.i.i4.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i4.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #10
  br label %common.resume

common.resume:                                    ; preds = %bb.ba, %bb.bb, %_ZN6BitmapD2Ev.exit130.i, %bb.d, %bb.e, %_ZN6BitmapD2Ev.exit129.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.d ], [ %.pn.pn.pn.i, %_ZN6BitmapD2Ev.exit129.i ], [ %i.p, %bb.e ], [ %.pn90.pn.i, %_ZN6BitmapD2Ev.exit130.i ], [ %i.ia, %bb.bb ], [ %i.ia, %bb.ba ]
  resume { ptr, i32 } %common.resume.op

.preheader52.preheader.i:                         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %wide.trip.count.i = and i64 %.val, 4294967295
  br label %.preheader52.i

.preheader52.i:                                   ; preds = %._crit_edge.i, %.preheader52.preheader.i
  %.08554.i = phi i32 [ %i.ay, %._crit_edge.i ], [ 0, %.preheader52.preheader.i ] ; 3 uses
  %i.w = mul i32 %.08554.i, %.sroa.020.0.extract.trunc.i
  br label %bb.s

._crit_edge55.split.i.loopexit:                   ; preds = %._crit_edge.i
  %.pre62 = load i32, ptr %5, align 8, !tbaa !51
  br label %._crit_edge55.split.i

._crit_edge55.split.i:                            ; preds = %._crit_edge55.split.i.loopexit, %bb.b
  %i.x = phi i32 [ %.pre62, %._crit_edge55.split.i.loopexit ], [ %.sroa.020.0.extract.trunc.i, %bb.b ] ; 2 uses
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZNK6Bitmap3allEv.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge55.split.i
  %i.y = load i32, ptr %i.i, align 4, !tbaa !52   ; 2 uses
  %.not16.i.i = icmp eq i32 %i.y, 0
  br i1 %.not16.i.i, label %_ZNK6Bitmap3allEv.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 3 uses
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !19  ; 4 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ae = xor i64 %i.ad, -1
  %i.af = add i64 %i.ae, %i.ac                    ; 2 uses
  %.not31.i.i = icmp eq i64 %i.af, 0
  br i1 %.not31.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ag = add i32 %.01123.i.i, 1                  ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = icmp ugt i64 %i.af, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !30

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.g
  %i.aj = phi i64 [ %i.ah, %bb.g ], [ 0, %.preheader.i.i ]
  %.01123.i.i = phi i32 [ %i.ag, %bb.g ], [ 0, %.preheader.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  %.not17.i.i = icmp eq i8 %i.al, -1
  br i1 %.not17.i.i, label %bb.g, label %_ZNK6Bitmap3allEv.exit.i

._crit_edge.i.i:                                  ; preds = %bb.g, %.preheader.i.i
  %i.am = mul i32 %i.y, %i.x
  %i.an = and i32 %i.am, 7                        ; 7 uses
  %.not19.not24.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not19.not24.not.i.i, label %_ZNK6Bitmap3allEv.exit.thread.i, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %._crit_edge.i.i
  %i.ao = getelementptr inbounds i8, ptr %i.aa, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aq = zext i8 %i.ap to i32                    ; 7 uses
  %i.ar = and i32 %i.aq, 1
  %.not18.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not18.not.i.i, label %_ZNK6Bitmap3allEv.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph27.i.i
  %exitcond.not.i.i = icmp eq i32 %i.an, 1
  br i1 %exitcond.not.i.i, label %_ZNK6Bitmap3allEv.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = and i32 %i.aq, 2
  %.not18.not.i.i.1 = icmp eq i32 %i.as, 0
  br i1 %.not18.not.i.i.1, label %_ZNK6Bitmap3allEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %exitcond.not.i.i.1 = icmp eq i32 %i.an, 2
  br i1 %exitcond.not.i.i.1, label %_ZNK6Bitmap3allEv.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = and i32 %i.aq, 4
  %.not18.not.i.i.2 = icmp eq i32 %i.at, 0
  br i1 %.not18.not.i.i.2, label %_ZNK6Bitmap3allEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond.not.i.i.2 = icmp eq i32 %i.an, 3
  br i1 %exitcond.not.i.i.2, label %_ZNK6Bitmap3allEv.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = and i32 %i.aq, 8
  %.not18.not.i.i.3 = icmp eq i32 %i.au, 0
  br i1 %.not18.not.i.i.3, label %_ZNK6Bitmap3allEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %exitcond.not.i.i.3 = icmp eq i32 %i.an, 4
  br i1 %exitcond.not.i.i.3, label %_ZNK6Bitmap3allEv.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = and i32 %i.aq, 16
  %.not18.not.i.i.4 = icmp eq i32 %i.av, 0
  br i1 %.not18.not.i.i.4, label %_ZNK6Bitmap3allEv.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %exitcond.not.i.i.4 = icmp eq i32 %i.an, 5
  br i1 %exitcond.not.i.i.4, label %_ZNK6Bitmap3allEv.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = and i32 %i.aq, 32
  %.not18.not.i.i.5 = icmp eq i32 %i.aw, 0
  br i1 %.not18.not.i.i.5, label %_ZNK6Bitmap3allEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %exitcond.not.i.i.5 = icmp ne i32 %i.an, 6
  %i.ax = and i32 %i.aq, 64
  %.not18.not.i.i.6 = icmp eq i32 %i.ax, 0
  %or.cond = and i1 %exitcond.not.i.i.5, %.not18.not.i.i.6
  br i1 %or.cond, label %_ZNK6Bitmap3allEv.exit.i, label %_ZNK6Bitmap3allEv.exit.thread.i

._crit_edge.i:                                    ; preds = %bb.u
  %i.ay = add nuw i32 %.08554.i, 1                ; 2 uses
  %exitcond95.not.i = icmp eq i32 %i.ay, %.sroa.11.0.extract.trunc.i
  br i1 %exitcond95.not.i, label %._crit_edge55.split.i.loopexit, label %.preheader52.i, !llvm.loop !31

bb.s:                                             ; preds = %bb.u, %.preheader52.i
  %indvars.iv.i = phi i64 [ 0, %.preheader52.i ], [ %indvars.iv.next.i, %bb.u ] ; 2 uses
  %i.az = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.ba = add i32 %i.w, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.val4, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !23
  %i.be = lshr i32 %i.bd, 24
  %i.bf = icmp ugt i32 %i.be, %1
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bg = load i32, ptr %5, align 8, !tbaa !51
  %i.bh = mul i32 %i.bg, %.08554.i
  %i.bi = add i32 %i.bh, %i.az                    ; 2 uses
  %i.bj = and i32 %i.bi, 7
  %i.bk = shl nuw nsw i32 1, %i.bj
  %i.bl = lshr i32 %i.bi, 3
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = trunc nuw i32 %i.bk to i8
  %i.br = or i8 %i.bp, %i.bq
  store i8 %i.br, ptr %i.bo, align 1, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.s, !llvm.loop !32

_ZNK6Bitmap3allEv.exit.i:                         ; preds = %bb.r, %.lr.ph.i.i, %.lr.ph27.i.i, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.bs = load i64, ptr %5, align 8
  store i64 %i.bs, ptr %6, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.bu = sub i64 %i.ac, %i.ad                    ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %.noexc100.i, label %bb.v

bb.v:                                             ; preds = %_ZNK6Bitmap3allEv.exit.i
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !24

.noexc.i.i.i.i:                                   ; preds = %bb.v
  invoke void @_ZSt17__throw_bad_allocv() #11
          to label %.noexc.i unwind label %bb.aa

.noexc.i:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #12
          to label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc100_crit_edge.i unwind label %bb.aa

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc100_crit_edge.i: ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !53 ; 2 uses
  %.pre106.i = load ptr, ptr %i.z, align 8, !tbaa !53
  %.pre113.i = ptrtoint ptr %.pre106.i to i64
  %.pre114.i = ptrtoint ptr %.pre.i to i64
  br label %.noexc100.i

.noexc100.i:                                      ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc100_crit_edge.i, %_ZNK6Bitmap3allEv.exit.i
  %.pre-phi115.i = phi i64 [ %.pre114.i, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc100_crit_edge.i ], [ %i.ad, %_ZNK6Bitmap3allEv.exit.i ]
  %.pre-phi.i = phi i64 [ %.pre113.i, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc100_crit_edge.i ], [ %i.ac, %_ZNK6Bitmap3allEv.exit.i ]
  %i.bx = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc100_crit_edge.i ], [ %i.ab, %_ZNK6Bitmap3allEv.exit.i ] ; 2 uses
  %i.by = phi ptr [ %i.bw, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc100_crit_edge.i ], [ null, %_ZNK6Bitmap3allEv.exit.i ] ; 5 uses
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !20
  %i.cc = sub i64 %.pre-phi.i, %.pre-phi115.i     ; 4 uses
  %i.cd = icmp sgt i64 %i.cc, 1
  br i1 %i.cd, label %bb.w, label %bb.x, !prof !25

bb.w:                                             ; preds = %.noexc100.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.bx, i64 %i.cc, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %.noexc100.i
  %i.ce = icmp eq i64 %i.cc, 1
  br i1 %i.ce, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cf = load i8, ptr %i.bx, align 1, !tbaa !17
  store i8 %i.cf, ptr %i.by, align 1, !tbaa !17
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.cg = getelementptr inbounds i8, ptr %i.by, i64 %i.cc
  store ptr %i.cg, ptr %i.bz, align 8, !tbaa !21
  %.sroa.speculated31.i = call i32 @llvm.umax.i32(i32 %.sroa.020.0.extract.trunc.i, i32 %.sroa.11.0.extract.trunc.i)
  %i.ch = lshr i32 %.sroa.speculated31.i, 4
  %i.ci = sub nsw i32 11, %i.ch
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.ci, i32 2)
  %.not88.i = icmp eq i64 %.sroa.11.0.extract.shift.i, 0
  %.not89.i = icmp eq i32 %.sroa.020.0.extract.trunc.i, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ck = and i64 %.val, 4294967295               ; 2 uses
  %brmerge.i = or i1 %.not88.i, %.not89.i
  br label %.preheader49.i

.preheader49.i:                                   ; preds = %_ZN6BitmapaSERKS_.exit.i, %bb.z
  %.07485.i = phi i32 [ 0, %bb.z ], [ %i.gu, %_ZN6BitmapaSERKS_.exit.i ]
  br i1 %brmerge.i, label %._crit_edge84.split.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader49.i
  %.pre108.pre.i = load i32, ptr %5, align 8, !tbaa !51
  br label %.preheader.i

bb.aa:                                            ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6BitmapD2Ev.exit123.i

.preheader.i:                                     ; preds = %._crit_edge82.i, %.preheader.preheader.i
  %.pre108.i = phi i32 [ %.pre108110.i, %._crit_edge82.i ], [ %.pre108.pre.i, %.preheader.preheader.i ] ; 2 uses
  %.07383.i = phi i32 [ %i.do, %._crit_edge82.i ], [ 0, %.preheader.preheader.i ] ; 6 uses
  %i.cm = call i32 @llvm.usub.sat.i32(i32 %.07383.i, i32 1)
  %i.cn = mul i32 %.07383.i, %.sroa.020.0.extract.trunc.i
  br label %bb.ao

._crit_edge84.split.i:                            ; preds = %._crit_edge82.i, %.preheader49.i
  %i.co = load i32, ptr %6, align 8, !tbaa !51    ; 2 uses
  %.not.i102.i = icmp eq i32 %i.co, 0
  br i1 %.not.i102.i, label %_ZNK6Bitmap3allEv.exit118.thread.loopexit92.i, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge84.split.i
  %i.cp = load i32, ptr %i.cj, align 4, !tbaa !52 ; 2 uses
  %.not16.i103.i = icmp eq i32 %i.cp, 0
  br i1 %.not16.i103.i, label %_ZNK6Bitmap3allEv.exit118.thread.loopexit92.i, label %.preheader.i104.i

.preheader.i104.i:                                ; preds = %bb.ab
  %i.cq = load ptr, ptr %i.bz, align 8, !tbaa !21 ; 2 uses
  %i.cr = load ptr, ptr %i.bt, align 8, !tbaa !19 ; 8 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = xor i64 %i.ct, -1
  %i.cv = add i64 %i.cu, %i.cs                    ; 2 uses
  %.not31.i105.i = icmp eq i64 %i.cv, 0
  br i1 %.not31.i105.i, label %._crit_edge.i110.i, label %.lr.ph.i106.i

bb.ac:                                            ; preds = %.lr.ph.i106.i
  %i.cw = add i32 %.01123.i107.i, 1               ; 2 uses
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = icmp ugt i64 %i.cv, %i.cx
  br i1 %i.cy, label %.lr.ph.i106.i, label %._crit_edge.i110.i, !llvm.loop !30

.lr.ph.i106.i:                                    ; preds = %.preheader.i104.i, %bb.ac
  %i.cz = phi i64 [ %i.cx, %bb.ac ], [ 0, %.preheader.i104.i ]
  %.01123.i107.i = phi i32 [ %i.cw, %bb.ac ], [ 0, %.preheader.i104.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !17
  %.not17.i108.i = icmp eq i8 %i.db, -1
  br i1 %.not17.i108.i, label %bb.ac, label %_ZNK6Bitmap3allEv.exit118.i

._crit_edge.i110.i:                               ; preds = %bb.ac, %.preheader.i104.i
  %i.dc = mul i32 %i.cp, %i.co
  %i.dd = and i32 %i.dc, 7                        ; 7 uses
  %.not19.not24.not.i111.i = icmp eq i32 %i.dd, 0
  br i1 %.not19.not24.not.i111.i, label %_ZNK6Bitmap3allEv.exit118.thread.loopexit92.i, label %.lr.ph27.i112.i

.lr.ph27.i112.i:                                  ; preds = %._crit_edge.i110.i
  %i.de = getelementptr inbounds i8, ptr %i.cq, i64 -1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !17
  %i.dg = zext i8 %i.df to i32                    ; 7 uses
  %i.dh = and i32 %i.dg, 1
  %.not18.not.i115.i = icmp eq i32 %i.dh, 0
  br i1 %.not18.not.i115.i, label %_ZNK6Bitmap3allEv.exit118.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph27.i112.i
  %exitcond.not.i117.i = icmp eq i32 %i.dd, 1
  br i1 %exitcond.not.i117.i, label %_ZNK6Bitmap3allEv.exit118.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.di = and i32 %i.dg, 2
  %.not18.not.i115.i.1 = icmp eq i32 %i.di, 0
  br i1 %.not18.not.i115.i.1, label %_ZNK6Bitmap3allEv.exit118.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %exitcond.not.i117.i.1 = icmp eq i32 %i.dd, 2
  br i1 %exitcond.not.i117.i.1, label %_ZNK6Bitmap3allEv.exit118.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = and i32 %i.dg, 4
  %.not18.not.i115.i.2 = icmp eq i32 %i.dj, 0
  br i1 %.not18.not.i115.i.2, label %_ZNK6Bitmap3allEv.exit118.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %exitcond.not.i117.i.2 = icmp eq i32 %i.dd, 3
  br i1 %exitcond.not.i117.i.2, label %_ZNK6Bitmap3allEv.exit118.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dk = and i32 %i.dg, 8
  %.not18.not.i115.i.3 = icmp eq i32 %i.dk, 0
  br i1 %.not18.not.i115.i.3, label %_ZNK6Bitmap3allEv.exit118.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %exitcond.not.i117.i.3 = icmp eq i32 %i.dd, 4
  br i1 %exitcond.not.i117.i.3, label %_ZNK6Bitmap3allEv.exit118.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dl = and i32 %i.dg, 16
  %.not18.not.i115.i.4 = icmp eq i32 %i.dl, 0
  br i1 %.not18.not.i115.i.4, label %_ZNK6Bitmap3allEv.exit118.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %exitcond.not.i117.i.4 = icmp eq i32 %i.dd, 5
  br i1 %exitcond.not.i117.i.4, label %_ZNK6Bitmap3allEv.exit118.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dm = and i32 %i.dg, 32
  %.not18.not.i115.i.5 = icmp eq i32 %i.dm, 0
  br i1 %.not18.not.i115.i.5, label %_ZNK6Bitmap3allEv.exit118.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %exitcond.not.i117.i.5 = icmp ne i32 %i.dd, 6
  %i.dn = and i32 %i.dg, 64
  %.not18.not.i115.i.6 = icmp eq i32 %i.dn, 0
  %or.cond146 = and i1 %exitcond.not.i117.i.5, %.not18.not.i115.i.6
  br i1 %or.cond146, label %_ZNK6Bitmap3allEv.exit118.i, label %_ZNK6Bitmap3allEv.exit118.thread.i

._crit_edge82.i:                                  ; preds = %._crit_edge73.thread.i
  %i.do = add nuw i32 %.07383.i, 1                ; 2 uses
  %exitcond104.not.i = icmp eq i32 %i.do, %.sroa.11.0.extract.trunc.i
  br i1 %exitcond104.not.i, label %._crit_edge84.split.i, label %.preheader.i, !llvm.loop !33

bb.ao:                                            ; preds = %._crit_edge73.thread.i, %.preheader.i
  %.pre108111.i = phi i32 [ %.pre108.i, %.preheader.i ], [ %.pre108110.i, %._crit_edge73.thread.i ] ; 2 uses
  %i.dp = phi i32 [ %.pre108.i, %.preheader.i ], [ %i.gp, %._crit_edge73.thread.i ] ; 4 uses
  %indvars.iv99.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next100.i, %._crit_edge73.thread.i ] ; 5 uses
  %i.dq = trunc nuw i64 %indvars.iv99.i to i32    ; 4 uses
  %i.dr = icmp ne i64 %indvars.iv99.i, 0
  %umin.neg.i = sext i1 %i.dr to i64
  %i.ds = add i64 %indvars.iv99.i, %umin.neg.i
  %i.dt = and i64 %i.ds, 4294967295
  %i.du = mul i32 %i.dp, %.07383.i
  %i.dv = add i32 %i.du, %i.dq                    ; 2 uses
  %i.dw = lshr i32 %i.dv, 3
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = load ptr, ptr %i.h, align 8, !tbaa !19  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dx
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !17
  %i.eb = zext i8 %i.ea to i32
  %i.ec = and i32 %i.dv, 7
  %i.ed = shl nuw nsw i32 1, %i.ec
  %i.ee = and i32 %i.ed, %i.eb
  %.not46.i = icmp eq i32 %i.ee, 0
  %i.ef = call i32 @llvm.usub.sat.i32(i32 %i.dq, i32 1)
  %i.eg = icmp ult i32 %i.ef, %.sroa.020.0.extract.trunc.i
  %or.cond.i = and i1 %i.eg, %.not46.i
  br i1 %or.cond.i, label %.lr.ph.us.i.a, label %._crit_edge73.thread.i

.lr.ph.us.i.a:                                    ; preds = %bb.ao, %._crit_edge62.us.i.a
  %.06170.us.i = phi i32 [ %9, %._crit_edge62.us.i.a ], [ %i.cm, %bb.ao ] ; 4 uses
  %.06269.us.i = phi i32 [ %.2.us.i, %._crit_edge62.us.i.a ], [ 0, %bb.ao ]
  %.06368.us.i = phi i32 [ %.265.us.i, %._crit_edge62.us.i.a ], [ 0, %bb.ao ]
  %.06667.us.i = phi i32 [ %.268.us.i, %._crit_edge62.us.i.a ], [ 0, %bb.ao ]
  %.06966.us.i = phi i32 [ %.271.us.i, %._crit_edge62.us.i.a ], [ 0, %bb.ao ]
  %7 = mul i32 %.06170.us.i, %i.dp
  %8 = mul i32 %.06170.us.i, %.sroa.020.0.extract.trunc.i
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %.lr.ph.us.i.a
  %indvars.iv96.i.a = phi i64 [ %i.dt, %.lr.ph.us.i.a ], [ %indvars.iv.next97.i.a, %bb.ar ] ; 3 uses
  %.159.us.i.a = phi i32 [ %.06269.us.i, %.lr.ph.us.i.a ], [ %.2.us.i, %bb.ar ] ; 2 uses
  %.16458.us.i.a = phi i32 [ %.06368.us.i, %.lr.ph.us.i.a ], [ %.265.us.i, %bb.ar ] ; 2 uses
  %.16757.us.i.a = phi i32 [ %.06667.us.i, %.lr.ph.us.i.a ], [ %.268.us.i, %bb.ar ] ; 2 uses
  %.17056.us.i.a = phi i32 [ %.06966.us.i, %.lr.ph.us.i.a ], [ %.271.us.i, %bb.ar ] ; 2 uses
  %i.eh = trunc nuw i64 %indvars.iv96.i.a to i32  ; 2 uses
  %i.ei = add i32 %7, %i.eh                       ; 2 uses
  %i.ej = lshr i32 %i.ei, 3
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !17
  %i.en = zext i8 %i.em to i32
  %i.eo = and i32 %i.ei, 7
  %i.ep = shl nuw nsw i32 1, %i.eo
  %i.eq = and i32 %i.ep, %i.en
  %.not47.us.i.a = icmp eq i32 %i.eq, 0
  br i1 %.not47.us.i.a, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.er = add i32 %8, %i.eh
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.val4, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !23 ; 4 uses
  %i.ev = lshr i32 %i.eu, 24                      ; 2 uses
  %.not89.us.i.a = icmp ugt i32 %i.ev, %1
  %spec.select.us.i.a = select i1 %.not89.us.i.a, i32 %i.ev, i32 255 ; 4 uses
  %i.ew = add i32 %spec.select.us.i.a, %.17056.us.i.a
  %i.ex = lshr i32 %i.eu, 16
  %i.ey = and i32 %i.ex, 255
  %i.ez = mul nuw nsw i32 %spec.select.us.i.a, %i.ey
  %i.fa = add i32 %i.ez, %.16757.us.i.a
  %i.fb = lshr i32 %i.eu, 8
  %i.fc = and i32 %i.fb, 255
  %i.fd = mul nuw nsw i32 %spec.select.us.i.a, %i.fc
  %i.fe = add i32 %i.fd, %.16458.us.i.a
  %i.ff = and i32 %i.eu, 255
  %i.fg = mul nuw nsw i32 %spec.select.us.i.a, %i.ff
  %i.fh = add i32 %i.fg, %.159.us.i.a
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.271.us.i = phi i32 [ %i.ew, %bb.aq ], [ %.17056.us.i.a, %bb.ap ] ; 6 uses
  %.268.us.i = phi i32 [ %i.fa, %bb.aq ], [ %.16757.us.i.a, %bb.ap ] ; 3 uses
  %.265.us.i = phi i32 [ %i.fe, %bb.aq ], [ %.16458.us.i.a, %bb.ap ] ; 3 uses
  %.2.us.i = phi i32 [ %i.fh, %bb.aq ], [ %.159.us.i.a, %bb.ap ] ; 3 uses
  %indvars.iv.next97.i.a = add nuw nsw i64 %indvars.iv96.i.a, 1 ; 2 uses
  %i.fi = icmp samesign ule i64 %indvars.iv96.i.a, %indvars.iv99.i
  %i.fj = icmp samesign ult i64 %indvars.iv.next97.i.a, %i.ck
  %i.fk = and i1 %i.fi, %i.fj
  br i1 %i.fk, label %bb.ap, label %._crit_edge62.us.i.a, !llvm.loop !34

._crit_edge62.us.i.a:                             ; preds = %bb.ar
  %9 = add nuw i32 %.06170.us.i, 1                ; 2 uses
  %i.fl = icmp ule i32 %.06170.us.i, %.07383.i
  %i.fm = icmp ult i32 %9, %.sroa.11.0.extract.trunc.i
  %10 = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %10, label %.lr.ph.us.i.a, label %._crit_edge73.i, !llvm.loop !35

._crit_edge73.i:                                  ; preds = %._crit_edge62.us.i.a
  %.not.i = icmp eq i32 %.271.us.i, 0
  br i1 %.not.i, label %._crit_edge73.thread.i, label %bb.as

bb.as:                                            ; preds = %._crit_edge73.i
  %i.fn = add i32 %i.cn, %i.dq
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.val4, i64 %i.fo ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !23
  %i.fr = udiv i32 %.268.us.i, %.271.us.i
  %i.fs = shl i32 %i.fr, 16
  %i.ft = and i32 %i.fs, 16711680
  %i.fu = and i32 %i.fq, -16777216
  %i.fv = or disjoint i32 %i.ft, %i.fu
  %i.fw = udiv i32 %.265.us.i, %.271.us.i
  %i.fx = shl i32 %i.fw, 8
  %i.fy = and i32 %i.fx, 65280
  %i.fz = or disjoint i32 %i.fv, %i.fy
  %i.ga = udiv i32 %.2.us.i, %.271.us.i
  %i.gb = and i32 %i.ga, 255
  %i.gc = or disjoint i32 %i.fz, %i.gb
  store i32 %i.gc, ptr %i.fp, align 4, !tbaa !23
  %i.gd = load i32, ptr %6, align 8, !tbaa !51
  %i.ge = mul i32 %i.gd, %.07383.i
  %i.gf = add i32 %i.ge, %i.dq                    ; 2 uses
  %i.gg = and i32 %i.gf, 7
  %i.gh = shl nuw nsw i32 1, %i.gg
  %i.gi = lshr i32 %i.gf, 3
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gj ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !17
  %i.gn = trunc nuw i32 %i.gh to i8
  %i.go = or i8 %i.gm, %i.gn
  store i8 %i.go, ptr %i.gl, align 1, !tbaa !17
  %.pre107.i = load i32, ptr %5, align 8, !tbaa !51 ; 2 uses
  br label %._crit_edge73.thread.i

._crit_edge73.thread.i:                           ; preds = %bb.as, %._crit_edge73.i, %bb.ao
  %.pre108110.i = phi i32 [ %.pre108111.i, %._crit_edge73.i ], [ %.pre107.i, %bb.as ], [ %.pre108111.i, %bb.ao ] ; 2 uses
  %i.gp = phi i32 [ %i.dp, %._crit_edge73.i ], [ %.pre107.i, %bb.as ], [ %i.dp, %bb.ao ]
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %exitcond103.not.i = icmp eq i64 %indvars.iv.next100.i, %i.ck
  br i1 %exitcond103.not.i, label %._crit_edge82.i, label %bb.ao, !llvm.loop !36

bb.at:                                            ; preds = %_ZNK6Bitmap3allEv.exit118.i
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = load ptr, ptr %i.bt, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i121.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i121.i, label %_ZN6BitmapD2Ev.exit123.i, label %bb.av

_ZNK6Bitmap3allEv.exit118.i:                      ; preds = %bb.an, %.lr.ph.i106.i, %.lr.ph27.i112.i, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.am
  %i.gs = load i64, ptr %6, align 8
  store i64 %i.gs, ptr %5, align 8
  %i.gt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_ZN6BitmapaSERKS_.exit.i unwind label %bb.at ; 0 uses

_ZN6BitmapaSERKS_.exit.i:                         ; preds = %_ZNK6Bitmap3allEv.exit118.i
  %i.gu = add nuw nsw i32 %.07485.i, 1            ; 2 uses
  %exitcond105.not.i = icmp eq i32 %i.gu, %.sroa.speculated.i
  br i1 %exitcond105.not.i, label %_ZNK6Bitmap3allEv.exit118.thread.loopexit92.i, label %.preheader49.i, !llvm.loop !37

_ZNK6Bitmap3allEv.exit118.thread.loopexit92.i:    ; preds = %_ZN6BitmapaSERKS_.exit.i, %._crit_edge.i110.i, %bb.ab, %._crit_edge84.split.i
  %.pre109.i = load ptr, ptr %i.bt, align 8, !tbaa !19
  br label %_ZNK6Bitmap3allEv.exit118.thread.i

_ZNK6Bitmap3allEv.exit118.thread.i:               ; preds = %bb.ad, %bb.af, %bb.ah, %bb.aj, %bb.al, %bb.an, %_ZNK6Bitmap3allEv.exit118.thread.loopexit92.i
  %i.gv = phi ptr [ %.pre109.i, %_ZNK6Bitmap3allEv.exit118.thread.loopexit92.i ], [ %i.cr, %bb.an ], [ %i.cr, %bb.al ], [ %i.cr, %bb.aj ], [ %i.cr, %bb.ah ], [ %i.cr, %bb.af ], [ %i.cr, %bb.ad ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i.i, label %_ZN6BitmapD2Ev.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZNK6Bitmap3allEv.exit118.thread.i
  %i.gw = load ptr, ptr %i.cb, align 8, !tbaa !20
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gv to i64
  %i.gz = sub i64 %i.gx, %i.gy
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.gz) #10
  br label %_ZN6BitmapD2Ev.exit.i

_ZN6BitmapD2Ev.exit.i:                            ; preds = %bb.au, %_ZNK6Bitmap3allEv.exit118.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %_ZNK6Bitmap3allEv.exit.thread.i

bb.av:                                            ; preds = %bb.at
  %i.ha = load ptr, ptr %i.cb, align 8, !tbaa !20
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %i.gr to i64
  %i.hd = sub i64 %i.hb, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.hd) #10
  br label %_ZN6BitmapD2Ev.exit123.i

_ZNK6Bitmap3allEv.exit.thread.i:                  ; preds = %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %_ZN6BitmapD2Ev.exit.i, %._crit_edge.i.i, %bb.f, %._crit_edge55.split.i
  %i.he = load ptr, ptr %i.h, align 8, !tbaa !19  ; 3 uses
  %.not.i.i.i.i124.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i.i124.i, label %_ZL33imageCleanTransparentWithInliningILb1EEvPN5video6IImageEj.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNK6Bitmap3allEv.exit.thread.i
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !20
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.he to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hj) #10
  br label %_ZL33imageCleanTransparentWithInliningILb1EEvPN5video6IImageEj.exit

_ZN6BitmapD2Ev.exit123.i:                         ; preds = %bb.av, %bb.at, %bb.aa
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.cl, %bb.aa ], [ %i.gq, %bb.at ], [ %i.gq, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.hk = load ptr, ptr %i.h, align 8, !tbaa !19  ; 3 uses
  %.not.i.i.i.i127.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i127.i, label %_ZN6BitmapD2Ev.exit129.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN6BitmapD2Ev.exit123.i
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !20
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #10
  br label %_ZN6BitmapD2Ev.exit129.i

_ZN6BitmapD2Ev.exit129.i:                         ; preds = %bb.ax, %_ZN6BitmapD2Ev.exit123.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %common.resume

_ZL33imageCleanTransparentWithInliningILb1EEvPN5video6IImageEj.exit: ; preds = %_ZNK6Bitmap3allEv.exit.thread.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.da

bb.ay:                                            ; preds = %bb.a
  %i.hq = load i32, ptr %i.f, align 4             ; 9 uses
  %.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hr = load i32, ptr %.sroa_idx.i, align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i8 0, i64 24, i1 false)
  store i32 %i.hq, ptr %3, align 8, !tbaa !51
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 %i.hr, ptr %i.ht, align 4, !tbaa !52
  %i.hu = icmp ne i32 %i.hq, 0
  %i.hv = icmp ne i32 %i.hr, 0
  %or.cond.i.i.i5 = and i1 %i.hu, %i.hv
  br i1 %or.cond.i.i.i5, label %bb.az, label %._crit_edge186.split.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.hw = mul i32 %i.hr, %i.hq
  %i.hx = lshr i32 %i.hw, 3
  %i.hy = add nuw nsw i32 %i.hx, 1
  %i.hz = zext nneg i32 %i.hy to i64
  invoke void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, ptr null, i64 noundef %i.hz, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %.preheader175.preheader.i unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ib = load ptr, ptr %i.hs, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i4.i.i45 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i4.i.i45, label %common.resume, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !20
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = ptrtoint ptr %i.ib to i64
  %i.ig = sub i64 %i.ie, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef %i.ig) #10
  br label %common.resume

.preheader175.preheader.i:                        ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.preheader175.i

.preheader175.i:                                  ; preds = %._crit_edge.i47, %.preheader175.preheader.i
  %.085185.i = phi i32 [ %i.ji, %._crit_edge.i47 ], [ 0, %.preheader175.preheader.i ] ; 3 uses
  br label %bb.bp

._crit_edge186.split.i.loopexit:                  ; preds = %._crit_edge.i47
  %.pre = load i32, ptr %3, align 8, !tbaa !51
  br label %._crit_edge186.split.i

._crit_edge186.split.i:                           ; preds = %._crit_edge186.split.i.loopexit, %bb.ay
  %i.ih = phi i32 [ %.pre, %._crit_edge186.split.i.loopexit ], [ %i.hq, %bb.ay ] ; 2 uses
  %.not.i.i6 = icmp eq i32 %i.ih, 0
  br i1 %.not.i.i6, label %_ZNK6Bitmap3allEv.exit.thread.i27, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge186.split.i
  %i.ii = load i32, ptr %i.ht, align 4, !tbaa !52 ; 2 uses
  %.not16.i.i7 = icmp eq i32 %i.ii, 0
  br i1 %.not16.i.i7, label %_ZNK6Bitmap3allEv.exit.thread.i27, label %.preheader.i.i8

.preheader.i.i8:                                  ; preds = %bb.bc
  %i.ij = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !21 ; 3 uses
  %i.il = load ptr, ptr %i.hs, align 8, !tbaa !19 ; 4 uses
  %i.im = ptrtoint ptr %i.ik to i64               ; 3 uses
  %i.in = ptrtoint ptr %i.il to i64               ; 3 uses
  %i.io = xor i64 %i.in, -1
  %i.ip = add i64 %i.io, %i.im                    ; 2 uses
  %.not31.i.i9 = icmp eq i64 %i.ip, 0
  br i1 %.not31.i.i9, label %._crit_edge.i.i38, label %.lr.ph.i.i10

bb.bd:                                            ; preds = %.lr.ph.i.i10
  %i.iq = add i32 %.01123.i.i11, 1                ; 2 uses
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = icmp ugt i64 %i.ip, %i.ir
  br i1 %i.is, label %.lr.ph.i.i10, label %._crit_edge.i.i38, !llvm.loop !30

.lr.ph.i.i10:                                     ; preds = %.preheader.i.i8, %bb.bd
  %i.it = phi i64 [ %i.ir, %bb.bd ], [ 0, %.preheader.i.i8 ]
  %.01123.i.i11 = phi i32 [ %i.iq, %bb.bd ], [ 0, %.preheader.i.i8 ]
  %i.iu = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !17
  %.not17.i.i12 = icmp eq i8 %i.iv, -1
  br i1 %.not17.i.i12, label %bb.bd, label %_ZNK6Bitmap3allEv.exit.i13

._crit_edge.i.i38:                                ; preds = %bb.bd, %.preheader.i.i8
  %i.iw = mul i32 %i.ii, %i.ih
  %i.ix = and i32 %i.iw, 7                        ; 7 uses
  %.not19.not24.not.i.i39 = icmp eq i32 %i.ix, 0
  br i1 %.not19.not24.not.i.i39, label %_ZNK6Bitmap3allEv.exit.thread.i27, label %.lr.ph27.i.i40

.lr.ph27.i.i40:                                   ; preds = %._crit_edge.i.i38
  %i.iy = getelementptr inbounds i8, ptr %i.ik, i64 -1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !17
  %i.ja = zext i8 %i.iz to i32                    ; 7 uses
  %i.jb = and i32 %i.ja, 1
  %.not18.not.i.i42 = icmp eq i32 %i.jb, 0
  br i1 %.not18.not.i.i42, label %_ZNK6Bitmap3allEv.exit.i13, label %bb.be

bb.be:                                            ; preds = %.lr.ph27.i.i40
  %exitcond.not.i.i44 = icmp eq i32 %i.ix, 1
  br i1 %exitcond.not.i.i44, label %_ZNK6Bitmap3allEv.exit.thread.i27, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jc = and i32 %i.ja, 2
  %.not18.not.i.i42.1 = icmp eq i32 %i.jc, 0
  br i1 %.not18.not.i.i42.1, label %_ZNK6Bitmap3allEv.exit.i13, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %exitcond.not.i.i44.1 = icmp eq i32 %i.ix, 2
  br i1 %exitcond.not.i.i44.1, label %_ZNK6Bitmap3allEv.exit.thread.i27, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jd = and i32 %i.ja, 4
  %.not18.not.i.i42.2 = icmp eq i32 %i.jd, 0
  br i1 %.not18.not.i.i42.2, label %_ZNK6Bitmap3allEv.exit.i13, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %exitcond.not.i.i44.2 = icmp eq i32 %i.ix, 3
  br i1 %exitcond.not.i.i44.2, label %_ZNK6Bitmap3allEv.exit.thread.i27, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.je = and i32 %i.ja, 8
  %.not18.not.i.i42.3 = icmp eq i32 %i.je, 0
  br i1 %.not18.not.i.i42.3, label %_ZNK6Bitmap3allEv.exit.i13, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %exitcond.not.i.i44.3 = icmp eq i32 %i.ix, 4
  br i1 %exitcond.not.i.i44.3, label %_ZNK6Bitmap3allEv.exit.thread.i27, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jf = and i32 %i.ja, 16
  %.not18.not.i.i42.4 = icmp eq i32 %i.jf, 0
  br i1 %.not18.not.i.i42.4, label %_ZNK6Bitmap3allEv.exit.i13, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %exitcond.not.i.i44.4 = icmp eq i32 %i.ix, 5
  br i1 %exitcond.not.i.i44.4, label %_ZNK6Bitmap3allEv.exit.thread.i27, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jg = and i32 %i.ja, 32
  %.not18.not.i.i42.5 = icmp eq i32 %i.jg, 0
  br i1 %.not18.not.i.i42.5, label %_ZNK6Bitmap3allEv.exit.i13, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %exitcond.not.i.i44.5 = icmp ne i32 %i.ix, 6
  %i.jh = and i32 %i.ja, 64
  %.not18.not.i.i42.6 = icmp eq i32 %i.jh, 0
  %or.cond147 = and i1 %exitcond.not.i.i44.5, %.not18.not.i.i42.6
  br i1 %or.cond147, label %_ZNK6Bitmap3allEv.exit.i13, label %_ZNK6Bitmap3allEv.exit.thread.i27

._crit_edge.i47:                                  ; preds = %bb.bs
  %i.ji = add nuw i32 %.085185.i, 1               ; 2 uses
  %exitcond226.not.i = icmp eq i32 %i.ji, %i.hr
  br i1 %exitcond226.not.i, label %._crit_edge186.split.i.loopexit, label %.preheader175.i, !llvm.loop !38

bb.bp:                                            ; preds = %bb.bs, %.preheader175.i
  %.083184.i = phi i32 [ 0, %.preheader175.i ], [ %i.kc, %bb.bs ] ; 3 uses
  %i.jj = load ptr, ptr %0, align 8, !tbaa !27
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = invoke i32 %i.jl(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.083184.i, i32 noundef %.085185.i)
          to label %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit.i unwind label %bb.br, !inline_history !39

_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit.i: ; preds = %bb.bp
  %i.jn = lshr i32 %i.jm, 24
  %i.jo = icmp ugt i32 %i.jn, %1
  br i1 %i.jo, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit.i
  %i.jp = load i32, ptr %3, align 8, !tbaa !51
  %i.jq = mul i32 %i.jp, %.085185.i
  %i.jr = add i32 %i.jq, %.083184.i               ; 2 uses
  %i.js = and i32 %i.jr, 7
  %i.jt = shl nuw nsw i32 1, %i.js
  %i.ju = lshr i32 %i.jr, 3
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = load ptr, ptr %i.hs, align 8, !tbaa !19
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jv ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !17
  %i.jz = trunc nuw i32 %i.jt to i8
  %i.ka = or i8 %i.jy, %i.jz
  store i8 %i.ka, ptr %i.jx, align 1, !tbaa !17
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.bs:                                            ; preds = %bb.bq, %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit.i
  %i.kc = add nuw i32 %.083184.i, 1               ; 2 uses
  %exitcond.not.i46 = icmp eq i32 %i.kc, %i.hq
  br i1 %exitcond.not.i46, label %._crit_edge.i47, label %bb.bp, !llvm.loop !40

_ZNK6Bitmap3allEv.exit.i13:                       ; preds = %bb.bo, %.lr.ph.i.i10, %.lr.ph27.i.i40, %bb.bf, %bb.bh, %bb.bj, %bb.bl, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.kd = load i64, ptr %3, align 8
  store i64 %i.kd, ptr %4, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.kf = sub i64 %i.im, %i.in                    ; 3 uses
  %.not.i.i.i.i.i.i14 = icmp eq ptr %i.ik, %i.il
  br i1 %.not.i.i.i.i.i.i14, label %.noexc96.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNK6Bitmap3allEv.exit.i13
  %i.kg = icmp slt i64 %i.kf, 0
  br i1 %i.kg, label %.noexc.i.i.i.i36, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i15, !prof !24

.noexc.i.i.i.i36:                                 ; preds = %bb.bt
  invoke void @_ZSt17__throw_bad_allocv() #11
          to label %.noexc.i37 unwind label %bb.by

.noexc.i37:                                       ; preds = %.noexc.i.i.i.i36
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i15: ; preds = %bb.bt
  %i.kh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kf) #12
          to label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc96_crit_edge.i unwind label %bb.by

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc96_crit_edge.i: ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i15
  %.pre.i19 = load ptr, ptr %i.hs, align 8, !tbaa !53 ; 2 uses
  %.pre230.i = load ptr, ptr %i.ij, align 8, !tbaa !53
  %.pre232.i = ptrtoint ptr %.pre230.i to i64
  %.pre233.i = ptrtoint ptr %.pre.i19 to i64
  br label %.noexc96.i

.noexc96.i:                                       ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc96_crit_edge.i, %_ZNK6Bitmap3allEv.exit.i13
  %.pre-phi234.i = phi i64 [ %.pre233.i, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc96_crit_edge.i ], [ %i.in, %_ZNK6Bitmap3allEv.exit.i13 ]
  %.pre-phi.i20 = phi i64 [ %.pre232.i, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc96_crit_edge.i ], [ %i.im, %_ZNK6Bitmap3allEv.exit.i13 ]
  %i.ki = phi ptr [ %.pre.i19, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc96_crit_edge.i ], [ %i.il, %_ZNK6Bitmap3allEv.exit.i13 ] ; 2 uses
  %i.kj = phi ptr [ %i.kh, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i..noexc96_crit_edge.i ], [ null, %_ZNK6Bitmap3allEv.exit.i13 ] ; 5 uses
  store ptr %i.kj, ptr %i.ke, align 8, !tbaa !19
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kf
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !20
  %i.kn = sub i64 %.pre-phi.i20, %.pre-phi234.i   ; 4 uses
  %i.ko = icmp sgt i64 %i.kn, 1
  br i1 %i.ko, label %bb.bu, label %bb.bv, !prof !25

bb.bu:                                            ; preds = %.noexc96.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.kj, ptr align 1 %i.ki, i64 %i.kn, i1 false)
  br label %bb.bx

bb.bv:                                            ; preds = %.noexc96.i
  %i.kp = icmp eq i64 %i.kn, 1
  br i1 %i.kp, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.kq = load i8, ptr %i.ki, align 1, !tbaa !17
  store i8 %i.kq, ptr %i.kj, align 1, !tbaa !17
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.kr = getelementptr inbounds i8, ptr %i.kj, i64 %i.kn
  store ptr %i.kr, ptr %i.kk, align 8, !tbaa !21
  %.sroa.speculated156.i = call i32 @llvm.umax.i32(i32 %i.hq, i32 %i.hr)
  %i.ks = lshr i32 %.sroa.speculated156.i, 4
  %i.kt = sub nsw i32 11, %i.ks
  %.sroa.speculated.i21 = call i32 @llvm.smax.i32(i32 %i.kt, i32 2)
  %.not220.i = icmp eq i32 %i.hr, 0
  %.not221.i = icmp eq i32 %i.hq, 0
  %i.ku = getelementptr inbounds nuw i8, ptr %4, i64 4
  %brmerge.i22 = or i1 %.not221.i, %.not220.i
  br label %.preheader172.i

.preheader172.i:                                  ; preds = %_ZN6BitmapaSERKS_.exit.i24, %bb.bx
  %.074217.i = phi i32 [ 0, %bb.bx ], [ %i.pg, %_ZN6BitmapaSERKS_.exit.i24 ]
  br i1 %brmerge.i22, label %._crit_edge216.split.i, label %.preheader.i23

bb.by:                                            ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i15, %.noexc.i.i.i.i36
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6BitmapD2Ev.exit124.i

.preheader.i23:                                   ; preds = %.preheader172.i, %._crit_edge214.i.split
  %.073215.i = phi i32 [ %i.kx, %._crit_edge214.i.split ], [ 0, %.preheader172.i ] ; 7 uses
  %i.kw = call i32 @llvm.usub.sat.i32(i32 %.073215.i, i32 1)
  %i.kx = add nuw i32 %.073215.i, 1               ; 2 uses
  br label %bb.cm

._crit_edge216.split.i:                           ; preds = %._crit_edge214.i.split, %.preheader172.i
  %i.ky = load i32, ptr %4, align 8, !tbaa !51    ; 2 uses
  %.not.i98.i = icmp eq i32 %i.ky, 0
  br i1 %.not.i98.i, label %_ZNK6Bitmap3allEv.exit114.thread.loopexit224.i, label %bb.bz

bb.bz:                                            ; preds = %._crit_edge216.split.i
  %i.kz = load i32, ptr %i.ku, align 4, !tbaa !52 ; 2 uses
  %.not16.i99.i = icmp eq i32 %i.kz, 0
  br i1 %.not16.i99.i, label %_ZNK6Bitmap3allEv.exit114.thread.loopexit224.i, label %.preheader.i100.i

.preheader.i100.i:                                ; preds = %bb.bz
  %i.la = load ptr, ptr %i.kk, align 8, !tbaa !21 ; 2 uses
  %i.lb = load ptr, ptr %i.ke, align 8, !tbaa !19 ; 8 uses
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = xor i64 %i.ld, -1
  %i.lf = add i64 %i.le, %i.lc                    ; 2 uses
  %.not31.i101.i = icmp eq i64 %i.lf, 0
  br i1 %.not31.i101.i, label %._crit_edge.i106.i, label %.lr.ph.i102.i

bb.ca:                                            ; preds = %.lr.ph.i102.i
  %i.lg = add i32 %.01123.i103.i, 1               ; 2 uses
  %i.lh = zext i32 %i.lg to i64                   ; 2 uses
  %i.li = icmp ugt i64 %i.lf, %i.lh
  br i1 %i.li, label %.lr.ph.i102.i, label %._crit_edge.i106.i, !llvm.loop !30

.lr.ph.i102.i:                                    ; preds = %.preheader.i100.i, %bb.ca
  %i.lj = phi i64 [ %i.lh, %bb.ca ], [ 0, %.preheader.i100.i ]
  %.01123.i103.i = phi i32 [ %i.lg, %bb.ca ], [ 0, %.preheader.i100.i ]
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !17
  %.not17.i104.i = icmp eq i8 %i.ll, -1
  br i1 %.not17.i104.i, label %bb.ca, label %_ZNK6Bitmap3allEv.exit114.i

._crit_edge.i106.i:                               ; preds = %bb.ca, %.preheader.i100.i
  %i.lm = mul i32 %i.kz, %i.ky
  %i.ln = and i32 %i.lm, 7                        ; 7 uses
  %.not19.not24.not.i107.i = icmp eq i32 %i.ln, 0
  br i1 %.not19.not24.not.i107.i, label %_ZNK6Bitmap3allEv.exit114.thread.loopexit224.i, label %.lr.ph27.i108.i

.lr.ph27.i108.i:                                  ; preds = %._crit_edge.i106.i
  %i.lo = getelementptr inbounds i8, ptr %i.la, i64 -1
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !17
  %i.lq = zext i8 %i.lp to i32                    ; 7 uses
  %i.lr = and i32 %i.lq, 1
  %.not18.not.i111.i = icmp eq i32 %i.lr, 0
  br i1 %.not18.not.i111.i, label %_ZNK6Bitmap3allEv.exit114.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph27.i108.i
  %exitcond.not.i113.i = icmp eq i32 %i.ln, 1
  br i1 %exitcond.not.i113.i, label %_ZNK6Bitmap3allEv.exit114.thread.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ls = and i32 %i.lq, 2
  %.not18.not.i111.i.1 = icmp eq i32 %i.ls, 0
  br i1 %.not18.not.i111.i.1, label %_ZNK6Bitmap3allEv.exit114.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %exitcond.not.i113.i.1 = icmp eq i32 %i.ln, 2
  br i1 %exitcond.not.i113.i.1, label %_ZNK6Bitmap3allEv.exit114.thread.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lt = and i32 %i.lq, 4
  %.not18.not.i111.i.2 = icmp eq i32 %i.lt, 0
  br i1 %.not18.not.i111.i.2, label %_ZNK6Bitmap3allEv.exit114.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %exitcond.not.i113.i.2 = icmp eq i32 %i.ln, 3
  br i1 %exitcond.not.i113.i.2, label %_ZNK6Bitmap3allEv.exit114.thread.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lu = and i32 %i.lq, 8
  %.not18.not.i111.i.3 = icmp eq i32 %i.lu, 0
  br i1 %.not18.not.i111.i.3, label %_ZNK6Bitmap3allEv.exit114.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %exitcond.not.i113.i.3 = icmp eq i32 %i.ln, 4
  br i1 %exitcond.not.i113.i.3, label %_ZNK6Bitmap3allEv.exit114.thread.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lv = and i32 %i.lq, 16
  %.not18.not.i111.i.4 = icmp eq i32 %i.lv, 0
  br i1 %.not18.not.i111.i.4, label %_ZNK6Bitmap3allEv.exit114.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %exitcond.not.i113.i.4 = icmp eq i32 %i.ln, 5
  br i1 %exitcond.not.i113.i.4, label %_ZNK6Bitmap3allEv.exit114.thread.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lw = and i32 %i.lq, 32
  %.not18.not.i111.i.5 = icmp eq i32 %i.lw, 0
  br i1 %.not18.not.i111.i.5, label %_ZNK6Bitmap3allEv.exit114.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %exitcond.not.i113.i.5 = icmp ne i32 %i.ln, 6
  %i.lx = and i32 %i.lq, 64
  %.not18.not.i111.i.6 = icmp eq i32 %i.lx, 0
  %or.cond148 = and i1 %exitcond.not.i113.i.5, %.not18.not.i111.i.6
  br i1 %or.cond148, label %_ZNK6Bitmap3allEv.exit114.i, label %_ZNK6Bitmap3allEv.exit114.thread.i

._crit_edge214.i.split:                           ; preds = %._crit_edge204.thread.i
  %exitcond228.not.i = icmp eq i32 %i.kx, %i.hr
  br i1 %exitcond228.not.i, label %._crit_edge216.split.i, label %.preheader.i23, !llvm.loop !41

bb.cm:                                            ; preds = %._crit_edge204.thread.i, %.preheader.i23
  %.072213.i = phi i32 [ 0, %.preheader.i23 ], [ %i.pd, %._crit_edge204.thread.i ] ; 7 uses
  %i.ly = load i32, ptr %3, align 8, !tbaa !51
  %i.lz = mul i32 %i.ly, %.073215.i
  %i.ma = add i32 %i.lz, %.072213.i               ; 2 uses
  %i.mb = lshr i32 %i.ma, 3
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = load ptr, ptr %i.hs, align 8, !tbaa !19
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mc
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !17
  %i.mg = zext i8 %i.mf to i32
  %i.mh = and i32 %i.ma, 7
  %i.mi = shl nuw nsw i32 1, %i.mh
  %i.mj = and i32 %i.mi, %i.mg
  %.not169.i.not = icmp eq i32 %i.mj, 0
  br i1 %.not169.i.not, label %.lr.ph203.i, label %._crit_edge204.thread.i

.lr.ph203.i:                                      ; preds = %bb.cm
  %i.mk = call i32 @llvm.usub.sat.i32(i32 %.072213.i, i32 1)
  br label %.lr.ph.us.i28

.lr.ph.us.i28:                                    ; preds = %.lr.ph203.i, %._crit_edge193.us.i
  %.061201.us.i = phi i32 [ %i.ns, %._crit_edge193.us.i ], [ %i.kw, %.lr.ph203.i ] ; 4 uses
  %.062200.us.i = phi i32 [ %.2.us.i34, %._crit_edge193.us.i ], [ 0, %.lr.ph203.i ]
  %.063199.us.i = phi i32 [ %.265.us.i33, %._crit_edge193.us.i ], [ 0, %.lr.ph203.i ]
  %.066198.us.i = phi i32 [ %.268.us.i32, %._crit_edge193.us.i ], [ 0, %.lr.ph203.i ]
  %.069197.us.i = phi i32 [ %.271.us.i31, %._crit_edge193.us.i ], [ 0, %.lr.ph203.i ]
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cp, %.lr.ph.us.i28
  %.0191.us.i = phi i32 [ %i.mk, %.lr.ph.us.i28 ], [ %i.no, %bb.cp ] ; 4 uses
  %.1190.us.i = phi i32 [ %.062200.us.i, %.lr.ph.us.i28 ], [ %.2.us.i34, %bb.cp ] ; 2 uses
  %.164189.us.i = phi i32 [ %.063199.us.i, %.lr.ph.us.i28 ], [ %.265.us.i33, %bb.cp ] ; 2 uses
  %.167188.us.i = phi i32 [ %.066198.us.i, %.lr.ph.us.i28 ], [ %.268.us.i32, %bb.cp ] ; 2 uses
  %.170187.us.i = phi i32 [ %.069197.us.i, %.lr.ph.us.i28 ], [ %.271.us.i31, %bb.cp ] ; 2 uses
  %i.ml = load i32, ptr %3, align 8, !tbaa !51
  %i.mm = mul i32 %i.ml, %.061201.us.i
  %i.mn = add i32 %i.mm, %.0191.us.i              ; 2 uses
  %i.mo = lshr i32 %i.mn, 3
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = load ptr, ptr %i.hs, align 8, !tbaa !19
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mp
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !17
  %i.mt = zext i8 %i.ms to i32
  %i.mu = and i32 %i.mn, 7
  %i.mv = shl nuw nsw i32 1, %i.mu
  %i.mw = and i32 %i.mv, %i.mt
  %.not170.us.i = icmp eq i32 %i.mw, 0
  br i1 %.not170.us.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mx = load ptr, ptr %0, align 8, !tbaa !27
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = invoke i32 %i.mz(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.0191.us.i, i32 noundef %.061201.us.i)
          to label %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit116.us.i unwind label %.split.us.i, !inline_history !39 ; 4 uses

_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit116.us.i: ; preds = %bb.co
  %i.nb = lshr i32 %i.na, 24                      ; 2 uses
  %.not89.us.i29 = icmp ugt i32 %i.nb, %1
  %spec.select.us.i30 = select i1 %.not89.us.i29, i32 %i.nb, i32 255 ; 4 uses
  %i.nc = add i32 %spec.select.us.i30, %.170187.us.i
  %i.nd = lshr i32 %i.na, 16
  %i.ne = and i32 %i.nd, 255
  %i.nf = mul nuw nsw i32 %spec.select.us.i30, %i.ne
  %i.ng = add i32 %i.nf, %.167188.us.i
  %i.nh = lshr i32 %i.na, 8
  %i.ni = and i32 %i.nh, 255
  %i.nj = mul nuw nsw i32 %spec.select.us.i30, %i.ni
  %i.nk = add i32 %i.nj, %.164189.us.i
  %i.nl = and i32 %i.na, 255
  %i.nm = mul nuw nsw i32 %spec.select.us.i30, %i.nl
  %i.nn = add i32 %i.nm, %.1190.us.i
  br label %bb.cp

bb.cp:                                            ; preds = %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit116.us.i, %bb.cn
  %.271.us.i31 = phi i32 [ %i.nc, %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit116.us.i ], [ %.170187.us.i, %bb.cn ] ; 6 uses
  %.268.us.i32 = phi i32 [ %i.ng, %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit116.us.i ], [ %.167188.us.i, %bb.cn ] ; 3 uses
  %.265.us.i33 = phi i32 [ %i.nk, %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit116.us.i ], [ %.164189.us.i, %bb.cn ] ; 3 uses
  %.2.us.i34 = phi i32 [ %i.nn, %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit116.us.i ], [ %.1190.us.i, %bb.cn ] ; 3 uses
  %i.no = add nuw i32 %.0191.us.i, 1              ; 2 uses
  %i.np = icmp ule i32 %.0191.us.i, %.072213.i
  %i.nq = icmp ult i32 %i.no, %i.hq
  %i.nr = and i1 %i.np, %i.nq
  br i1 %i.nr, label %bb.cn, label %._crit_edge193.us.i, !llvm.loop !42

._crit_edge193.us.i:                              ; preds = %bb.cp
  %i.ns = add nuw i32 %.061201.us.i, 1            ; 2 uses
  %i.nt = icmp ule i32 %.061201.us.i, %.073215.i
  %i.nu = icmp ult i32 %i.ns, %i.hr
  %i.nv = and i1 %i.nt, %i.nu
  br i1 %i.nv, label %.lr.ph.us.i28, label %._crit_edge204.i, !llvm.loop !43

.split.us.i:                                      ; preds = %bb.co
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

._crit_edge204.i:                                 ; preds = %._crit_edge193.us.i
  %.not.i35 = icmp eq i32 %.271.us.i31, 0
  br i1 %.not.i35, label %._crit_edge204.thread.i, label %bb.cq

bb.cq:                                            ; preds = %._crit_edge204.i
  %i.nx = load ptr, ptr %0, align 8, !tbaa !27
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8
  %i.oa = invoke i32 %i.nz(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.072213.i, i32 noundef %.073215.i)
          to label %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit118.i unwind label %bb.cs, !inline_history !39

_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit118.i: ; preds = %bb.cq
  %i.ob = udiv i32 %.268.us.i32, %.271.us.i31
  %i.oc = shl i32 %i.ob, 16
  %i.od = and i32 %i.oc, 16711680
  %i.oe = and i32 %i.oa, -16777216
  %i.of = or disjoint i32 %i.od, %i.oe
  %i.og = udiv i32 %.265.us.i33, %.271.us.i31
  %i.oh = shl i32 %i.og, 8
  %i.oi = and i32 %i.oh, 65280
  %i.oj = or disjoint i32 %i.of, %i.oi
  %i.ok = udiv i32 %.2.us.i34, %.271.us.i31
  %i.ol = and i32 %i.ok, 255
  %i.om = or disjoint i32 %i.oj, %i.ol
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 %i.om, ptr %2, align 4
  %i.on = load ptr, ptr %0, align 8, !tbaa !27
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.op = load ptr, ptr %i.oo, align 8
  invoke void %i.op(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.072213.i, i32 noundef %.073215.i, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext false)
          to label %bb.cr unwind label %bb.cs, !inline_history !44

bb.cr:                                            ; preds = %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit118.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.oq = load i32, ptr %4, align 8, !tbaa !51
  %i.or = mul i32 %i.oq, %.073215.i
  %i.os = add i32 %i.or, %.072213.i               ; 2 uses
  %i.ot = and i32 %i.os, 7
  %i.ou = shl nuw nsw i32 1, %i.ot
  %i.ov = lshr i32 %i.os, 3
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = load ptr, ptr %i.ke, align 8, !tbaa !19
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.ow ; 2 uses
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !17
  %i.pa = trunc nuw i32 %i.ou to i8
  %i.pb = or i8 %i.oz, %i.pa
  store i8 %i.pb, ptr %i.oy, align 1, !tbaa !17
  br label %._crit_edge204.thread.i

bb.cs:                                            ; preds = %_ZZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEjENKUljjE_clEjj.exit118.i, %bb.cq
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

._crit_edge204.thread.i:                          ; preds = %bb.cr, %._crit_edge204.i, %bb.cm
  %i.pd = add nuw i32 %.072213.i, 1               ; 2 uses
  %exitcond227.not.i = icmp eq i32 %i.pd, %i.hq
  br i1 %exitcond227.not.i, label %._crit_edge214.i.split, label %bb.cm, !llvm.loop !45

_ZNK6Bitmap3allEv.exit114.i:                      ; preds = %bb.cl, %.lr.ph.i102.i, %.lr.ph27.i108.i, %bb.cc, %bb.ce, %bb.cg, %bb.ci, %bb.ck
  %i.pe = load i64, ptr %4, align 8
  store i64 %i.pe, ptr %3, align 8
  %i.pf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, ptr noundef nonnull align 8 dereferenceable(24) %i.ke)
          to label %_ZN6BitmapaSERKS_.exit.i24 unwind label %bb.ct ; 0 uses

_ZN6BitmapaSERKS_.exit.i24:                       ; preds = %_ZNK6Bitmap3allEv.exit114.i
  %i.pg = add nuw nsw i32 %.074217.i, 1           ; 2 uses
  %exitcond229.not.i = icmp eq i32 %i.pg, %.sroa.speculated.i21
  br i1 %exitcond229.not.i, label %_ZNK6Bitmap3allEv.exit114.thread.loopexit224.i, label %.preheader172.i, !llvm.loop !46

bb.ct:                                            ; preds = %_ZNK6Bitmap3allEv.exit114.i
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

_ZNK6Bitmap3allEv.exit114.thread.loopexit224.i:   ; preds = %_ZN6BitmapaSERKS_.exit.i24, %._crit_edge.i106.i, %bb.bz, %._crit_edge216.split.i
  %.pre231.i = load ptr, ptr %i.ke, align 8, !tbaa !19
  br label %_ZNK6Bitmap3allEv.exit114.thread.i

_ZNK6Bitmap3allEv.exit114.thread.i:               ; preds = %bb.cb, %bb.cd, %bb.cf, %bb.ch, %bb.cj, %bb.cl, %_ZNK6Bitmap3allEv.exit114.thread.loopexit224.i
  %i.pi = phi ptr [ %.pre231.i, %_ZNK6Bitmap3allEv.exit114.thread.loopexit224.i ], [ %i.lb, %bb.cl ], [ %i.lb, %bb.cj ], [ %i.lb, %bb.ch ], [ %i.lb, %bb.cf ], [ %i.lb, %bb.cd ], [ %i.lb, %bb.cb ] ; 3 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i.i.i.i25, label %_ZN6BitmapD2Ev.exit.i26, label %bb.cu

bb.cu:                                            ; preds = %_ZNK6Bitmap3allEv.exit114.thread.i
  %i.pj = load ptr, ptr %i.km, align 8, !tbaa !20
  %i.pk = ptrtoint ptr %i.pj to i64
  %i.pl = ptrtoint ptr %i.pi to i64
  %i.pm = sub i64 %i.pk, %i.pl
  call void @_ZdlPvm(ptr noundef nonnull %i.pi, i64 noundef %i.pm) #10
  br label %_ZN6BitmapD2Ev.exit.i26

_ZN6BitmapD2Ev.exit.i26:                          ; preds = %bb.cu, %_ZNK6Bitmap3allEv.exit114.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %_ZNK6Bitmap3allEv.exit.thread.i27

bb.cv:                                            ; preds = %bb.ct, %bb.cs, %.split.us.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.ph, %bb.ct ], [ %i.nw, %.split.us.i ], [ %i.pc, %bb.cs ] ; 2 uses
  %i.pn = load ptr, ptr %i.ke, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i122.i = icmp eq ptr %i.pn, null
  br i1 %.not.i.i.i.i122.i, label %_ZN6BitmapD2Ev.exit124.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.po = load ptr, ptr %i.km, align 8, !tbaa !20
  %i.pp = ptrtoint ptr %i.po to i64
  %i.pq = ptrtoint ptr %i.pn to i64
  %i.pr = sub i64 %i.pp, %i.pq
  call void @_ZdlPvm(ptr noundef nonnull %i.pn, i64 noundef %i.pr) #10
  br label %_ZN6BitmapD2Ev.exit124.i

_ZNK6Bitmap3allEv.exit.thread.i27:                ; preds = %bb.be, %bb.bg, %bb.bi, %bb.bk, %bb.bm, %bb.bo, %_ZN6BitmapD2Ev.exit.i26, %._crit_edge.i.i38, %bb.bc, %._crit_edge186.split.i
  %i.ps = load ptr, ptr %i.hs, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i125.i = icmp eq ptr %i.ps, null
  br i1 %.not.i.i.i.i125.i, label %_ZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEj.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZNK6Bitmap3allEv.exit.thread.i27
  %i.pt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !20
  %i.pv = ptrtoint ptr %i.pu to i64
  %i.pw = ptrtoint ptr %i.ps to i64
  %i.px = sub i64 %i.pv, %i.pw
  call void @_ZdlPvm(ptr noundef nonnull %i.ps, i64 noundef %i.px) #10
  br label %_ZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEj.exit

_ZN6BitmapD2Ev.exit124.i:                         ; preds = %bb.cw, %bb.cv, %bb.by
  %.pn.pn.pn.i16 = phi { ptr, i32 } [ %i.kv, %bb.by ], [ %.pn.pn.i, %bb.cv ], [ %.pn.pn.i, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN6BitmapD2Ev.exit124.i, %bb.br
  %.pn90.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i16, %_ZN6BitmapD2Ev.exit124.i ], [ %i.kb, %bb.br ]
  %i.py = load ptr, ptr %i.hs, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i128.i = icmp eq ptr %i.py, null
  br i1 %.not.i.i.i.i128.i, label %_ZN6BitmapD2Ev.exit130.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !20
  %i.qb = ptrtoint ptr %i.qa to i64
  %i.qc = ptrtoint ptr %i.py to i64
  %i.qd = sub i64 %i.qb, %i.qc
  call void @_ZdlPvm(ptr noundef nonnull %i.py, i64 noundef %i.qd) #10
  br label %_ZN6BitmapD2Ev.exit130.i

_ZN6BitmapD2Ev.exit130.i:                         ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %common.resume

_ZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEj.exit: ; preds = %_ZNK6Bitmap3allEv.exit.thread.i27, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.da

bb.da:                                            ; preds = %_ZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEj.exit, %_ZL33imageCleanTransparentWithInliningILb1EEvPN5video6IImageEj.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 -16777216, 0) i32 @_Z17imageAverageColorPKN5video6IImageE(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.017.0.copyload.i = load i32, ptr %i.f, align 4, !tbaa !23 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !23 ; 3 uses
  %i.g = lshr i32 %.sroa.017.0.copyload.i, 4
  %.sroa.speculated35.i = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1)
  %i.h = lshr i32 %.sroa.6.0.copyload.i, 4
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1)
  %.not77.i = icmp eq i32 %.sroa.6.0.copyload.i, 0
  %.not78.i = icmp eq i32 %.sroa.017.0.copyload.i, 0
  %or.cond.i = select i1 %.not77.i, i1 true, i1 %.not78.i
  br i1 %or.cond.i, label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.b, %._crit_edge.us.i
  %.070.us.i = phi i32 [ %.2.us.i, %._crit_edge.us.i ], [ 0, %bb.b ]
  %.02569.us.i = phi i32 [ %i.ai, %._crit_edge.us.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.13.068.us.i = phi float [ %.sroa.13.2.us.i, %._crit_edge.us.i ], [ 0.000000e+00, %bb.b ]
  %.sroa.040.067.us.i = phi <2 x float> [ %.sroa.040.2.us.i, %._crit_edge.us.i ], [ zeroinitializer, %bb.b ]
  %i.i = mul i32 %.02569.us.i, %.sroa.017.0.copyload.i
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.preheader.us.i
  %.164.us.i = phi i32 [ %.070.us.i, %.preheader.us.i ], [ %.2.us.i, %bb.e ] ; 2 uses
  %.02663.us.i = phi i32 [ 0, %.preheader.us.i ], [ %i.ag, %bb.e ] ; 2 uses
  %.sroa.13.162.us.i = phi float [ %.sroa.13.068.us.i, %.preheader.us.i ], [ %.sroa.13.2.us.i, %bb.e ] ; 2 uses
  %.sroa.040.161.us.i = phi <2 x float> [ %.sroa.040.067.us.i, %.preheader.us.i ], [ %.sroa.040.2.us.i, %bb.e ] ; 2 uses
  %i.j = add i32 %.02663.us.i, %i.i
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !23   ; 4 uses
  %.not27.us.i = icmp ult i32 %i.m, 16777216
  br i1 %.not27.us.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %.164.us.i, 1
  %i.o = lshr i32 %i.m, 16
  %i.p = and i32 %i.o, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !29
  %i.t = lshr i32 %i.m, 8
  %i.u = and i32 %i.t, 255
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !29
  %i.y = and i32 %i.m, 255
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !29
  %i.ac = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.x, i64 1
  %i.ae = fadd nsz <2 x float> %.sroa.040.161.us.i, %i.ad
  %i.af = fadd nsz float %.sroa.13.162.us.i, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.040.2.us.i = phi nsz <2 x float> [ %.sroa.040.161.us.i, %bb.c ], [ %i.ae, %bb.d ] ; 4 uses
  %.sroa.13.2.us.i = phi nsz float [ %.sroa.13.162.us.i, %bb.c ], [ %i.af, %bb.d ] ; 3 uses
  %.2.us.i = phi i32 [ %.164.us.i, %bb.c ], [ %i.n, %bb.d ] ; 4 uses
  %i.ag = add i32 %.02663.us.i, %.sroa.speculated35.i ; 2 uses
  %i.ah = icmp ult i32 %i.ag, %.sroa.017.0.copyload.i
  br i1 %i.ah, label %bb.c, label %._crit_edge.us.i, !llvm.loop !54

._crit_edge.us.i:                                 ; preds = %bb.e
  %i.ai = add i32 %.02569.us.i, %.sroa.speculated.i ; 2 uses
  %i.aj = icmp ult i32 %i.ai, %.sroa.6.0.copyload.i
  br i1 %i.aj, label %.preheader.us.i, label %._crit_edge71.i, !llvm.loop !55

._crit_edge71.i:                                  ; preds = %._crit_edge.us.i
  %.not.i = icmp eq i32 %.2.us.i, 0
  br i1 %.not.i, label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge71.i
  %i.ak = uitofp nsz i32 %.2.us.i to float        ; 3 uses
  %.sroa.040.0.vec.extract46.i = extractelement <2 x float> %.sroa.040.2.us.i, i64 0
  %i.al = fdiv nsz float %.sroa.040.0.vec.extract46.i, %i.ak ; 3 uses
  %.sroa.040.4.vec.extract53.i = extractelement <2 x float> %.sroa.040.2.us.i, i64 1
  %i.am = fdiv nsz float %.sroa.040.4.vec.extract53.i, %i.ak ; 3 uses
  %i.an = fdiv nsz float %.sroa.13.2.us.i, %i.ak  ; 3 uses
  %i.ao = fcmp nsz ogt float %i.al, 3.130800e-03
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = tail call nsz float @llvm.pow.f32(float %i.al, float f0x3ED55555)
  %i.aq = tail call nnan nsz float @llvm.fmuladd.f32(float %i.ap, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ar = fmul nsz float %i.al, 1.292000e+01
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i

_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi nsz float [ %i.aq, %bb.g ], [ %i.ar, %bb.h ]
  %i.as = fcmp nsz ogt float %i.am, 3.130800e-03
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i
  %i.at = tail call nsz float @llvm.pow.f32(float %i.am, float f0x3ED55555)
  %i.au = tail call nnan nsz float @llvm.fmuladd.f32(float %i.at, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i
  %i.av = fmul nsz float %i.am, 1.292000e+01
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i

_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i: ; preds = %bb.j, %bb.i
  %.0.i2.i.i = phi nsz float [ %i.au, %bb.i ], [ %i.av, %bb.j ]
  %i.aw = fcmp nsz ogt float %i.an, 3.130800e-03
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i
  %i.ax = tail call nsz float @llvm.pow.f32(float %i.an, float f0x3ED55555)
  %i.ay = tail call nnan nsz float @llvm.fmuladd.f32(float %i.ax, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i
  %i.az = fmul nsz float %i.an, 1.292000e+01
  br label %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i

_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i: ; preds = %bb.l, %bb.k
  %.0.i4.i.i = phi nsz float [ %i.ay, %bb.k ], [ %i.az, %bb.l ]
  %i.ba = insertelement <2 x float> poison, float %.0.i4.i.i, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %.0.i.i.i, i64 1
  %i.bc = fmul nsz <2 x float> %i.bb, splat (float 2.550000e+02) ; 2 uses
  %i.bd = fmul nsz float %.0.i2.i.i, 2.550000e+02 ; 2 uses
  %i.be = fcmp nsz olt float %i.bd, 0.000000e+00
  %i.bf = select i1 %i.be, float 0.000000e+00, float %i.bd ; 2 uses
  %i.bg = fcmp nsz olt float %i.bf, 2.550000e+02
  %i.bh = select i1 %i.bg, float %i.bf, float 2.550000e+02
  %i.bi = fadd nsz float %i.bh, 5.000000e-01
  %i.bj = fptosi float %i.bi to i32
  %i.bk = shl i32 %i.bj, 8
  %i.bl = and i32 %i.bk, 65280
  %i.bm = fcmp nsz olt <2 x float> %i.bc, zeroinitializer
  %i.bn = select <2 x i1> %i.bm, <2 x float> zeroinitializer, <2 x float> %i.bc ; 2 uses
  %i.bo = fcmp nsz olt <2 x float> %i.bn, splat (float 2.550000e+02)
  %i.bp = select <2 x i1> %i.bo, <2 x float> %i.bn, <2 x float> splat (float 2.550000e+02)
  %i.bq = fadd nsz <2 x float> %i.bp, splat (float 5.000000e-01)
  %i.br = fptosi <2 x float> %i.bq to <2 x i32>   ; 2 uses
  %i.bs = extractelement <2 x i32> %i.br, i64 1
  %i.bt = shl i32 %i.bs, 16
  %.masked.i = or disjoint i32 %i.bl, %i.bt
  %i.bu = extractelement <2 x i32> %i.br, i64 0
  %i.bv = and i32 %i.bu, 255
  %i.bw = or disjoint i32 %i.bv, %.masked.i
  %i.bx = or i32 %i.bw, -16777216
  br label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit

bb.m:                                             ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.017.0.copyload.i3 = load i32, ptr %i.by, align 4, !tbaa !23 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !23 ; 3 uses
  %i.bz = lshr i32 %.sroa.017.0.copyload.i3, 4
  %.sroa.speculated31.i = tail call i32 @llvm.umax.i32(i32 %i.bz, i32 1)
  %i.ca = lshr i32 %.sroa.5.0.copyload.i, 4
  %.sroa.speculated.i4 = tail call i32 @llvm.umax.i32(i32 %i.ca, i32 1)
  %.not73.i = icmp eq i32 %.sroa.5.0.copyload.i, 0
  %.not74.i = icmp eq i32 %.sroa.017.0.copyload.i3, 0
  %or.cond.i5 = select i1 %.not73.i, i1 true, i1 %.not74.i
  br i1 %or.cond.i5, label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit, label %.preheader.us.i6

.preheader.us.i6:                                 ; preds = %bb.m, %._crit_edge.us.i9
  %.066.us.i = phi i32 [ %.2.us.i8, %._crit_edge.us.i9 ], [ 0, %bb.m ]
  %.02265.us.i = phi i32 [ %i.da, %._crit_edge.us.i9 ], [ 0, %bb.m ] ; 2 uses
  %.sroa.13.064.us.i = phi float [ %.sroa.13.2.us.i7, %._crit_edge.us.i9 ], [ 0.000000e+00, %bb.m ]
  %.sroa.036.063.us.i = phi <2 x float> [ %.sroa.036.2.us.i, %._crit_edge.us.i9 ], [ zeroinitializer, %bb.m ]
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.preheader.us.i6
  %.160.us.i = phi i32 [ %.066.us.i, %.preheader.us.i6 ], [ %.2.us.i8, %bb.p ] ; 2 uses
  %.02359.us.i = phi i32 [ 0, %.preheader.us.i6 ], [ %i.cy, %bb.p ] ; 2 uses
  %.sroa.13.158.us.i = phi float [ %.sroa.13.064.us.i, %.preheader.us.i6 ], [ %.sroa.13.2.us.i7, %bb.p ] ; 2 uses
  %.sroa.036.157.us.i = phi <2 x float> [ %.sroa.036.063.us.i, %.preheader.us.i6 ], [ %.sroa.036.2.us.i, %bb.p ] ; 2 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call i32 %i.cd(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.02359.us.i, i32 noundef %.02265.us.i), !inline_history !56 ; 4 uses
  %.not24.us.i = icmp ult i32 %i.ce, 16777216
  br i1 %.not24.us.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = add i32 %.160.us.i, 1
  %i.cg = lshr i32 %i.ce, 16
  %i.ch = and i32 %i.cg, 255
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !29
  %i.cl = lshr i32 %i.ce, 8
  %i.cm = and i32 %i.cl, 255
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !29
  %i.cq = and i32 %i.ce, 255
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !29
  %i.cu = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.cp, i64 1
  %i.cw = fadd nsz <2 x float> %.sroa.036.157.us.i, %i.cv
  %i.cx = fadd nsz float %.sroa.13.158.us.i, %i.ct
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.036.2.us.i = phi nsz <2 x float> [ %.sroa.036.157.us.i, %bb.n ], [ %i.cw, %bb.o ] ; 4 uses
  %.sroa.13.2.us.i7 = phi nsz float [ %.sroa.13.158.us.i, %bb.n ], [ %i.cx, %bb.o ] ; 3 uses
  %.2.us.i8 = phi i32 [ %.160.us.i, %bb.n ], [ %i.cf, %bb.o ] ; 4 uses
  %i.cy = add i32 %.02359.us.i, %.sroa.speculated31.i ; 2 uses
  %i.cz = icmp ult i32 %i.cy, %.sroa.017.0.copyload.i3
  br i1 %i.cz, label %bb.n, label %._crit_edge.us.i9, !llvm.loop !57

._crit_edge.us.i9:                                ; preds = %bb.p
  %i.da = add i32 %.02265.us.i, %.sroa.speculated.i4 ; 2 uses
  %i.db = icmp ult i32 %i.da, %.sroa.5.0.copyload.i
  br i1 %i.db, label %.preheader.us.i6, label %._crit_edge67.i, !llvm.loop !58

._crit_edge67.i:                                  ; preds = %._crit_edge.us.i9
  %.not.i10 = icmp eq i32 %.2.us.i8, 0
  br i1 %.not.i10, label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge67.i
  %i.dc = uitofp nsz i32 %.2.us.i8 to float       ; 3 uses
  %.sroa.036.0.vec.extract42.i = extractelement <2 x float> %.sroa.036.2.us.i, i64 0
  %i.dd = fdiv nsz float %.sroa.036.0.vec.extract42.i, %i.dc ; 3 uses
  %.sroa.036.4.vec.extract49.i = extractelement <2 x float> %.sroa.036.2.us.i, i64 1
  %i.de = fdiv nsz float %.sroa.036.4.vec.extract49.i, %i.dc ; 3 uses
  %i.df = fdiv nsz float %.sroa.13.2.us.i7, %i.dc ; 3 uses
  %i.dg = fcmp nsz ogt float %i.dd, 3.130800e-03
  br i1 %i.dg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dh = tail call nsz float @llvm.pow.f32(float %i.dd, float f0x3ED55555)
  %i.di = tail call nnan nsz float @llvm.fmuladd.f32(float %i.dh, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11

bb.s:                                             ; preds = %bb.q
  %i.dj = fmul nsz float %i.dd, 1.292000e+01
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11

_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11: ; preds = %bb.s, %bb.r
  %.0.i.i.i12 = phi nsz float [ %i.di, %bb.r ], [ %i.dj, %bb.s ]
  %i.dk = fcmp nsz ogt float %i.de, 3.130800e-03
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11
  %i.dl = tail call nsz float @llvm.pow.f32(float %i.de, float f0x3ED55555)
  %i.dm = tail call nnan nsz float @llvm.fmuladd.f32(float %i.dl, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11
  %i.dn = fmul nsz float %i.de, 1.292000e+01
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13

_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13: ; preds = %bb.u, %bb.t
  %.0.i2.i.i14 = phi nsz float [ %i.dm, %bb.t ], [ %i.dn, %bb.u ]
  %i.do = fcmp nsz ogt float %i.df, 3.130800e-03
  br i1 %i.do, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13
  %i.dp = tail call nsz float @llvm.pow.f32(float %i.df, float f0x3ED55555)
  %i.dq = tail call nnan nsz float @llvm.fmuladd.f32(float %i.dp, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15

bb.w:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13
  %i.dr = fmul nsz float %i.df, 1.292000e+01
  br label %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15

_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15: ; preds = %bb.w, %bb.v
  %.0.i4.i.i16 = phi nsz float [ %i.dq, %bb.v ], [ %i.dr, %bb.w ]
  %i.ds = insertelement <2 x float> poison, float %.0.i4.i.i16, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %.0.i.i.i12, i64 1
  %i.du = fmul nsz <2 x float> %i.dt, splat (float 2.550000e+02) ; 2 uses
  %i.dv = fmul nsz float %.0.i2.i.i14, 2.550000e+02 ; 2 uses
  %i.dw = fcmp nsz olt float %i.dv, 0.000000e+00
  %i.dx = select i1 %i.dw, float 0.000000e+00, float %i.dv ; 2 uses
  %i.dy = fcmp nsz olt float %i.dx, 2.550000e+02
  %i.dz = select i1 %i.dy, float %i.dx, float 2.550000e+02
  %i.ea = fadd nsz float %i.dz, 5.000000e-01
  %i.eb = fptosi float %i.ea to i32
  %i.ec = shl i32 %i.eb, 8
  %i.ed = and i32 %i.ec, 65280
  %i.ee = fcmp nsz olt <2 x float> %i.du, zeroinitializer
  %i.ef = select <2 x i1> %i.ee, <2 x float> zeroinitializer, <2 x float> %i.du ; 2 uses
  %i.eg = fcmp nsz olt <2 x float> %i.ef, splat (float 2.550000e+02)
  %i.eh = select <2 x i1> %i.eg, <2 x float> %i.ef, <2 x float> splat (float 2.550000e+02)
  %i.ei = fadd nsz <2 x float> %i.eh, splat (float 5.000000e-01)
  %i.ej = fptosi <2 x float> %i.ei to <2 x i32>   ; 2 uses
  %i.ek = extractelement <2 x i32> %i.ej, i64 1
  %i.el = shl i32 %i.ek, 16
  %.masked.i17 = or disjoint i32 %i.ed, %i.el
  %i.em = extractelement <2 x i32> %i.ej, i64 0
  %i.en = and i32 %i.em, 255
  %i.eo = or disjoint i32 %i.en, %.masked.i17
  %i.ep = or i32 %i.eo, -16777216
  br label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit

_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit: ; preds = %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15, %._crit_edge67.i, %bb.m, %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i, %._crit_edge71.i, %bb.b
  %.sroa.0.0 = phi i32 [ -16777216, %bb.b ], [ -16777216, %._crit_edge71.i ], [ %i.bx, %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i ], [ -16777216, %._crit_edge67.i ], [ %i.ep, %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15 ], [ -16777216, %bb.m ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z14imageScaleNNAAPN5video6IImageERKN4core4rectIiEES1_(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.video::SColor", align 4     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load <2 x i32>, ptr %1, align 4, !tbaa !23 ; 3 uses
  %i.c = extractelement <2 x i32> %i.b, i64 0
  %i.d = sitofp nsz i32 %i.c to float             ; 2 uses
  %i.e = extractelement <2 x i32> %i.b, i64 1
  %i.f = sitofp nsz i32 %i.e to float             ; 2 uses
  %i.g = load <2 x i32>, ptr %i.a, align 4, !tbaa !23 ; 3 uses
  %i.h = extractelement <2 x i32> %i.g, i64 1     ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge159.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load <2 x i32>, ptr %i.i, align 4, !tbaa !23
  %i.k = sub nsw <2 x i32> %i.j, %i.b
  %i.l = sitofp <2 x i32> %i.k to <2 x float>     ; 3 uses
  %i.m = extractelement <2 x i32> %i.g, i64 0     ; 2 uses
  %.not160 = icmp eq i32 %i.m, 0
  %i.n = uitofp <2 x i32> %i.g to <2 x float>     ; 3 uses
  %i.o = extractelement <2 x float> %i.l, i64 0   ; 2 uses
  %i.p = fadd nsz float %i.o, %i.d                ; 4 uses
  %i.q = extractelement <2 x float> %i.l, i64 1   ; 2 uses
  %i.r = fadd nsz float %i.q, %i.f                ; 4 uses
  %i.s = fdiv nsz <2 x float> %i.l, %i.n          ; 2 uses
  br i1 %.not160, label %._crit_edge159.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.t = extractelement <2 x float> %i.n, i64 1
  %i.u = extractelement <2 x float> %i.s, i64 1
  %i.v = extractelement <2 x float> %i.s, i64 0
  %i.w = extractelement <2 x float> %i.n, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.073158 = phi i32 [ %i.cw, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.x = uitofp nsz i32 %.073158 to float
  %i.y = fmul nnan nsz float %i.q, %i.x
  %i.z = fdiv nsz float %i.y, %i.t
  %i.aa = fadd nsz float %i.z, %i.f               ; 3 uses
  %i.ab = fcmp nsz olt float %i.aa, 0.000000e+00
  %i.ac = fcmp nsz ogt float %i.aa, %i.r
  %..i95 = select nsz i1 %i.ac, float %i.r, float %i.aa
  %.0.i96 = select nsz i1 %i.ab, float 0.000000e+00, float %..i95 ; 4 uses
  %i.ad = fadd nsz float %i.u, %.0.i96            ; 3 uses
  %i.ae = fcmp nsz olt float %i.ad, 0.000000e+00
  %i.af = fcmp nsz ogt float %i.ad, %i.r
  %..i98 = select nsz i1 %i.af, float %i.r, float %i.ad
  %.0.i99 = select nsz i1 %i.ae, float 0.000000e+00, float %..i98 ; 3 uses
  %i.ag = fcmp nsz ogt float %.0.i96, %.0.i99     ; 2 uses
  %.0126 = select nsz i1 %i.ag, float %.0.i99, float %.0.i96 ; 3 uses
  %.0125 = select nsz i1 %i.ag, float %.0.i96, float %.0.i99 ; 4 uses
  %i.ah = call nsz noundef float @llvm.floor.f32(float %.0126) ; 2 uses
  %i.ai = fcmp nsz olt float %i.ah, %.0125
  br label %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit

_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit:           ; preds = %.preheader, %._crit_edge147.thread
  %.072157 = phi i32 [ 0, %.preheader ], [ %i.cv, %._crit_edge147.thread ] ; 3 uses
  %i.aj = uitofp nsz i32 %.072157 to float
  %i.ak = fmul nnan nsz float %i.o, %i.aj
  %i.al = fdiv nsz float %i.ak, %i.w
  %i.am = fadd nsz float %i.al, %i.d              ; 3 uses
  %i.an = fcmp nsz olt float %i.am, 0.000000e+00
  %i.ao = fcmp nsz ogt float %i.am, %i.p
  %..i = select nsz i1 %i.ao, float %i.p, float %i.am
  %.0.i = select nsz i1 %i.an, float 0.000000e+00, float %..i ; 4 uses
  %i.ap = fadd nsz float %i.v, %.0.i              ; 3 uses
  %i.aq = fcmp nsz olt float %i.ap, 0.000000e+00
  %i.ar = fcmp nsz ogt float %i.ap, %i.p
  %..i92 = select nsz i1 %i.ar, float %i.p, float %i.ap
  %.0.i93 = select nsz i1 %i.aq, float 0.000000e+00, float %..i92 ; 3 uses
  %i.as = fcmp nsz ogt float %.0.i, %.0.i93       ; 2 uses
  %.0128 = select nsz i1 %i.as, float %.0.i93, float %.0.i ; 3 uses
  %.0127 = select nsz i1 %i.as, float %.0.i, float %.0.i93 ; 4 uses
  br i1 %i.ai, label %.lr.ph146, label %._crit_edge147.thread

.lr.ph146:                                        ; preds = %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit
  %i.at = call nsz noundef float @llvm.floor.f32(float %.0128) ; 2 uses
  %i.au = fcmp nsz olt float %i.at, %.0127
  br i1 %i.au, label %.lr.ph.us, label %._crit_edge147.thread

.lr.ph.us:                                        ; preds = %.lr.ph146, %._crit_edge.us
  %.085141.us = phi float [ %i.bt, %._crit_edge.us ], [ 0.000000e+00, %.lr.ph146 ]
  %.087140.us = phi float [ %i.az, %._crit_edge.us ], [ %i.ah, %.lr.ph146 ] ; 5 uses
  %i.av = phi <4 x float> [ %i.cg, %._crit_edge.us ], [ zeroinitializer, %.lr.ph146 ]
  %i.aw = fcmp nsz ogt float %.0126, %.087140.us
  %i.ax = fsub nsz float %.087140.us, %.0126
  %i.ay = fadd nsz float %i.ax, 1.000000e+00
  %.074.us = select nsz i1 %i.aw, float %i.ay, float 1.000000e+00 ; 2 uses
  %i.az = fadd nsz float %.087140.us, 1.000000e+00 ; 3 uses
  %i.ba = fcmp nsz olt float %.0125, %i.az
  %i.bb = fsub nsz float %.0125, %.087140.us
  %i.bc = fadd nsz float %i.bb, -1.000000e+00
  %i.bd = fadd nsz float %i.bc, %.074.us
  %.1.us = select nsz i1 %i.ba, float %i.bd, float %.074.us
  %i.be = fptoui float %.087140.us to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %.0135.us = phi float [ %i.at, %.lr.ph.us ], [ %i.bj, %bb.b ] ; 5 uses
  %.186130.us = phi float [ %.085141.us, %.lr.ph.us ], [ %i.bt, %bb.b ]
  %i.bf = phi <4 x float> [ %i.av, %.lr.ph.us ], [ %i.cg, %bb.b ]
  %i.bg = fcmp nsz ogt float %.0128, %.0135.us
  %i.bh = fsub nsz float %.0135.us, %.0128
  %i.bi = fadd nsz float %i.bh, 1.000000e+00
  %.075.us = select nsz i1 %i.bg, float %i.bi, float 1.000000e+00 ; 2 uses
  %i.bj = fadd nsz float %.0135.us, 1.000000e+00  ; 3 uses
  %i.bk = fcmp nsz olt float %.0127, %i.bj
  %i.bl = fsub nsz float %.0127, %.0135.us
  %i.bm = fadd nsz float %i.bl, -1.000000e+00
  %i.bn = fadd nsz float %i.bm, %.075.us
  %.176.us = select nsz i1 %i.bk, float %i.bn, float %.075.us
  %i.bo = fmul nsz float %.1.us, %.176.us         ; 2 uses
  %i.bp = fptoui float %.0135.us to i32
  %i.bq = load ptr, ptr %0, align 8, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = fadd nsz float %.186130.us, %i.bo       ; 4 uses
  %i.bu = call i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %i.bp, i32 noundef %i.be) ; 5 uses
  store i32 %i.bu, ptr %3, align 4, !tbaa !23
  %i.bv = lshr i32 %i.bu, 24
  %i.bw = lshr i32 %i.bu, 16
  %i.bx = lshr i32 %i.bu, 8
  %i.by = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %i.bz = insertelement <4 x i32> %i.by, i32 %i.bw, i64 1
  %i.ca = insertelement <4 x i32> %i.bz, i32 %i.bu, i64 2
  %i.cb = insertelement <4 x i32> %i.ca, i32 %i.bv, i64 3
  %i.cc = and <4 x i32> %i.cb, <i32 255, i32 255, i32 255, i32 -1>
  %i.cd = uitofp <4 x i32> %i.cc to <4 x float>
  %i.ce = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cg = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.cd, <4 x float> %i.bf) ; 3 uses
  %i.ch = fcmp nsz olt float %i.bj, %.0127
  br i1 %i.ch, label %bb.b, label %._crit_edge.us, !llvm.loop !59

._crit_edge.us:                                   ; preds = %bb.b
  %i.ci = fcmp nsz olt float %i.az, %.0125
  br i1 %i.ci, label %.lr.ph.us, label %._crit_edge147, !llvm.loop !60

._crit_edge147:                                   ; preds = %._crit_edge.us
  %i.cj = fcmp nsz ogt float %i.bt, 0.000000e+00
  br i1 %i.cj, label %bb.c, label %._crit_edge147.thread

bb.c:                                             ; preds = %._crit_edge147
  %i.ck = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = fdiv nsz <4 x float> %i.cg, %i.cl
  %i.cn = fadd nsz <4 x float> %i.cm, splat (float 5.000000e-01)
  %i.co = fptoui <4 x float> %i.cn to <4 x i32>
  %i.cp = shl <4 x i32> %i.co, <i32 8, i32 16, i32 0, i32 24>
  %i.cq = and <4 x i32> %i.cp, <i32 65280, i32 16711680, i32 255, i32 -1>
  %i.cr = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cq)
  br label %._crit_edge147.thread

._crit_edge147.thread:                            ; preds = %.lr.ph146, %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit, %._crit_edge147, %bb.c
  %storemerge = phi i32 [ %i.cr, %bb.c ], [ 0, %._crit_edge147 ], [ 0, %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit ], [ 0, %.lr.ph146 ]
  store i32 %storemerge, ptr %3, align 4, !tbaa !64
  %i.cs = load ptr, ptr %2, align 8, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(41) %2, i32 noundef %.072157, i32 noundef %.073158, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext false)
  %i.cv = add nuw i32 %.072157, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.cv, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit, !llvm.loop !61

._crit_edge:                                      ; preds = %._crit_edge147.thread
  %i.cw = add nuw i32 %.073158, 1                 ; 2 uses
  %exitcond166.not = icmp eq i32 %i.cw, %i.h
  br i1 %exitcond166.not, label %._crit_edge159.split, label %.preheader, !llvm.loop !62

._crit_edge159.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not65 = icmp ult i64 %i.g, %2
  br i1 %.not65, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !17      ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !25

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1, !tbaa !17
  store i8 %i.q, ptr %i.d, align 1, !tbaa !17
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8, !tbaa !21
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !25

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.z, ptr %i.y, align 1, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.l:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ac, %bb.m ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !21
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.n, label %bb.o, !prof !25

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.p, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !17
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !21
  %.not.i.i.i70 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i70, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.r:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !19    ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.s, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.r
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.au = phi ptr [ %i.at, %bb.t ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.v, label %bb.w, !prof !25

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.u
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.x, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.x:                                             ; preds = %bb.w
  %i.az = load i8, ptr %i.ai, align 1, !tbaa !17
  store i8 %i.az, ptr %i.au, align 1, !tbaa !17
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.x, %bb.w, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.bb = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.y, label %bb.z, !prof !25

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %1, i64 %i.bb, i1 false)
  br label %bb.ab

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bd = icmp eq i64 %i.bb, 1
  br i1 %i.bd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.be = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !17
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bi) #10
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ab, %bb.ac
  store ptr %i.au, ptr %0, align 8, !tbaa !19
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !20
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.k, %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69, %bb.q, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = load ptr, ptr %1, align 8, !tbaa !19     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.f, 0
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, !prof !24

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #11
  unreachable

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #12 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !25

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.q = load i8, ptr %i.c, align 1, !tbaa !17
  store i8 %i.q, ptr %i.o, align 1, !tbaa !17
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit

_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit: ; preds = %bb.e, %bb.f
  %i.r = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #10
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !20
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.h:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp sgt i64 %i.f, 1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !25

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %i.f, 1
  br i1 %i.ac, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = load i8, ptr %i.c, align 1, !tbaa !17
  store i8 %i.ad, ptr %i.i, align 1, !tbaa !17
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.h
  %i.ae = icmp sgt i64 %i.aa, 1
  br i1 %i.ae, label %bb.n, label %bb.o, !prof !25

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

bb.o:                                             ; preds = %bb.m
  %i.af = icmp eq i64 %i.aa, 1
  br i1 %i.af, label %bb.p, label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.o
  %i.ag = load i8, ptr %i.c, align 1, !tbaa !17
  store i8 %i.ag, ptr %i.i, align 1, !tbaa !17
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

_ZSt4copyIPhS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.n, %bb.o, %bb.p
  %i.ah = load ptr, ptr %1, align 8, !tbaa !19
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !21  ; 3 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !19
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 3 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 1
  br i1 %i.as, label %bb.q, label %bb.r, !prof !25

bb.q:                                             ; preds = %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.an, i64 %i.ar, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.r:                                             ; preds = %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit
  %i.at = icmp eq i64 %i.ar, 1
  br i1 %i.at, label %bb.s, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %bb.r
  %i.au = load i8, ptr %i.an, align 1, !tbaa !17
  store i8 %i.au, ptr %i.ai, align 1, !tbaa !17
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.l, %bb.k, %bb.j, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit
  %i.av = load ptr, ptr %0, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !21
  br label %bb.t

bb.t:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #3

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_imagefilters.cpp() #8 section ".text.startup" {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = uitofp nneg <4 x i64> %vec.ind to <4 x float>
  %i.b = fdiv nsz <4 x float> %i.a, splat (float 2.550000e+02) ; 3 uses
  %i.c = fcmp nsz ogt <4 x float> %i.b, splat (float 4.045000e-02)
  %i.d = fdiv nsz <4 x float> %i.b, splat (float 1.292000e+01)
  %i.e = fadd nsz <4 x float> %i.b, splat (float 5.500000e-02)
  %i.f = fdiv nsz <4 x float> %i.e, splat (float 1.055000e+00)
  %i.g = tail call nsz <4 x float> @llvm.pow.v4f32(<4 x float> %i.f, <4 x float> splat (float 2.400000e+00))
  %predphi = select nsz <4 x i1> %i.c, <4 x float> %i.g, <4 x float> %i.d
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %index
  store <4 x float> %predphi, ptr %i.h, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.i = icmp eq i64 %index.next, 256
  br i1 %i.i, label %__cxx_global_var_init.exit, label %vector.body, !llvm.loop !65

__cxx_global_var_init.exit:                       ; preds = %vector.body
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.pow.v4f32(<4 x float>, <4 x float>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTSN5video13ECOLOR_FORMATE", !5, i64 0}
!10 = !{!"_ZTSN4core11dimension2dIjEE", !6, i64 0, !6, i64 4}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"bool", !5, i64 0}
!14 = !{!"_ZTSN5video6IImageE", !9, i64 8, !10, i64 12, !12, i64 24, !6, i64 32, !6, i64 36, !13, i64 40}
!15 = !{!14, !9, i64 8}
!16 = !{!14, !12, i64 24}
!17 = !{!5, !5, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!19 = !{!18, !12, i64 0}
!20 = !{!18, !12, i64 16}
!21 = !{!18, !12, i64 8}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!6, !6, i64 0}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = !{!"vtable pointer", !4, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"float", !5, i64 0}
!29 = !{!28, !28, i64 0}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !22}
!38 = distinct !{!38, !22}
!39 = distinct !{null}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !22}
!44 = distinct !{null}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !18, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIhSaIhEE", !48, i64 0}
!50 = !{!"_ZTS6Bitmap", !6, i64 0, !6, i64 4, !49, i64 8}
!51 = !{!50, !6, i64 0}
!52 = !{!50, !6, i64 4}
!53 = !{!12, !12, i64 0}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22}
!56 = distinct !{null, null}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = distinct !{!59, !22}
!60 = distinct !{!60, !22}
!61 = distinct !{!61, !22}
!62 = distinct !{!62, !22}
!63 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!64 = !{!63, !6, i64 0}
!65 = distinct !{!65, !22, !66, !67}
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_1
