Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/word_blaster?download=true
inline.NumInlined: 3102
inline.NumDeleted: 1022
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN6symfpu14normaliseShiftIN4bzla2fp12SymFpuTraitsEEENS_20normaliseShiftResultIT_EENS5_3ubvE:bb.a
  %i.bo = load i8, ptr %i.u, align 8, !tbaa !313, !range !138, !noundef !116
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.bq = invoke noundef zeroext i1 @_ZNK4bzla2fp8SymFpuBVILb0EE10isAllZerosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.be unwind label %bb.bp

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.br = phi i1 [ true, %bb.bc ], [ %i.bq, %bb.bd ]
  %i.bs = zext i1 %i.br to i8
  store i8 %i.bs, ptr %i.f, align 1, !tbaa !127
  invoke void @_ZN4bzla2fp12SymFpuTraits13postconditionERKb(ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %bb.bf unwind label %bb.bp

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  %i.bt = invoke noundef i32 @_ZNK4bzla2fp8SymFpuBVILb0EE8getWidthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.bg unwind label %bb.bq     ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  %i.bu = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.i, i1 false) ; 2 uses
  %i.bv = sub nuw nsw i32 32, %i.bu               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.bw = icmp eq i32 %i.bt, %i.bv
  %i.bx = sub nsw i32 31, %i.bu
  %i.by = icmp eq i32 %i.bt, %i.bx
  %i.bz = or i1 %i.bw, %i.by
  %i.ca = zext i1 %i.bz to i8
  store i8 %i.ca, ptr %i.g, align 1, !tbaa !127
  invoke void @_ZN4bzla2fp12SymFpuTraits13postconditionERKb(ptr noundef nonnull align 1 dereferenceable(1) %i.g)
          to label %bb.bh unwind label %bb.br

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZN4bzla2fp8SymFpuBVILb0EEC1Ejj(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %i.bv, i32 noundef %i.i)
          to label %bb.bi unwind label %bb.bs

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZNK4bzla2fp8SymFpuBVILb0EE10matchWidthERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuBV.389") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.bj unwind label %bb.bt

bb.bj:                                            ; preds = %bb.bi
  %i.cb = invoke noundef zeroext i1 @_ZNK4bzla2fp8SymFpuBVILb0EEltERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.bk unwind label %bb.bu

bb.bk:                                            ; preds = %bb.bj
  %i.cc = zext i1 %i.cb to i8
  store i8 %i.cc, ptr %i.h, align 1, !tbaa !127
  invoke void @_ZN4bzla2fp12SymFpuTraits13postconditionERKb(ptr noundef nonnull align 1 dereferenceable(1) %i.h)
          to label %bb.bl unwind label %bb.bu

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN4bzla2fp8SymFpuBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @_ZN4bzla2fp8SymFpuBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  ret void

bb.bm:                                            ; preds = %_ZN6symfpu20normaliseShiftResultIN4bzla2fp12SymFpuTraitsEEC2ERKNS2_8SymFpuBVILb0EEES8_RKb.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bb, %bb.ba
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla2fp8SymFpuBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #19
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.bn ], [ %i.cd, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %bb.bx

bb.bp:                                            ; preds = %bb.be, %bb.bd
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br label %bb.bx

bb.bq:                                            ; preds = %bb.bf
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.br:                                            ; preds = %bb.bg
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bh
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bt:                                            ; preds = %bb.bi
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bk, %bb.bj
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla2fp8SymFpuBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #19
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn73 = phi { ptr, i32 } [ %i.ck, %bb.bu ], [ %i.cj, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @_ZN4bzla2fp8SymFpuBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #19
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs
  %.pn73.pn = phi { ptr, i32 } [ %.pn73, %bb.bv ], [ %i.ci, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bq, %bb.bw, %bb.br, %bb.bp, %bb.bo
  %.pn73.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bo ], [ %i.cf, %bb.bp ], [ %i.cg, %bb.bq ], [ %.pn73.pn, %bb.bw ], [ %i.ch, %bb.br ]
  call void @_ZN4bzla2fp8SymFpuBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #19
  call void @_ZN4bzla2fp8SymFpuBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %0) #19
  br label %common.resume
}

declare noundef i32 @_ZNK4bzla2fp8SymFpuBVILb1EE8getWidthEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZNK4bzla2fp8SymFpuBVILb0EE6resizeEj(ptr dead_on_unwind writable sret(%"class.bzla::fp::SymFpuBV.389") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

declare void @_ZN4bzla2fp8SymFpuBVILb0EE7allOnesERKj(ptr dead_on_unwind writable sret(%"class.bzla::fp::SymFpuBV.389") align 8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZNK4bzla2fp8SymFpuBVILb0EE6appendERKS2_(ptr dead_on_unwind writable sret(%"class.bzla::fp::SymFpuBV.389") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN4bzla2fp8SymFpuBVILb0EE4zeroERKj(ptr dead_on_unwind writable sret(%"class.bzla::fp::SymFpuBV.389") align 8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZNK4bzla2fp8SymFpuBVILb0EEanERKS2_(ptr dead_on_unwind writable sret(%"class.bzla::fp::SymFpuBV.389") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZNK4bzla2fp8SymFpuBVILb0EE16modularLeftShiftERKS2_(ptr dead_on_unwind writable sret(%"class.bzla::fp::SymFpuBV.389") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN4bzla2fp8SymFpuBVILb0EEC1ERKb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

declare void @_ZNK4bzla2fp8SymFpuBVILb0EE10matchWidthERKS2_(ptr dead_on_unwind writable sret(%"class.bzla::fp::SymFpuBV.389") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4bzla2fp8SymFpuBVILb0EEltERKS2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6symfpu13unpackedFloatIN4bzla2fp12SymFpuTraitsEE10wellFormedERKNS2_8SymFpuBVILb1EEES8_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.bzla::fp::SymFpuBV", align 8 ; 7 uses
  %4 = alloca %"class.bzla::fp::SymFpuBV.389", align 8 ; 7 uses
  %5 = alloca %"class.bzla::fp::SymFpuBV.389", align 8 ; 7 uses
  %6 = alloca %"class.bzla::fp::SymFpuBV.389", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.d = tail call noundef i32 @_ZNK4bzla2fp8SymFpuBVILb1EE8getWidthEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = tail call noundef i32 @_ZNK4bzla2fp8SymFpuBVILb1EE8getWidthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.g = icmp eq i32 %i.d, %i.f
  %i.h = zext i1 %i.g to i8
  store i8 %i.h, ptr %i.b, align 1, !tbaa !127
  call void @_ZN4bzla2fp12SymFpuTraits12preconditionERKb(ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.i = call noundef i32 @_ZNK4bzla2fp8SymFpuBVILb1EE8getWidthEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.j = call noundef i32 @_ZNK4bzla2fp8SymFpuBVILb1EE8getWidthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.k = icmp eq i32 %i.i, %i.j
  %i.l = zext i1 %i.k to i8
  store i8 %i.l, ptr %i.c, align 1, !tbaa !127
  call void @_ZN4bzla2fp12SymFpuTraits12preconditionERKb(ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.m = load i8, ptr %0, align 8, !tbaa !165, !range !138, !noundef !116
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !170, !range !138 ; 3 uses
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.thread30, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.s = load i8, ptr %i.r, align 2, !tbaa !171, !range !138, !noundef !116
  %i.t = trunc nuw i8 %i.s to i1
  %not.38 = xor i1 %i.t, true
  br label %.thread30

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.v = load i8, ptr %i.u, align 2, !tbaa !171, !range !138, !noundef !116 ; 2 uses
  %i.w = and i8 %i.p, %i.v
  %7 = trunc nuw i8 %i.w to i1
  %. = xor i1 %7, true
  %i.x = or i8 %i.p, %i.v
  %.not37 = icmp eq i8 %i.x, 0
  br label %.thread30

.thread30:                                        ; preds = %bb.c, %bb.d, %bb.b
  %i.y = phi i1 [ %., %bb.d ], [ false, %bb.b ], [ %not.38, %bb.c ]
  %not. = phi i1 [ %.not37, %bb.d ], [ false, %bb.b ], [ false, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.z = call noundef i32 @_ZNK4bzla2fp8SymFpuBVILb1EE8getWidthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.z, ptr %i.a, align 4, !tbaa !84, !noalias !319
  call void @_ZN4bzla2fp8SymFpuBVILb1EE4zeroERKj(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuBV") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = invoke noundef zeroext i1 @_ZNK4bzla2fp8SymFpuBVILb1EEeqERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %.thread30
  call void @_ZN4bzla2fp8SymFpuBVILb1EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ac = call noundef i32 @_ZNK4bzla2fp8SymFpuBVILb0EE8getWidthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
  call void @_ZN6symfpu13unpackedFloatIN4bzla2fp12SymFpuTraitsEE18defaultSignificandEj(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuBV.389") align 8 %4, i32 noundef %i.ac)
  %i.ad = invoke noundef zeroext i1 @_ZNK4bzla2fp8SymFpuBVILb0EEeqERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  call void @_ZN4bzla2fp8SymFpuBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ae = load i8, ptr %0, align 8, !tbaa !165, !range !138, !noundef !116
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !172, !range !138, !noundef !116
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = xor i1 %i.ai, true
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = phi i1 [ true, %bb.f ], [ %i.aj, %bb.g ]
  %i.al = call noundef zeroext i1 @_ZNK4bzla2fp8SymFpuBVILb1EEleERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = call noundef zeroext i1 @_ZNK4bzla2fp8SymFpuBVILb1EEleERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = phi i1 [ false, %bb.h ], [ %i.am, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ao = call noundef i32 @_ZNK4bzla2fp8SymFpuBVILb0EE8getWidthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
  call void @_ZN6symfpu13unpackedFloatIN4bzla2fp12SymFpuTraitsEE10leadingOneEj(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuBV.389") align 8 %6, i32 noundef %i.ao)
  invoke void @_ZNK4bzla2fp8SymFpuBVILb0EEanERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuBV.389") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ap = invoke noundef zeroext i1 @_ZNK4bzla2fp8SymFpuBVILb0EE10isAllZerosEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.aq = xor i1 %i.ap, true
  call void @_ZN4bzla2fp8SymFpuBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #19
  call void @_ZN4bzla2fp8SymFpuBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ar = and i1 %i.aa, %i.ad
  %i.as = or i1 %not., %i.ar
  %or.cond3 = select i1 %i.y, i1 %i.as, i1 false
  %or.cond5 = select i1 %or.cond3, i1 %i.ak, i1 false
  %or.cond7 = and i1 %or.cond5, %i.an
  %i.at = and i1 %or.cond7, %i.aq
  ret i1 %i.at

bb.m:                                             ; preds = %.thread30
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla2fp8SymFpuBVILb1EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.r

bb.n:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla2fp8SymFpuBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.r

bb.o:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla2fp8SymFpuBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #19
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.p ], [ %i.aw, %bb.o ]
  call void @_ZN4bzla2fp8SymFpuBVILb0EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.m ], [ %.pn, %bb.q ], [ %i.av, %bb.n ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6symfpu13unpackedFloatIN4bzla2fp12SymFpuTraitsEE20minSubnormalExponentERKNS1_27SymFPUFloatingPointTypeInfoE(ptr dead_on_unwind noalias writable sret(%"class.bzla::fp::SymFpuBV") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.bzla::fp::SymFpuBV", align 8 ; 7 uses
  %3 = alloca %"class.bzla::fp::SymFpuBV", align 8 ; 7 uses
  %4 = alloca %"class.bzla::fp::SymFpuBV", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !322
  call void @_ZN6symfpu13unpackedFloatIN4bzla2fp12SymFpuTraitsEE4biasERKNS1_27SymFPUFloatingPointTypeInfoE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuBV") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %1), !noalias !322
  invoke void @_ZNK4bzla2fp8SymFpuBVILb1EEngEv(ptr dead_on_unwind nonnull writable sret(%"class.bzla::fp::SymFpuBV") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6symfpu13unpackedFloatIN4bzla2fp12SymFpuTraitsEE20maxSubnormalExponentERKNS1_27SymFPUFloatingPointTypeInfoE.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.j, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.a, %bb.b ], [ %.pn, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla2fp8SymFpuBVILb1EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !322
  br label %common.resume

_ZN6symfpu13unpackedFloatIN4bzla2fp12SymFpuTraitsEE20maxSubnormalExponentERKNS1_27SymFPUFloatingPointTypeInfoE.exit: ; preds = %bb.a
  call void @_ZN4bzla2fp8SymFpuBVILb1EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !322
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.b = load i32, ptr %1, align 8, !tbaa !80     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !85   ; 3 uses
  %i.e = icmp ult i32 %i.d, 4
  br i1 %i.e, label %_ZN6symfpu13unpackedFloatIN4bzla2fp12SymFpuTraitsEE13exponentWidthERKNS1_27SymFPUFloatingPointTypeInfoE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6symfpu13unpackedFloatIN4bzla2fp12SymFpuTraitsEE20maxSubnormalExponentERKNS1_27SymFPUFloatingPointTypeInfoE.exit
  %i.f = add i32 %i.d, -3                         ; 2 uses
  %i.g = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.f, i1 false)
  %i.h = sub nuw nsw i32 32, %i.g
  %i.i = add i32 %i.b, -1                         ; 2 uses
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i32 1, %i.i
  %i.l = add i32 %i.f, %i.k
  %i.m = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.l, i1 false)
  %i.n = sub nuw nsw i32 32, %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.in.i = phi i32 [ %i.n, %bb.d ], [ %i.b, %bb.c ]
  %.0.i = add i32 %.0.in.i, 1
  br label %_ZN6symfpu13unpackedFloatIN4bzla2fp12SymFpuTraitsEE13exponentWidthERKNS1_27SymFPUFloatingPointTypeInfoE.exit

_ZN6symfpu13unpackedFloatIN4bzla2fp12SymFpuTraitsEE13exponentWidthERKNS1_27SymFPUFloatingPointTypeInfoE.exit: ; preds = %_ZN6symfpu13unpackedFloatIN4bzla2fp12SymFpuTraitsEE20maxSubnormalExponentERKNS1_27SymFPUFloatingPointTypeInfoE.exit, %bb.e
  %.1.i = phi i32 [ %.0.i, %bb.e ], [ %i.b, %_ZN6symfpu13unpackedFloatIN4bzla2fp12SymFpuTraitsEE20maxSubnormalExponentERKNS1_27SymFPUFloatingPointTypeInfoE.exit ]
  %i.o = add i32 %i.d, -2
  invoke void @_ZN4bzla2fp8SymFpuBVILb1EEC1Ejj(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %.1.i, i32 noundef %i.o)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN6symfpu13unpackedFloatIN4bzla2fp12SymFpuTraitsEE13exponentWidthERKNS1_27SymFPUFloatingPointTypeInfoE.exit
  invoke void @_ZNK4bzla2fp8SymFpuBVILb1EEmiERKS2_(ptr dead_on_unwind writable sret(%"class.bzla::fp::SymFpuBV") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @_ZN4bzla2fp8SymFpuBVILb1EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN4bzla2fp8SymFpuBVILb1EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.h:                                             ; preds = %_ZN6symfpu13unpackedFloatIN4bzla2fp12SymFpuTraitsEE13exponentWidthERKNS1_27SymFPUFloatingPointTypeInfoE.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla2fp8SymFpuBVILb1EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.p, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN4bzla2fp8SymFpuBVILb1EED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK6symfpu13unpackedFloatIN4bzla2fp12SymFpuTraitsEE18getSubnormalAmountERKNS1_27SymFPUFloatingPointTypeInfoE(ptr dead_on_unwind noalias writable sret(%"class.bzla::fp::SymFpuBV") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.bzla::fp::SymFpuBV", align 8 ; 8 uses
end_hunk_0
