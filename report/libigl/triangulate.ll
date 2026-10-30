Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/triangulate?download=true
inline.NumInlined: 14225
inline.NumDeleted: 4674
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 101
begin_hunk_0_@_ZN4CGAL20compute_intersectionINS_5EpeckEEEbRKT_RKNS2_7Point_2ES7_S7_S7_RS5_:bb.a
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load i8, ptr @__libc_single_threaded, align 1, !tbaa !181
  %.not.i.i.i = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4 ; 2 uses
  %i.e = icmp eq i32 %i.d, 1                      ; 2 uses
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !154
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.d, -1
  store atomic i32 %i.i, ptr %i.c monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.h:                                             ; preds = %bb.d
  br i1 %i.e, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = atomicrmw add ptr %i.c, i32 -1 release, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.j, label %_ZN4CGAL6HandleD2Ev.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  fence acquire
  %i.l = load ptr, ptr %10, align 8, !tbaa !180   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !154
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.q = load ptr, ptr %9, align 8, !tbaa !180    ; 4 uses
  %.not.i.i17 = icmp eq ptr %i.q, null
  br i1 %.not.i.i17, label %_ZN4CGAL6HandleD2Ev.exit19, label %bb.l

bb.l:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !181
  %.not.i.i.i18 = icmp eq i8 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load atomic i32, ptr %i.s monotonic, align 4 ; 2 uses
  %i.u = icmp eq i32 %i.t, 1                      ; 2 uses
  br i1 %.not.i.i.i18, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.u, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !154
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(12) %i.q) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit19

bb.o:                                             ; preds = %bb.m
  %i.y = add nsw i32 %i.t, -1
  store atomic i32 %i.y, ptr %i.s monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit19

bb.p:                                             ; preds = %bb.l
  br i1 %i.u, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = atomicrmw add ptr %i.s, i32 -1 release, align 4
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.r, label %_ZN4CGAL6HandleD2Ev.exit19

bb.r:                                             ; preds = %bb.q, %bb.p
  fence acquire
  %i.ab = load ptr, ptr %9, align 8, !tbaa !180   ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN4CGAL6HandleD2Ev.exit19, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !154
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(12) %i.ab) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit19

_ZN4CGAL6HandleD2Ev.exit19:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit, %bb.n, %bb.o, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !408, !range !125, !noundef !126 ; 2 uses
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8
  %.not = icmp eq i8 %i.ak, 0
  %or.cond = select i1 %i.ai, i1 %.not, i1 false  ; 2 uses
  br i1 %or.cond, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit19
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !181
  %.not.i.i.i.i = icmp eq i8 %i.al, 0
  %i.am = load ptr, ptr %8, align 8, !tbaa !180
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i:             ; preds = %bb.t
  %i.ao = atomicrmw add ptr %i.an, i32 1 monotonic, align 4 ; 0 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !180   ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i21, label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit, label %bb.w

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i:      ; preds = %bb.t
  %i.aq = load atomic i32, ptr %i.an monotonic, align 4
  %i.ar = add nsw i32 %i.aq, 1
  store atomic i32 %i.ar, ptr %i.an monotonic, align 4
  %i.as = load ptr, ptr %5, align 8, !tbaa !180   ; 4 uses
  %.not4.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not4.i.i.i, label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load atomic i32, ptr %i.at monotonic, align 4 ; 2 uses
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.thread.i.i.i
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !154
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(12) %i.as) #21, !inline_history !33
  br label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit

bb.v:                                             ; preds = %.thread.i.i.i
  %i.az = add nsw i32 %i.au, -1
  store atomic i32 %i.az, ptr %i.at monotonic, align 4
  br label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit

bb.w:                                             ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.bb = load atomic i32, ptr %i.ba monotonic, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = atomicrmw add ptr %i.ba, i32 -1 release, align 4
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.y, label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit

bb.y:                                             ; preds = %bb.x, %bb.w
  fence acquire
  %i.bf = load ptr, ptr %5, align 8, !tbaa !180   ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !154
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(12) %i.bf) #21, !inline_history !33
  br label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit

_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit:        ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i, %bb.u, %bb.v, %bb.x, %bb.y, %bb.z
  %i.bk = load ptr, ptr %8, align 8, !tbaa !180
  store ptr %i.bk, ptr %5, align 8, !tbaa !180
  %.pre = load i8, ptr %i.ag, align 8, !tbaa !408, !range !125
  br label %.critedge

bb.aa:                                            ; preds = %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.ab ], [ %i.bl, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %_ZN4CGAL6HandleD2Ev.exit19, %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit
  %i.bn = phi i8 [ %i.ah, %_ZN4CGAL6HandleD2Ev.exit19 ], [ %.pre, %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit ]
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.ad, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit

bb.ad:                                            ; preds = %.critedge
  store i8 0, ptr %i.ag, align 8, !tbaa !408
  %i.bp = load i8, ptr %i.aj, align 8, !tbaa !410 ; 2 uses
  %.not.i = icmp eq i8 %i.bp, -1
  br i1 %.not.i, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit, label %bb.ae, !prof !317

bb.ae:                                            ; preds = %bb.ad
  %i.bq = icmp eq i8 %i.bp, 0
  %i.br = load ptr, ptr %8, align 8, !tbaa !180   ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null ; 2 uses
  br i1 %i.bq, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !181
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bu = load atomic i32, ptr %i.bt monotonic, align 4 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.bv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !154
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(12) %i.br) #21, !inline_history !34
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit

bb.aj:                                            ; preds = %bb.ah
  %i.bz = add nsw i32 %i.bu, -1
  store atomic i32 %i.bz, ptr %i.bt monotonic, align 4
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit

bb.ak:                                            ; preds = %bb.ag
  br i1 %i.bv, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = atomicrmw add ptr %i.bt, i32 -1 release, align 4
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.am, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit

bb.am:                                            ; preds = %bb.al, %bb.ak
  fence acquire
  %i.cc = load ptr, ptr %8, align 8, !tbaa !180   ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !154
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(12) %i.cc) #21, !inline_history !34
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit

bb.ao:                                            ; preds = %bb.ae
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !181
  %.not.i.i.i.i.i.i.i.i7.i.i = icmp eq i8 %i.ch, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.cj = load atomic i32, ptr %i.ci monotonic, align 4 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i7.i.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.ck, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cl = load ptr, ptr %i.br, align 8, !tbaa !154
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(12) %i.br) #21, !inline_history !35
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit

bb.as:                                            ; preds = %bb.aq
  %i.co = add nsw i32 %i.cj, -1
  store atomic i32 %i.co, ptr %i.ci monotonic, align 4
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit

bb.at:                                            ; preds = %bb.ap
  br i1 %i.ck, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cp = atomicrmw add ptr %i.ci, i32 -1 release, align 4
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %bb.av, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit

bb.av:                                            ; preds = %bb.au, %bb.at
  fence acquire
  %i.cr = load ptr, ptr %8, align 8, !tbaa !180   ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !154
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(12) %i.cr) #21, !inline_history !35
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit: ; preds = %bb.af, %bb.ai, %bb.aj, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ar, %bb.as, %bb.au, %bb.av, %bb.aw, %bb.ad, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret i1 %or.cond
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL25Lazy_construction_variantINS_5EpeckENS_20CommonKernelFunctors11Intersect_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_9Segment_2IS1_EESR_EEDcRKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.CGAL::Simple_cartesian.226", align 1 ; 3 uses
  %5 = alloca %class.anon.545, align 8            ; 5 uses
  %6 = alloca %class.anon.544, align 8            ; 4 uses
  %7 = alloca %class.anon.545, align 8            ; 5 uses
  %8 = alloca %class.anon.544, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.CGAL::Lazy.394", align 8    ; 8 uses
  %10 = alloca %"class.CGAL::CommonKernelFunctors::Intersect_2.436", align 1 ; 4 uses
  %11 = alloca %"class.CGAL::CommonKernelFunctors::Intersect_2", align 1 ; 4 uses
  %12 = alloca %"class.std::optional.397", align 16 ; 8 uses
  %13 = alloca %"class.std::optional", align 8    ; 13 uses
  %14 = alloca %"struct.CGAL::internal::Fill_lazy_variant_visitor_2", align 8 ; 8 uses
  %15 = alloca %"class.std::optional.437", align 16 ; 27 uses
  %16 = alloca %"class.std::optional", align 8    ; 13 uses
  %17 = alloca %"struct.CGAL::internal::Fill_lazy_variant_visitor_0", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.m = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #40
          to label %bb.b unwind label %bb.d       ; 4 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  invoke void @_ZN4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_20CommonKernelFunctors11Intersect_2IS7_EENSW_ISQ_EENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELb0EJNS9_INS_5EpeckEEES14_EEC2IJRKS14_S18_EEERKSX_RKSY_DpOT_(ptr noundef nonnull align 16 dereferenceable(144) %i.m, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  store ptr %i.m, ptr %9, align 8, !tbaa !180
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = load atomic ptr, ptr %i.n acquire, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %12, ptr noundef nonnull align 16 dereferenceable(96) %i.o, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store i8 0, ptr %i.p, align 8, !tbaa !408
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.r = load i8, ptr %i.q, align 16, !tbaa !412, !range !125, !noundef !126
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.t, align 8, !tbaa !408
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  br label %bb.an

bb.e:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 144) #38
  br label %bb.an

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  store ptr %13, ptr %14, align 8, !tbaa !416
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8
end_hunk_0
begin_hunk_1_@_ZNK4CGAL25Lazy_construction_variantINS_5EpeckENS_20CommonKernelFunctors11Intersect_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_9Segment_2IS1_EESR_EEDcRKT_RKT0_:bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.dk, align 8, !tbaa !408
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

bb.aw:                                            ; preds = %bb.ao
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.an
  %.merged17 = phi { ptr, i32 } [ %i.dl, %bb.aw ], [ %.pn.pn, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.dm = load i32, ptr %i.a, align 4
  %i.dn = and i32 %i.dm, -24577
  %i.do = or disjoint i32 %i.dn, %i.i
  store i32 %i.do, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.resume

bb.ay:                                            ; preds = %_ZN4CGAL5exactINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEERKT0_RKNS_4LazyIT_SQ_T1_EE.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store ptr %16, ptr %17, align 8, !tbaa !426
  %i.dp = getelementptr inbounds nuw i8, ptr %15, i64 256
  %i.dq = load i8, ptr %i.dp, align 16, !tbaa !428
  switch i8 %i.dq, label %bb.bb [
    i8 -1, label %bb.az
    i8 0, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.dr = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.dr, align 8, !tbaa !154
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr @.str.128, ptr %i.ds, align 8, !tbaa !431
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #39
          to label %.noexc28 unwind label %bb.bd

.noexc28:                                         ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.ay
  invoke void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS_7Point_2INS_5EpeckEEENS_9Segment_2IS5_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSB_IN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEEEclINS4_ISS_EEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 16 dereferenceable(257) %15)
          to label %_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS0_7Point_2INS0_5EpeckEEENS0_9Segment_2IS6_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSC_IN5boost14multiprecision6numberINSH_8backends16rational_adaptorINSJ_15cpp_int_backendILm0ELm0ELNSH_16cpp_integer_typeE1ELNSH_18cpp_int_check_typeE0ESaIyEEEEELNSH_26expression_template_optionE1EEEEEEEJRS4_IJNS5_IST_EENS8_IST_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS13_EEEEE4typeEE4typeEOS1C_EEEE4typeEOS11_DpOS13_.exit unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ay
  invoke void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS_7Point_2INS_5EpeckEEENS_9Segment_2IS5_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSB_IN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEEEclINS7_ISS_EEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 16 dereferenceable(257) %15)
          to label %_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS0_7Point_2INS0_5EpeckEEENS0_9Segment_2IS6_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSC_IN5boost14multiprecision6numberINSH_8backends16rational_adaptorINSJ_15cpp_int_backendILm0ELm0ELNSH_16cpp_integer_typeE1ELNSH_18cpp_int_check_typeE0ESaIyEEEEELNSH_26expression_template_optionE1EEEEEEEJRS4_IJNS5_IST_EENS8_IST_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS13_EEEEE4typeEE4typeEOS1C_EEEE4typeEOS11_DpOS13_.exit unwind label %bb.bd

_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS0_7Point_2INS0_5EpeckEEENS0_9Segment_2IS6_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSC_IN5boost14multiprecision6numberINSH_8backends16rational_adaptorINSJ_15cpp_int_backendILm0ELm0ELNSH_16cpp_integer_typeE1ELNSH_18cpp_int_check_typeE0ESaIyEEEEELNSH_26expression_template_optionE1EEEEEEEJRS4_IJNS5_IST_EENS8_IST_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS13_EEEEE4typeEE4typeEOS1C_EEEE4typeEOS11_DpOS13_.exit: ; preds = %bb.ba, %bb.bb
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 0, ptr %i.dt, align 8, !tbaa !408
  %i.du = load i8, ptr %i.dg, align 8, !tbaa !408, !range !125, !noundef !126
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS0_7Point_2INS0_5EpeckEEENS0_9Segment_2IS6_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSC_IN5boost14multiprecision6numberINSH_8backends16rational_adaptorINSJ_15cpp_int_backendILm0ELm0ELNSH_16cpp_integer_typeE1ELNSH_18cpp_int_check_typeE0ESaIyEEEEELNSH_26expression_template_optionE1EEEEEEEJRS4_IJNS5_IST_EENS8_IST_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS13_EEEEE4typeEE4typeEOS1C_EEEE4typeEOS11_DpOS13_.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !410 ; 2 uses
  %i.dz = icmp eq i8 %i.dy, -1
  br i1 %i.dz, label %bb.bf, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i31

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i31:        ; preds = %bb.bc
  %i.ea = load ptr, ptr %16, align 8, !tbaa !180
  store ptr %i.ea, ptr %0, align 8, !tbaa !180
  store ptr null, ptr %16, align 8, !tbaa !180
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %common.resume

bb.be:                                            ; preds = %_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS0_7Point_2INS0_5EpeckEEENS0_9Segment_2IS6_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSC_IN5boost14multiprecision6numberINSH_8backends16rational_adaptorINSJ_15cpp_int_backendILm0ELm0ELNSH_16cpp_integer_typeE1ELNSH_18cpp_int_check_typeE0ESaIyEEEEELNSH_26expression_template_optionE1EEEEEEEJRS4_IJNS5_IST_EENS8_IST_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS13_EEEEE4typeEE4typeEOS1C_EEEE4typeEOS11_DpOS13_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

bb.bf:                                            ; preds = %bb.bc, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i31
  store i8 %i.dy, ptr %i.dw, align 8, !tbaa !410
  store i8 1, ptr %i.dt, align 8, !tbaa !408
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  store i8 0, ptr %i.dg, align 8, !tbaa !408
  %i.ec = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !410 ; 2 uses
  %.not.i35 = icmp eq i8 %i.ed, -1
  br i1 %.not.i35, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34, label %bb.bg, !prof !317

bb.bg:                                            ; preds = %bb.bf
  %i.ee = icmp eq i8 %i.ed, 0
  %i.ef = load ptr, ptr %16, align 8, !tbaa !180  ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i36 = icmp eq ptr %i.ef, null ; 2 uses
  br i1 %i.ee, label %bb.bh, label %bb.bq

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not.i.i.i.i.i.i.i.i.i36, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !181
  %.not.i.i.i.i.i.i.i.i.i.i39 = icmp eq i8 %i.eg, 0
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.ei = load atomic i32, ptr %i.eh monotonic, align 4 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i39, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.ej, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !154
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(12) %i.ef) #21, !inline_history !34
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

bb.bl:                                            ; preds = %bb.bj
  %i.en = add nsw i32 %i.ei, -1
  store atomic i32 %i.en, ptr %i.eh monotonic, align 4
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

bb.bm:                                            ; preds = %bb.bi
  br i1 %i.ej, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.eo = atomicrmw add ptr %i.eh, i32 -1 release, align 4
  %i.ep = icmp eq i32 %i.eo, 1
  br i1 %i.ep, label %bb.bo, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  fence acquire
  %i.eq = load ptr, ptr %16, align 8, !tbaa !180  ; 3 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !154
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(12) %i.eq) #21, !inline_history !34
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

bb.bq:                                            ; preds = %bb.bg
  br i1 %.not.i.i.i.i.i.i.i.i.i36, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ev = load i8, ptr @__libc_single_threaded, align 1, !tbaa !181
  %.not.i.i.i.i.i.i.i.i7.i.i37 = icmp eq i8 %i.ev, 0
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.ex = load atomic i32, ptr %i.ew monotonic, align 4 ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i7.i.i37, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  br i1 %i.ey, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ez = load ptr, ptr %i.ef, align 8, !tbaa !154
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(12) %i.ef) #21, !inline_history !35
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

bb.bu:                                            ; preds = %bb.bs
  %i.fc = add nsw i32 %i.ex, -1
  store atomic i32 %i.fc, ptr %i.ew monotonic, align 4
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

bb.bv:                                            ; preds = %bb.br
  br i1 %i.ey, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fd = atomicrmw add ptr %i.ew, i32 -1 release, align 4
  %i.fe = icmp eq i32 %i.fd, 1
  br i1 %i.fe, label %bb.bx, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  fence acquire
  %i.ff = load ptr, ptr %16, align 8, !tbaa !180  ; 3 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fh = load ptr, ptr %i.ff, align 8, !tbaa !154
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(12) %i.ff) #21, !inline_history !35
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34: ; preds = %bb.bh, %bb.bk, %bb.bl, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.bt, %bb.bu, %bb.bw, %bb.bx, %bb.by, %bb.be, %.thread63, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.fk = load i8, ptr %i.dh, align 16, !tbaa !424, !range !125, !noundef !126
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.bz, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit

bb.bz:                                            ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34
  store i8 0, ptr %i.dh, align 16, !tbaa !424
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 256
  %i.fn = load i8, ptr %i.fm, align 16, !tbaa !428
  switch i8 %i.fn, label %bb.cf [
    i8 -1, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit
    i8 0, label %bb.ca
  ], !prof !432

bb.ca:                                            ; preds = %bb.bz
  %i.fo = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.fp = getelementptr inbounds nuw i8, ptr %15, i64 121
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !124, !range !125, !noundef !126
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %15, i64 122
  %i.ft = load i8, ptr %i.fs, align 2, !range !125
  %i.fu = trunc nuw i8 %i.ft to i1
  %or.cond.i1.i.i.i.i.i.i.i.i = select i1 %i.fr, i1 true, i1 %i.fu
  br i1 %or.cond.i1.i.i.i.i.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fv = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 104
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = load i64, ptr %i.fv, align 16
  %i.fz = shl i64 %i.fy, 3
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.fz) #38
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i.i: ; preds = %bb.cb, %bb.ca
  %i.ga = getelementptr inbounds nuw i8, ptr %15, i64 89
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !124, !range !125, !noundef !126
  %i.gc = trunc nuw i8 %i.gb to i1
  %i.gd = getelementptr inbounds nuw i8, ptr %15, i64 90
  %i.ge = load i8, ptr %i.gd, align 2, !range !125
  %i.gf = trunc nuw i8 %i.ge to i1
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.gc, i1 true, i1 %i.gf
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = load i64, ptr %i.fo, align 16
  %i.gj = shl i64 %i.gi, 3
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gj) #38
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.cc, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %15, i64 57
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !124, !range !125, !noundef !126
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = getelementptr inbounds nuw i8, ptr %15, i64 58
  %i.go = load i8, ptr %i.gn, align 2, !range !125
  %i.gp = trunc nuw i8 %i.go to i1
  %or.cond.i1.i.i.1.i.i.i.i.i.i = select i1 %i.gm, i1 true, i1 %i.gp
  br i1 %or.cond.i1.i.i.1.i.i.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.gr = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = load i64, ptr %i.gq, align 16
  %i.gu = shl i64 %i.gt, 3
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gu) #38
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i.i.i.i: ; preds = %bb.cd, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %15, i64 25
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !124, !range !125, !noundef !126
  %i.gx = trunc nuw i8 %i.gw to i1
  %i.gy = getelementptr inbounds nuw i8, ptr %15, i64 26
  %i.gz = load i8, ptr %i.gy, align 2, !range !125
  %i.ha = trunc nuw i8 %i.gz to i1
  %or.cond.i.i.i.1.i.i.i.i.i.i = select i1 %i.gx, i1 true, i1 %i.ha
  br i1 %or.cond.i.i.i.1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = load i64, ptr %15, align 16
  %i.he = shl i64 %i.hd, 3
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.he) #38
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit

bb.cf:                                            ; preds = %bb.bz
  call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(288) %15) #21
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit: ; preds = %bb.bz, %bb.cf, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i.i.i.i, %bb.ce, %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors19Construct_segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_7Point_2IS1_EESS_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Segment_2") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %7 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %8 = alloca %class.anon.231, align 8            ; 5 uses
  %9 = alloca %class.anon.230, align 8            ; 4 uses
  %10 = alloca %class.anon.231, align 8           ; 5 uses
  %11 = alloca %class.anon.230, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.0.i.i = alloca [2 x %"class.CGAL::Point_2.204"], align 16 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.CGAL::Segment_2.470", align 16 ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #40
          to label %bb.b unwind label %bb.e       ; 9 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.n = load ptr, ptr %2, align 8, !tbaa !180
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %3, align 8, !tbaa !180    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(32) %i.o, i64 32, i1 false)
  %.sroa.0.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0.32..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !329
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.s, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i.i, i64 64, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.s, ptr %i.t, align 16, !tbaa !435
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i32 0, ptr %i.u, align 8, !tbaa !334
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors19Construct_segment_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_7Point_2INS_5EpeckEEESW_EEE, i64 16), ptr %i.m, align 16, !tbaa !154
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store ptr %i.p, ptr %i.v, align 16, !tbaa !180
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !181
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load atomic i32, ptr %i.x monotonic, align 8
  %i.z = add nsw i32 %i.y, 1
  store atomic i32 %i.z, ptr %i.x monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ab = load ptr, ptr %2, align 8, !tbaa !180   ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !180
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store atomic i32 %i.ae, ptr %i.ac monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.af = atomicrmw add ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ah = load ptr, ptr %2, align 8, !tbaa !180   ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !180
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw add ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  store ptr %i.m, ptr %0, align 8, !tbaa !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ak = load i32, ptr %i.c, align 4
  %i.al = and i32 %i.ak, -24577
  %i.am = or disjoint i32 %i.al, %i.i
  store i32 %i.am, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ak

bb.e:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.010 = extractvalue { ptr, i32 } %i.an, 1
  %i.ao = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #21
end_hunk_1
begin_hunk_2_@_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors19Construct_segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_7Point_2IS1_EESS_EEEDcDpRKT_:bb.a
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cg, i64 250
  %i.fy = getelementptr inbounds nuw i8, ptr %12, i64 186
  %i.fz = load i8, ptr %i.fy, align 2, !tbaa !301, !range !125, !noundef !126
  store i8 %i.fz, ptr %i.fx, align 2, !tbaa !301
  %i.ga = trunc nuw i8 %i.fw to i1
  br i1 %i.ga, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i.i.i.i.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.fm, ptr noundef nonnull align 16 dereferenceable(27) %i.fn, i64 16, i1 false), !tbaa.struct !312
  store i64 0, ptr %i.fp, align 16, !tbaa !291
  store i8 1, ptr %i.fv, align 1, !tbaa !124
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i.i.i.i.i.1.i

bb.ab:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i.i.i.i.1.i
  %i.gb = shl i64 %i.fq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.fm, ptr nonnull align 16 dereferenceable(27) %i.fn, i64 %i.gb, i1 false)
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i.i.i.i.i.1.i

_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i.i.i.i.i.1.i: ; preds = %bb.ab, %bb.aa
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cg, i64 256 ; 3 uses
  store i64 0, ptr %i.gc, align 16, !tbaa !181
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cg, i64 272
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 208 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 16, !tbaa !291 ; 2 uses
  store i64 %i.gf, ptr %i.gd, align 16, !tbaa !291
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cg, i64 280
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 216
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !300, !range !125, !noundef !126
  store i8 %i.gi, ptr %i.gg, align 8, !tbaa !300
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cg, i64 281
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 217 ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !124, !range !125, !noundef !126 ; 2 uses
  store i8 %i.gl, ptr %i.gj, align 1, !tbaa !124
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cg, i64 282
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 218
  %i.go = load i8, ptr %i.gn, align 2, !tbaa !301, !range !125, !noundef !126
  store i8 %i.go, ptr %i.gm, align 2, !tbaa !301
  %i.gp = trunc nuw i8 %i.gl to i1
  br i1 %i.gp, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i.i.i.i.i.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.gc, ptr noundef nonnull align 16 dereferenceable(64) %i.cd, i64 16, i1 false), !tbaa.struct !312
  store i64 0, ptr %i.ge, align 16, !tbaa !291
  store i8 1, ptr %i.gk, align 1, !tbaa !124
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.1.i.i.i.i.i.1.i

bb.ad:                                            ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i.i.i.i.i.1.i
  %i.gq = shl i64 %i.gf, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(64) %i.gc, ptr nonnull align 16 dereferenceable(64) %i.cd, i64 %i.gq, i1 false)
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.1.i.i.i.i.i.1.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.1.i.i.i.i.i.1.i: ; preds = %bb.ad, %bb.ac
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cg, i64 288 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %12, i64 224 ; 2 uses
  store i64 0, ptr %i.gr, align 16, !tbaa !181
  %i.gt = getelementptr inbounds nuw i8, ptr %i.cg, i64 304
  %i.gu = getelementptr inbounds nuw i8, ptr %12, i64 240 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 16, !tbaa !291 ; 2 uses
  store i64 %i.gv, ptr %i.gt, align 16, !tbaa !291
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cg, i64 312
  %i.gx = getelementptr inbounds nuw i8, ptr %12, i64 248
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !300, !range !125, !noundef !126
  store i8 %i.gy, ptr %i.gw, align 8, !tbaa !300
  %i.gz = getelementptr inbounds nuw i8, ptr %i.cg, i64 313
  %i.ha = getelementptr inbounds nuw i8, ptr %12, i64 249 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !124, !range !125, !noundef !126 ; 2 uses
  store i8 %i.hb, ptr %i.gz, align 1, !tbaa !124
  %i.hc = getelementptr inbounds nuw i8, ptr %i.cg, i64 314
  %i.hd = getelementptr inbounds nuw i8, ptr %12, i64 250
  %i.he = load i8, ptr %i.hd, align 2, !tbaa !301, !range !125, !noundef !126
  store i8 %i.he, ptr %i.hc, align 2, !tbaa !301
  %i.hf = trunc nuw i8 %i.hb to i1
  br i1 %i.hf, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.1.i.i.i.i.i.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.gr, ptr noundef nonnull align 16 dereferenceable(27) %i.gs, i64 16, i1 false), !tbaa.struct !312
  store i64 0, ptr %i.gu, align 16, !tbaa !291
  store i8 1, ptr %i.ha, align 1, !tbaa !124
  br label %_ZN4CGAL6HandleD2Ev.exit30

bb.af:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.1.i.i.i.i.i.1.i
  %i.hg = shl i64 %i.gv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.gr, ptr nonnull align 16 dereferenceable(27) %i.gs, i64 %i.hg, i1 false)
  br label %_ZN4CGAL6HandleD2Ev.exit30

_ZN4CGAL6HandleD2Ev.exit30:                       ; preds = %bb.ae, %bb.af
  store ptr %i.cg, ptr %i.cm, align 16, !tbaa !435
  %i.hh = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  store i32 0, ptr %i.hh, align 8, !tbaa !334
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEE, i64 16), ptr %i.au, align 16, !tbaa !154
  store ptr %i.au, ptr %0, align 8, !tbaa !180
  call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(256) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.ak

bb.ag:                                            ; preds = %bb.f
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.e
  %.merged18 = phi { ptr, i32 } [ %i.hi, %bb.ag ], [ %i.an, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.hj = load i32, ptr %i.a, align 4
  %i.hk = and i32 %i.hj, -24577
  %i.hl = or disjoint i32 %i.hk, %i.i
  store i32 %i.hl, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.al

bb.ai:                                            ; preds = %bb.o
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aj:                                            ; preds = %.noexc26, %.noexc25, %.noexc24, %.noexc, %bb.p
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(256) %12) #21
  br label %.body

.body:                                            ; preds = %bb.j, %bb.n, %bb.ai, %bb.aj
  %.pn16 = phi { ptr, i32 } [ %i.hn, %bb.aj ], [ %i.ba, %bb.j ], [ %i.hm, %bb.ai ], [ %i.bg, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 96) #38
  br label %bb.al

bb.ak:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZN4CGAL6HandleD2Ev.exit30
  ret void

bb.al:                                            ; preds = %.body, %bb.ah
  %.merged = phi { ptr, i32 } [ %.pn16, %.body ], [ %.merged18, %bb.ah ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !180    ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN4CGAL6Handle5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr @__libc_single_threaded, align 1, !tbaa !181
  %.not.i.i = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4 ; 2 uses
  %i.e = icmp eq i32 %i.d, 1                      ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !154
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #21, !inline_history !1251
  br label %_ZN4CGAL6Handle5resetEv.exit

bb.e:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.d, -1
  store atomic i32 %i.i, ptr %i.c monotonic, align 4
  br label %_ZN4CGAL6Handle5resetEv.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = atomicrmw add ptr %i.c, i32 -1 release, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %_ZN4CGAL6Handle5resetEv.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.l = load ptr, ptr %0, align 8, !tbaa !180    ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN4CGAL6Handle5resetEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !154
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #21, !inline_history !1251
  br label %_ZN4CGAL6Handle5resetEv.exit

_ZN4CGAL6Handle5resetEv.exit:                     ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %bb.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !408, !range !125, !noundef !126
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !408
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS2_5EpeckEEENS2_9Segment_2IS4_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(17) %0)
          to label %_ZNSt17_Optional_payloadISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0ELb0EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #41
  unreachable

_ZNSt17_Optional_payloadISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_20CommonKernelFunctors11Intersect_2IS7_EENSW_ISQ_EENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELb0EJNS9_INS_5EpeckEEES14_EEC2IJRKS14_S18_EEERKSX_RKSY_DpOT_(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.03.i.i.i.i = alloca [2 x %"class.CGAL::Point_2.204"], align 16 ; 4 uses
  %5 = alloca %"class.CGAL::Intersections::internal::Segment_2_Segment_2_pair", align 16 ; 11 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !180
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load atomic ptr, ptr %i.b acquire, align 8
  %i.d = load ptr, ptr %4, align 8, !tbaa !180
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load atomic ptr, ptr %i.e acquire, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !1260
  store ptr %i.c, ptr %5, align 16, !tbaa !444, !noalias !1260
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !445, !noalias !1260
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i32 3, ptr %i.h, align 16, !tbaa !446, !noalias !1260
  %i.i = call noundef i32 @_ZNK4CGAL13Intersections8internal24Segment_2_Segment_2_pairINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE17intersection_typeEv(ptr noundef nonnull align 16 dereferenceable(96) %5), !noalias !1260
  switch i32 %i.i, label %_ZNK4CGAL20CommonKernelFunctors11Intersect_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclINS_9Segment_2IS5_EES9_EENS_19Intersection_traitsIS5_T_T0_E11result_typeERKSB_RKSC_.exit [
    i32 2, label %bb.d
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.h, align 16, !tbaa !446, !noalias !1261
  %i.k = icmp eq i32 %i.j, 3
  br i1 %i.k, label %bb.c, label %_ZNK4CGAL13Intersections8internal24Segment_2_Segment_2_pairINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE18intersection_pointEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef i32 @_ZNK4CGAL13Intersections8internal24Segment_2_Segment_2_pairINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE17intersection_typeEv(ptr noundef nonnull align 16 dereferenceable(96) %5), !noalias !1261 ; 0 uses
  br label %_ZNK4CGAL13Intersections8internal24Segment_2_Segment_2_pairINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE18intersection_pointEv.exit.i.i

_ZNK4CGAL13Intersections8internal24Segment_2_Segment_2_pairINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE18intersection_pointEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.03.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %i.m, i64 32, i1 false)
  br label %_ZNK4CGAL20CommonKernelFunctors11Intersect_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclINS_9Segment_2IS5_EES9_EENS_19Intersection_traitsIS5_T_T0_E11result_typeERKSB_RKSC_.exit

bb.d:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.h, align 16, !tbaa !446, !noalias !1262
  %i.o = icmp eq i32 %i.n, 3
  br i1 %i.o, label %bb.e, label %_ZNK4CGAL13Intersections8internal24Segment_2_Segment_2_pairINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE20intersection_segmentEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = call noundef i32 @_ZNK4CGAL13Intersections8internal24Segment_2_Segment_2_pairINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE17intersection_typeEv(ptr noundef nonnull align 16 dereferenceable(96) %5), !noalias !1262 ; 0 uses
  br label %_ZNK4CGAL13Intersections8internal24Segment_2_Segment_2_pairINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE20intersection_segmentEv.exit.i.i

_ZNK4CGAL13Intersections8internal24Segment_2_Segment_2_pairINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE20intersection_segmentEv.exit.i.i: ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.03.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %i.q, i64 32, i1 false)
  %.sroa.03.32..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.03.32..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %i.r, i64 32, i1 false)
  br label %_ZNK4CGAL20CommonKernelFunctors11Intersect_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclINS_9Segment_2IS5_EES9_EENS_19Intersection_traitsIS5_T_T0_E11result_typeERKSB_RKSC_.exit

_ZNK4CGAL20CommonKernelFunctors11Intersect_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclINS_9Segment_2IS5_EES9_EENS_19Intersection_traitsIS5_T_T0_E11result_typeERKSB_RKSC_.exit: ; preds = %_ZNK4CGAL13Intersections8internal24Segment_2_Segment_2_pairINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE18intersection_pointEv.exit.i.i, %_ZNK4CGAL13Intersections8internal24Segment_2_Segment_2_pairINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE20intersection_segmentEv.exit.i.i, %bb.a
  %.sroa.5.0 = phi i8 [ undef, %bb.a ], [ 0, %_ZNK4CGAL13Intersections8internal24Segment_2_Segment_2_pairINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE18intersection_pointEv.exit.i.i ], [ 1, %_ZNK4CGAL13Intersections8internal24Segment_2_Segment_2_pairINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE20intersection_segmentEv.exit.i.i ]
  %.sink.i = phi i8 [ 0, %bb.a ], [ 1, %_ZNK4CGAL13Intersections8internal24Segment_2_Segment_2_pairINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE18intersection_pointEv.exit.i.i ], [ 1, %_ZNK4CGAL13Intersections8internal24Segment_2_Segment_2_pairINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE20intersection_segmentEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !1260
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !329
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.t, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.03.i.i.i.i, i64 64, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %.sink.i, ptr %.sroa.69.0..sroa_idx, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.t, ptr %i.u, align 16, !tbaa !1265
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.v, align 8, !tbaa !334
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_20CommonKernelFunctors11Intersect_2IS7_EENSW_ISQ_EENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELb0EJNS9_INS_5EpeckEEES14_EEE, i64 16), ptr %0, align 16, !tbaa !154
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = load ptr, ptr %4, align 8, !tbaa !180    ; 2 uses
  store ptr %i.x, ptr %i.w, align 16, !tbaa !180
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !181
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4CGAL20CommonKernelFunctors11Intersect_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclINS_9Segment_2IS5_EES9_EENS_19Intersection_traitsIS5_T_T0_E11result_typeERKSB_RKSC_.exit
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store atomic i32 %i.ab, ptr %i.z monotonic, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = load ptr, ptr %3, align 8, !tbaa !180   ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !180
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4
  %i.ag = add nsw i32 %i.af, 1
  store atomic i32 %i.ag, ptr %i.ae monotonic, align 4
  br label %bb.h

bb.g:                                             ; preds = %_ZNK4CGAL20CommonKernelFunctors11Intersect_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclINS_9Segment_2IS5_EES9_EENS_19Intersection_traitsIS5_T_T0_E11result_typeERKSB_RKSC_.exit
  %i.ah = atomicrmw add ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = load ptr, ptr %3, align 8, !tbaa !180   ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !180
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = atomicrmw add ptr %i.ak, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.539, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !tbaa !424, !range !125, !noundef !126
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 16, !tbaa !424
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load i8, ptr %i.d, align 16, !tbaa !428  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i, label %_ZNSt17_Optional_payloadISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0ELb0EED2Ev.exit, label %bb.c, !prof !317

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt13__invoke_implIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_2ISJ_EEEE8_M_resetEvEUlOT_E_JRSK_EESO_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(273) %0)
          to label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_2ISJ_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(273) %0) #21
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_2ISJ_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_2ISJ_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZNSt17_Optional_payloadISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #41
  unreachable

_ZNSt17_Optional_payloadISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_2ISJ_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_20CommonKernelFunctors11Intersect_2IS7_EENSW_ISQ_EENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELb0EJNS9_INS_5EpeckEEES14_EED2Ev(ptr noundef nonnull align 16 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.539, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !180  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !181
  %.not.i.i.i.i.i = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 4 ; 2 uses
  %i.g = icmp eq i32 %i.f, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !154
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #21, !inline_history !1266
  br label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.f, -1
  store atomic i32 %i.k, ptr %i.e monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = atomicrmw add ptr %i.e, i32 -1 release, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !180  ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !154
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #21, !inline_history !1266
  br label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.a
  %i.s = load ptr, ptr %i.a, align 16, !tbaa !180 ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJN4CGAL9Segment_2INS0_5EpeckEEES3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit.i
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !181
  %.not.i.i.i.i2.i = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  br i1 %.not.i.i.i.i2.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !154
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #21, !inline_history !1267
  br label %_ZNSt11_Tuple_implILm0EJN4CGAL9Segment_2INS0_5EpeckEEES3_EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = add nsw i32 %i.v, -1
  store atomic i32 %i.aa, ptr %i.u monotonic, align 4
  br label %_ZNSt11_Tuple_implILm0EJN4CGAL9Segment_2INS0_5EpeckEEES3_EED2Ev.exit

bb.n:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = atomicrmw add ptr %i.u, i32 -1 release, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.p, label %_ZNSt11_Tuple_implILm0EJN4CGAL9Segment_2INS0_5EpeckEEES3_EED2Ev.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  fence acquire
  %i.ad = load ptr, ptr %i.a, align 16, !tbaa !180 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZNSt11_Tuple_implILm0EJN4CGAL9Segment_2INS0_5EpeckEEES3_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !154
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #21, !inline_history !1267
  br label %_ZNSt11_Tuple_implILm0EJN4CGAL9Segment_2INS0_5EpeckEEES3_EED2Ev.exit

_ZNSt11_Tuple_implILm0EJN4CGAL9Segment_2INS0_5EpeckEEES3_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit.i, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !154
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aj = load atomic ptr, ptr %i.ai monotonic, align 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELi0EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt11_Tuple_implILm0EJN4CGAL9Segment_2INS0_5EpeckEEES3_EED2Ev.exit
  fence acquire
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %_ZN4CGAL8Lazy_repISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELi0EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 368 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 16, !tbaa !424, !range !125, !noundef !126
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.t, label %_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEEED2Ev.exit.i

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.an, align 16, !tbaa !424
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 352
  %i.ar = load i8, ptr %i.aq, align 16, !tbaa !428 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ar, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEEED2Ev.exit.i, label %bb.u, !prof !317

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt13__invoke_implIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_2ISJ_EEEE8_M_resetEvEUlOT_E_JRSK_EESO_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(288) %i.am)
          to label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_2ISJ_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i.i.i unwind label %bb.x, !inline_history !1268

bb.w:                                             ; preds = %bb.u
  tail call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(288) %i.am) #21, !inline_history !1268
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_2ISJ_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_2ISJ_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEEED2Ev.exit.i

bb.x:                                             ; preds = %bb.v
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #41, !inline_history !1268
  unreachable

_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEEED2Ev.exit.i: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_2ISJ_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i.i.i, %bb.t, %bb.s
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 384) #38, !inline_history !1268
  br label %_ZN4CGAL8Lazy_repISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELi0EED2Ev.exit

_ZN4CGAL8Lazy_repISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELi0EED2Ev.exit: ; preds = %_ZNSt11_Tuple_implILm0EJN4CGAL9Segment_2INS0_5EpeckEEES3_EED2Ev.exit, %bb.r, %_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEEED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_20CommonKernelFunctors11Intersect_2IS7_EENSW_ISQ_EENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELb0EJNS9_INS_5EpeckEEES14_EED0Ev(ptr noundef nonnull align 16 dereferenceable(144) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_20CommonKernelFunctors11Intersect_2IS7_EENSW_ISQ_EENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELb0EJNS9_INS_5EpeckEEES14_EED2Ev(ptr noundef nonnull align 16 dead_on_return(144) dereferenceable(144) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_20CommonKernelFunctors11Intersect_2IS7_EENSW_ISQ_EENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELb0EJNS9_INS_5EpeckEEES14_EE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(144) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNK4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_20CommonKernelFunctors11Intersect_2IS7_EENSW_ISQ_EENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELb0EJNS9_INS_5EpeckEEES14_EE19update_exact_helperIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(144) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL13Intersections8internal24Segment_2_Segment_2_pairINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE17intersection_typeEv(ptr noundef nonnull align 16 dereferenceable(96) %0) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %1 = alloca %"struct.CGAL::Simple_cartesian", align 1 ; 3 uses
  %2 = alloca %"struct.std::array.474", align 16  ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 16, !tbaa !446 ; 2 uses
  %.not = icmp eq i32 %i.b, 3
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !444
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !445
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.f = call { i64, i64 } @_ZN4CGAL13Intersections8internal22do_intersect_with_infoINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_15S2S2_inter_infoERKNT_9Segment_2ESB_RKS8_b(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext true) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 5 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.i = trunc i64 %i.g to i1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 16, !tbaa !446
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.j = and i64 %i.g, 256
  %.not67 = icmp eq i64 %i.j, 0
  %.sroa.044.4.extract.shift = lshr i64 %i.g, 32  ; 3 uses
  br i1 %.not67, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %i.a, align 16, !tbaa !446
  %.sroa.044.4.extract.trunc56 = trunc nuw i64 %.sroa.044.4.extract.shift to i32
  %i.k = icmp sgt i32 %.sroa.044.4.extract.trunc56, 1
  %i.l = shl nuw nsw i64 %.sroa.044.4.extract.shift, 5
  %spec.select.idx.i.i = and i64 %i.l, 32
  %. = select i1 %i.k, ptr %i.d, ptr %0
  %.sink = load ptr, ptr %., align 8, !tbaa !1271
  %spec.select.i.i14 = getelementptr inbounds nuw i8, ptr %.sink, i64 %spec.select.idx.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.m, ptr noundef nonnull align 16 dereferenceable(32) %spec.select.i.i14, i64 32, i1 false)
  %.sroa.12.8.extract.trunc = trunc i64 %i.h to i32
  %i.n = icmp sgt i32 %.sroa.12.8.extract.trunc, 1
  %.sink69.in = select i1 %i.n, ptr %i.d, ptr %0
  %.sink69 = load ptr, ptr %.sink69.in, align 8, !tbaa !1271
  %i.o = shl i64 %i.h, 5
  %spec.select.idx.i.i17 = and i64 %i.o, 32
  %spec.select.i.i18 = getelementptr inbounds nuw i8, ptr %.sink69, i64 %spec.select.idx.i.i17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.p, ptr noundef nonnull align 16 dereferenceable(32) %spec.select.i.i18, i64 32, i1 false)
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  store i32 1, ptr %i.a, align 16, !tbaa !446
  %i.q = icmp sgt i64 %i.g, -1
  br i1 %i.q, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.r = icmp samesign ugt i64 %i.g, 8589934591
  %i.s = shl nuw nsw i64 %.sroa.044.4.extract.shift, 5 ; 2 uses
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !445
  %spec.select.idx.i.i19 = and i64 %i.s, 32
  %spec.select.i.i20 = getelementptr inbounds nuw i8, ptr %i.t, i64 %spec.select.idx.i.i19
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 16, !tbaa !444
  %spec.select.i.i22 = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = phi ptr [ %spec.select.i.i20, %bb.h ], [ %spec.select.i.i22, %bb.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.w, ptr noundef nonnull align 16 dereferenceable(32) %i.v, i64 32, i1 false)
  br label %bb.o

bb.k:                                             ; preds = %bb.f
  %.sroa.12.12.extract.shift = lshr i64 %i.h, 32  ; 2 uses
  %.sroa.12.12.extract.trunc = trunc nuw i64 %.sroa.12.12.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.x = icmp slt i32 %.sroa.12.12.extract.trunc, 4
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 16, !tbaa !444   ; 2 uses
  %i.z = ashr i64 %i.h, 32
  %i.aa = getelementptr inbounds [16 x i8], ptr @_ZN4CGAL13Intersections8internalL7s2s2_idE, i64 %i.z ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 16, !tbaa !186
  %i.ac = shl i32 %i.ab, 5
  %i.ad = and i32 %i.ac, 32
  %spec.select.idx.i.i23 = zext nneg i32 %i.ad to i64
  %spec.select.i.i24 = getelementptr inbounds nuw i8, ptr %i.y, i64 %spec.select.idx.i.i23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !186
  %i.ag = shl i32 %i.af, 5
  %i.ah = and i32 %i.ag, 32
  %spec.select.idx.i.i25 = zext nneg i32 %i.ah to i64
  %spec.select.i.i26 = getelementptr inbounds nuw i8, ptr %i.y, i64 %spec.select.idx.i.i25
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !445 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !186
  %i.al = shl i32 %i.ak, 5
  %i.am = and i32 %i.al, 32
  %spec.select.idx.i.i27 = zext nneg i32 %i.am to i64
  %spec.select.i.i28 = getelementptr inbounds nuw i8, ptr %i.ai, i64 %spec.select.idx.i.i27
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !445 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr @_ZN4CGAL13Intersections8internalL7s2s2_idE, i64 %.sroa.12.12.extract.shift ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !186
  %i.as = shl i32 %i.ar, 5
  %i.at = and i32 %i.as, 32
  %spec.select.idx.i.i31 = zext nneg i32 %i.at to i64
  %spec.select.i.i32 = getelementptr inbounds nuw i8, ptr %i.ao, i64 %spec.select.idx.i.i31
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !186
  %i.aw = shl i32 %i.av, 5
  %i.ax = and i32 %i.aw, 32
  %spec.select.idx.i.i33 = zext nneg i32 %i.ax to i64
  %spec.select.i.i34 = getelementptr inbounds nuw i8, ptr %i.ao, i64 %spec.select.idx.i.i33
  %i.ay = load ptr, ptr %0, align 16, !tbaa !444  ; 2 uses
  %i.az = load i32, ptr %i.ap, align 16, !tbaa !186
  %i.ba = shl i32 %i.az, 5
  %i.bb = and i32 %i.ba, 32
  %spec.select.idx.i.i35 = zext nneg i32 %i.bb to i64
  %spec.select.i.i36 = getelementptr inbounds nuw i8, ptr %i.ay, i64 %spec.select.idx.i.i35
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink77.in = phi ptr [ %i.bc, %bb.m ], [ %i.an, %bb.l ]
  %.sink74 = phi ptr [ %i.ay, %bb.m ], [ %i.ai, %bb.l ]
  %spec.select.i.i32.sink = phi ptr [ %spec.select.i.i32, %bb.m ], [ %spec.select.i.i24, %bb.l ]
  %spec.select.i.i34.sink = phi ptr [ %spec.select.i.i34, %bb.m ], [ %spec.select.i.i26, %bb.l ]
  %spec.select.i.i36.sink = phi ptr [ %spec.select.i.i36, %bb.m ], [ %spec.select.i.i28, %bb.l ]
  %.sink77 = load i32, ptr %.sink77.in, align 4, !tbaa !186
  %i.bd = shl i32 %.sink77, 5
  %i.be = and i32 %i.bd, 32
  %spec.select.idx.i.i37 = zext nneg i32 %i.be to i64
  %spec.select.i.i38 = getelementptr inbounds nuw i8, ptr %.sink74, i64 %spec.select.idx.i.i37
end_hunk_2
begin_hunk_3_@_ZN4CGAL13Intersections8internal30seg_seg_do_intersect_containedINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_15S2S2_inter_infoERKNT_7Point_2ESB_SB_SB_iiiiRKS8_bi:bb.a

bb.s:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit
  unreachable

bb.t:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors11Collinear_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit36, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit29, %bb.r, %bb.l, %bb.k
  %.sroa.040.0 = phi i64 [ 1, %bb.r ], [ 1, %_ZNK4CGAL23CartesianKernelFunctors11Collinear_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit ], [ 1, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit36 ], [ 1, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit29 ], [ 0, %bb.k ], [ 1, %bb.l ]
  %.sroa.9.0 = phi i64 [ 0, %bb.r ], [ 256, %_ZNK4CGAL23CartesianKernelFunctors11Collinear_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit ], [ 0, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit36 ], [ 0, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit29 ], [ 0, %bb.k ], [ 0, %bb.l ]
  %.sroa.1741.0 = phi i32 [ %6, %bb.r ], [ %6, %_ZNK4CGAL23CartesianKernelFunctors11Collinear_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit ], [ %7, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit36 ], [ %7, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit29 ], [ -1, %bb.k ], [ -1, %bb.l ]
  %.sroa.25.0 = phi i32 [ -1, %bb.r ], [ %7, %_ZNK4CGAL23CartesianKernelFunctors11Collinear_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit ], [ -1, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit36 ], [ -1, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit29 ], [ -1, %bb.k ], [ -1, %bb.l ]
  %.sroa.34.0 = phi i64 [ 0, %bb.r ], [ 0, %_ZNK4CGAL23CartesianKernelFunctors11Collinear_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit ], [ 0, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit36 ], [ 0, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS5_EESA_SA_.exit29 ], [ -4294967296, %bb.k ], [ %i.ho, %bb.l ]
  %.sroa.1741.0.insert.ext = zext i32 %.sroa.1741.0 to i64
  %.sroa.1741.0.insert.shift = shl nuw i64 %.sroa.1741.0.insert.ext, 32
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.1741.0.insert.shift, %.sroa.9.0
  %.sroa.040.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.040.0
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.040.0.insert.insert, 0
  %.sroa.25.8.insert.ext = zext i32 %.sroa.25.0 to i64
  %.sroa.25.8.insert.insert = or disjoint i64 %.sroa.34.0, %.sroa.25.8.insert.ext
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.25.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.3", align 1  ; 5 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !1275, !range !125, !noundef !126 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1276, !range !125, !noundef !126
  %i.d = icmp eq i8 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nuw i8 %i.a to i1
  ret i1 %i.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.127, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt11range_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL30Uncertain_conversion_exceptionE, i64 16), ptr %i.f, align 8, !tbaa !154
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE, ptr nonnull @_ZNSt11range_errorD2Ev) #39
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !326    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !181
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.g ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #13

declare void @_ZNSt11range_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL30Uncertain_conversion_exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL9UncertainINS_4SignEE12make_certainEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.3", align 1  ; 5 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !1279   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1280
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  ret i32 %i.a

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.127, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt11range_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL30Uncertain_conversion_exceptionE, i64 16), ptr %i.e, align 8, !tbaa !154
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE, ptr nonnull @_ZNSt11range_errorD2Ev) #39
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !326    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !181
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.g ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELi0EED2Ev(ptr noundef nonnull align 16 dead_on_return(124) dereferenceable(124) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.539, align 1            ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !154
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 2 uses
  %i.g = load i8, ptr %i.f, align 16, !tbaa !424, !range !125, !noundef !126
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.f, align 16, !tbaa !424
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.j = load i8, ptr %i.i, align 16, !tbaa !428  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.j, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEEED2Ev.exit, label %bb.e, !prof !317

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt13__invoke_implIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_2ISJ_EEEE8_M_resetEvEUlOT_E_JRSK_EESO_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(288) %i.e)
          to label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_2ISJ_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(288) %i.e) #21
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_2ISJ_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_2ISJ_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEEED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #41
  unreachable

_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEEED2Ev.exit: ; preds = %bb.c, %bb.d, %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_2ISJ_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 384) #38
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELi0EED0Ev(ptr noundef nonnull align 16 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_20CommonKernelFunctors11Intersect_2IS7_EENSW_ISQ_EENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELb0EJNS9_INS_5EpeckEEES14_EE19update_exact_helperIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(144) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::internal::Converting_visitor", align 8 ; 5 uses
  %2 = alloca %"class.std::optional.397", align 16 ; 5 uses
  %3 = alloca %"class.CGAL::Cartesian_converter.489", align 2 ; 4 uses
  %4 = alloca %"struct.CGAL::Simple_cartesian.226", align 1 ; 3 uses
  %5 = alloca %class.anon.545, align 8            ; 5 uses
  %6 = alloca %class.anon.544, align 8            ; 4 uses
  %7 = alloca %class.anon.545, align 8            ; 5 uses
  %8 = alloca %class.anon.544, align 8            ; 4 uses
  %9 = alloca %"class.std::optional.437", align 16 ; 86 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #40 ; 66 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !180  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %i.d, ptr %8, align 8, !tbaa !422
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %8, ptr %7, align 8, !tbaa !338
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  store ptr %7, ptr %i.f, align 8, !tbaa !338
  %i.g = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_9Segment_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.g, align 8, !tbaa !338
  %i.h = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #39
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.f, align 8, !tbaa !338
  store ptr null, ptr %i.g, align 8, !tbaa !338
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.b, align 16, !tbaa !180 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.m, ptr %6, align 8, !tbaa !422
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %6, ptr %5, align 8, !tbaa !338
  store ptr %5, ptr %i.f, align 8, !tbaa !338
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_9Segment_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.g, align 8, !tbaa !338
  %i.o = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i7 unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i7:         ; preds = %bb.e
  %.not.i.i.i.i8 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i8, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i7
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.o) #39
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.f, align 8, !tbaa !338
  store ptr null, ptr %i.g, align 8, !tbaa !338
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.body

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i7
  store ptr null, ptr %i.f, align 8, !tbaa !338
  store ptr null, ptr %i.g, align 8, !tbaa !338
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.r = load atomic ptr, ptr %i.q monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !1286
  invoke void @_ZN4CGAL13Intersections8internal12intersectionINS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS_19Intersection_traitsIT_NSJ_9Segment_2ESK_E11result_typeERKSK_SO_RKSJ_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.437") align 16 %9, ptr noundef nonnull align 16 dereferenceable(256) %i.l, ptr noundef nonnull align 16 dereferenceable(256) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.j unwind label %bb.bl

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !1286
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 0, ptr %i.t, align 16, !tbaa !412
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 272 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 368 ; 3 uses
  store i8 0, ptr %i.w, align 16, !tbaa !424
  %i.x = load i8, ptr %i.v, align 16, !tbaa !424, !range !125, !noundef !126
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.k, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  store i8 -1, ptr %i.z, align 16, !tbaa !428
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 256
  %i.ab = load i8, ptr %i.aa, align 16, !tbaa !428 ; 2 uses
  switch i8 %i.ab, label %bb.al [
    i8 0, label %bb.l
    i8 1, label %bb.u
    i8 -1, label %bb.am
  ]

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %i.u, align 16, !tbaa !181
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 16, !tbaa !291 ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 16, !tbaa !291
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !300, !range !125, !noundef !126
  store i8 %i.ah, ptr %i.af, align 8, !tbaa !300
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 121
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 25 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !124, !range !125, !noundef !126 ; 2 uses
  store i8 %i.ak, ptr %i.ai, align 1, !tbaa !124
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 122
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 26
  %i.an = load i8, ptr %i.am, align 2, !tbaa !301, !range !125, !noundef !126
  store i8 %i.an, ptr %i.al, align 2, !tbaa !301
  %i.ao = trunc nuw i8 %i.ak to i1
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = shl i64 %i.ae, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(288) %i.u, ptr nonnull align 16 dereferenceable(288) %9, i64 %i.ap, i1 false)
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i.i.i.i.i14

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.u, ptr noundef nonnull align 16 dereferenceable(288) %9, i64 16, i1 false), !tbaa.struct !312
  store i64 0, ptr %i.ad, align 16, !tbaa !291
  store i8 1, ptr %i.aj, align 1, !tbaa !124
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i.i.i.i.i14

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i.i.i.i.i14: ; preds = %bb.n, %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i64 0, ptr %i.aq, align 16, !tbaa !181
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 144
end_hunk_3
