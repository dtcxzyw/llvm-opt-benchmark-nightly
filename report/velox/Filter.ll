Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Filter?download=true
inline.NumInlined: 10429
inline.NumDeleted: 4080
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZNK8facebook5velox6common18NegatedBigintRange9mergeWithEPKNS1_6FilterE:bb.a
  %9 = alloca %"class.std::vector.130", align 16  ; 19 uses
  %10 = alloca %"class.std::vector.130", align 16 ; 6 uses
  %11 = alloca %"class.std::vector.266", align 8  ; 18 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !70   ; 2 uses
  switch i32 %i.k, label %bb.cu [
    i32 1, label %bb.b
    i32 0, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 5, label %bb.d
    i32 8, label %bb.l
    i32 17, label %bb.as
    i32 6, label %bb.av
    i32 7, label %bb.av
    i32 22, label %bb.av
    i32 9, label %bb.aw
    i32 10, label %bb.aw
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.l = load ptr, ptr %2, align 8, !tbaa !104
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1)
  br label %bb.cv

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK8facebook5velox6common18NegatedBigintRange5cloneESt8optionalIbE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i16 256)
  br label %bb.cv

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !74, !range !55, !noundef !59
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i8, ptr %i.r, align 8, !tbaa !74, !range !55, !noundef !59
  %i.t = trunc nuw i8 %i.s to i1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = phi i1 [ false, %bb.d ], [ %i.t, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !135  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !138  ; 6 uses
  %i.z = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #48
          to label %.noexc unwind label %bb.i, !inline_history !959 ; 15 uses

.noexc:                                           ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i8 0, ptr %i.aa, align 8, !tbaa !74, !noalias !960
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 9
  store i8 1, ptr %i.ab, align 1, !tbaa !73, !noalias !960
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 5, ptr %i.ac, align 4, !tbaa !70, !noalias !960
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.z, align 8, !tbaa !104, !noalias !960
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.w, ptr %i.ad, align 8, !tbaa !135, !noalias !960
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %i.y, ptr %i.ae, align 8, !tbaa !138, !noalias !960
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.speculated15.i.i = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %i.ag = trunc i64 %.sroa.speculated15.i.i to i32
  store i32 %i.ag, ptr %i.af, align 8, !tbaa !139, !noalias !960
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %.sroa.speculated11.i.i = tail call i64 @llvm.smin.i64(i64 %i.y, i64 2147483647)
  %i.ai = trunc i64 %.sroa.speculated11.i.i to i32
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !140, !noalias !960
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.speculated7.i.i = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -32768)
  %i.ak = trunc i64 %.sroa.speculated7.i.i to i16
  store i16 %i.ak, ptr %i.aj, align 8, !tbaa !141, !noalias !960
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 42
  %.sroa.speculated.i.i = tail call i64 @llvm.smin.i64(i64 %i.y, i64 32767)
  %i.am = trunc i64 %.sroa.speculated.i.i to i16
  store i16 %i.am, ptr %i.al, align 2, !tbaa !142, !noalias !960
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  %i.ao = icmp eq i64 %i.y, %i.w
  %i.ap = zext i1 %i.ao to i8
  store i8 %i.ap, ptr %i.an, align 4, !tbaa !143, !noalias !960
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 45 ; 2 uses
  %.not.i.i = icmp sgt i64 %i.w, 2147483647
  br i1 %.not.i.i, label %.thread.i.i, label %bb.g

.thread.i.i:                                      ; preds = %.noexc
  store i8 0, ptr %i.aq, align 1, !tbaa !144, !noalias !960
  br label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %.noexc
  %i.ar = icmp sgt i64 %i.y, -2147483649
  %i.as = zext i1 %i.ar to i8
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !144, !noalias !960
  %.not1.i.i = icmp sgt i64 %i.w, 32767
  br i1 %.not1.i.i, label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = icmp sgt i64 %i.y, -32769
  %i.au = zext i1 %i.at to i8
  br label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h, %bb.g, %.thread.i.i
  %i.av = phi i8 [ 0, %bb.g ], [ %i.au, %bb.h ], [ 0, %.thread.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 46
  store i8 %i.av, ptr %i.aw, align 2, !tbaa !145, !noalias !960
  %i.ax = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #48
          to label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit72 ; 5 uses

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = ptrtoint ptr %i.z to i64
  store i64 %i.ba, ptr %i.ax, align 8, !tbaa !155
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr %i.ax, ptr %3, align 8, !tbaa !277
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !280
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !281
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !155 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !135
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !138
  invoke fastcc void @_ZN8facebook5velox6common12_GLOBAL__N_130combineNegatedRangeOnIntRangesEllRKSt6vectorISt10unique_ptrINS1_11BigintRangeESt14default_deleteIS5_EESaIS8_EEb(ptr dead_on_unwind noalias writable align 8 %0, i64 noundef %i.bf, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %i.u)
          to label %.lr.ph.i.i.i unwind label %bb.j

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !155 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev.exit, label %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef 48) #46
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %bb.cv

bb.i:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit72: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 48) #46
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit72, %bb.j
  %.pn65 = phi { ptr, i32 } [ %i.bl, %bb.j ], [ %i.bk, %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit72 ], [ %i.bj, %bb.i ]
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %common.resume

bb.l:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !74, !range !55, !noundef !59
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !74, !range !55, !noundef !59
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.br = phi i8 [ 0, %bb.l ], [ %i.bq, %bb.m ]   ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !155 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !135 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !155 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !135 ; 2 uses
  %i.ca = icmp sgt i64 %i.bv, %i.bz
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cb = load ptr, ptr %2, align 8, !tbaa !104
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 216
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1)
  br label %bb.cv

bb.p:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !138 ; 2 uses
  %i.cg = add nsw i64 %i.cf, 1                    ; 2 uses
  %i.ch = icmp slt i64 %i.cg, %i.bz
  br i1 %i.ch, label %bb.q, label %bb.ao

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ci = load i64, ptr %i.bu, align 8, !tbaa !135 ; 2 uses
  %i.cj = load i64, ptr %i.by, align 8, !tbaa !135 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !138 ; 2 uses
  %.not = icmp eq i64 %i.ci, -9223372036854775808
  br i1 %.not, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store i64 -9223372036854775808, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #44
  %i.cm = add nsw i64 %i.ci, -1
  store i64 %i.cm, ptr %i.b, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #44
  store i8 0, ptr %i.c, align 1, !tbaa !53
  invoke void @_ZSt11make_uniqueIN8facebook5velox6common11BigintRangeEJllbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.98") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %bb.v       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %5, align 8, !tbaa !155   ; 2 uses
  %.not.i73 = icmp eq ptr %i.co, null
  br i1 %.not.i73, label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit75, label %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i74

_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i74: ; preds = %bb.t
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef 48) #46
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit75

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit75: ; preds = %bb.t, %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit78

bb.v:                                             ; preds = %bb.s
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %5, align 8, !tbaa !155   ; 2 uses
  %.not.i76 = icmp eq ptr %i.cr, null
  br i1 %.not.i76, label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit78, label %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i77

_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i77: ; preds = %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 48) #46
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit78

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit78: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i77, %bb.v, %bb.u
  %.pn55 = phi { ptr, i32 } [ %i.cp, %bb.u ], [ %i.cq, %bb.v ], [ %i.cq, %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %bb.an

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit75, %bb.q
  %.not175 = icmp eq i64 %i.cj, -9223372036854775808
  br i1 %.not175, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #44
  store i64 %i.cg, ptr %i.d, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #44
  %i.cs = add nsw i64 %i.cj, -1
  store i64 %i.cs, ptr %i.e, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #44
  store i8 0, ptr %i.f, align 1, !tbaa !53
  invoke void @_ZSt11make_uniqueIN8facebook5velox6common11BigintRangeEJllbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.98") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.z unwind label %bb.ab      ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cu = load ptr, ptr %6, align 8, !tbaa !155   ; 2 uses
  %.not.i79 = icmp eq ptr %i.cu, null
  br i1 %.not.i79, label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit81, label %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i80

_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i80: ; preds = %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef 48) #46
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit81

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit81: ; preds = %bb.z, %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br label %bb.ac

bb.aa:                                            ; preds = %bb.x
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit84

bb.ab:                                            ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %6, align 8, !tbaa !155   ; 2 uses
  %.not.i82 = icmp eq ptr %i.cx, null
  br i1 %.not.i82, label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit84, label %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i83

_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i83: ; preds = %bb.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 48) #46
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit84

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit84: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i83, %bb.ab, %bb.aa
  %.pn57 = phi { ptr, i32 } [ %i.cv, %bb.aa ], [ %i.cw, %bb.ab ], [ %i.cw, %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br label %bb.an

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit81, %bb.w
  %.not166 = icmp eq i64 %i.cl, 9223372036854775807
  br i1 %.not166, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #44
  %i.cy = add nsw i64 %i.cl, 1
  store i64 %i.cy, ptr %i.g, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #44
  store i64 9223372036854775807, ptr %i.h, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #44
  store i8 0, ptr %i.i, align 1, !tbaa !53
  invoke void @_ZSt11make_uniqueIN8facebook5velox6common11BigintRangeEJllbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.98") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %i.i)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.af unwind label %bb.ah     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.da = load ptr, ptr %7, align 8, !tbaa !155   ; 2 uses
  %.not.i85 = icmp eq ptr %i.da, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit87, label %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i86

_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i86: ; preds = %bb.af
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 48) #46
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit87

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit87: ; preds = %bb.af, %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit90

bb.ah:                                            ; preds = %bb.ae
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %7, align 8, !tbaa !155   ; 2 uses
  %.not.i88 = icmp eq ptr %i.dd, null
  br i1 %.not.i88, label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit90, label %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i89

_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i89: ; preds = %bb.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 48) #46
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit90

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit90: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i89, %bb.ah, %bb.ag
  %.pn59 = phi { ptr, i32 } [ %i.db, %bb.ag ], [ %i.dc, %bb.ah ], [ %i.dc, %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  br label %bb.an

bb.ai:                                            ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit87, %bb.ac
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.df = load <2 x ptr>, ptr %4, align 16, !tbaa !283
  store <2 x ptr> %i.df, ptr %8, align 16, !tbaa !283
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 16, !tbaa !281
  store ptr %i.di, ptr %i.dg, align 16, !tbaa !281
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.dj = trunc nuw i8 %i.br to i1
  invoke fastcc void @_ZN8facebook5velox6common12_GLOBAL__N_119combineBigintRangesESt6vectorISt10unique_ptrINS1_11BigintRangeESt14default_deleteIS5_EESaIS8_EEb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef align 8 %8, i1 noundef zeroext %i.dj)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dl = load ptr, ptr %8, align 16, !tbaa !277  ; 5 uses
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i91 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not4.i.i.i91, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i100, label %.lr.ph.i.i.i92

.lr.ph.i.i.i92:                                   ; preds = %bb.aj, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i96
  %.05.i.i.i93 = phi ptr [ %i.do, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i96 ], [ %i.dl, %bb.aj ] ; 2 uses
  %i.dn = load ptr, ptr %.05.i.i.i93, align 8, !tbaa !155 ; 2 uses
  %.not.i.i.i.i.i.i94 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i.i94, label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i96, label %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i.i.i.i.i.i95

_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i.i.i.i.i.i95: ; preds = %.lr.ph.i.i.i92
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef 48) #46
  br label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i96

_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i96: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i.i.i.i.i.i95, %.lr.ph.i.i.i92
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i.i.i93, i64 8 ; 2 uses
  %.not.i.i.i97 = icmp eq ptr %i.do, %i.dm
  br i1 %.not.i.i.i97, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i100, label %.lr.ph.i.i.i92, !llvm.loop !287

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i100: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i96, %bb.aj
  %.not.i.i1.i101 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i1.i101, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev.exit102, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i100
  %i.dp = load ptr, ptr %i.dg, align 16, !tbaa !281
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dl to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.ds) #46
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev.exit102

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev.exit102: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i100, %bb.ak
  %i.dt = load ptr, ptr %4, align 16, !tbaa !277  ; 3 uses
  %i.du = load ptr, ptr %i.de, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i103 = icmp eq ptr %i.dt, %i.du
  br i1 %.not4.i.i.i103, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i112, label %.lr.ph.i.i.i104

.lr.ph.i.i.i104:                                  ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev.exit102, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i108
  %.05.i.i.i105 = phi ptr [ %i.dw, %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i108 ], [ %i.dt, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev.exit102 ] ; 2 uses
  %i.dv = load ptr, ptr %.05.i.i.i105, align 8, !tbaa !155 ; 2 uses
  %.not.i.i.i.i.i.i106 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i106, label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i108, label %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i.i.i.i.i.i107

_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i.i.i.i.i.i107: ; preds = %.lr.ph.i.i.i104
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef 48) #46
  br label %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i108

_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i108: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i.i.i.i.i.i107, %.lr.ph.i.i.i104
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i.i.i105, i64 8 ; 2 uses
  %.not.i.i.i109 = icmp eq ptr %i.dw, %i.du
  br i1 %.not.i.i.i109, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i110, label %.lr.ph.i.i.i104, !llvm.loop !287

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i110: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EEEvPT_.exit.i.i.i108
  %.pr.i111 = load ptr, ptr %4, align 16, !tbaa !277
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i112

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i112: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i110, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev.exit102
  %i.dx = phi ptr [ %.pr.i111, %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i110 ], [ %i.dt, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev.exit102 ] ; 3 uses
  %.not.i.i1.i113 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i1.i113, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EESaIS7_EED2Ev.exit114, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i112
  %i.dy = load ptr, ptr %i.dh, align 16, !tbaa !281
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #46
end_hunk_0
