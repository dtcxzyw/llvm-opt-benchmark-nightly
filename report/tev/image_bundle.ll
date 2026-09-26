Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/image_bundle?download=true
inline.NumInlined: 498
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0

$_ZSt28__throw_bad_array_new_lengthB8nn180100v = comdat any

$_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE9push_backEOS3_ = comdat any

$_ZNKSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev = comdat any

@.str.21 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.22 = private unnamed_addr constant [66 x i8] c"length_error was thrown in -fno-exceptions mode with message \22%s\22\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"bad_array_new_length was thrown in -fno-exceptions mode\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl11ImageBundle8ShrinkToEmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(504) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i64 %1 to i32                  ; 3 uses
  %i.d = trunc nuw i64 %2 to i32                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i32, ptr %i.e, align 8, !tbaa !106
  %i.g = zext i32 %i.f to i64
  %.not.i.i = icmp ugt i64 %1, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64
  %.not6.i.i = icmp ugt i64 %2, %i.j
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not6.i.i
  br i1 %or.cond.i.i, label %_ZN3jxl6detail9PlaneBase8ShrinkToEmm.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.d, ptr %i.k, align 4, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load i32, ptr %i.l, align 8, !tbaa !106
  %i.n = zext i32 %i.m to i64
  %.not.i.1.i = icmp samesign ugt i64 %1, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64
  %.not6.i.1.i = icmp samesign ugt i64 %2, %i.q
  %or.cond.i.1.i = select i1 %.not.i.1.i, i1 true, i1 %.not6.i.1.i
  br i1 %or.cond.i.1.i, label %_ZN3jxl6detail9PlaneBase8ShrinkToEmm.exit, label %.critedge.1.i

.critedge.1.i:                                    ; preds = %.critedge.i
  %.0.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.c, ptr %.0.ptr.1.i, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %i.d, ptr %i.r, align 4, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.t = load i32, ptr %i.s, align 8, !tbaa !106
  %i.u = zext i32 %i.t to i64
  %.not.i.2.i = icmp samesign ugt i64 %1, %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.w = load i32, ptr %i.v, align 4
  %i.x = zext i32 %i.w to i64
  %.not6.i.2.i = icmp samesign ugt i64 %2, %i.x
  %or.cond.i.2.i = select i1 %.not.i.2.i, i1 true, i1 %.not6.i.2.i
  br i1 %or.cond.i.2.i, label %_ZN3jxl6detail9PlaneBase8ShrinkToEmm.exit, label %_ZN3jxl6Image3IfE8ShrinkToEmm.exit

_ZN3jxl6Image3IfE8ShrinkToEmm.exit:               ; preds = %.critedge.1.i
  %.0.ptr.2.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %i.c, ptr %.0.ptr.2.i, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 %i.d, ptr %i.y, align 4, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %_ZN3jxl6Image3IfE8ShrinkToEmm.exit, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %.not2930 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not2930, label %_ZN3jxl6detail9PlaneBase8ShrinkToEmm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ad = trunc nuw i64 %1 to i32
  %i.ae = trunc nuw i64 %2 to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.012.031 = phi ptr [ %i.aa, %.lr.ph ], [ %i.am, %.critedge ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.031, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !106
  %i.ah = zext i32 %i.ag to i64
  %.not.i = icmp ugt i64 %1, %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.012.031, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = zext i32 %i.aj to i64
  %.not6.i = icmp ugt i64 %2, %i.ak
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not6.i
  br i1 %or.cond.i, label %_ZN3jxl6detail9PlaneBase8ShrinkToEmm.exit, label %.critedge

.critedge:                                        ; preds = %bb.d
  store i32 %i.ad, ptr %.sroa.012.031, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.031, i64 4
  store i32 %i.ae, ptr %i.al, align 4, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.031, i64 56 ; 2 uses
  %.not29 = icmp eq ptr %i.am, %i.ac
  br i1 %.not29, label %_ZN3jxl6detail9PlaneBase8ShrinkToEmm.exit, label %bb.d

_ZN3jxl6detail9PlaneBase8ShrinkToEmm.exit:        ; preds = %bb.d, %.critedge, %bb.c, %.critedge.1.i, %.critedge.i, %bb.b
  %.sroa.015.3 = phi i32 [ 1, %.critedge.i ], [ 1, %.critedge.1.i ], [ 1, %bb.b ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %.critedge ]
  ret i32 %.sroa.015.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl11ImageBundle12SetFromImageEONS_6Image3IfEERKNS_13ColorEncodingE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(200) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !15
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %.not9 = icmp eq i32 %i.c, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not9
  br i1 %or.cond, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load i32, ptr %i.f, align 8, !tbaa !56
  %i.h = icmp eq i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56
  %i.k = icmp eq i32 %i.j, 1
  %i.l = xor i1 %i.h, %i.k
  br i1 %i.l, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.m, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o) #12 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.r, ptr %i.s, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.x = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.w) #12 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load i64, ptr %i.y, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %i.ab, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.af = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #12 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i16, ptr %i.al, align 8
  store i16 %i.am, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %i.an, ptr noundef nonnull align 8 dereferenceable(92) %i.ao, i64 13, i1 false)
  %.not.i.i.i = icmp eq ptr %i.aj, %2
  br i1 %.not.i.i.i, label %_ZN3jxl13ColorEncodingaSERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !58 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !59 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE18__assign_with_sizeB8nn180100IPhS5_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef %i.ar, ptr noundef %i.at, i64 noundef %i.aw) #13
  br label %_ZN3jxl13ColorEncodingaSERKS0_.exit

_ZN3jxl13ColorEncodingaSERKS0_.exit:              ; preds = %bb.c, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ax, ptr noundef nonnull align 8 dereferenceable(52) %i.i, i64 52, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !107
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !107
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !107
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !107
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !107
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !107
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !107
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !107
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !60 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.bn, null
  br i1 %.not1.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN3jxl13ColorEncodingaSERKS0_.exit
  %i.bo = load i32, ptr %i.m, align 8, !tbaa !15  ; 2 uses
  %.not.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !21 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !22
  %i.bt = icmp eq ptr %i.bq, %i.bs
  br i1 %i.bt, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = load i32, ptr %i.bq, align 8, !tbaa !15
  br label %bb.i

bb.h:                                             ; preds = %_ZN3jxl13ColorEncodingaSERKS0_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !85
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !86
  %i.ca = sext i32 %i.bz to i64
  br label %_ZNK3jxl11ImageBundle5ysizeEv.exit.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.ph.shrunk.i = phi i32 [ %i.bo, %bb.e ], [ %i.bu, %bb.g ], [ 0, %bb.f ]
  %.0.i.ph.i = zext i32 %.0.i.ph.shrunk.i to i64  ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !16 ; 2 uses
  %i.cd = zext i32 %i.cc to i64
  %.not.i19.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i19.i, label %bb.j, label %_ZNK3jxl11ImageBundle5ysizeEv.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !22
  %i.ci = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ci, label %_ZNK3jxl11ImageBundle5ysizeEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !16
  %i.cl = zext i32 %i.ck to i64
  br label %_ZNK3jxl11ImageBundle5ysizeEv.exit.i

_ZNK3jxl11ImageBundle5ysizeEv.exit.i:             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0.i28.i = phi i64 [ %i.bx, %bb.h ], [ %.0.i.ph.i, %bb.j ], [ %.0.i.ph.i, %bb.k ], [ %.0.i.ph.i, %bb.i ] ; 2 uses
  %.0.i18.i = phi i64 [ %i.ca, %bb.h ], [ 0, %bb.j ], [ %i.cl, %bb.k ], [ %i.cd, %bb.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !21 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !22 ; 2 uses
  %.not.i = icmp eq ptr %i.cn, %i.cp
  br i1 %.not.i, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK3jxl11ImageBundle5ysizeEv.exit.i
  %i.cq = icmp ne i64 %.0.i28.i, 0
  %i.cr = icmp ne i64 %.0.i18.i, 0
  %or.cond.i = and i1 %i.cq, %i.cr
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit

bb.m:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.022.032.i, i64 56 ; 2 uses
  %.not30.i = icmp eq ptr %i.cs, %i.cp
  br i1 %.not30.i, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.m
  %.sroa.022.032.i = phi ptr [ %i.cs, %bb.m ], [ %i.cn, %bb.l ] ; 3 uses
  %i.ct = load i32, ptr %.sroa.022.032.i, align 8, !tbaa !15
  %i.cu = zext i32 %i.ct to i64
  %i.cv = icmp eq i64 %.0.i28.i, %i.cu
  br i1 %i.cv, label %bb.n, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit

bb.n:                                             ; preds = %.lr.ph.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.022.032.i, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !16
  %i.cy = zext i32 %i.cx to i64
  %i.cz = icmp eq i64 %.0.i18.i, %i.cy
  br i1 %i.cz, label %bb.m, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit

_ZNK3jxl11ImageBundle11VerifySizesEv.exit:        ; preds = %bb.m, %bb.n, %.lr.ph.i, %_ZNK3jxl11ImageBundle5ysizeEv.exit.i, %bb.l, %bb.b, %bb.a
  %.sroa.011.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ 1, %bb.l ], [ 0, %_ZNK3jxl11ImageBundle5ysizeEv.exit.i ], [ 0, %bb.m ], [ 1, %.lr.ph.i ], [ 1, %bb.n ]
  ret i32 %.sroa.011.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @_ZNK3jxl11ImageBundle11VerifySizesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %.not1.i = icmp eq ptr %i.b, null
  br i1 %.not1.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.f, align 8, !tbaa !15
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !85
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !86
  %i.p = sext i32 %i.o to i64
  br label %_ZNK3jxl11ImageBundle5ysizeEv.exit

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0.i.ph.shrunk = phi i32 [ %i.d, %bb.b ], [ %i.j, %bb.d ], [ 0, %bb.c ]
  %.0.i.ph = zext i32 %.0.i.ph.shrunk to i64      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16   ; 2 uses
  %i.s = zext i32 %i.r to i64
  %.not.i19 = icmp eq i32 %i.r, 0
  br i1 %.not.i19, label %bb.g, label %_ZNK3jxl11ImageBundle5ysizeEv.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %_ZNK3jxl11ImageBundle5ysizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !16
  %i.aa = zext i32 %i.z to i64
  br label %_ZNK3jxl11ImageBundle5ysizeEv.exit

_ZNK3jxl11ImageBundle5ysizeEv.exit:               ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i28 = phi i64 [ %i.m, %bb.e ], [ %.0.i.ph, %bb.g ], [ %.0.i.ph, %bb.h ], [ %.0.i.ph, %bb.f ] ; 2 uses
  %.0.i18 = phi i64 [ %i.p, %bb.e ], [ 0, %bb.g ], [ %i.aa, %bb.h ], [ %i.s, %bb.f ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.ae
  br i1 %.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZNK3jxl11ImageBundle5ysizeEv.exit
  %i.af = icmp ne i64 %.0.i28, 0
  %i.ag = icmp ne i64 %.0.i18, 0
  %or.cond = and i1 %i.af, %i.ag
  br i1 %or.cond, label %.lr.ph, label %.critedge

bb.j:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.022.032, i64 56 ; 2 uses
  %.not30 = icmp eq ptr %i.ah, %i.ae
  br i1 %.not30, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.sroa.022.032 = phi ptr [ %i.ah, %bb.j ], [ %i.ac, %bb.i ] ; 3 uses
  %i.ai = load i32, ptr %.sroa.022.032, align 8, !tbaa !15
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp eq i64 %.0.i28, %i.aj
  br i1 %i.ak, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.022.032, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !16
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp eq i64 %.0.i18, %i.an
  br i1 %i.ao, label %bb.j, label %.critedge

.critedge:                                        ; preds = %bb.k, %.lr.ph, %bb.j, %_ZNK3jxl11ImageBundle5ysizeEv.exit, %bb.i
  %.sroa.026.1 = phi i32 [ 1, %bb.i ], [ 0, %_ZNK3jxl11ImageBundle5ysizeEv.exit ], [ 1, %.lr.ph ], [ 1, %bb.k ], [ 0, %bb.j ]
  ret i32 %.sroa.026.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @_ZNK3jxl11ImageBundle14VerifyMetadataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.thread38, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56
  %i.j = icmp eq i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.l = load i32, ptr %i.k, align 8, !tbaa !56
  %i.m = icmp eq i32 %i.l, 1
  %i.n = xor i1 %i.j, %i.m
  br i1 %i.n, label %.thread38, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !91   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !92   ; 4 uses
  %.not1516.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not1516.i.i.i, label %_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.010.017.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !96
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZNK3jxl13ImageMetadata8HasAlphaEv.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i, i64 96 ; 2 uses
  %.not15.i.i.i = icmp eq ptr %i.u, %i.r
  br i1 %.not15.i.i.i, label %.lr.ph.i.i20.preheader, label %.lr.ph.i.i.i

_ZNK3jxl13ImageMetadata8HasAlphaEv.exit:          ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !108
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %.lr.ph.i.i20.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK3jxl13ImageMetadata8HasAlphaEv.exit, %bb.e
  %.sroa.010.017.i.i = phi ptr [ %i.z, %bb.e ], [ %i.p, %_ZNK3jxl13ImageMetadata8HasAlphaEv.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !96
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 96 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.z, %i.r
  br i1 %.not15.i.i, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit.i, label %.lr.ph.i.i

_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit.i: ; preds = %bb.e, %.lr.ph.i.i
  %i.aa = phi ptr [ %.sroa.010.017.i.i, %.lr.ph.i.i ], [ null, %bb.e ]
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.p to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 96
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %i.ag, i64 %i.ae
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !15
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.thread38, label %.lr.ph.i.i20.preheader

.lr.ph.i.i20.preheader:                           ; preds = %bb.d, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit.i, %_ZNK3jxl13ImageMetadata8HasAlphaEv.exit
  br label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %.lr.ph.i.i20.preheader, %bb.f
  %.sroa.010.017.i.i21 = phi ptr [ %i.am, %bb.f ], [ %i.p, %.lr.ph.i.i20.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i21, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !96
  %.not.i.i22 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i22, label %_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i20
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i21, i64 96 ; 2 uses
  %.not15.i.i23 = icmp eq ptr %i.am, %i.r
  br i1 %.not15.i.i23, label %_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26.thread, label %.lr.ph.i.i20

_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26:   ; preds = %.lr.ph.i.i20
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i21, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !108
  %i.ap = icmp ult i32 %i.ao, 33
  br i1 %i.ap, label %_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26.thread, label %.thread38

_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26.thread: ; preds = %bb.f, %bb.c, %_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26
  br label %.thread38

.thread38:                                        ; preds = %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit.i, %_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26, %bb.b, %bb.a, %_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26.thread
  %.sroa.030.1 = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26.thread ], [ 1, %_ZNK3jxl13ImageMetadata12GetAlphaBitsEv.exit26 ], [ 1, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit.i ]
  ret i32 %.sroa.030.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK3jxl11ImageBundle5alphaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 3 uses
  %.not1516.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not1516.i.i, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.010.017.i.i = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !96
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 96 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.i, %i.f
  br i1 %.not15.i.i, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit, label %.lr.ph.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.010.017.i = phi ptr [ %i.l, %bb.c ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 96 ; 2 uses
  %.not15.i = icmp eq ptr %i.l, %i.f
  br i1 %.not15.i, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, label %.lr.ph.i

_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit: ; preds = %.lr.ph.i, %bb.c
  %i.m = phi ptr [ %.sroa.010.017.i, %.lr.ph.i ], [ null, %bb.c ]
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %i.q
  br label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit

_ZNK3jxl11ImageBundle8HasAlphaEv.exit:            ; preds = %bb.b, %bb.a, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit
  %.0 = phi ptr [ %i.t, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i64 0, 4294967296) i64 @_ZNK3jxl11ImageBundle18DetectRealBitdepthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !115
  %i.e = zext i32 %i.d to i64
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK3jxl11ImageBundle5blackEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 3 uses
  %.not1516.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not1516.i.i, label %_ZNK3jxl11ImageBundle8HasBlackEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.010.017.i.i = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !96
  %.not.i.i = icmp eq i32 %i.h, 4
  br i1 %.not.i.i, label %.lr.ph.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 96 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.i, %i.f
  br i1 %.not15.i.i, label %_ZNK3jxl11ImageBundle8HasBlackEv.exit, label %.lr.ph.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.010.017.i = phi ptr [ %i.l, %bb.c ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96
  %.not.i = icmp eq i32 %i.k, 4
  br i1 %.not.i, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 96 ; 2 uses
  %.not15.i = icmp eq ptr %i.l, %i.f
  br i1 %.not15.i, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, label %.lr.ph.i

_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit: ; preds = %.lr.ph.i, %bb.c
  %i.m = phi ptr [ %.sroa.010.017.i, %.lr.ph.i ], [ null, %bb.c ]
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %i.q
  br label %_ZNK3jxl11ImageBundle8HasBlackEv.exit

_ZNK3jxl11ImageBundle8HasBlackEv.exit:            ; preds = %bb.b, %bb.a, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit
  %.0 = phi ptr [ %i.t, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN3jxl11ImageBundle5alphaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 3 uses
  %.not1516.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not1516.i.i, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.010.017.i.i = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !96
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 96 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.i, %i.f
  br i1 %.not15.i.i, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit, label %.lr.ph.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.010.017.i = phi ptr [ %i.l, %bb.c ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 96 ; 2 uses
  %.not15.i = icmp eq ptr %i.l, %i.f
  br i1 %.not15.i, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, label %.lr.ph.i

_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit: ; preds = %.lr.ph.i, %bb.c
  %i.m = phi ptr [ %.sroa.010.017.i, %.lr.ph.i ], [ null, %bb.c ]
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %i.q
  br label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit

_ZNK3jxl11ImageBundle8HasAlphaEv.exit:            ; preds = %bb.b, %bb.a, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit
  %.0 = phi ptr [ %i.t, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl11ImageBundle8SetAlphaEONS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 3 uses
  %.not1516.i = icmp eq ptr %i.d, %i.f
  br i1 %.not1516.i, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.010.017.i = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !96
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 96 ; 2 uses
  %.not15.i = icmp eq ptr %i.i, %i.f
  br i1 %.not15.i, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %.lr.ph.i

_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit: ; preds = %.lr.ph.i
  %i.j = load i32, ptr %1, align 8, !tbaa !15
  %.not12 = icmp eq i32 %i.j, 0
  br i1 %.not12, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %.not13 = icmp eq i32 %i.l, 0
  br i1 %.not13, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 56
  %i.u = ptrtoint ptr %i.f to i64
  %i.v = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 96
  %i.y = icmp ult i64 %i.t, %i.x
  %i.z = ptrtoint ptr %.sroa.010.017.i to i64
  %i.aa = sub i64 %i.z, %i.v
  %i.ab = sdiv exact i64 %i.aa, 96
  %i.ac = getelementptr inbounds [56 x i8], ptr %i.p, i64 %i.ab ; 4 uses
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call ptr @_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE6insertENS_11__wrap_iterIPKS3_EEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %1) #13 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af) #12 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.al, null
  br i1 %.not1.i.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.an = load i32, ptr %i.am, align 8, !tbaa !15 ; 2 uses
  %.not.i.i = icmp eq i32 %i.an, 0
  %.pre31.pre = load ptr, ptr %i.m, align 8, !tbaa !21 ; 6 uses
  %.pre33.pre = load ptr, ptr %i.n, align 8, !tbaa !22 ; 4 uses
  br i1 %.not.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp eq ptr %.pre31.pre, %.pre33.pre
  br i1 %i.ao, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %.pre31.pre, align 8, !tbaa !15
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !85
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !86
  %i.av = sext i32 %i.au to i64
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !21
  %.pre32 = load ptr, ptr %i.n, align 8, !tbaa !22
  br label %_ZNK3jxl11ImageBundle5ysizeEv.exit.i

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0.i.ph.shrunk.i = phi i32 [ %i.an, %bb.h ], [ %i.ap, %bb.j ], [ 0, %bb.i ]
  %.0.i.ph.i = zext i32 %.0.i.ph.shrunk.i to i64  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16 ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %.not.i19.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i19.i, label %bb.m, label %_ZNK3jxl11ImageBundle5ysizeEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.az = icmp eq ptr %.pre31.pre, %.pre33.pre
  br i1 %i.az, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre31.pre, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !16
  %i.bc = zext i32 %i.bb to i64
  br label %_ZNK3jxl11ImageBundle5ysizeEv.exit.i

_ZNK3jxl11ImageBundle5ysizeEv.exit.i:             ; preds = %bb.n, %bb.l, %bb.k
  %i.bd = phi ptr [ %.pre32, %bb.k ], [ %.pre33.pre, %bb.l ], [ %.pre33.pre, %bb.n ] ; 2 uses
  %i.be = phi ptr [ %.pre, %bb.k ], [ %.pre31.pre, %bb.l ], [ %.pre31.pre, %bb.n ] ; 2 uses
  %.0.i28.i = phi i64 [ %i.as, %bb.k ], [ %.0.i.ph.i, %bb.l ], [ %.0.i.ph.i, %bb.n ] ; 2 uses
  %.0.i18.i = phi i64 [ %i.av, %bb.k ], [ %i.ay, %bb.l ], [ %i.bc, %bb.n ] ; 2 uses
  %.not.i14 = icmp eq ptr %i.be, %i.bd
  br i1 %.not.i14, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK3jxl11ImageBundle5ysizeEv.exit.i
  %i.bf = icmp ne i64 %.0.i28.i, 0
  %i.bg = icmp ne i64 %.0.i18.i, 0
  %or.cond.i = and i1 %i.bf, %i.bg
  br i1 %or.cond.i, label %.lr.ph.i15, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit

bb.p:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.022.032.i, i64 56 ; 2 uses
  %.not30.i = icmp eq ptr %i.bh, %i.bd
  br i1 %.not30.i, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.o, %bb.p
  %.sroa.022.032.i = phi ptr [ %i.bh, %bb.p ], [ %i.be, %bb.o ] ; 3 uses
  %i.bi = load i32, ptr %.sroa.022.032.i, align 8, !tbaa !15
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp eq i64 %.0.i28.i, %i.bj
  br i1 %i.bk, label %bb.q, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit

bb.q:                                             ; preds = %.lr.ph.i15
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.022.032.i, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !16
  %i.bn = zext i32 %i.bm to i64
  %i.bo = icmp eq i64 %.0.i18.i, %i.bn
  br i1 %i.bo, label %bb.p, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit

_ZNK3jxl11ImageBundle11VerifySizesEv.exit:        ; preds = %bb.b, %bb.p, %bb.q, %.lr.ph.i15, %bb.m, %_ZNK3jxl11ImageBundle5ysizeEv.exit.i, %bb.o, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, %bb.c, %bb.a
  %.sroa.020.0 = phi i32 [ 1, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit ], [ 1, %bb.q ], [ 0, %_ZNK3jxl11ImageBundle5ysizeEv.exit.i ], [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.o ], [ 0, %bb.m ], [ 0, %bb.p ], [ 1, %.lr.ph.i15 ], [ 1, %bb.b ]
  ret i32 %.sroa.020.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE6insertENS_11__wrap_iterIPKS3_EEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::__1::__split_buffer", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97   ; 2 uses
  %i.j = icmp ult ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %1, %i.g
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m) #12
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !57
  store i64 %i.p, ptr %i.n, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.q, ptr %i.f, align 8, !tbaa !22
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.s = ptrtoint ptr %i.g to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.e, i64 %i.u ; 3 uses
  %i.w = icmp ult ptr %i.v, %i.g
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %.sroa.4.0.lcssa.i = phi ptr [ %i.g, %bb.d ], [ %i.al, %.lr.ph.i ]
  store ptr %.sroa.4.0.lcssa.i, ptr %i.f, align 8, !tbaa !22
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.g, %i.r
  br i1 %.not8.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %._crit_edge.i ] ; 3 uses
  %.079.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %._crit_edge.i ] ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -56 ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 24, i1 false)
  %i.z = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -32
  %i.aa = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -32
  %i.ab = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #12 ; 0 uses
  %i.ac = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !57
  %i.ae = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !57
  %.not.i.i.i.i.i.i = icmp eq ptr %1, %i.x
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !116

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.01720.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.v, %bb.d ] ; 4 uses
  %.sroa.4.019.i = phi ptr [ %i.al, %.lr.ph.i ], [ %i.g, %bb.d ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.019.i, ptr noundef nonnull align 8 dereferenceable(56) %.01720.i, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.4.019.i, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.01720.i, i64 24
  tail call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ag) #12
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.4.019.i, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %.01720.i, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !57
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %.01720.i, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.4.019.i, i64 56 ; 2 uses
  %i.am = icmp ult ptr %i.ak, %i.g
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !117

_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ap = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ao) #12 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !57
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !57
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.at = ptrtoint ptr %i.g to i64
  %i.au = sub i64 %i.at, %i.c
  %i.av = sdiv exact i64 %i.au, 56
  %i.aw = add nsw i64 %i.av, 1                    ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, 329406144173384850
  br i1 %i.ax, label %bb.f, label %_ZNKSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNKSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  unreachable

_ZNKSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit: ; preds = %bb.e
  %i.ay = ptrtoint ptr %i.i to i64
  %i.az = sub i64 %i.ay, %i.c
  %i.ba = sdiv exact i64 %i.az, 56                ; 2 uses
  %.not.i = icmp ult i64 %i.ba, 164703072086692425
  %i.bb = shl nuw nsw i64 %i.ba, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.aw)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 329406144173384850 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.h, ptr %i.bd, align 8, !tbaa !120
  %i.be = icmp eq i64 %.0.i, 0
  br i1 %i.be, label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit
  %i.bf = icmp ugt i64 %.0.i, 329406144173384850
  br i1 %i.bf, label %bb.h, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #15
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i: ; preds = %bb.g
  %i.bg = mul nuw i64 %.0.i, 56
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #16
  br label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit

_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit: ; preds = %_ZNKSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i
  %storemerge.i = phi ptr [ %i.bh, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i ], [ null, %_ZNKSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit ] ; 3 uses
  store ptr %storemerge.i, ptr %3, align 8, !tbaa !103
  %i.bi = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.d ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !104
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !105
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %storemerge.i, i64 %.0.i
  store ptr %i.bl, ptr %i.bc, align 8, !tbaa !97
  call void @_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(56) %2) #13
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !105 ; 3 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %.not13.i.i = icmp eq ptr %1, %i.bn
  br i1 %.not13.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit, %.lr.ph.i.i
  %i.bo = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %i.bm, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit ] ; 3 uses
  %.sroa.18.014.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %i.e, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit ] ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -56 ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, ptr noundef nonnull align 8 dereferenceable(56) %i.bq, i64 24, i1 false)
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 -32
  %i.bs = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -32
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bs) #12
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 -8
  %i.bu = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !57
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !57
  %.not.i.i = icmp eq ptr %i.bq, %i.bn
  br i1 %.not.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i, label %.lr.ph.i.i, !llvm.loop !118

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i: ; preds = %.lr.ph.i.i, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.bm, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit ], [ %i.bp, %.lr.ph.i.i ] ; 2 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.bk, align 8, !tbaa !105
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !22  ; 3 uses
  %i.bx = load ptr, ptr %i.bj, align 8, !tbaa !104 ; 2 uses
  %.not12.i.i = icmp eq ptr %1, %i.bw
  br i1 %.not12.i.i, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EEPS3_.exit, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i, %.lr.ph.i14.i
  %.014.i.i = phi ptr [ %i.cd, %.lr.ph.i14.i ], [ %i.e, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i ] ; 4 uses
  %.01113.i.i = phi ptr [ %i.ce, %.lr.ph.i14.i ], [ %i.bx, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.01113.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.014.i.i, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %.01113.i.i, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bz) #12
  %i.ca = getelementptr inbounds nuw i8, ptr %.01113.i.i, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !57
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !57
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 56 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01113.i.i, i64 56 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.cd, %i.bw
  br i1 %.not.i15.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEPS4_S6_S6_EET2_RT_T0_T1_S7_.exit.loopexit.i, label %.lr.ph.i14.i, !llvm.loop !119

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEPS4_S6_S6_EET2_RT_T0_T1_S7_.exit.loopexit.i: ; preds = %.lr.ph.i14.i
  %.pre.i = load ptr, ptr %i.bk, align 8, !tbaa !97
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !97
  br label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EEPS3_.exit

_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EEPS3_.exit: ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEPS4_S6_S6_EET2_RT_T0_T1_S7_.exit.loopexit.i
  %i.cf = phi ptr [ %i.bw, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i ], [ %.pre, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEPS4_S6_S6_EET2_RT_T0_T1_S7_.exit.loopexit.i ] ; 3 uses
  %i.cg = phi ptr [ %.sroa.2.0.copyload.i.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i ], [ %.pre.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEPS4_S6_S6_EET2_RT_T0_T1_S7_.exit.loopexit.i ]
  %.011.lcssa.i.i = phi ptr [ %i.bx, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_.exit.i ], [ %i.ce, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl5PlaneIfEEEEPS4_S6_S6_EET2_RT_T0_T1_S7_.exit.loopexit.i ]
  %i.ch = load ptr, ptr %0, align 8, !tbaa !97    ; 5 uses
  store ptr %i.cg, ptr %0, align 8, !tbaa !97
  store ptr %i.ch, ptr %i.bk, align 8, !tbaa !97
  store ptr %.011.lcssa.i.i, ptr %i.f, align 8, !tbaa !97
  store ptr %i.cf, ptr %i.bj, align 8, !tbaa !97
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !97
  %i.cj = load ptr, ptr %i.bc, align 8, !tbaa !97
  store ptr %i.cj, ptr %i.h, align 8, !tbaa !97
  store ptr %i.ci, ptr %i.bc, align 8, !tbaa !97
  store ptr %i.ch, ptr %3, align 8, !tbaa !103
  %.not2.i.i.i.i = icmp eq ptr %i.ch, %i.cf
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EEPS3_.exit, %.lr.ph.i.i.i.i
  %i.ck = phi ptr [ %i.cn, %.lr.ph.i.i.i.i ], [ %i.cf, %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EEPS3_.exit ] ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -56
  store ptr %i.cl, ptr %i.bj, align 8, !tbaa !104
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -32
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cm) #12
  %i.cn = load ptr, ptr %i.bj, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, %i.cn
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.ithread-pre-split, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.ithread-pre-split: ; preds = %.lr.ph.i.i.i.i
  %.pr = load ptr, ptr %3, align 8, !tbaa !103
  br label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i

_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i: ; preds = %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.ithread-pre-split, %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EEPS3_.exit
  %i.co = phi ptr [ %.pr, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.ithread-pre-split ], [ %i.ch, %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EEPS3_.exit ] ; 3 uses
  %.not.i14 = icmp eq ptr %i.co, null
  br i1 %.not.i14, label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i
  %i.cp = load ptr, ptr %i.bc, align 8, !tbaa !97
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #17
  br label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEED2Ev.exit
  %.0 = phi ptr [ %i.e, %bb.c ], [ %i.e, %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit ], [ %i.bm, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEED2Ev.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl11ImageBundle16SetExtraChannelsEONSt3__16vectorINS_5PlaneIfEENS1_9allocatorIS4_EEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(504) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !21     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  %.not2224 = icmp eq ptr %i.a, %i.c
  br i1 %.not2224, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.012.025, i64 56 ; 2 uses
  %.not22 = icmp eq ptr %i.d, %i.c
  br i1 %.not22, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.012.025 = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.e = load i32, ptr %.sroa.012.025, align 8, !tbaa !15
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.012.025, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEEaSB8nn180100EOS6_.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not6.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -56 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -32
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #12
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, %i.l
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !121

_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  br label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.loopexit.i.i.i, %bb.d
  %i.n = phi ptr [ %.pre.i.i.i, %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.loopexit.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !97
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.s) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !21
  %.pre27 = load ptr, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEEaSB8nn180100EOS6_.exit

_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEEaSB8nn180100EOS6_.exit: ; preds = %.critedge, %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i
  %i.t = phi ptr [ %i.c, %.critedge ], [ %.pre27, %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i ]
  %i.u = phi ptr [ %i.a, %.critedge ], [ %.pre, %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i ]
  store ptr %i.u, ptr %i.h, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  store ptr %i.t, ptr %i.v, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.x, ptr %i.y, align 8, !tbaa !97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !60  ; 3 uses
  %.not1.i.i = icmp eq ptr %i.aa, null
  br i1 %.not1.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEEaSB8nn180100EOS6_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !15 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ac, 0
  %.pre29.pre = load ptr, ptr %i.h, align 8, !tbaa !21 ; 6 uses
  %.pre31.pre = load ptr, ptr %i.v, align 8, !tbaa !22 ; 4 uses
  br i1 %.not.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq ptr %.pre29.pre, %.pre31.pre
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %.pre29.pre, align 8, !tbaa !15
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEEaSB8nn180100EOS6_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !85
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !86
  %i.ak = sext i32 %i.aj to i64
  %.pre28 = load ptr, ptr %i.h, align 8, !tbaa !21
  %.pre30 = load ptr, ptr %i.v, align 8, !tbaa !22
  br label %_ZNK3jxl11ImageBundle5ysizeEv.exit.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.ph.shrunk.i = phi i32 [ %i.ac, %bb.e ], [ %i.ae, %bb.g ], [ 0, %bb.f ]
  %.0.i.ph.i = zext i32 %.0.i.ph.shrunk.i to i64  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.am = load i32, ptr %i.al, align 4, !tbaa !16 ; 2 uses
  %i.an = zext i32 %i.am to i64
  %.not.i19.i = icmp eq i32 %i.am, 0
  br i1 %.not.i19.i, label %bb.j, label %_ZNK3jxl11ImageBundle5ysizeEv.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp eq ptr %.pre29.pre, %.pre31.pre
  br i1 %i.ao, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre29.pre, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !16
  %i.ar = zext i32 %i.aq to i64
  br label %_ZNK3jxl11ImageBundle5ysizeEv.exit.i

_ZNK3jxl11ImageBundle5ysizeEv.exit.i:             ; preds = %bb.k, %bb.i, %bb.h
  %i.as = phi ptr [ %.pre30, %bb.h ], [ %.pre31.pre, %bb.i ], [ %.pre31.pre, %bb.k ] ; 2 uses
  %i.at = phi ptr [ %.pre28, %bb.h ], [ %.pre29.pre, %bb.i ], [ %.pre29.pre, %bb.k ] ; 2 uses
  %.0.i28.i = phi i64 [ %i.ah, %bb.h ], [ %.0.i.ph.i, %bb.i ], [ %.0.i.ph.i, %bb.k ] ; 2 uses
  %.0.i18.i = phi i64 [ %i.ak, %bb.h ], [ %i.an, %bb.i ], [ %i.ar, %bb.k ] ; 2 uses
  %.not.i = icmp eq ptr %i.at, %i.as
  br i1 %.not.i, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK3jxl11ImageBundle5ysizeEv.exit.i
  %i.au = icmp ne i64 %.0.i28.i, 0
  %i.av = icmp ne i64 %.0.i18.i, 0
  %or.cond.i = and i1 %i.au, %i.av
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit

bb.m:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.022.032.i, i64 56 ; 2 uses
  %.not30.i = icmp eq ptr %i.aw, %i.as
  br i1 %.not30.i, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.m
  %.sroa.022.032.i = phi ptr [ %i.aw, %bb.m ], [ %i.at, %bb.l ] ; 3 uses
  %i.ax = load i32, ptr %.sroa.022.032.i, align 8, !tbaa !15
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp eq i64 %.0.i28.i, %i.ay
  br i1 %i.az, label %bb.n, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit

bb.n:                                             ; preds = %.lr.ph.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.022.032.i, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !16
  %i.bc = zext i32 %i.bb to i64
  %i.bd = icmp eq i64 %.0.i18.i, %i.bc
  br i1 %i.bd, label %bb.m, label %_ZNK3jxl11ImageBundle11VerifySizesEv.exit

_ZNK3jxl11ImageBundle11VerifySizesEv.exit:        ; preds = %.lr.ph, %bb.c, %bb.m, %bb.n, %.lr.ph.i, %bb.j, %_ZNK3jxl11ImageBundle5ysizeEv.exit.i, %bb.l
  %.sroa.015.1 = phi i32 [ 1, %bb.n ], [ 0, %_ZNK3jxl11ImageBundle5ysizeEv.exit.i ], [ 1, %bb.l ], [ 0, %bb.j ], [ 0, %bb.m ], [ 1, %.lr.ph.i ], [ 1, %bb.c ], [ 1, %.lr.ph ]
  ret i32 %.sroa.015.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIhNS_9allocatorIhEEE18__assign_with_sizeB8nn180100IPhS5_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59   ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.e                       ; 3 uses
  %i.k = icmp ugt i64 %3, %i.j
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.j ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %1, i64 %i.j, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !59
  br label %_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit

_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit: ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.h, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.o = ptrtoint ptr %2 to i64
  %i.p = sub i64 %i.o, %i.m                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %2, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.l, i64 %i.p, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit: ; preds = %_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  store ptr %i.q, ptr %i.g, align 8, !tbaa !59
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.r = ptrtoint ptr %2 to i64
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPhS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %1, i64 %i.t, i1 false)
  br label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPhS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit

_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPhS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit: ; preds = %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  store ptr %i.u, ptr %i.g, align 8, !tbaa !59
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.v, align 8, !tbaa !59
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit: ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.b, %bb.h ], [ null, %bb.i ] ; 2 uses
  %i.x = icmp slt i64 %3, 0
  br i1 %i.x, label %bb.j, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8nn180100Em.exit

bb.j:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit
  tail call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  unreachable

_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8nn180100Em.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit
  %i.y = ptrtoint ptr %i.w to i64
  %.not.i16 = icmp ult ptr %i.w, inttoptr (i64 4611686018427387903 to ptr)
  %i.z = shl nuw nsw i64 %i.y, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %3)
  %.0.i = select i1 %.not.i16, i64 %.sroa.speculated.i, i64 9223372036854775807 ; 2 uses
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i) #16 ; 5 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0.i
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !122
  %i.ad = ptrtoint ptr %2 to i64
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i17, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit18, label %bb.k

bb.k:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8nn180100Em.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %1, i64 %i.af, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit18

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit18: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8nn180100Em.exit, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !59
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit, %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPhS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.21) #15
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  tail call void (ptr, ...) @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef nonnull @.str.22, ptr noundef %0) #18
  unreachable
}

; Function Attrs: noreturn
declare void @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() local_unnamed_addr #6 comdat {
bb.a:
  tail call void (ptr, ...) @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef nonnull @.str.23) #18
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105  ; 6 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !103    ; 3 uses
  %i.i = icmp ugt ptr %i.g, %i.h
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.k, %i.j
  %i.m = sdiv exact i64 %i.l, 56
  %i.n = add nsw i64 %i.m, 1
  %.neg = sdiv i64 %i.n, -2                       ; 2 uses
  %i.o = getelementptr inbounds [56 x i8], ptr %i.g, i64 %.neg ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt3__14moveB8nn180100IPN3jxl5PlaneIfEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %storemerge9.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.o, %bb.c ] ; 4 uses
  %.08.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.c ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %storemerge9.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q) #12 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i, i64 48
  store i64 %i.t, ptr %i.u, align 8, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__14moveB8nn180100IPN3jxl5PlaneIfEES4_EET0_T_S6_S5_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !123

_ZNSt3__14moveB8nn180100IPN3jxl5PlaneIfEES4_EET0_T_S6_S5_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre19 = load ptr, ptr %i.f, align 8, !tbaa !105
  br label %_ZNSt3__14moveB8nn180100IPN3jxl5PlaneIfEES4_EET0_T_S6_S5_.exit

_ZNSt3__14moveB8nn180100IPN3jxl5PlaneIfEES4_EET0_T_S6_S5_.exit: ; preds = %_ZNSt3__14moveB8nn180100IPN3jxl5PlaneIfEES4_EET0_T_S6_S5_.exit.loopexit, %bb.c
  %i.x = phi ptr [ %i.g, %bb.c ], [ %.pre19, %_ZNSt3__14moveB8nn180100IPN3jxl5PlaneIfEES4_EET0_T_S6_S5_.exit.loopexit ]
  %storemerge.lcssa.i.i.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.w, %_ZNSt3__14moveB8nn180100IPN3jxl5PlaneIfEES4_EET0_T_S6_S5_.exit.loopexit ]
  %i.y = ptrtoint ptr %storemerge.lcssa.i.i.i.i.i to i64
  %i.z = ptrtoint ptr %i.o to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.o, i64 %i.aa
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !104
  %i.ac = getelementptr inbounds [56 x i8], ptr %i.x, i64 %.neg
  store ptr %i.ac, ptr %i.f, align 8, !tbaa !105
  br label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = ptrtoint ptr %i.b to i64
  %i.ae = sub i64 %i.ad, %i.j
  %i.af = sdiv exact i64 %i.ae, 56
  %i.ag = shl nsw i64 %i.af, 1
  %i.ah = icmp eq ptr %i.b, %i.h
  %.sroa.speculated = select i1 %i.ah, i64 1, i64 %i.ag ; 4 uses
  %i.ai = icmp ugt i64 %.sroa.speculated, 329406144173384850
  br i1 %i.ai, label %bb.e, label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #15
  unreachable

_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit: ; preds = %bb.d
  %i.aj = lshr i64 %.sroa.speculated, 2
  %i.ak = mul nuw i64 %.sroa.speculated, 56
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #16 ; 3 uses
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %i.al, i64 %i.aj ; 4 uses
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.al, i64 %.sroa.speculated
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !105 ; 4 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !104 ; 3 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.as ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not6.i.i, label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSD_SD_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %i.am, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit ] ; 4 uses
  %.sroa.04.07.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %i.ao, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.08.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.04.07.i.i, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 24
  tail call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.av) #12
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !57
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !57
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 56
  %.not.i.i = icmp eq ptr %i.az, %i.at
  br i1 %.not.i.i, label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSD_SD_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !124

_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSD_SD_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !97
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !97
  br label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSD_SD_.exit

_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSD_SD_.exit: ; preds = %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSD_SD_.exit.loopexit, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %i.bb = phi ptr [ %i.ap, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit ], [ %.pre18, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSD_SD_.exit.loopexit ] ; 2 uses
  %i.bc = phi ptr [ %i.ao, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit ], [ %.pre, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSD_SD_.exit.loopexit ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.am, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEC2EmmS6_.exit ], [ %i.at, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSD_SD_.exit.loopexit ]
  %i.bd = load ptr, ptr %0, align 8, !tbaa !97    ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !97
  store ptr %i.am, ptr %i.f, align 8, !tbaa !97
  store ptr %.sroa.0.0.lcssa.i.i, ptr %i.a, align 8, !tbaa !97
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !97
  store ptr %i.an, ptr %i.c, align 8, !tbaa !97
  %.not2.i.i.i.i = icmp eq ptr %i.bc, %i.bb
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSD_SD_.exit, %.lr.ph.i.i.i.i
  %i.bf = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.bb, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSD_SD_.exit ] ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -56 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -32
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bh) #12
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.bg
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSD_SD_.exit
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = ptrtoint ptr %i.bd to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bk) #17
  br label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %bb.f, %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i, %_ZNSt3__14moveB8nn180100IPN3jxl5PlaneIfEES4_EET0_T_S6_S5_.exit, %bb.a
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !104 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bn) #12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !57
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !57
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !104
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #9

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.21) #15
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #6 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #7 = { noreturn "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #13 = { "no-builtin-fread" "no-builtin-fwrite" }
attributes #14 = { nounwind }
attributes #15 = { noreturn "no-builtin-fread" "no-builtin-fwrite" }
attributes #16 = { builtin nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }
attributes #17 = { builtin nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #18 = { noreturn nounwind "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !98}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS22JxlMemoryManagerStruct", !11, i64 0}
!13 = !{!"_ZTSN3jxl13AlignedMemoryE", !11, i64 0, !12, i64 8, !11, i64 16}
!14 = !{!"_ZTSN3jxl6detail9PlaneBaseE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !10, i64 16, !13, i64 24, !10, i64 48}
!15 = !{!14, !7, i64 0}
!16 = !{!14, !7, i64 4}
!17 = !{!"p1 _ZTSN3jxl5PlaneIfEE", !11, i64 0}
!18 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl5PlaneIfEELi0ELb0EEE", !17, i64 0}
!19 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl5PlaneIfEENS_9allocatorIS3_EEEE", !18, i64 0}
!20 = !{!"_ZTSNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEEE", !17, i64 0, !17, i64 8, !19, i64 16}
!21 = !{!20, !17, i64 0}
!22 = !{!20, !17, i64 8}
!23 = !{!"p1 _ZTSN3jxl4jpeg8JPEGDataE", !11, i64 0}
!24 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg8JPEGDataELi0ELb0EEE", !23, i64 0}
!25 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEEE", !24, i64 0}
!26 = !{!"_ZTSNSt3__110unique_ptrIN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEEE", !25, i64 0}
!27 = !{!"_ZTSN3jxl14ColorTransformE", !6, i64 0}
!28 = !{!"_ZTSN3jxl6FieldsE"}
!29 = !{!"_ZTSN3jxl22YCbCrChromaSubsamplingE", !28, i64 0, !6, i64 8, !6, i64 20, !6, i64 21}
!30 = !{!"_ZTSN3jxl11FrameOriginE", !7, i64 0, !7, i64 4}
!31 = !{!"bool", !6, i64 0}
!32 = !{!"_ZTSN3jxl9BlendModeE", !6, i64 0}
!33 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !6, i64 0}
!34 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !33, i64 0}
!35 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !34, i64 0}
!36 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !35, i64 0}
!37 = !{!"p1 _ZTSN3jxl13ImageMetadataE", !11, i64 0}
!38 = !{!"_ZTSN3jxl6Image3IfEE", !6, i64 0}
!39 = !{!"_ZTSN3jxl3cms10WhitePointE", !6, i64 0}
!40 = !{!"_ZTSN3jxl3cms9PrimariesE", !6, i64 0}
!41 = !{!"_ZTSN3jxl3cms15RenderingIntentE", !6, i64 0}
!42 = !{!"p1 omnipotent char", !11, i64 0}
!43 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !42, i64 0}
!44 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !43, i64 0}
!45 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !42, i64 0, !42, i64 8, !44, i64 16}
!46 = !{!"_ZTSN3jxl3cms10ColorSpaceE", !6, i64 0}
!47 = !{!"_ZTSN3jxl3cms16TransferFunctionE", !6, i64 0}
!48 = !{!"_ZTSN3jxl3cms22CustomTransferFunctionE", !31, i64 0, !7, i64 4, !47, i64 8}
!49 = !{!"_ZTSN3jxl3cms8CustomxyE", !7, i64 0, !7, i64 4}
!50 = !{!"_ZTSN3jxl3cms13ColorEncodingE", !39, i64 0, !40, i64 4, !41, i64 8, !31, i64 12, !45, i64 16, !46, i64 40, !31, i64 44, !48, i64 48, !49, i64 60, !49, i64 68, !49, i64 76, !49, i64 84}
!51 = !{!"_ZTSN3jxl8CustomxyE", !28, i64 0, !49, i64 8}
!52 = !{!"_ZTSN3jxl22CustomTransferFunctionE", !28, i64 0, !46, i64 8, !48, i64 12}
!53 = !{!"_ZTSN3jxl13ColorEncodingE", !28, i64 0, !31, i64 8, !31, i64 9, !50, i64 16, !51, i64 112, !52, i64 128, !51, i64 152, !51, i64 168, !51, i64 184}
!54 = !{!"_ZTSN3jxl11ImageBundleE", !12, i64 0, !26, i64 8, !27, i64 16, !29, i64 24, !30, i64 48, !7, i64 56, !7, i64 60, !31, i64 64, !31, i64 65, !32, i64 68, !36, i64 72, !37, i64 96, !38, i64 104, !53, i64 272, !20, i64 472, !10, i64 496}
!55 = !{!54, !37, i64 96}
!56 = !{!53, !46, i64 56}
!57 = !{!14, !10, i64 48}
!58 = !{!45, !42, i64 0}
!59 = !{!45, !42, i64 8}
!60 = !{!23, !23, i64 0}
!61 = !{!"p1 _ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !11, i64 0}
!62 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6vectorIhNS_9allocatorIhEEEELi0ELb0EEE", !61, i64 0}
!63 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6vectorIhNS_9allocatorIhEEEENS2_IS4_EEEE", !62, i64 0}
!64 = !{!"_ZTSNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEEE", !61, i64 0, !61, i64 8, !63, i64 16}
!65 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg13AppMarkerTypeELi0ELb0EEE", !11, i64 0}
!66 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg13AppMarkerTypeENS_9allocatorIS3_EEEE", !65, i64 0}
!67 = !{!"_ZTSNSt3__16vectorIN3jxl4jpeg13AppMarkerTypeENS_9allocatorIS3_EEEE", !11, i64 0, !11, i64 8, !66, i64 16}
!68 = !{!"p1 _ZTSN3jxl4jpeg14JPEGQuantTableE", !11, i64 0}
!69 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg14JPEGQuantTableELi0ELb0EEE", !68, i64 0}
!70 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEEE", !69, i64 0}
!71 = !{!"_ZTSNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEEE", !68, i64 0, !68, i64 8, !70, i64 16}
!72 = !{!"p1 _ZTSN3jxl4jpeg15JPEGHuffmanCodeE", !11, i64 0}
!73 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg15JPEGHuffmanCodeELi0ELb0EEE", !72, i64 0}
!74 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg15JPEGHuffmanCodeENS_9allocatorIS3_EEEE", !73, i64 0}
!75 = !{!"_ZTSNSt3__16vectorIN3jxl4jpeg15JPEGHuffmanCodeENS_9allocatorIS3_EEEE", !72, i64 0, !72, i64 8, !74, i64 16}
!76 = !{!"p1 _ZTSN3jxl4jpeg13JPEGComponentE", !11, i64 0}
!77 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg13JPEGComponentELi0ELb0EEE", !76, i64 0}
!78 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg13JPEGComponentENS_9allocatorIS3_EEEE", !77, i64 0}
!79 = !{!"_ZTSNSt3__16vectorIN3jxl4jpeg13JPEGComponentENS_9allocatorIS3_EEEE", !76, i64 0, !76, i64 8, !78, i64 16}
!80 = !{!"p1 _ZTSN3jxl4jpeg12JPEGScanInfoE", !11, i64 0}
!81 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg12JPEGScanInfoELi0ELb0EEE", !80, i64 0}
!82 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg12JPEGScanInfoENS_9allocatorIS3_EEEE", !81, i64 0}
!83 = !{!"_ZTSNSt3__16vectorIN3jxl4jpeg12JPEGScanInfoENS_9allocatorIS3_EEEE", !80, i64 0, !80, i64 8, !82, i64 16}
!84 = !{!"_ZTSN3jxl4jpeg8JPEGDataE", !28, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !64, i64 24, !67, i64 48, !64, i64 72, !71, i64 96, !75, i64 120, !79, i64 144, !83, i64 168, !45, i64 192, !64, i64 216, !45, i64 240, !31, i64 264, !45, i64 272}
!85 = !{!84, !7, i64 8}
!86 = !{!84, !7, i64 12}
!87 = !{!"p1 _ZTSN3jxl16ExtraChannelInfoE", !11, i64 0}
!88 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl16ExtraChannelInfoELi0ELb0EEE", !87, i64 0}
!89 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEEE", !88, i64 0}
!90 = !{!"_ZTSNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEEE", !87, i64 0, !87, i64 8, !89, i64 16}
!91 = !{!90, !87, i64 0}
!92 = !{!90, !87, i64 8}
!93 = !{!"_ZTSN3jxl12ExtraChannelE", !6, i64 0}
!94 = !{!"_ZTSN3jxl8BitDepthE", !28, i64 0, !31, i64 8, !7, i64 12, !7, i64 16}
!95 = !{!"_ZTSN3jxl16ExtraChannelInfoE", !28, i64 0, !31, i64 8, !93, i64 12, !94, i64 16, !7, i64 40, !36, i64 48, !31, i64 72, !6, i64 76, !7, i64 92}
!96 = !{!95, !93, i64 12}
!97 = !{!17, !17, i64 0}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!"p1 _ZTSNSt3__19allocatorIN3jxl5PlaneIfEEEE", !11, i64 0}
!100 = !{!"_ZTSNSt3__122__compressed_pair_elemIRNS_9allocatorIN3jxl5PlaneIfEEEELi1ELb0EEE", !99, i64 0}
!101 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl5PlaneIfEERNS_9allocatorIS3_EEEE", !18, i64 0, !100, i64 8}
!102 = !{!"_ZTSNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEEE", !17, i64 0, !17, i64 8, !17, i64 16, !101, i64 24}
!103 = !{!102, !17, i64 0}
!104 = !{!102, !17, i64 16}
!105 = !{!102, !17, i64 8}
!106 = !{!14, !7, i64 8}
!107 = !{!7, !7, i64 0}
!108 = !{!95, !7, i64 28}
!109 = !{!"_ZTSN3jxl10SizeHeaderE", !28, i64 0, !31, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!110 = !{!"float", !6, i64 0}
!111 = !{!"_ZTSN3jxl11ToneMappingE", !28, i64 0, !31, i64 8, !110, i64 12, !110, i64 16, !31, i64 20, !110, i64 24}
!112 = !{!"_ZTSN3jxl13PreviewHeaderE", !28, i64 0, !31, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!113 = !{!"_ZTSN3jxl15AnimationHeaderE", !28, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !31, i64 20}
!114 = !{!"_ZTSN3jxl13ImageMetadataE", !28, i64 0, !31, i64 8, !94, i64 16, !31, i64 40, !31, i64 41, !53, i64 48, !7, i64 248, !31, i64 252, !31, i64 253, !31, i64 254, !109, i64 256, !111, i64 288, !7, i64 320, !90, i64 328, !112, i64 352, !113, i64 384, !10, i64 408, !31, i64 416}
!115 = !{!114, !7, i64 28}
!116 = distinct !{!116, !98}
!117 = distinct !{!117, !98}
!118 = distinct !{!118, !98}
!119 = distinct !{!119, !98}
!120 = !{!99, !99, i64 0}
!121 = distinct !{!121, !98}
!122 = !{!42, !42, i64 0}
!123 = distinct !{!123, !98}
!124 = distinct !{!124, !98}
end_hunk_0
