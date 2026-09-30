Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN16QCPDataContainerI12QCPCurveDataE3addERK5QListIS0_Eb:bb.a
  store i32 %i.ag, ptr %i.f, align 8
  %i.ah = load ptr, ptr %i.x, align 8
  %i.ai = load i64, ptr %i.a, align 8
  %i.aj = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i37, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i: ; preds = %bb.k
  %i.al = load atomic i32, ptr %i.ak monotonic, align 4
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i, label %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i, %bb.k
  tail call void @_ZN17QArrayDataPointerI12QCPCurveDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.aj, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit

_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i
  %.idx = mul i64 %i.ai, 24                       ; 2 uses
  %i.an = icmp sgt i64 %.idx, 0
  br i1 %i.an, label %.lr.ph.preheader.i.i.i.i.i, label %_ZN16QCPDataContainerI12QCPCurveDataE3setERK5QListIS0_Eb.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit
  %i.ao = load ptr, ptr %i.t, align 8
  %i.ap = load i32, ptr %i.f, align 8
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [24 x i8], ptr %i.ao, i64 %i.aq
  %i.as = udiv exact i64 %.idx, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i ], [ %i.as, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.0.08.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %i.ar, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %i.ah, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %.sroa.0.08.i.i.i.i.i, ptr noundef align 8 dereferenceable(24) %.sroa.05.07.i.i.i.i.i, i64 24, i1 false)
  %i.at = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i, i64 24
  %i.au = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i, i64 24
  %i.av = add nsw i64 %.09.i.i.i.i.i, -1
  %i.aw = icmp samesign ugt i64 %.09.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %_ZN16QCPDataContainerI12QCPCurveDataE3setERK5QListIS0_Eb.exit, !llvm.loop !1163

.critedge:                                        ; preds = %bb.g, %bb.h
  %i.ax = getelementptr i8, ptr %0, i64 8         ; 13 uses
  %sext = shl i64 %i.b, 32
  %i.ay = ashr exact i64 %sext, 32                ; 2 uses
  %i.az = add i64 %i.e, %i.ay                     ; 4 uses
  tail call void @_ZN5QListI12QCPCurveDataE15resize_internalEx(ptr noundef align 8 dereferenceable_or_null(24) %i.ax, i64 noundef %i.az)
  %i.ba = load i64, ptr %i.d, align 8             ; 2 uses
  %i.bb = icmp sgt i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.l, label %_ZN5QListI12QCPCurveDataE6resizeEx.exit

bb.l:                                             ; preds = %.critedge
  %i.bc = getelementptr i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.idx.i.i = mul i64 %i.ba, 24                   ; 2 uses
  store i64 %i.az, ptr %i.d, align 8
  %.idx6.i.i = mul i64 %i.az, 24                  ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 %.idx6.i.i
  %.not4.i.i = icmp eq i64 %.idx.i.i, %.idx6.i.i
  br i1 %.not4.i.i, label %_ZN5QListI12QCPCurveDataE6resizeEx.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.bf = getelementptr i8, ptr %i.bd, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.preheader.i.i
  %.05.i.i = phi ptr [ %i.bg, %bb.m ], [ %i.bf, %.lr.ph.preheader.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  invoke void @_ZN12QCPCurveDataC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bg = getelementptr i8, ptr %.05.i.i, i64 24  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %.05.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  %.not.i.i = icmp eq ptr %i.bg, %i.be
  br i1 %.not.i.i, label %_ZN5QListI12QCPCurveDataE6resizeEx.exit, label %.lr.ph.i.i, !llvm.loop !60

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #52
  unreachable

_ZN5QListI12QCPCurveDataE6resizeEx.exit:          ; preds = %bb.m, %.critedge, %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i64, ptr %i.a, align 8
  %i.bm = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i38, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i40, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i39

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i39: ; preds = %_ZN5QListI12QCPCurveDataE6resizeEx.exit
  %i.bn = load atomic i32, ptr %i.bm monotonic, align 4
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i40, label %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i40: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i39, %_ZN5QListI12QCPCurveDataE6resizeEx.exit
  call void @_ZN17QArrayDataPointerI12QCPCurveDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.ax, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit

_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i39, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i40
  %i.bp = getelementptr i8, ptr %0, i64 16        ; 8 uses
  %i.bq = sub nsw i64 0, %i.ay                    ; 6 uses
  %.idx93 = mul i64 %i.bl, 24                     ; 2 uses
  %i.br = icmp sgt i64 %.idx93, 0
  br i1 %i.br, label %.lr.ph.preheader.i.i.i.i.i42, label %_ZSt4copyIN5QListI12QCPCurveDataE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit47

.lr.ph.preheader.i.i.i.i.i42:                     ; preds = %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit
  %i.bs = load ptr, ptr %i.bp, align 8
  %i.bt = load i64, ptr %i.d, align 8
  %i.bu = getelementptr [24 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr [24 x i8], ptr %i.bu, i64 %i.bq
  %i.bw = udiv exact i64 %.idx93, 24
  br label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %.lr.ph.i.i.i.i.i43, %.lr.ph.preheader.i.i.i.i.i42
  %.09.i.i.i.i.i44 = phi i64 [ %i.bz, %.lr.ph.i.i.i.i.i43 ], [ %i.bw, %.lr.ph.preheader.i.i.i.i.i42 ] ; 2 uses
  %.sroa.0.08.i.i.i.i.i45 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i43 ], [ %i.bv, %.lr.ph.preheader.i.i.i.i.i42 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i46 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i43 ], [ %i.bk, %.lr.ph.preheader.i.i.i.i.i42 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %.sroa.0.08.i.i.i.i.i45, ptr noundef align 8 dereferenceable(24) %.sroa.05.07.i.i.i.i.i46, i64 24, i1 false)
  %i.bx = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i46, i64 24
  %i.by = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i45, i64 24
  %i.bz = add nsw i64 %.09.i.i.i.i.i44, -1
  %i.ca = icmp samesign ugt i64 %.09.i.i.i.i.i44, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i43, label %_ZSt4copyIN5QListI12QCPCurveDataE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit47, !llvm.loop !1163

_ZSt4copyIN5QListI12QCPCurveDataE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit47: ; preds = %.lr.ph.i.i.i.i.i43, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit
  br i1 %2, label %_ZSt4sortIN5QListI12QCPCurveDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN5QListI12QCPCurveDataE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit47
  %i.cb = load ptr, ptr %i.ax, align 8            ; 3 uses
  %.not.i.i.i.i.i48 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i48, label %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i49

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i49: ; preds = %bb.o
  %i.cc = load atomic i32, ptr %i.cb monotonic, align 4
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51, label %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51.thread

_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51.thread: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i49
  %i.ce = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.cf = load i64, ptr %i.d, align 8             ; 2 uses
  %i.cg = getelementptr [24 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr [24 x i8], ptr %i.cg, i64 %i.bq
  br label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i53

_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51: ; preds = %bb.o, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i49
  call void @_ZN17QArrayDataPointerI12QCPCurveDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.ax, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre96 = load ptr, ptr %i.ax, align 8          ; 2 uses
  %i.ci = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.cj = load i64, ptr %i.d, align 8             ; 2 uses
  %i.ck = getelementptr [24 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr [24 x i8], ptr %i.ck, i64 %i.bq ; 2 uses
  %.not.i.i.i.i.i52 = icmp eq ptr %.pre96, null
  br i1 %.not.i.i.i.i.i52, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i54, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i53

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i53: ; preds = %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51.thread, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51
  %i.cm = phi ptr [ %i.ch, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51.thread ], [ %i.cl, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51 ] ; 2 uses
  %i.cn = phi i64 [ %i.cf, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51.thread ], [ %i.cj, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51 ]
  %i.co = phi ptr [ %i.ce, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51.thread ], [ %i.ci, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51 ]
  %i.cp = phi ptr [ %i.cb, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51.thread ], [ %.pre96, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51 ]
  %i.cq = load atomic i32, ptr %i.cp monotonic, align 4
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i54, label %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit55

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i54: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i53, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51
  %i.cs = phi ptr [ %i.cm, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i53 ], [ %i.cl, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit51 ]
  call void @_ZN17QArrayDataPointerI12QCPCurveDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.ax, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre97 = load ptr, ptr %i.bp, align 8
  %.pre98 = load i64, ptr %i.d, align 8
  br label %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit55

_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit55: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i53, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i54
  %i.ct = phi ptr [ %i.cm, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i53 ], [ %i.cs, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i54 ] ; 12 uses
  %i.cu = phi i64 [ %i.cn, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i53 ], [ %.pre98, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i54 ]
  %i.cv = phi ptr [ %i.co, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i53 ], [ %.pre97, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i54 ]
  %i.cw = getelementptr [24 x i8], ptr %i.cv, i64 %i.cu ; 7 uses
  %.not.i.i56 = icmp eq ptr %i.ct, %i.cw
  br i1 %.not.i.i56, label %_ZSt4sortIN5QListI12QCPCurveDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit55
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.ct to i64               ; 3 uses
  %i.cz = sub i64 %i.cx, %i.cy                    ; 2 uses
  %i.da = sdiv exact i64 %i.cz, 24
  %i.db = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = shl nuw nsw i64 %i.db, 1
  %i.dd = xor i64 %i.dc, 126
  call void @_ZSt16__introsort_loopIN5QListI12QCPCurveDataE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_T1_(ptr %i.ct, ptr %i.cw, i64 noundef %i.dd, ptr nonnull @_Z18qcpLessThanSortKeyI12QCPCurveDataEbRKT_S3_)
  %i.de = icmp sgt i64 %i.cz, 384
  %.sroa.0.019.i.i = getelementptr i8, ptr %i.ct, i64 24 ; 4 uses
  br i1 %i.de, label %.lr.ph.i.i69, label %bb.u

.lr.ph.i.i69:                                     ; preds = %bb.p
  %i.df = getelementptr i8, ptr %i.ct, i64 384    ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph.i.i69
  %indvar.i.i = phi i64 [ 0, %.lr.ph.i.i69 ], [ %4, %bb.t ]
  %.sroa.0.022.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i69 ], [ %.sroa.0.0.i.i, %bb.t ] ; 8 uses
  %.pn21.i.i = phi ptr [ %i.ct, %.lr.ph.i.i69 ], [ %.sroa.0.022.i.i, %bb.t ] ; 2 uses
  %4 = add nuw nsw i64 %indvar.i.i, 1             ; 2 uses
  %5 = mul nuw nsw i64 %4, 24
  %i.dg = load double, ptr %.sroa.0.022.i.i, align 8 ; 4 uses
  %i.dh = load double, ptr %i.ct, align 8
  %i.di = fcmp olt double %i.dg, %i.dh
  br i1 %i.di, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.0.022.i.i, align 8
  %i.dj = ptrtoint ptr %.sroa.0.022.i.i to i64
  %i.dk = sub i64 %i.dj, %i.cy
  %i.dl = icmp sgt i64 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.r
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 8 %.sroa.0.019.i.i, ptr noundef align 8 %i.ct, i64 %5, i1 false)
  br label %_ZSt13move_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i

_ZSt13move_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.r
  store <3 x double> %.sroa.0.0.copyload, ptr %i.ct, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %.sroa.6.0..sroa.0.022.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.6.0..sroa.0.022.i.i.sroa_idx, align 8
  %i.dm = load double, ptr %.pn21.i.i, align 8
  %i.dn = fcmp olt double %i.dg, %i.dm
  br i1 %i.dn, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %.lr.ph.i.i.i
  %.sroa.0.09.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn21.i.i, %bb.s ] ; 4 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.022.i.i, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %.sroa.04.08.i.i.i, ptr noundef align 8 dereferenceable(24) %.sroa.0.09.i.i.i, i64 24, i1 false)
  %.sroa.0.0.i.i.i = getelementptr i8, ptr %.sroa.0.09.i.i.i, i64 -24 ; 2 uses
  %i.do = load double, ptr %.sroa.0.0.i.i.i, align 8
  %i.dp = fcmp olt double %i.dg, %i.do
  br i1 %i.dp, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i, !llvm.loop !61

_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.s
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.0.022.i.i, %bb.s ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  store double %i.dg, ptr %.sroa.04.0.lcssa.i.i.i, align 8
  %.sroa.6.0..sroa.04.0.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 8
  store <2 x double> %.sroa.6.sroa.0.0.copyload, ptr %.sroa.6.0..sroa.04.0.lcssa.i.i.i.sroa_idx, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i
  %.sroa.0.0.i.i = getelementptr i8, ptr %.sroa.0.022.i.i, i64 24 ; 2 uses
  %.not.i.i70 = icmp eq ptr %.sroa.0.0.i.i, %i.df
  br i1 %.not.i.i70, label %_ZSt16__insertion_sortIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i, label %bb.q, !llvm.loop !62

_ZSt16__insertion_sortIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i: ; preds = %bb.t
  %.not8.i.i = icmp eq ptr %i.df, %i.cw
  br i1 %.not8.i.i, label %_ZSt4sortIN5QListI12QCPCurveDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %_ZSt16__insertion_sortIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i
  %.sroa.0.09.i.i = phi ptr [ %i.du, %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i ], [ %i.df, %_ZSt16__insertion_sortIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i ] ; 6 uses
  %.sroa.084.0.copyload = load double, ptr %.sroa.0.09.i.i, align 8 ; 3 uses
  %.sroa.687.0..sroa.0.09.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 8
  %.sroa.687.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.687.0..sroa.0.09.i.i.sroa_idx, align 8
  %.sroa.0.07.i.i.i = getelementptr i8, ptr %.sroa.0.09.i.i, i64 -24 ; 2 uses
  %i.dq = load double, ptr %.sroa.0.07.i.i.i, align 8
  %i.dr = fcmp olt double %.sroa.084.0.copyload, %i.dq
  br i1 %i.dr, label %.lr.ph.i.i15.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i

.lr.ph.i.i15.i:                                   ; preds = %.lr.ph.i11.i, %.lr.ph.i.i15.i
  %.sroa.0.09.i.i16.i = phi ptr [ %.sroa.0.0.i.i18.i, %.lr.ph.i.i15.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i11.i ] ; 4 uses
  %.sroa.04.08.i.i17.i = phi ptr [ %.sroa.0.09.i.i16.i, %.lr.ph.i.i15.i ], [ %.sroa.0.09.i.i, %.lr.ph.i11.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %.sroa.04.08.i.i17.i, ptr noundef align 8 dereferenceable(24) %.sroa.0.09.i.i16.i, i64 24, i1 false)
  %.sroa.0.0.i.i18.i = getelementptr i8, ptr %.sroa.0.09.i.i16.i, i64 -24 ; 2 uses
  %i.ds = load double, ptr %.sroa.0.0.i.i18.i, align 8
  %i.dt = fcmp olt double %.sroa.084.0.copyload, %i.ds
  br i1 %i.dt, label %.lr.ph.i.i15.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i, !llvm.loop !61

_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i: ; preds = %.lr.ph.i.i15.i, %.lr.ph.i11.i
  %.sroa.04.0.lcssa.i.i13.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i11.i ], [ %.sroa.0.09.i.i16.i, %.lr.ph.i.i15.i ] ; 2 uses
  store double %.sroa.084.0.copyload, ptr %.sroa.04.0.lcssa.i.i13.i, align 8
  %.sroa.687.0..sroa.04.0.lcssa.i.i13.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i13.i, i64 8
  store <2 x double> %.sroa.687.sroa.0.0.copyload, ptr %.sroa.687.0..sroa.04.0.lcssa.i.i13.i.sroa_idx, align 8
  %i.du = getelementptr i8, ptr %.sroa.0.09.i.i, i64 24 ; 2 uses
  %.not.i14.i = icmp eq ptr %i.du, %i.cw
  br i1 %.not.i14.i, label %_ZSt4sortIN5QListI12QCPCurveDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i11.i, !llvm.loop !63

bb.u:                                             ; preds = %bb.p
  %.not20.i21.i = icmp eq ptr %.sroa.0.019.i.i, %i.cw
  br i1 %.not20.i21.i, label %_ZSt4sortIN5QListI12QCPCurveDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %bb.u, %bb.x
  %indvar.i23.i = phi i64 [ %indvar.next.i34.i, %bb.x ], [ 0, %bb.u ] ; 2 uses
  %.sroa.0.022.i24.i = phi ptr [ %.sroa.0.0.i32.i, %bb.x ], [ %.sroa.0.019.i.i, %bb.u ] ; 9 uses
  %.pn21.i25.i = phi ptr [ %.sroa.0.022.i24.i, %bb.x ], [ %i.ct, %bb.u ] ; 3 uses
  %i.dv = mul i64 %indvar.i23.i, 24               ; 2 uses
  %i.dw = add i64 %i.dv, 24
  %i.dx = udiv i64 %i.dw, 24                      ; 2 uses
  %6 = icmp ult i64 %i.dv, -24                    ; 2 uses
  %umin.neg.i26.i = sext i1 %6 to i64
  %i.dy = select i1 %6, i64 24, i64 0
  %.neg.i27.i = mul i64 %i.dx, -24
  %7 = add i64 %.neg.i27.i, %i.dy                 ; 2 uses
  %scevgep.i28.i = getelementptr i8, ptr %.sroa.0.022.i24.i, i64 %7
  %scevgep24.i29.i = getelementptr i8, ptr %.pn21.i25.i, i64 %7
  %i.dz = add nuw nsw i64 %i.dx, 1
  %i.ea = add nsw i64 %i.dz, %umin.neg.i26.i
  %i.eb = mul nuw i64 %i.ea, 24
  %i.ec = load double, ptr %.sroa.0.022.i24.i, align 8 ; 4 uses
  %i.ed = load double, ptr %i.ct, align 8
  %i.ee = fcmp olt double %i.ec, %i.ed
  br i1 %i.ee, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i22.i
  %.sroa.0135.0.copyload = load <3 x double>, ptr %.sroa.0.022.i24.i, align 8
  %i.ef = ptrtoint ptr %.sroa.0.022.i24.i to i64
  %i.eg = sub i64 %i.ef, %i.cy
  %i.eh = icmp sgt i64 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.preheader.i.i.i.i.i.i40.i, label %_ZSt13move_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit.i39.i

.lr.ph.preheader.i.i.i.i.i.i40.i:                 ; preds = %bb.v
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i28.i, ptr align 8 %scevgep24.i29.i, i64 %i.eb, i1 false)
  br label %_ZSt13move_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit.i39.i

_ZSt13move_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit.i39.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i40.i, %bb.v
  store <3 x double> %.sroa.0135.0.copyload, ptr %i.ct, align 8
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph.i22.i
  %.sroa.691.0..sroa.0.022.i24.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i24.i, i64 8
  %.sroa.691.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.691.0..sroa.0.022.i24.i.sroa_idx, align 8
  %i.ei = load double, ptr %.pn21.i25.i, align 8
  %i.ej = fcmp olt double %i.ec, %i.ei
  br i1 %i.ej, label %.lr.ph.i.i35.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i30.i

.lr.ph.i.i35.i:                                   ; preds = %bb.w, %.lr.ph.i.i35.i
  %.sroa.0.09.i.i36.i = phi ptr [ %.sroa.0.0.i.i38.i, %.lr.ph.i.i35.i ], [ %.pn21.i25.i, %bb.w ] ; 4 uses
  %.sroa.04.08.i.i37.i = phi ptr [ %.sroa.0.09.i.i36.i, %.lr.ph.i.i35.i ], [ %.sroa.0.022.i24.i, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %.sroa.04.08.i.i37.i, ptr noundef align 8 dereferenceable(24) %.sroa.0.09.i.i36.i, i64 24, i1 false)
  %.sroa.0.0.i.i38.i = getelementptr i8, ptr %.sroa.0.09.i.i36.i, i64 -24 ; 2 uses
  %i.ek = load double, ptr %.sroa.0.0.i.i38.i, align 8
  %i.el = fcmp olt double %i.ec, %i.ek
  br i1 %i.el, label %.lr.ph.i.i35.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i30.i, !llvm.loop !61

_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i30.i: ; preds = %.lr.ph.i.i35.i, %bb.w
  %.sroa.04.0.lcssa.i.i31.i = phi ptr [ %.sroa.0.022.i24.i, %bb.w ], [ %.sroa.0.09.i.i36.i, %.lr.ph.i.i35.i ] ; 2 uses
  store double %i.ec, ptr %.sroa.04.0.lcssa.i.i31.i, align 8
  %.sroa.691.0..sroa.04.0.lcssa.i.i31.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i31.i, i64 8
  store <2 x double> %.sroa.691.sroa.0.0.copyload, ptr %.sroa.691.0..sroa.04.0.lcssa.i.i31.i.sroa_idx, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i30.i, %_ZSt13move_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit.i39.i
  %.sroa.0.0.i32.i = getelementptr i8, ptr %.sroa.0.022.i24.i, i64 24 ; 2 uses
  %.not.i33.i = icmp eq ptr %.sroa.0.0.i32.i, %i.cw
  %indvar.next.i34.i = add i64 %indvar.i23.i, 1
  br i1 %.not.i33.i, label %_ZSt4sortIN5QListI12QCPCurveDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i22.i, !llvm.loop !62

_ZSt4sortIN5QListI12QCPCurveDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit: ; preds = %bb.x, %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit55, %_ZSt16__insertion_sortIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i, %bb.u, %_ZSt4copyIN5QListI12QCPCurveDataE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit47
  br i1 %i.s, label %bb.y, label %_ZN16QCPDataContainerI12QCPCurveDataE3setERK5QListIS0_Eb.exit

bb.y:                                             ; preds = %_ZSt4sortIN5QListI12QCPCurveDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit
  %i.em = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.en = load i64, ptr %i.d, align 8
  %i.eo = getelementptr [24 x i8], ptr %i.em, i64 %i.en
  %i.ep = getelementptr [24 x i8], ptr %i.eo, i64 %i.bq ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 -24
  %i.er = load double, ptr %i.eq, align 8
  %i.es = load double, ptr %i.ep, align 8
  %i.et = fcmp olt double %i.er, %i.es
  br i1 %i.et, label %_ZN16QCPDataContainerI12QCPCurveDataE3setERK5QListIS0_Eb.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = load ptr, ptr %i.ax, align 8            ; 3 uses
  %.not.i.i.i.i.i57 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i57, label %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit60, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i58

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i58: ; preds = %bb.z
  %i.ev = load atomic i32, ptr %i.eu monotonic, align 4
  %i.ew = icmp sgt i32 %i.ev, 1
  br i1 %i.ew, label %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit60, label %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit60.thread

_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit60.thread: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i58
  %i.ex = load i32, ptr %i.f, align 8
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr [24 x i8], ptr %i.em, i64 %i.ey
  br label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i62

_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit60: ; preds = %bb.z, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i58
  call void @_ZN17QArrayDataPointerI12QCPCurveDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.ax, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre99 = load ptr, ptr %i.bp, align 8          ; 2 uses
  %.pre100 = load ptr, ptr %i.ax, align 8         ; 2 uses
  %i.fa = load i32, ptr %i.f, align 8
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr [24 x i8], ptr %.pre99, i64 %i.fb ; 2 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %.pre100, null
  br i1 %.not.i.i.i.i.i61, label %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i62

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i62: ; preds = %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit60.thread, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit60
  %i.fd = phi ptr [ %i.ez, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit60.thread ], [ %i.fc, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit60 ] ; 2 uses
  %i.fe = phi ptr [ %i.em, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit60.thread ], [ %.pre99, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit60 ] ; 2 uses
  %i.ff = phi ptr [ %i.eu, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit60.thread ], [ %.pre100, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit60 ] ; 2 uses
  %i.fg = load atomic i32, ptr %i.ff monotonic, align 4
  %i.fh = icmp sgt i32 %i.fg, 1
  br i1 %i.fh, label %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64, label %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64.thread

_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64.thread: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i62
  %i.fi = load i64, ptr %i.d, align 8             ; 2 uses
  %i.fj = getelementptr [24 x i8], ptr %i.fe, i64 %i.fi
  %i.fk = getelementptr [24 x i8], ptr %i.fj, i64 %i.bq
  br label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i66

_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64: ; preds = %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit60, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i62
  %i.fl = phi ptr [ %i.fd, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i62 ], [ %i.fc, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit60 ] ; 2 uses
  call void @_ZN17QArrayDataPointerI12QCPCurveDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.ax, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre101 = load ptr, ptr %i.bp, align 8         ; 2 uses
  %.pre102 = load ptr, ptr %i.ax, align 8         ; 2 uses
  %i.fm = load i64, ptr %i.d, align 8             ; 2 uses
  %i.fn = getelementptr [24 x i8], ptr %.pre101, i64 %i.fm
  %i.fo = getelementptr [24 x i8], ptr %i.fn, i64 %i.bq ; 2 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %.pre102, null
  br i1 %.not.i.i.i.i.i65, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i67, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i66

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i66: ; preds = %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64.thread, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64
  %i.fp = phi ptr [ %i.fk, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64.thread ], [ %i.fo, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64 ] ; 2 uses
  %i.fq = phi i64 [ %i.fi, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64.thread ], [ %i.fm, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64 ]
  %i.fr = phi ptr [ %i.fe, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64.thread ], [ %.pre101, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64 ]
  %i.fs = phi ptr [ %i.ff, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64.thread ], [ %.pre102, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64 ]
  %i.ft = phi ptr [ %i.fd, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64.thread ], [ %i.fl, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64 ] ; 2 uses
  %i.fu = load atomic i32, ptr %i.fs monotonic, align 4
  %i.fv = icmp sgt i32 %i.fu, 1
  br i1 %i.fv, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i67, label %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit68

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i67: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i66, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64
  %i.fw = phi ptr [ %i.fp, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i66 ], [ %i.fo, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64 ]
  %i.fx = phi ptr [ %i.ft, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i66 ], [ %i.fl, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit64 ]
  call void @_ZN17QArrayDataPointerI12QCPCurveDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.ax, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre103 = load ptr, ptr %i.bp, align 8
  %.pre104 = load i64, ptr %i.d, align 8
  br label %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit68

_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit68: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i66, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i67
  %i.fy = phi ptr [ %i.fp, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i66 ], [ %i.fw, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i67 ]
  %i.fz = phi ptr [ %i.ft, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i66 ], [ %i.fx, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i67 ]
  %i.ga = phi i64 [ %i.fq, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i66 ], [ %.pre104, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i67 ]
  %i.gb = phi ptr [ %i.fr, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i66 ], [ %.pre103, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i67 ]
  %i.gc = getelementptr [24 x i8], ptr %i.gb, i64 %i.ga
  call void @_ZSt15__inplace_mergeIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_T0_(ptr %i.fz, ptr %i.fy, ptr %i.gc, ptr nonnull @_Z18qcpLessThanSortKeyI12QCPCurveDataEbRKT_S3_)
  br label %_ZN16QCPDataContainerI12QCPCurveDataE3setERK5QListIS0_Eb.exit

_ZN16QCPDataContainerI12QCPCurveDataE3setERK5QListIS0_Eb.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt4sortIN5QListI12QCPCurveDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit, %bb.f, %_ZN5QListI12QCPCurveDataEaSERKS1_.exit.i, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit68, %bb.y, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN8QCPCurve7addDataEddd(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(288) %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.QCPCurveData, align 8        ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  call void @_ZN12QCPCurveDataC1Eddd(ptr noundef nonnull align 8 dereferenceable_or_null(24) %4, double noundef %1, double noundef %2, double noundef %3)
  call void @_ZN16QCPDataContainerI12QCPCurveDataE3addERKS0_(ptr noundef align 8 dereferenceable_or_null(40) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN16QCPDataContainerI12QCPCurveDataE3addERKS0_(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = trunc i64 %i.b to i32
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr [24 x i8], ptr %i.h, i64 %i.b
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load double, ptr %1, align 8             ; 2 uses
  %i.l = load double, ptr %i.j, align 8
  %i.m = fcmp olt double %i.k, %i.l
  br i1 %i.m, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.n = getelementptr i8, ptr %0, i64 8          ; 3 uses
  tail call void @_ZN9QtPrivate12QPodArrayOpsI12QCPCurveDataE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.n, i64 noundef %i.b, ptr noundef align 8 dereferenceable(24) %1)
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.critedge
  %i.p = load atomic i32, ptr %i.o monotonic, align 4
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListI12QCPCurveDataE6appendERKS0_.exit

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i.i, %.critedge
  tail call void @_ZN17QArrayDataPointerI12QCPCurveDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.n, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListI12QCPCurveDataE6appendERKS0_.exit

end_hunk_0
begin_hunk_1_@_ZN16QCPDataContainerI16QCPFinancialDataE3addERK5QListIS0_Eb:bb.a
  store i32 %i.ag, ptr %i.f, align 8
  %i.ah = load ptr, ptr %i.x, align 8
  %i.ai = load i64, ptr %i.a, align 8
  %i.aj = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i37, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i: ; preds = %bb.k
  %i.al = load atomic i32, ptr %i.ak monotonic, align 4
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i, label %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i, %bb.k
  tail call void @_ZN17QArrayDataPointerI16QCPFinancialDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.aj, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit

_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i
  %.idx = mul i64 %i.ai, 40                       ; 2 uses
  %i.an = icmp sgt i64 %.idx, 0
  br i1 %i.an, label %.lr.ph.preheader.i.i.i.i.i, label %_ZN16QCPDataContainerI16QCPFinancialDataE3setERK5QListIS0_Eb.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit
  %i.ao = load ptr, ptr %i.t, align 8
  %i.ap = load i32, ptr %i.f, align 8
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [40 x i8], ptr %i.ao, i64 %i.aq
  %i.as = udiv exact i64 %.idx, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i ], [ %i.as, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.0.08.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %i.ar, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %i.ah, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %.sroa.0.08.i.i.i.i.i, ptr noundef align 8 dereferenceable(40) %.sroa.05.07.i.i.i.i.i, i64 40, i1 false)
  %i.at = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i, i64 40
  %i.au = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i, i64 40
  %i.av = add nsw i64 %.09.i.i.i.i.i, -1
  %i.aw = icmp samesign ugt i64 %.09.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %_ZN16QCPDataContainerI16QCPFinancialDataE3setERK5QListIS0_Eb.exit, !llvm.loop !1295

.critedge:                                        ; preds = %bb.g, %bb.h
  %i.ax = getelementptr i8, ptr %0, i64 8         ; 13 uses
  %sext = shl i64 %i.b, 32
  %i.ay = ashr exact i64 %sext, 32                ; 2 uses
  %i.az = add i64 %i.e, %i.ay                     ; 4 uses
  tail call void @_ZN5QListI16QCPFinancialDataE15resize_internalEx(ptr noundef align 8 dereferenceable_or_null(24) %i.ax, i64 noundef %i.az)
  %i.ba = load i64, ptr %i.d, align 8             ; 2 uses
  %i.bb = icmp sgt i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.l, label %_ZN5QListI16QCPFinancialDataE6resizeEx.exit

bb.l:                                             ; preds = %.critedge
  %i.bc = getelementptr i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.idx.i.i = mul i64 %i.ba, 40                   ; 2 uses
  store i64 %i.az, ptr %i.d, align 8
  %.idx6.i.i = mul i64 %i.az, 40                  ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 %.idx6.i.i
  %.not4.i.i = icmp eq i64 %.idx.i.i, %.idx6.i.i
  br i1 %.not4.i.i, label %_ZN5QListI16QCPFinancialDataE6resizeEx.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.bf = getelementptr i8, ptr %i.bd, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.preheader.i.i
  %.05.i.i = phi ptr [ %i.bg, %bb.m ], [ %i.bf, %.lr.ph.preheader.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  invoke void @_ZN16QCPFinancialDataC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(40) %3)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bg = getelementptr i8, ptr %.05.i.i, i64 40  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %.05.i.i, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  %.not.i.i = icmp eq ptr %i.bg, %i.be
  br i1 %.not.i.i, label %_ZN5QListI16QCPFinancialDataE6resizeEx.exit, label %.lr.ph.i.i, !llvm.loop !85

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #52
  unreachable

_ZN5QListI16QCPFinancialDataE6resizeEx.exit:      ; preds = %bb.m, %.critedge, %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i64, ptr %i.a, align 8
  %i.bm = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i38, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i40, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i39

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i39: ; preds = %_ZN5QListI16QCPFinancialDataE6resizeEx.exit
  %i.bn = load atomic i32, ptr %i.bm monotonic, align 4
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i40, label %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i40: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i39, %_ZN5QListI16QCPFinancialDataE6resizeEx.exit
  call void @_ZN17QArrayDataPointerI16QCPFinancialDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.ax, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit

_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i39, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i40
  %i.bp = getelementptr i8, ptr %0, i64 16        ; 8 uses
  %i.bq = sub nsw i64 0, %i.ay                    ; 6 uses
  %.idx93 = mul i64 %i.bl, 40                     ; 2 uses
  %i.br = icmp sgt i64 %.idx93, 0
  br i1 %i.br, label %.lr.ph.preheader.i.i.i.i.i42, label %_ZSt4copyIN5QListI16QCPFinancialDataE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit47

.lr.ph.preheader.i.i.i.i.i42:                     ; preds = %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit
  %i.bs = load ptr, ptr %i.bp, align 8
  %i.bt = load i64, ptr %i.d, align 8
  %i.bu = getelementptr [40 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr [40 x i8], ptr %i.bu, i64 %i.bq
  %i.bw = udiv exact i64 %.idx93, 40
  br label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %.lr.ph.i.i.i.i.i43, %.lr.ph.preheader.i.i.i.i.i42
  %.09.i.i.i.i.i44 = phi i64 [ %i.bz, %.lr.ph.i.i.i.i.i43 ], [ %i.bw, %.lr.ph.preheader.i.i.i.i.i42 ] ; 2 uses
  %.sroa.0.08.i.i.i.i.i45 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i43 ], [ %i.bv, %.lr.ph.preheader.i.i.i.i.i42 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i46 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i43 ], [ %i.bk, %.lr.ph.preheader.i.i.i.i.i42 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %.sroa.0.08.i.i.i.i.i45, ptr noundef align 8 dereferenceable(40) %.sroa.05.07.i.i.i.i.i46, i64 40, i1 false)
  %i.bx = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i46, i64 40
  %i.by = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i45, i64 40
  %i.bz = add nsw i64 %.09.i.i.i.i.i44, -1
  %i.ca = icmp samesign ugt i64 %.09.i.i.i.i.i44, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i43, label %_ZSt4copyIN5QListI16QCPFinancialDataE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit47, !llvm.loop !1295

_ZSt4copyIN5QListI16QCPFinancialDataE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit47: ; preds = %.lr.ph.i.i.i.i.i43, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit
  br i1 %2, label %_ZSt4sortIN5QListI16QCPFinancialDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN5QListI16QCPFinancialDataE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit47
  %i.cb = load ptr, ptr %i.ax, align 8            ; 3 uses
  %.not.i.i.i.i.i48 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i48, label %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i49

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i49: ; preds = %bb.o
  %i.cc = load atomic i32, ptr %i.cb monotonic, align 4
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51, label %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51.thread

_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51.thread: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i49
  %i.ce = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.cf = load i64, ptr %i.d, align 8             ; 2 uses
  %i.cg = getelementptr [40 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr [40 x i8], ptr %i.cg, i64 %i.bq
  br label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i53

_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51: ; preds = %bb.o, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i49
  call void @_ZN17QArrayDataPointerI16QCPFinancialDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.ax, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre96 = load ptr, ptr %i.ax, align 8          ; 2 uses
  %i.ci = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.cj = load i64, ptr %i.d, align 8             ; 2 uses
  %i.ck = getelementptr [40 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr [40 x i8], ptr %i.ck, i64 %i.bq ; 2 uses
  %.not.i.i.i.i.i52 = icmp eq ptr %.pre96, null
  br i1 %.not.i.i.i.i.i52, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i54, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i53

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i53: ; preds = %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51.thread, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51
  %i.cm = phi ptr [ %i.ch, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51.thread ], [ %i.cl, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51 ] ; 2 uses
  %i.cn = phi i64 [ %i.cf, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51.thread ], [ %i.cj, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51 ]
  %i.co = phi ptr [ %i.ce, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51.thread ], [ %i.ci, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51 ]
  %i.cp = phi ptr [ %i.cb, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51.thread ], [ %.pre96, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51 ]
  %i.cq = load atomic i32, ptr %i.cp monotonic, align 4
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i54, label %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit55

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i54: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i53, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51
  %i.cs = phi ptr [ %i.cm, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i53 ], [ %i.cl, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit51 ]
  call void @_ZN17QArrayDataPointerI16QCPFinancialDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.ax, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre97 = load ptr, ptr %i.bp, align 8
  %.pre98 = load i64, ptr %i.d, align 8
  br label %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit55

_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit55: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i53, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i54
  %i.ct = phi ptr [ %i.cm, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i53 ], [ %i.cs, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i54 ] ; 12 uses
  %i.cu = phi i64 [ %i.cn, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i53 ], [ %.pre98, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i54 ]
  %i.cv = phi ptr [ %i.co, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i53 ], [ %.pre97, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i54 ]
  %i.cw = getelementptr [40 x i8], ptr %i.cv, i64 %i.cu ; 7 uses
  %.not.i.i56 = icmp eq ptr %i.ct, %i.cw
  br i1 %.not.i.i56, label %_ZSt4sortIN5QListI16QCPFinancialDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit55
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.ct to i64               ; 3 uses
  %i.cz = sub i64 %i.cx, %i.cy                    ; 2 uses
  %i.da = sdiv exact i64 %i.cz, 40
  %i.db = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = shl nuw nsw i64 %i.db, 1
  %i.dd = xor i64 %i.dc, 126
  call void @_ZSt16__introsort_loopIN5QListI16QCPFinancialDataE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_T1_(ptr %i.ct, ptr %i.cw, i64 noundef %i.dd, ptr nonnull @_Z18qcpLessThanSortKeyI16QCPFinancialDataEbRKT_S3_)
  %i.de = icmp sgt i64 %i.cz, 640
  %.sroa.0.019.i.i = getelementptr i8, ptr %i.ct, i64 40 ; 4 uses
  br i1 %i.de, label %.lr.ph.i.i69, label %bb.u

.lr.ph.i.i69:                                     ; preds = %bb.p
  %i.df = getelementptr i8, ptr %i.ct, i64 640    ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph.i.i69
  %indvar.i.i = phi i64 [ 0, %.lr.ph.i.i69 ], [ %4, %bb.t ]
  %.sroa.0.022.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i69 ], [ %.sroa.0.0.i.i, %bb.t ] ; 8 uses
  %.pn21.i.i = phi ptr [ %i.ct, %.lr.ph.i.i69 ], [ %.sroa.0.022.i.i, %bb.t ] ; 2 uses
  %4 = add nuw nsw i64 %indvar.i.i, 1             ; 2 uses
  %5 = mul nuw nsw i64 %4, 40
  %i.dg = load double, ptr %.sroa.0.022.i.i, align 8 ; 4 uses
  %i.dh = load double, ptr %i.ct, align 8
  %i.di = fcmp olt double %i.dg, %i.dh
  br i1 %i.di, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload = load <5 x double>, ptr %.sroa.0.022.i.i, align 8
  %i.dj = ptrtoint ptr %.sroa.0.022.i.i to i64
  %i.dk = sub i64 %i.dj, %i.cy
  %i.dl = icmp sgt i64 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.r
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 8 %.sroa.0.019.i.i, ptr noundef align 8 %i.ct, i64 %5, i1 false)
  br label %_ZSt13move_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i

_ZSt13move_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.r
  store <5 x double> %.sroa.0.0.copyload, ptr %i.ct, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %.sroa.6.0..sroa.0.022.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload = load <4 x double>, ptr %.sroa.6.0..sroa.0.022.i.i.sroa_idx, align 8
  %i.dm = load double, ptr %.pn21.i.i, align 8
  %i.dn = fcmp olt double %i.dg, %i.dm
  br i1 %i.dn, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %.lr.ph.i.i.i
  %.sroa.0.09.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn21.i.i, %bb.s ] ; 4 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.022.i.i, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %.sroa.04.08.i.i.i, ptr noundef align 8 dereferenceable(40) %.sroa.0.09.i.i.i, i64 40, i1 false)
  %.sroa.0.0.i.i.i = getelementptr i8, ptr %.sroa.0.09.i.i.i, i64 -40 ; 2 uses
  %i.do = load double, ptr %.sroa.0.0.i.i.i, align 8
  %i.dp = fcmp olt double %i.dg, %i.do
  br i1 %i.dp, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i, !llvm.loop !86

_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.s
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.0.022.i.i, %bb.s ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  store double %i.dg, ptr %.sroa.04.0.lcssa.i.i.i, align 8
  %.sroa.6.0..sroa.04.0.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 8
  store <4 x double> %.sroa.6.sroa.0.0.copyload, ptr %.sroa.6.0..sroa.04.0.lcssa.i.i.i.sroa_idx, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i
  %.sroa.0.0.i.i = getelementptr i8, ptr %.sroa.0.022.i.i, i64 40 ; 2 uses
  %.not.i.i70 = icmp eq ptr %.sroa.0.0.i.i, %i.df
  br i1 %.not.i.i70, label %_ZSt16__insertion_sortIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i, label %bb.q, !llvm.loop !87

_ZSt16__insertion_sortIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i: ; preds = %bb.t
  %.not8.i.i = icmp eq ptr %i.df, %i.cw
  br i1 %.not8.i.i, label %_ZSt4sortIN5QListI16QCPFinancialDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %_ZSt16__insertion_sortIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i
  %.sroa.0.09.i.i = phi ptr [ %i.du, %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i ], [ %i.df, %_ZSt16__insertion_sortIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i ] ; 6 uses
  %.sroa.084.0.copyload = load double, ptr %.sroa.0.09.i.i, align 8 ; 3 uses
  %.sroa.687.0..sroa.0.09.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 8
  %.sroa.687.sroa.0.0.copyload = load <4 x double>, ptr %.sroa.687.0..sroa.0.09.i.i.sroa_idx, align 8
  %.sroa.0.07.i.i.i = getelementptr i8, ptr %.sroa.0.09.i.i, i64 -40 ; 2 uses
  %i.dq = load double, ptr %.sroa.0.07.i.i.i, align 8
  %i.dr = fcmp olt double %.sroa.084.0.copyload, %i.dq
  br i1 %i.dr, label %.lr.ph.i.i15.i, label %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i

.lr.ph.i.i15.i:                                   ; preds = %.lr.ph.i11.i, %.lr.ph.i.i15.i
  %.sroa.0.09.i.i16.i = phi ptr [ %.sroa.0.0.i.i18.i, %.lr.ph.i.i15.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i11.i ] ; 4 uses
  %.sroa.04.08.i.i17.i = phi ptr [ %.sroa.0.09.i.i16.i, %.lr.ph.i.i15.i ], [ %.sroa.0.09.i.i, %.lr.ph.i11.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %.sroa.04.08.i.i17.i, ptr noundef align 8 dereferenceable(40) %.sroa.0.09.i.i16.i, i64 40, i1 false)
  %.sroa.0.0.i.i18.i = getelementptr i8, ptr %.sroa.0.09.i.i16.i, i64 -40 ; 2 uses
  %i.ds = load double, ptr %.sroa.0.0.i.i18.i, align 8
  %i.dt = fcmp olt double %.sroa.084.0.copyload, %i.ds
  br i1 %i.dt, label %.lr.ph.i.i15.i, label %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i, !llvm.loop !86

_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i: ; preds = %.lr.ph.i.i15.i, %.lr.ph.i11.i
  %.sroa.04.0.lcssa.i.i13.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i11.i ], [ %.sroa.0.09.i.i16.i, %.lr.ph.i.i15.i ] ; 2 uses
  store double %.sroa.084.0.copyload, ptr %.sroa.04.0.lcssa.i.i13.i, align 8
  %.sroa.687.0..sroa.04.0.lcssa.i.i13.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i13.i, i64 8
  store <4 x double> %.sroa.687.sroa.0.0.copyload, ptr %.sroa.687.0..sroa.04.0.lcssa.i.i13.i.sroa_idx, align 8
  %i.du = getelementptr i8, ptr %.sroa.0.09.i.i, i64 40 ; 2 uses
  %.not.i14.i = icmp eq ptr %i.du, %i.cw
  br i1 %.not.i14.i, label %_ZSt4sortIN5QListI16QCPFinancialDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i11.i, !llvm.loop !88

bb.u:                                             ; preds = %bb.p
  %.not20.i21.i = icmp eq ptr %.sroa.0.019.i.i, %i.cw
  br i1 %.not20.i21.i, label %_ZSt4sortIN5QListI16QCPFinancialDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %bb.u, %bb.x
  %indvar.i23.i = phi i64 [ %indvar.next.i34.i, %bb.x ], [ 0, %bb.u ] ; 2 uses
  %.sroa.0.022.i24.i = phi ptr [ %.sroa.0.0.i32.i, %bb.x ], [ %.sroa.0.019.i.i, %bb.u ] ; 9 uses
  %.pn21.i25.i = phi ptr [ %.sroa.0.022.i24.i, %bb.x ], [ %i.ct, %bb.u ] ; 3 uses
  %i.dv = mul i64 %indvar.i23.i, 40               ; 2 uses
  %i.dw = add i64 %i.dv, 40
  %i.dx = udiv i64 %i.dw, 40                      ; 2 uses
  %6 = icmp ult i64 %i.dv, -40                    ; 2 uses
  %umin.neg.i26.i = sext i1 %6 to i64
  %i.dy = select i1 %6, i64 40, i64 0
  %.neg.i27.i = mul i64 %i.dx, -40
  %7 = add i64 %.neg.i27.i, %i.dy                 ; 2 uses
  %scevgep.i28.i = getelementptr i8, ptr %.sroa.0.022.i24.i, i64 %7
  %scevgep24.i29.i = getelementptr i8, ptr %.pn21.i25.i, i64 %7
  %i.dz = add nuw nsw i64 %i.dx, 1
  %i.ea = add nsw i64 %i.dz, %umin.neg.i26.i
  %i.eb = mul nuw i64 %i.ea, 40
  %i.ec = load double, ptr %.sroa.0.022.i24.i, align 8 ; 4 uses
  %i.ed = load double, ptr %i.ct, align 8
  %i.ee = fcmp olt double %i.ec, %i.ed
  br i1 %i.ee, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i22.i
  %.sroa.0135.0.copyload = load <5 x double>, ptr %.sroa.0.022.i24.i, align 8
  %i.ef = ptrtoint ptr %.sroa.0.022.i24.i to i64
  %i.eg = sub i64 %i.ef, %i.cy
  %i.eh = icmp sgt i64 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.preheader.i.i.i.i.i.i40.i, label %_ZSt13move_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit.i39.i

.lr.ph.preheader.i.i.i.i.i.i40.i:                 ; preds = %bb.v
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i28.i, ptr align 8 %scevgep24.i29.i, i64 %i.eb, i1 false)
  br label %_ZSt13move_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit.i39.i

_ZSt13move_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit.i39.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i40.i, %bb.v
  store <5 x double> %.sroa.0135.0.copyload, ptr %i.ct, align 8
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph.i22.i
  %.sroa.691.0..sroa.0.022.i24.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i24.i, i64 8
  %.sroa.691.sroa.0.0.copyload = load <4 x double>, ptr %.sroa.691.0..sroa.0.022.i24.i.sroa_idx, align 8
  %i.ei = load double, ptr %.pn21.i25.i, align 8
  %i.ej = fcmp olt double %i.ec, %i.ei
  br i1 %i.ej, label %.lr.ph.i.i35.i, label %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i30.i

.lr.ph.i.i35.i:                                   ; preds = %bb.w, %.lr.ph.i.i35.i
  %.sroa.0.09.i.i36.i = phi ptr [ %.sroa.0.0.i.i38.i, %.lr.ph.i.i35.i ], [ %.pn21.i25.i, %bb.w ] ; 4 uses
  %.sroa.04.08.i.i37.i = phi ptr [ %.sroa.0.09.i.i36.i, %.lr.ph.i.i35.i ], [ %.sroa.0.022.i24.i, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %.sroa.04.08.i.i37.i, ptr noundef align 8 dereferenceable(40) %.sroa.0.09.i.i36.i, i64 40, i1 false)
  %.sroa.0.0.i.i38.i = getelementptr i8, ptr %.sroa.0.09.i.i36.i, i64 -40 ; 2 uses
  %i.ek = load double, ptr %.sroa.0.0.i.i38.i, align 8
  %i.el = fcmp olt double %i.ec, %i.ek
  br i1 %i.el, label %.lr.ph.i.i35.i, label %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i30.i, !llvm.loop !86

_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i30.i: ; preds = %.lr.ph.i.i35.i, %bb.w
  %.sroa.04.0.lcssa.i.i31.i = phi ptr [ %.sroa.0.022.i24.i, %bb.w ], [ %.sroa.0.09.i.i36.i, %.lr.ph.i.i35.i ] ; 2 uses
  store double %i.ec, ptr %.sroa.04.0.lcssa.i.i31.i, align 8
  %.sroa.691.0..sroa.04.0.lcssa.i.i31.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i31.i, i64 8
  store <4 x double> %.sroa.691.sroa.0.0.copyload, ptr %.sroa.691.0..sroa.04.0.lcssa.i.i31.i.sroa_idx, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i30.i, %_ZSt13move_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit.i39.i
  %.sroa.0.0.i32.i = getelementptr i8, ptr %.sroa.0.022.i24.i, i64 40 ; 2 uses
  %.not.i33.i = icmp eq ptr %.sroa.0.0.i32.i, %i.cw
  %indvar.next.i34.i = add i64 %indvar.i23.i, 1
  br i1 %.not.i33.i, label %_ZSt4sortIN5QListI16QCPFinancialDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i22.i, !llvm.loop !87

_ZSt4sortIN5QListI16QCPFinancialDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit: ; preds = %bb.x, %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit55, %_ZSt16__insertion_sortIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i, %bb.u, %_ZSt4copyIN5QListI16QCPFinancialDataE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit47
  br i1 %i.s, label %bb.y, label %_ZN16QCPDataContainerI16QCPFinancialDataE3setERK5QListIS0_Eb.exit

bb.y:                                             ; preds = %_ZSt4sortIN5QListI16QCPFinancialDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit
  %i.em = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.en = load i64, ptr %i.d, align 8
  %i.eo = getelementptr [40 x i8], ptr %i.em, i64 %i.en
  %i.ep = getelementptr [40 x i8], ptr %i.eo, i64 %i.bq ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 -40
  %i.er = load double, ptr %i.eq, align 8
  %i.es = load double, ptr %i.ep, align 8
  %i.et = fcmp olt double %i.er, %i.es
  br i1 %i.et, label %_ZN16QCPDataContainerI16QCPFinancialDataE3setERK5QListIS0_Eb.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = load ptr, ptr %i.ax, align 8            ; 3 uses
  %.not.i.i.i.i.i57 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i57, label %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit60, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i58

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i58: ; preds = %bb.z
  %i.ev = load atomic i32, ptr %i.eu monotonic, align 4
  %i.ew = icmp sgt i32 %i.ev, 1
  br i1 %i.ew, label %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit60, label %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit60.thread

_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit60.thread: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i58
  %i.ex = load i32, ptr %i.f, align 8
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr [40 x i8], ptr %i.em, i64 %i.ey
  br label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i62

_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit60: ; preds = %bb.z, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i58
  call void @_ZN17QArrayDataPointerI16QCPFinancialDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.ax, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre99 = load ptr, ptr %i.bp, align 8          ; 2 uses
  %.pre100 = load ptr, ptr %i.ax, align 8         ; 2 uses
  %i.fa = load i32, ptr %i.f, align 8
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr [40 x i8], ptr %.pre99, i64 %i.fb ; 2 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %.pre100, null
  br i1 %.not.i.i.i.i.i61, label %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i62

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i62: ; preds = %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit60.thread, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit60
  %i.fd = phi ptr [ %i.ez, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit60.thread ], [ %i.fc, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit60 ] ; 2 uses
  %i.fe = phi ptr [ %i.em, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit60.thread ], [ %.pre99, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit60 ] ; 2 uses
  %i.ff = phi ptr [ %i.eu, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit60.thread ], [ %.pre100, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit60 ] ; 2 uses
  %i.fg = load atomic i32, ptr %i.ff monotonic, align 4
  %i.fh = icmp sgt i32 %i.fg, 1
  br i1 %i.fh, label %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64, label %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64.thread

_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64.thread: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i62
  %i.fi = load i64, ptr %i.d, align 8             ; 2 uses
  %i.fj = getelementptr [40 x i8], ptr %i.fe, i64 %i.fi
  %i.fk = getelementptr [40 x i8], ptr %i.fj, i64 %i.bq
  br label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i66

_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64: ; preds = %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit60, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i62
  %i.fl = phi ptr [ %i.fd, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i62 ], [ %i.fc, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit60 ] ; 2 uses
  call void @_ZN17QArrayDataPointerI16QCPFinancialDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.ax, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre101 = load ptr, ptr %i.bp, align 8         ; 2 uses
  %.pre102 = load ptr, ptr %i.ax, align 8         ; 2 uses
  %i.fm = load i64, ptr %i.d, align 8             ; 2 uses
  %i.fn = getelementptr [40 x i8], ptr %.pre101, i64 %i.fm
  %i.fo = getelementptr [40 x i8], ptr %i.fn, i64 %i.bq ; 2 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %.pre102, null
  br i1 %.not.i.i.i.i.i65, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i67, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i66

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i66: ; preds = %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64.thread, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64
  %i.fp = phi ptr [ %i.fk, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64.thread ], [ %i.fo, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64 ] ; 2 uses
  %i.fq = phi i64 [ %i.fi, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64.thread ], [ %i.fm, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64 ]
  %i.fr = phi ptr [ %i.fe, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64.thread ], [ %.pre101, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64 ]
  %i.fs = phi ptr [ %i.ff, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64.thread ], [ %.pre102, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64 ]
  %i.ft = phi ptr [ %i.fd, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64.thread ], [ %i.fl, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64 ] ; 2 uses
  %i.fu = load atomic i32, ptr %i.fs monotonic, align 4
  %i.fv = icmp sgt i32 %i.fu, 1
  br i1 %i.fv, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i67, label %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit68

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i67: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i66, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64
  %i.fw = phi ptr [ %i.fp, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i66 ], [ %i.fo, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64 ]
  %i.fx = phi ptr [ %i.ft, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i66 ], [ %i.fl, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit64 ]
  call void @_ZN17QArrayDataPointerI16QCPFinancialDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.ax, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre103 = load ptr, ptr %i.bp, align 8
  %.pre104 = load i64, ptr %i.d, align 8
  br label %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit68

_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit68: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i66, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i67
  %i.fy = phi ptr [ %i.fp, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i66 ], [ %i.fw, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i67 ]
  %i.fz = phi ptr [ %i.ft, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i66 ], [ %i.fx, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i67 ]
  %i.ga = phi i64 [ %i.fq, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i66 ], [ %.pre104, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i67 ]
  %i.gb = phi ptr [ %i.fr, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i66 ], [ %.pre103, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i67 ]
  %i.gc = getelementptr [40 x i8], ptr %i.gb, i64 %i.ga
  call void @_ZSt15__inplace_mergeIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_T0_(ptr %i.fz, ptr %i.fy, ptr %i.gc, ptr nonnull @_Z18qcpLessThanSortKeyI16QCPFinancialDataEbRKT_S3_)
  br label %_ZN16QCPDataContainerI16QCPFinancialDataE3setERK5QListIS0_Eb.exit

_ZN16QCPDataContainerI16QCPFinancialDataE3setERK5QListIS0_Eb.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt4sortIN5QListI16QCPFinancialDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit, %bb.f, %_ZN5QListI16QCPFinancialDataEaSERKS1_.exit.i, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit68, %bb.y, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN12QCPFinancial7addDataEddddd(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(264) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %class.QCPFinancialData, align 8    ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  call void @_ZN16QCPFinancialDataC1Eddddd(ptr noundef nonnull align 8 dereferenceable_or_null(40) %6, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5)
  call void @_ZN16QCPDataContainerI16QCPFinancialDataE3addERKS0_(ptr noundef align 8 dereferenceable_or_null(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN16QCPDataContainerI16QCPFinancialDataE3addERKS0_(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = trunc i64 %i.b to i32
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr [40 x i8], ptr %i.h, i64 %i.b
  %i.j = getelementptr i8, ptr %i.i, i64 -40
  %i.k = load double, ptr %1, align 8             ; 2 uses
  %i.l = load double, ptr %i.j, align 8
  %i.m = fcmp olt double %i.k, %i.l
  br i1 %i.m, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.n = getelementptr i8, ptr %0, i64 8          ; 3 uses
  tail call void @_ZN9QtPrivate12QPodArrayOpsI16QCPFinancialDataE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.n, i64 noundef %i.b, ptr noundef align 8 dereferenceable(40) %1)
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.critedge
  %i.p = load atomic i32, ptr %i.o monotonic, align 4
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListI16QCPFinancialDataE6appendERKS0_.exit

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i.i, %.critedge
  tail call void @_ZN17QArrayDataPointerI16QCPFinancialDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.n, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListI16QCPFinancialDataE6appendERKS0_.exit

end_hunk_1
begin_hunk_2_@_ZN16QCPDataContainerI12QCPCurveDataE15preallocateGrowEi:bb.a
  %i.x = getelementptr i8, ptr %.05.i.i, i64 24   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %.05.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  %.not.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not.i.i, label %_ZN5QListI12QCPCurveDataE6resizeEx.exit, label %.lr.ph.i.i, !llvm.loop !60

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #52
  unreachable

_ZN5QListI12QCPCurveDataE6resizeEx.exit:          ; preds = %bb.d, %bb.b, %bb.c
  %i.aa = load ptr, ptr %i.m, align 8             ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN5QListI12QCPCurveDataE5beginEv.exit, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i: ; preds = %_ZN5QListI12QCPCurveDataE6resizeEx.exit
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %_ZN5QListI12QCPCurveDataE5beginEv.exit, label %_ZN5QListI12QCPCurveDataE5beginEv.exit.thread

_ZN5QListI12QCPCurveDataE5beginEv.exit.thread:    ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i
  %i.ad = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = load i32, ptr %i.a, align 8
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr [24 x i8], ptr %i.ae, i64 %i.ag
  br label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i11

_ZN5QListI12QCPCurveDataE5beginEv.exit:           ; preds = %_ZN5QListI12QCPCurveDataE6resizeEx.exit, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i
  call void @_ZN17QArrayDataPointerI12QCPCurveDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.m, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = load i32, ptr %i.a, align 8
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr [24 x i8], ptr %i.aj, i64 %i.al ; 2 uses
  %.not.i.i.i.i10 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i10, label %_ZN5QListI12QCPCurveDataE3endEv.exit, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i11

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i11: ; preds = %_ZN5QListI12QCPCurveDataE5beginEv.exit.thread, %_ZN5QListI12QCPCurveDataE5beginEv.exit
  %i.an = phi ptr [ %i.ah, %_ZN5QListI12QCPCurveDataE5beginEv.exit.thread ], [ %i.am, %_ZN5QListI12QCPCurveDataE5beginEv.exit ] ; 2 uses
  %i.ao = phi ptr [ %i.ae, %_ZN5QListI12QCPCurveDataE5beginEv.exit.thread ], [ %i.aj, %_ZN5QListI12QCPCurveDataE5beginEv.exit ]
  %i.ap = phi ptr [ %i.ad, %_ZN5QListI12QCPCurveDataE5beginEv.exit.thread ], [ %i.ai, %_ZN5QListI12QCPCurveDataE5beginEv.exit ] ; 2 uses
  %i.aq = phi ptr [ %i.aa, %_ZN5QListI12QCPCurveDataE5beginEv.exit.thread ], [ %.pre, %_ZN5QListI12QCPCurveDataE5beginEv.exit ] ; 2 uses
  %i.ar = load atomic i32, ptr %i.aq monotonic, align 4
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %_ZN5QListI12QCPCurveDataE3endEv.exit, label %_ZN5QListI12QCPCurveDataE3endEv.exit.thread

_ZN5QListI12QCPCurveDataE3endEv.exit.thread:      ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i11
  %i.at = load i64, ptr %i.n, align 8
  %i.au = getelementptr [24 x i8], ptr %i.ao, i64 %i.at
  %i.av = sub nsw i64 0, %i.p
  %i.aw = getelementptr [24 x i8], ptr %i.au, i64 %i.av
  br label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i14

_ZN5QListI12QCPCurveDataE3endEv.exit:             ; preds = %_ZN5QListI12QCPCurveDataE5beginEv.exit, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i11
  %i.ax = phi ptr [ %i.an, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i11 ], [ %i.am, %_ZN5QListI12QCPCurveDataE5beginEv.exit ] ; 2 uses
  %i.ay = phi ptr [ %i.ap, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i11 ], [ %i.ai, %_ZN5QListI12QCPCurveDataE5beginEv.exit ] ; 3 uses
  call void @_ZN17QArrayDataPointerI12QCPCurveDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.m, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre23 = load ptr, ptr %i.ay, align 8
  %.pre24 = load ptr, ptr %i.m, align 8           ; 2 uses
  %i.az = load i64, ptr %i.n, align 8
  %i.ba = getelementptr [24 x i8], ptr %.pre23, i64 %i.az
  %i.bb = sub nsw i64 0, %i.p
  %i.bc = getelementptr [24 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %.pre24, null
  br i1 %.not.i.i.i.i13, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i15, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i14

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i14: ; preds = %_ZN5QListI12QCPCurveDataE3endEv.exit.thread, %_ZN5QListI12QCPCurveDataE3endEv.exit
  %i.bd = phi ptr [ %i.aw, %_ZN5QListI12QCPCurveDataE3endEv.exit.thread ], [ %i.bc, %_ZN5QListI12QCPCurveDataE3endEv.exit ] ; 2 uses
  %i.be = phi ptr [ %i.aq, %_ZN5QListI12QCPCurveDataE3endEv.exit.thread ], [ %.pre24, %_ZN5QListI12QCPCurveDataE3endEv.exit ]
  %i.bf = phi ptr [ %i.ap, %_ZN5QListI12QCPCurveDataE3endEv.exit.thread ], [ %i.ay, %_ZN5QListI12QCPCurveDataE3endEv.exit ] ; 2 uses
  %i.bg = phi ptr [ %i.an, %_ZN5QListI12QCPCurveDataE3endEv.exit.thread ], [ %i.ax, %_ZN5QListI12QCPCurveDataE3endEv.exit ] ; 2 uses
  %i.bh = load atomic i32, ptr %i.be monotonic, align 4
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i15, label %_ZN5QListI12QCPCurveDataE3endEv.exit16

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i15: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i14, %_ZN5QListI12QCPCurveDataE3endEv.exit
  %i.bj = phi ptr [ %i.bd, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i14 ], [ %i.bc, %_ZN5QListI12QCPCurveDataE3endEv.exit ]
  %i.bk = phi ptr [ %i.bf, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i14 ], [ %i.ay, %_ZN5QListI12QCPCurveDataE3endEv.exit ]
  %i.bl = phi ptr [ %i.bg, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i14 ], [ %i.ax, %_ZN5QListI12QCPCurveDataE3endEv.exit ]
  call void @_ZN17QArrayDataPointerI12QCPCurveDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.m, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListI12QCPCurveDataE3endEv.exit16

_ZN5QListI12QCPCurveDataE3endEv.exit16:           ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i14, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i15
  %i.bm = phi ptr [ %i.bd, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i14 ], [ %i.bj, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i15 ] ; 2 uses
  %i.bn = phi ptr [ %i.bf, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i14 ], [ %i.bk, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i15 ]
  %i.bo = phi ptr [ %i.bg, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i14 ], [ %i.bl, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i15 ]
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13copy_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN5QListI12QCPCurveDataE3endEv.exit16
  %i.bt = load ptr, ptr %i.bn, align 8
  %i.bu = load i64, ptr %i.n, align 8
  %i.bv = getelementptr [24 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = udiv exact i64 %i.br, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %i.bw, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.0.09.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %i.bv, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.05.08.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %i.bm, %.lr.ph.preheader.i.i.i.i.i ]
  %i.bx = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -24 ; 2 uses
  %i.by = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.by, ptr noundef align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  %i.bz = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ca = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i, label %_ZSt13copy_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit, !llvm.loop !1909

_ZSt13copy_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN5QListI12QCPCurveDataE3endEv.exit16
  store i32 %i.j, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZSt13copy_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN16QCPDataContainerI12QCPCurveDataE4sortEv(ptr noundef align 8 dereferenceable_or_null(40) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i: ; preds = %bb.a
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit, label %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit.thread

_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit.thread: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [24 x i8], ptr %i.f, i64 %i.i
  br label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i3

_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit: ; preds = %bb.a, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i
  tail call void @_ZN17QArrayDataPointerI12QCPCurveDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.a, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [24 x i8], ptr %i.l, i64 %i.o ; 2 uses
  %.not.i.i.i.i.i2 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i.i2, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i4, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i3

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i3: ; preds = %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit.thread, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit
  %i.q = phi ptr [ %i.j, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit.thread ], [ %i.p, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit ] ; 2 uses
  %i.r = phi ptr [ %i.f, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit.thread ], [ %i.l, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit ]
  %i.s = phi ptr [ %i.e, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit.thread ], [ %i.k, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit ]
  %i.t = phi ptr [ %i.b, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit.thread ], [ %.pre, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit ]
  %i.u = load atomic i32, ptr %i.t monotonic, align 4
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i4, label %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i4: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i3, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit
  %i.w = phi ptr [ %i.q, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i3 ], [ %i.p, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit ]
  %i.x = phi ptr [ %i.s, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i3 ], [ %i.k, %_ZN16QCPDataContainerI12QCPCurveDataE5beginEv.exit ]
  tail call void @_ZN17QArrayDataPointerI12QCPCurveDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.a, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre18 = load ptr, ptr %i.x, align 8
  br label %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit

_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i3, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i4
  %i.y = phi ptr [ %i.q, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i3 ], [ %i.w, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i4 ] ; 12 uses
  %i.z = phi ptr [ %i.r, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i.i.i.i3 ], [ %.pre18, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.thread.i.i.i.i4 ]
  %i.aa = getelementptr i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr [24 x i8], ptr %i.z, i64 %i.ab ; 7 uses
  %.not.i.i = icmp eq ptr %i.y, %i.ac
  br i1 %.not.i.i, label %_ZSt4sortIN5QListI12QCPCurveDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = sdiv exact i64 %i.af, 24
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = xor i64 %i.ai, 126
  tail call void @_ZSt16__introsort_loopIN5QListI12QCPCurveDataE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_T1_(ptr %i.y, ptr %i.ac, i64 noundef %i.aj, ptr nonnull @_Z18qcpLessThanSortKeyI12QCPCurveDataEbRKT_S3_)
  %i.ak = icmp sgt i64 %i.af, 384
  %.sroa.0.019.i.i = getelementptr i8, ptr %i.y, i64 24 ; 4 uses
  br i1 %i.ak, label %.lr.ph.i.i, label %bb.g

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.al = getelementptr i8, ptr %i.y, i64 384     ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvar.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %1, %bb.f ]
  %.sroa.0.022.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %.sroa.0.0.i.i, %bb.f ] ; 8 uses
  %.pn21.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.0.022.i.i, %bb.f ] ; 2 uses
  %1 = add nuw nsw i64 %indvar.i.i, 1             ; 2 uses
  %2 = mul nuw nsw i64 %1, 24
  %i.am = load double, ptr %.sroa.0.022.i.i, align 8 ; 4 uses
  %i.an = load double, ptr %i.y, align 8
  %i.ao = fcmp olt double %i.am, %i.an
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.0.022.i.i, align 8
  %i.ap = ptrtoint ptr %.sroa.0.022.i.i to i64
  %i.aq = sub i64 %i.ap, %i.ae
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 8 %.sroa.0.019.i.i, ptr noundef align 8 %i.y, i64 %2, i1 false)
  br label %_ZSt13move_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i

_ZSt13move_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.d
  store <3 x double> %.sroa.0.0.copyload, ptr %i.y, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.6.0..sroa.0.022.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.6.0..sroa.0.022.i.i.sroa_idx, align 8
  %i.as = load double, ptr %.pn21.i.i, align 8
  %i.at = fcmp olt double %i.am, %i.as
  br i1 %i.at, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.sroa.0.09.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn21.i.i, %bb.e ] ; 4 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.022.i.i, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %.sroa.04.08.i.i.i, ptr noundef align 8 dereferenceable(24) %.sroa.0.09.i.i.i, i64 24, i1 false)
  %.sroa.0.0.i.i.i = getelementptr i8, ptr %.sroa.0.09.i.i.i, i64 -24 ; 2 uses
  %i.au = load double, ptr %.sroa.0.0.i.i.i, align 8
  %i.av = fcmp olt double %i.am, %i.au
  br i1 %i.av, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i, !llvm.loop !61

_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.e
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.0.022.i.i, %bb.e ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  store double %i.am, ptr %.sroa.04.0.lcssa.i.i.i, align 8
  %.sroa.6.0..sroa.04.0.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 8
  store <2 x double> %.sroa.6.sroa.0.0.copyload, ptr %.sroa.6.0..sroa.04.0.lcssa.i.i.i.sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i
  %.sroa.0.0.i.i = getelementptr i8, ptr %.sroa.0.022.i.i, i64 24 ; 2 uses
  %.not.i.i5 = icmp eq ptr %.sroa.0.0.i.i, %i.al
  br i1 %.not.i.i5, label %_ZSt16__insertion_sortIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i, label %bb.c, !llvm.loop !62

_ZSt16__insertion_sortIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i: ; preds = %bb.f
  %.not8.i.i = icmp eq ptr %i.al, %i.ac
  br i1 %.not8.i.i, label %_ZSt4sortIN5QListI12QCPCurveDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %_ZSt16__insertion_sortIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i
  %.sroa.0.09.i.i = phi ptr [ %i.ba, %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i ], [ %i.al, %_ZSt16__insertion_sortIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i ] ; 6 uses
  %.sroa.08.0.copyload = load double, ptr %.sroa.0.09.i.i, align 8 ; 3 uses
  %.sroa.611.0..sroa.0.09.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 8
  %.sroa.611.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.611.0..sroa.0.09.i.i.sroa_idx, align 8
  %.sroa.0.07.i.i.i = getelementptr i8, ptr %.sroa.0.09.i.i, i64 -24 ; 2 uses
  %i.aw = load double, ptr %.sroa.0.07.i.i.i, align 8
  %i.ax = fcmp olt double %.sroa.08.0.copyload, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i15.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i

.lr.ph.i.i15.i:                                   ; preds = %.lr.ph.i11.i, %.lr.ph.i.i15.i
  %.sroa.0.09.i.i16.i = phi ptr [ %.sroa.0.0.i.i18.i, %.lr.ph.i.i15.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i11.i ] ; 4 uses
  %.sroa.04.08.i.i17.i = phi ptr [ %.sroa.0.09.i.i16.i, %.lr.ph.i.i15.i ], [ %.sroa.0.09.i.i, %.lr.ph.i11.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %.sroa.04.08.i.i17.i, ptr noundef align 8 dereferenceable(24) %.sroa.0.09.i.i16.i, i64 24, i1 false)
  %.sroa.0.0.i.i18.i = getelementptr i8, ptr %.sroa.0.09.i.i16.i, i64 -24 ; 2 uses
  %i.ay = load double, ptr %.sroa.0.0.i.i18.i, align 8
  %i.az = fcmp olt double %.sroa.08.0.copyload, %i.ay
  br i1 %i.az, label %.lr.ph.i.i15.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i, !llvm.loop !61

_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i: ; preds = %.lr.ph.i.i15.i, %.lr.ph.i11.i
  %.sroa.04.0.lcssa.i.i13.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i11.i ], [ %.sroa.0.09.i.i16.i, %.lr.ph.i.i15.i ] ; 2 uses
  store double %.sroa.08.0.copyload, ptr %.sroa.04.0.lcssa.i.i13.i, align 8
  %.sroa.611.0..sroa.04.0.lcssa.i.i13.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i13.i, i64 8
  store <2 x double> %.sroa.611.sroa.0.0.copyload, ptr %.sroa.611.0..sroa.04.0.lcssa.i.i13.i.sroa_idx, align 8
  %i.ba = getelementptr i8, ptr %.sroa.0.09.i.i, i64 24 ; 2 uses
  %.not.i14.i = icmp eq ptr %i.ba, %i.ac
  br i1 %.not.i14.i, label %_ZSt4sortIN5QListI12QCPCurveDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i11.i, !llvm.loop !63

bb.g:                                             ; preds = %bb.b
  %.not20.i21.i = icmp eq ptr %.sroa.0.019.i.i, %i.ac
  br i1 %.not20.i21.i, label %_ZSt4sortIN5QListI12QCPCurveDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %bb.g, %bb.j
  %indvar.i23.i = phi i64 [ %indvar.next.i34.i, %bb.j ], [ 0, %bb.g ] ; 2 uses
  %.sroa.0.022.i24.i = phi ptr [ %.sroa.0.0.i32.i, %bb.j ], [ %.sroa.0.019.i.i, %bb.g ] ; 9 uses
  %.pn21.i25.i = phi ptr [ %.sroa.0.022.i24.i, %bb.j ], [ %i.y, %bb.g ] ; 3 uses
  %i.bb = mul i64 %indvar.i23.i, 24               ; 2 uses
  %i.bc = add i64 %i.bb, 24
  %i.bd = udiv i64 %i.bc, 24                      ; 2 uses
  %3 = icmp ult i64 %i.bb, -24                    ; 2 uses
  %umin.neg.i26.i = sext i1 %3 to i64
  %i.be = select i1 %3, i64 24, i64 0
  %.neg.i27.i = mul i64 %i.bd, -24
  %4 = add i64 %.neg.i27.i, %i.be                 ; 2 uses
  %scevgep.i28.i = getelementptr i8, ptr %.sroa.0.022.i24.i, i64 %4
  %scevgep24.i29.i = getelementptr i8, ptr %.pn21.i25.i, i64 %4
  %i.bf = add nuw nsw i64 %i.bd, 1
  %i.bg = add nsw i64 %i.bf, %umin.neg.i26.i
  %i.bh = mul nuw i64 %i.bg, 24
  %i.bi = load double, ptr %.sroa.0.022.i24.i, align 8 ; 4 uses
  %i.bj = load double, ptr %i.y, align 8
  %i.bk = fcmp olt double %i.bi, %i.bj
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i22.i
  %.sroa.033.0.copyload = load <3 x double>, ptr %.sroa.0.022.i24.i, align 8
  %i.bl = ptrtoint ptr %.sroa.0.022.i24.i to i64
  %i.bm = sub i64 %i.bl, %i.ae
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i.i40.i, label %_ZSt13move_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit.i39.i

.lr.ph.preheader.i.i.i.i.i.i40.i:                 ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i28.i, ptr align 8 %scevgep24.i29.i, i64 %i.bh, i1 false)
  br label %_ZSt13move_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit.i39.i

_ZSt13move_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit.i39.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i40.i, %bb.h
  store <3 x double> %.sroa.033.0.copyload, ptr %i.y, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i22.i
  %.sroa.615.0..sroa.0.022.i24.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i24.i, i64 8
  %.sroa.615.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.615.0..sroa.0.022.i24.i.sroa_idx, align 8
  %i.bo = load double, ptr %.pn21.i25.i, align 8
  %i.bp = fcmp olt double %i.bi, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i35.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i30.i

.lr.ph.i.i35.i:                                   ; preds = %bb.i, %.lr.ph.i.i35.i
  %.sroa.0.09.i.i36.i = phi ptr [ %.sroa.0.0.i.i38.i, %.lr.ph.i.i35.i ], [ %.pn21.i25.i, %bb.i ] ; 4 uses
  %.sroa.04.08.i.i37.i = phi ptr [ %.sroa.0.09.i.i36.i, %.lr.ph.i.i35.i ], [ %.sroa.0.022.i24.i, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %.sroa.04.08.i.i37.i, ptr noundef align 8 dereferenceable(24) %.sroa.0.09.i.i36.i, i64 24, i1 false)
  %.sroa.0.0.i.i38.i = getelementptr i8, ptr %.sroa.0.09.i.i36.i, i64 -24 ; 2 uses
  %i.bq = load double, ptr %.sroa.0.0.i.i38.i, align 8
  %i.br = fcmp olt double %i.bi, %i.bq
  br i1 %i.br, label %.lr.ph.i.i35.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i30.i, !llvm.loop !61

_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i30.i: ; preds = %.lr.ph.i.i35.i, %bb.i
  %.sroa.04.0.lcssa.i.i31.i = phi ptr [ %.sroa.0.022.i24.i, %bb.i ], [ %.sroa.0.09.i.i36.i, %.lr.ph.i.i35.i ] ; 2 uses
  store double %i.bi, ptr %.sroa.04.0.lcssa.i.i31.i, align 8
  %.sroa.615.0..sroa.04.0.lcssa.i.i31.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i31.i, i64 8
  store <2 x double> %.sroa.615.sroa.0.0.copyload, ptr %.sroa.615.0..sroa.04.0.lcssa.i.i31.i.sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i30.i, %_ZSt13move_backwardIN5QListI12QCPCurveDataE8iteratorES3_ET0_T_S5_S4_.exit.i39.i
  %.sroa.0.0.i32.i = getelementptr i8, ptr %.sroa.0.022.i24.i, i64 24 ; 2 uses
  %.not.i33.i = icmp eq ptr %.sroa.0.0.i32.i, %i.ac
  %indvar.next.i34.i = add i64 %indvar.i23.i, 1
  br i1 %.not.i33.i, label %_ZSt4sortIN5QListI12QCPCurveDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i22.i, !llvm.loop !62

_ZSt4sortIN5QListI12QCPCurveDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit: ; preds = %bb.j, %_ZSt25__unguarded_linear_insertIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i, %bb.g, %_ZSt16__insertion_sortIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i, %_ZN16QCPDataContainerI12QCPCurveDataE3endEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListI12QCPCurveDataE15resize_internalEx(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i, label %_ZNK17QArrayDataPointerI12QCPCurveDataE16freeSpaceAtBeginEv.exit

_ZNK17QArrayDataPointerI12QCPCurveDataE16freeSpaceAtBeginEv.exit: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = add i64 %i.h, 23
  %i.j = and i64 %i.i, -8
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.k, %i.j
  %.neg = sdiv exact i64 %i.l, -24
  %i.m = add i64 %.neg, %i.e
  %i.n = icmp sgt i64 %1, %i.m
  br i1 %i.n, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = sub i64 %1, %i.p
  br label %.critedge.i

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i: ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE16freeSpaceAtBeginEv.exit, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 5 uses
  %i.t = sub i64 %1, %i.s                         ; 6 uses
  %i.u = load atomic i32, ptr %i.a monotonic, align 4
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i
  %.not.i5 = icmp eq i64 %i.t, 0
  br i1 %.not.i5, label %_ZN17QArrayDataPointerI12QCPCurveDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  %i.aa = ptrtoint ptr %i.a to i64
  %i.ab = add i64 %i.aa, 23
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %i.ad = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ae = sub i64 %i.ad, %i.ac                    ; 3 uses
  %.neg4.i.i = sdiv exact i64 %i.ae, -24
  %.neg3.i.i = sub i64 %i.x, %i.s
  %i.af = add i64 %.neg3.i.i, %.neg4.i.i
  %.not17.i = icmp slt i64 %i.af, %i.t
  br i1 %.not17.i, label %_ZNK17QArrayDataPointerI12QCPCurveDataE14freeSpaceAtEndEv.exit.i.i, label %_ZN17QArrayDataPointerI12QCPCurveDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit

_ZNK17QArrayDataPointerI12QCPCurveDataE14freeSpaceAtEndEv.exit.i.i: ; preds = %bb.d
  %i.ag = sdiv exact i64 %i.ae, 24
  %.not.i19.i = icmp slt i64 %i.ag, %i.t
  br i1 %.not.i19.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE14freeSpaceAtEndEv.exit.i.i
  %i.ah = mul i64 %i.s, 3
  %i.ai = shl i64 %i.x, 1
  %i.aj = icmp slt i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %.idx.i.i.i = sub i64 0, %i.ae
  %i.ak = getelementptr i8, ptr %i.z, i64 %.idx.i.i.i ; 3 uses
  %i.al = icmp eq i64 %i.s, 0
  br i1 %i.al, label %_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq i64 %i.ac, %i.ad
  %i.an = icmp eq ptr %i.z, null
  %or.cond.i.i.i.i = or i1 %i.an, %i.am
  %i.ao = icmp eq ptr %i.ak, null
  %or.cond3.i.i.i.i = or i1 %or.cond.i.i.i.i, %i.ao
  br i1 %or.cond3.i.i.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = mul i64 %i.s, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull align 1 %i.z, i64 noundef %i.ap, i1 noundef false) #51
  br label %_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i.i.i

_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  store ptr %i.ak, ptr %i.y, align 8
  br label %_ZN17QArrayDataPointerI12QCPCurveDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit

.critedge.i:                                      ; preds = %bb.b, %bb.e, %_ZNK17QArrayDataPointerI12QCPCurveDataE14freeSpaceAtEndEv.exit.i.i, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i
  %i.aq = phi i64 [ %i.t, %bb.e ], [ %i.t, %_ZNK17QArrayDataPointerI12QCPCurveDataE14freeSpaceAtEndEv.exit.i.i ], [ %i.t, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit.i ], [ %i.q, %bb.b ]
  tail call void @_ZN17QArrayDataPointerI12QCPCurveDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef %i.aq, ptr noundef null)
  br label %_ZN17QArrayDataPointerI12QCPCurveDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit

bb.i:                                             ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE16freeSpaceAtBeginEv.exit
  %i.ar = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = icmp slt i64 %1, %i.as
  br i1 %i.at, label %bb.j, label %_ZN17QArrayDataPointerI12QCPCurveDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit

bb.j:                                             ; preds = %bb.i
  store i64 %1, ptr %i.ar, align 8
  br label %_ZN17QArrayDataPointerI12QCPCurveDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit

_ZN17QArrayDataPointerI12QCPCurveDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit: ; preds = %.critedge.i, %_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i.i.i, %bb.d, %bb.c, %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI12QCPCurveDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.critedge, label %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit

_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %_ZN17QArrayDataPointerI12QCPCurveDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit [
    i32 1, label %_ZNK17QArrayDataPointerI12QCPCurveDataE16freeSpaceAtBeginEv.exit
    i32 0, label %_ZNK17QArrayDataPointerI12QCPCurveDataE14freeSpaceAtEndEv.exit
  ]

_ZNK17QArrayDataPointerI12QCPCurveDataE16freeSpaceAtBeginEv.exit: ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = add i64 %i.f, 23
  %i.h = and i64 %i.g, -8
end_hunk_2
begin_hunk_3_@_ZN16QCPDataContainerI16QCPFinancialDataE15preallocateGrowEi:bb.a
  %i.x = getelementptr i8, ptr %.05.i.i, i64 40   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %.05.i.i, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  %.not.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not.i.i, label %_ZN5QListI16QCPFinancialDataE6resizeEx.exit, label %.lr.ph.i.i, !llvm.loop !85

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #52
  unreachable

_ZN5QListI16QCPFinancialDataE6resizeEx.exit:      ; preds = %bb.d, %bb.b, %bb.c
  %i.aa = load ptr, ptr %i.m, align 8             ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN5QListI16QCPFinancialDataE5beginEv.exit, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i: ; preds = %_ZN5QListI16QCPFinancialDataE6resizeEx.exit
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %_ZN5QListI16QCPFinancialDataE5beginEv.exit, label %_ZN5QListI16QCPFinancialDataE5beginEv.exit.thread

_ZN5QListI16QCPFinancialDataE5beginEv.exit.thread: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i
  %i.ad = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = load i32, ptr %i.a, align 8
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr [40 x i8], ptr %i.ae, i64 %i.ag
  br label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i11

_ZN5QListI16QCPFinancialDataE5beginEv.exit:       ; preds = %_ZN5QListI16QCPFinancialDataE6resizeEx.exit, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i
  call void @_ZN17QArrayDataPointerI16QCPFinancialDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.m, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = load i32, ptr %i.a, align 8
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr [40 x i8], ptr %i.aj, i64 %i.al ; 2 uses
  %.not.i.i.i.i10 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i10, label %_ZN5QListI16QCPFinancialDataE3endEv.exit, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i11

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i11: ; preds = %_ZN5QListI16QCPFinancialDataE5beginEv.exit.thread, %_ZN5QListI16QCPFinancialDataE5beginEv.exit
  %i.an = phi ptr [ %i.ah, %_ZN5QListI16QCPFinancialDataE5beginEv.exit.thread ], [ %i.am, %_ZN5QListI16QCPFinancialDataE5beginEv.exit ] ; 2 uses
  %i.ao = phi ptr [ %i.ae, %_ZN5QListI16QCPFinancialDataE5beginEv.exit.thread ], [ %i.aj, %_ZN5QListI16QCPFinancialDataE5beginEv.exit ]
  %i.ap = phi ptr [ %i.ad, %_ZN5QListI16QCPFinancialDataE5beginEv.exit.thread ], [ %i.ai, %_ZN5QListI16QCPFinancialDataE5beginEv.exit ] ; 2 uses
  %i.aq = phi ptr [ %i.aa, %_ZN5QListI16QCPFinancialDataE5beginEv.exit.thread ], [ %.pre, %_ZN5QListI16QCPFinancialDataE5beginEv.exit ] ; 2 uses
  %i.ar = load atomic i32, ptr %i.aq monotonic, align 4
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %_ZN5QListI16QCPFinancialDataE3endEv.exit, label %_ZN5QListI16QCPFinancialDataE3endEv.exit.thread

_ZN5QListI16QCPFinancialDataE3endEv.exit.thread:  ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i11
  %i.at = load i64, ptr %i.n, align 8
  %i.au = getelementptr [40 x i8], ptr %i.ao, i64 %i.at
  %i.av = sub nsw i64 0, %i.p
  %i.aw = getelementptr [40 x i8], ptr %i.au, i64 %i.av
  br label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i14

_ZN5QListI16QCPFinancialDataE3endEv.exit:         ; preds = %_ZN5QListI16QCPFinancialDataE5beginEv.exit, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i11
  %i.ax = phi ptr [ %i.an, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i11 ], [ %i.am, %_ZN5QListI16QCPFinancialDataE5beginEv.exit ] ; 2 uses
  %i.ay = phi ptr [ %i.ap, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i11 ], [ %i.ai, %_ZN5QListI16QCPFinancialDataE5beginEv.exit ] ; 3 uses
  call void @_ZN17QArrayDataPointerI16QCPFinancialDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.m, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre23 = load ptr, ptr %i.ay, align 8
  %.pre24 = load ptr, ptr %i.m, align 8           ; 2 uses
  %i.az = load i64, ptr %i.n, align 8
  %i.ba = getelementptr [40 x i8], ptr %.pre23, i64 %i.az
  %i.bb = sub nsw i64 0, %i.p
  %i.bc = getelementptr [40 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %.pre24, null
  br i1 %.not.i.i.i.i13, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i15, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i14

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i14: ; preds = %_ZN5QListI16QCPFinancialDataE3endEv.exit.thread, %_ZN5QListI16QCPFinancialDataE3endEv.exit
  %i.bd = phi ptr [ %i.aw, %_ZN5QListI16QCPFinancialDataE3endEv.exit.thread ], [ %i.bc, %_ZN5QListI16QCPFinancialDataE3endEv.exit ] ; 2 uses
  %i.be = phi ptr [ %i.aq, %_ZN5QListI16QCPFinancialDataE3endEv.exit.thread ], [ %.pre24, %_ZN5QListI16QCPFinancialDataE3endEv.exit ]
  %i.bf = phi ptr [ %i.ap, %_ZN5QListI16QCPFinancialDataE3endEv.exit.thread ], [ %i.ay, %_ZN5QListI16QCPFinancialDataE3endEv.exit ] ; 2 uses
  %i.bg = phi ptr [ %i.an, %_ZN5QListI16QCPFinancialDataE3endEv.exit.thread ], [ %i.ax, %_ZN5QListI16QCPFinancialDataE3endEv.exit ] ; 2 uses
  %i.bh = load atomic i32, ptr %i.be monotonic, align 4
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i15, label %_ZN5QListI16QCPFinancialDataE3endEv.exit16

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i15: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i14, %_ZN5QListI16QCPFinancialDataE3endEv.exit
  %i.bj = phi ptr [ %i.bd, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i14 ], [ %i.bc, %_ZN5QListI16QCPFinancialDataE3endEv.exit ]
  %i.bk = phi ptr [ %i.bf, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i14 ], [ %i.ay, %_ZN5QListI16QCPFinancialDataE3endEv.exit ]
  %i.bl = phi ptr [ %i.bg, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i14 ], [ %i.ax, %_ZN5QListI16QCPFinancialDataE3endEv.exit ]
  call void @_ZN17QArrayDataPointerI16QCPFinancialDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.m, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListI16QCPFinancialDataE3endEv.exit16

_ZN5QListI16QCPFinancialDataE3endEv.exit16:       ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i14, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i15
  %i.bm = phi ptr [ %i.bd, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i14 ], [ %i.bj, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i15 ] ; 2 uses
  %i.bn = phi ptr [ %i.bf, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i14 ], [ %i.bk, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i15 ]
  %i.bo = phi ptr [ %i.bg, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i14 ], [ %i.bl, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i15 ]
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13copy_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN5QListI16QCPFinancialDataE3endEv.exit16
  %i.bt = load ptr, ptr %i.bn, align 8
  %i.bu = load i64, ptr %i.n, align 8
  %i.bv = getelementptr [40 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = udiv exact i64 %i.br, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %i.bw, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.0.09.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %i.bv, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.05.08.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %i.bm, %.lr.ph.preheader.i.i.i.i.i ]
  %i.bx = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -40 ; 2 uses
  %i.by = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %i.by, ptr noundef align 8 dereferenceable(40) %i.bx, i64 40, i1 false)
  %i.bz = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ca = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i, label %_ZSt13copy_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit, !llvm.loop !2027

_ZSt13copy_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN5QListI16QCPFinancialDataE3endEv.exit16
  store i32 %i.j, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZSt13copy_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN16QCPDataContainerI16QCPFinancialDataE4sortEv(ptr noundef align 8 dereferenceable_or_null(40) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i: ; preds = %bb.a
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit, label %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit.thread

_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit.thread: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [40 x i8], ptr %i.f, i64 %i.i
  br label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i3

_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit: ; preds = %bb.a, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i
  tail call void @_ZN17QArrayDataPointerI16QCPFinancialDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.a, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [40 x i8], ptr %i.l, i64 %i.o ; 2 uses
  %.not.i.i.i.i.i2 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i.i2, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i4, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i3

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i3: ; preds = %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit.thread, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit
  %i.q = phi ptr [ %i.j, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit.thread ], [ %i.p, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit ] ; 2 uses
  %i.r = phi ptr [ %i.f, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit.thread ], [ %i.l, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit ]
  %i.s = phi ptr [ %i.e, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit.thread ], [ %i.k, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit ]
  %i.t = phi ptr [ %i.b, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit.thread ], [ %.pre, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit ]
  %i.u = load atomic i32, ptr %i.t monotonic, align 4
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i4, label %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i4: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i3, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit
  %i.w = phi ptr [ %i.q, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i3 ], [ %i.p, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit ]
  %i.x = phi ptr [ %i.s, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i3 ], [ %i.k, %_ZN16QCPDataContainerI16QCPFinancialDataE5beginEv.exit ]
  tail call void @_ZN17QArrayDataPointerI16QCPFinancialDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.a, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre18 = load ptr, ptr %i.x, align 8
  br label %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit

_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i3, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i4
  %i.y = phi ptr [ %i.q, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i3 ], [ %i.w, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i4 ] ; 12 uses
  %i.z = phi ptr [ %i.r, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i.i.i.i3 ], [ %.pre18, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.thread.i.i.i.i4 ]
  %i.aa = getelementptr i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr [40 x i8], ptr %i.z, i64 %i.ab ; 7 uses
  %.not.i.i = icmp eq ptr %i.y, %i.ac
  br i1 %.not.i.i, label %_ZSt4sortIN5QListI16QCPFinancialDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = sdiv exact i64 %i.af, 40
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = xor i64 %i.ai, 126
  tail call void @_ZSt16__introsort_loopIN5QListI16QCPFinancialDataE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_T1_(ptr %i.y, ptr %i.ac, i64 noundef %i.aj, ptr nonnull @_Z18qcpLessThanSortKeyI16QCPFinancialDataEbRKT_S3_)
  %i.ak = icmp sgt i64 %i.af, 640
  %.sroa.0.019.i.i = getelementptr i8, ptr %i.y, i64 40 ; 4 uses
  br i1 %i.ak, label %.lr.ph.i.i, label %bb.g

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.al = getelementptr i8, ptr %i.y, i64 640     ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvar.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %1, %bb.f ]
  %.sroa.0.022.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %.sroa.0.0.i.i, %bb.f ] ; 8 uses
  %.pn21.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.0.022.i.i, %bb.f ] ; 2 uses
  %1 = add nuw nsw i64 %indvar.i.i, 1             ; 2 uses
  %2 = mul nuw nsw i64 %1, 40
  %i.am = load double, ptr %.sroa.0.022.i.i, align 8 ; 4 uses
  %i.an = load double, ptr %i.y, align 8
  %i.ao = fcmp olt double %i.am, %i.an
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load <5 x double>, ptr %.sroa.0.022.i.i, align 8
  %i.ap = ptrtoint ptr %.sroa.0.022.i.i to i64
  %i.aq = sub i64 %i.ap, %i.ae
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 8 %.sroa.0.019.i.i, ptr noundef align 8 %i.y, i64 %2, i1 false)
  br label %_ZSt13move_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i

_ZSt13move_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.d
  store <5 x double> %.sroa.0.0.copyload, ptr %i.y, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.6.0..sroa.0.022.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload = load <4 x double>, ptr %.sroa.6.0..sroa.0.022.i.i.sroa_idx, align 8
  %i.as = load double, ptr %.pn21.i.i, align 8
  %i.at = fcmp olt double %i.am, %i.as
  br i1 %i.at, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.sroa.0.09.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn21.i.i, %bb.e ] ; 4 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.022.i.i, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %.sroa.04.08.i.i.i, ptr noundef align 8 dereferenceable(40) %.sroa.0.09.i.i.i, i64 40, i1 false)
  %.sroa.0.0.i.i.i = getelementptr i8, ptr %.sroa.0.09.i.i.i, i64 -40 ; 2 uses
  %i.au = load double, ptr %.sroa.0.0.i.i.i, align 8
  %i.av = fcmp olt double %i.am, %i.au
  br i1 %i.av, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i, !llvm.loop !86

_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.e
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.0.022.i.i, %bb.e ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  store double %i.am, ptr %.sroa.04.0.lcssa.i.i.i, align 8
  %.sroa.6.0..sroa.04.0.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 8
  store <4 x double> %.sroa.6.sroa.0.0.copyload, ptr %.sroa.6.0..sroa.04.0.lcssa.i.i.i.sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i
  %.sroa.0.0.i.i = getelementptr i8, ptr %.sroa.0.022.i.i, i64 40 ; 2 uses
  %.not.i.i5 = icmp eq ptr %.sroa.0.0.i.i, %i.al
  br i1 %.not.i.i5, label %_ZSt16__insertion_sortIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i, label %bb.c, !llvm.loop !87

_ZSt16__insertion_sortIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i: ; preds = %bb.f
  %.not8.i.i = icmp eq ptr %i.al, %i.ac
  br i1 %.not8.i.i, label %_ZSt4sortIN5QListI16QCPFinancialDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %_ZSt16__insertion_sortIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i
  %.sroa.0.09.i.i = phi ptr [ %i.ba, %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i ], [ %i.al, %_ZSt16__insertion_sortIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i ] ; 6 uses
  %.sroa.08.0.copyload = load double, ptr %.sroa.0.09.i.i, align 8 ; 3 uses
  %.sroa.611.0..sroa.0.09.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 8
  %.sroa.611.sroa.0.0.copyload = load <4 x double>, ptr %.sroa.611.0..sroa.0.09.i.i.sroa_idx, align 8
  %.sroa.0.07.i.i.i = getelementptr i8, ptr %.sroa.0.09.i.i, i64 -40 ; 2 uses
  %i.aw = load double, ptr %.sroa.0.07.i.i.i, align 8
  %i.ax = fcmp olt double %.sroa.08.0.copyload, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i15.i, label %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i

.lr.ph.i.i15.i:                                   ; preds = %.lr.ph.i11.i, %.lr.ph.i.i15.i
  %.sroa.0.09.i.i16.i = phi ptr [ %.sroa.0.0.i.i18.i, %.lr.ph.i.i15.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i11.i ] ; 4 uses
  %.sroa.04.08.i.i17.i = phi ptr [ %.sroa.0.09.i.i16.i, %.lr.ph.i.i15.i ], [ %.sroa.0.09.i.i, %.lr.ph.i11.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %.sroa.04.08.i.i17.i, ptr noundef align 8 dereferenceable(40) %.sroa.0.09.i.i16.i, i64 40, i1 false)
  %.sroa.0.0.i.i18.i = getelementptr i8, ptr %.sroa.0.09.i.i16.i, i64 -40 ; 2 uses
  %i.ay = load double, ptr %.sroa.0.0.i.i18.i, align 8
  %i.az = fcmp olt double %.sroa.08.0.copyload, %i.ay
  br i1 %i.az, label %.lr.ph.i.i15.i, label %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i, !llvm.loop !86

_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i: ; preds = %.lr.ph.i.i15.i, %.lr.ph.i11.i
  %.sroa.04.0.lcssa.i.i13.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i11.i ], [ %.sroa.0.09.i.i16.i, %.lr.ph.i.i15.i ] ; 2 uses
  store double %.sroa.08.0.copyload, ptr %.sroa.04.0.lcssa.i.i13.i, align 8
  %.sroa.611.0..sroa.04.0.lcssa.i.i13.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i13.i, i64 8
  store <4 x double> %.sroa.611.sroa.0.0.copyload, ptr %.sroa.611.0..sroa.04.0.lcssa.i.i13.i.sroa_idx, align 8
  %i.ba = getelementptr i8, ptr %.sroa.0.09.i.i, i64 40 ; 2 uses
  %.not.i14.i = icmp eq ptr %i.ba, %i.ac
  br i1 %.not.i14.i, label %_ZSt4sortIN5QListI16QCPFinancialDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i11.i, !llvm.loop !88

bb.g:                                             ; preds = %bb.b
  %.not20.i21.i = icmp eq ptr %.sroa.0.019.i.i, %i.ac
  br i1 %.not20.i21.i, label %_ZSt4sortIN5QListI16QCPFinancialDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %bb.g, %bb.j
  %indvar.i23.i = phi i64 [ %indvar.next.i34.i, %bb.j ], [ 0, %bb.g ] ; 2 uses
  %.sroa.0.022.i24.i = phi ptr [ %.sroa.0.0.i32.i, %bb.j ], [ %.sroa.0.019.i.i, %bb.g ] ; 9 uses
  %.pn21.i25.i = phi ptr [ %.sroa.0.022.i24.i, %bb.j ], [ %i.y, %bb.g ] ; 3 uses
  %i.bb = mul i64 %indvar.i23.i, 40               ; 2 uses
  %i.bc = add i64 %i.bb, 40
  %i.bd = udiv i64 %i.bc, 40                      ; 2 uses
  %3 = icmp ult i64 %i.bb, -40                    ; 2 uses
  %umin.neg.i26.i = sext i1 %3 to i64
  %i.be = select i1 %3, i64 40, i64 0
  %.neg.i27.i = mul i64 %i.bd, -40
  %4 = add i64 %.neg.i27.i, %i.be                 ; 2 uses
  %scevgep.i28.i = getelementptr i8, ptr %.sroa.0.022.i24.i, i64 %4
  %scevgep24.i29.i = getelementptr i8, ptr %.pn21.i25.i, i64 %4
  %i.bf = add nuw nsw i64 %i.bd, 1
  %i.bg = add nsw i64 %i.bf, %umin.neg.i26.i
  %i.bh = mul nuw i64 %i.bg, 40
  %i.bi = load double, ptr %.sroa.0.022.i24.i, align 8 ; 4 uses
  %i.bj = load double, ptr %i.y, align 8
  %i.bk = fcmp olt double %i.bi, %i.bj
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i22.i
  %.sroa.033.0.copyload = load <5 x double>, ptr %.sroa.0.022.i24.i, align 8
  %i.bl = ptrtoint ptr %.sroa.0.022.i24.i to i64
  %i.bm = sub i64 %i.bl, %i.ae
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i.i40.i, label %_ZSt13move_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit.i39.i

.lr.ph.preheader.i.i.i.i.i.i40.i:                 ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i28.i, ptr align 8 %scevgep24.i29.i, i64 %i.bh, i1 false)
  br label %_ZSt13move_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit.i39.i

_ZSt13move_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit.i39.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i40.i, %bb.h
  store <5 x double> %.sroa.033.0.copyload, ptr %i.y, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i22.i
  %.sroa.615.0..sroa.0.022.i24.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i24.i, i64 8
  %.sroa.615.sroa.0.0.copyload = load <4 x double>, ptr %.sroa.615.0..sroa.0.022.i24.i.sroa_idx, align 8
  %i.bo = load double, ptr %.pn21.i25.i, align 8
  %i.bp = fcmp olt double %i.bi, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i35.i, label %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i30.i

.lr.ph.i.i35.i:                                   ; preds = %bb.i, %.lr.ph.i.i35.i
  %.sroa.0.09.i.i36.i = phi ptr [ %.sroa.0.0.i.i38.i, %.lr.ph.i.i35.i ], [ %.pn21.i25.i, %bb.i ] ; 4 uses
  %.sroa.04.08.i.i37.i = phi ptr [ %.sroa.0.09.i.i36.i, %.lr.ph.i.i35.i ], [ %.sroa.0.022.i24.i, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %.sroa.04.08.i.i37.i, ptr noundef align 8 dereferenceable(40) %.sroa.0.09.i.i36.i, i64 40, i1 false)
  %.sroa.0.0.i.i38.i = getelementptr i8, ptr %.sroa.0.09.i.i36.i, i64 -40 ; 2 uses
  %i.bq = load double, ptr %.sroa.0.0.i.i38.i, align 8
  %i.br = fcmp olt double %i.bi, %i.bq
  br i1 %i.br, label %.lr.ph.i.i35.i, label %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i30.i, !llvm.loop !86

_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i30.i: ; preds = %.lr.ph.i.i35.i, %bb.i
  %.sroa.04.0.lcssa.i.i31.i = phi ptr [ %.sroa.0.022.i24.i, %bb.i ], [ %.sroa.0.09.i.i36.i, %.lr.ph.i.i35.i ] ; 2 uses
  store double %i.bi, ptr %.sroa.04.0.lcssa.i.i31.i, align 8
  %.sroa.615.0..sroa.04.0.lcssa.i.i31.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i31.i, i64 8
  store <4 x double> %.sroa.615.sroa.0.0.copyload, ptr %.sroa.615.0..sroa.04.0.lcssa.i.i31.i.sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i30.i, %_ZSt13move_backwardIN5QListI16QCPFinancialDataE8iteratorES3_ET0_T_S5_S4_.exit.i39.i
  %.sroa.0.0.i32.i = getelementptr i8, ptr %.sroa.0.022.i24.i, i64 40 ; 2 uses
  %.not.i33.i = icmp eq ptr %.sroa.0.0.i32.i, %i.ac
  %indvar.next.i34.i = add i64 %indvar.i23.i, 1
  br i1 %.not.i33.i, label %_ZSt4sortIN5QListI16QCPFinancialDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i22.i, !llvm.loop !87

_ZSt4sortIN5QListI16QCPFinancialDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit: ; preds = %bb.j, %_ZSt25__unguarded_linear_insertIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i, %bb.g, %_ZSt16__insertion_sortIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i, %_ZN16QCPDataContainerI16QCPFinancialDataE3endEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListI16QCPFinancialDataE15resize_internalEx(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE16freeSpaceAtBeginEv.exit

_ZNK17QArrayDataPointerI16QCPFinancialDataE16freeSpaceAtBeginEv.exit: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = add i64 %i.h, 23
  %i.j = and i64 %i.i, -8
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.k, %i.j
  %.neg = sdiv exact i64 %i.l, -40
  %i.m = add i64 %.neg, %i.e
  %i.n = icmp sgt i64 %1, %i.m
  br i1 %i.n, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = sub i64 %1, %i.p
  br label %.critedge.i

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i: ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE16freeSpaceAtBeginEv.exit, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 5 uses
  %i.t = sub i64 %1, %i.s                         ; 6 uses
  %i.u = load atomic i32, ptr %i.a monotonic, align 4
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i
  %.not.i5 = icmp eq i64 %i.t, 0
  br i1 %.not.i5, label %_ZN17QArrayDataPointerI16QCPFinancialDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  %i.aa = ptrtoint ptr %i.a to i64
  %i.ab = add i64 %i.aa, 23
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %i.ad = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ae = sub i64 %i.ad, %i.ac                    ; 3 uses
  %.neg4.i.i = sdiv exact i64 %i.ae, -40
  %.neg3.i.i = sub i64 %i.x, %i.s
  %i.af = add i64 %.neg3.i.i, %.neg4.i.i
  %.not17.i = icmp slt i64 %i.af, %i.t
  br i1 %.not17.i, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE14freeSpaceAtEndEv.exit.i.i, label %_ZN17QArrayDataPointerI16QCPFinancialDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit

_ZNK17QArrayDataPointerI16QCPFinancialDataE14freeSpaceAtEndEv.exit.i.i: ; preds = %bb.d
  %i.ag = sdiv exact i64 %i.ae, 40
  %.not.i19.i = icmp slt i64 %i.ag, %i.t
  br i1 %.not.i19.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE14freeSpaceAtEndEv.exit.i.i
  %i.ah = mul i64 %i.s, 3
  %i.ai = shl i64 %i.x, 1
  %i.aj = icmp slt i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %.idx.i.i.i = sub i64 0, %i.ae
  %i.ak = getelementptr i8, ptr %i.z, i64 %.idx.i.i.i ; 3 uses
  %i.al = icmp eq i64 %i.s, 0
  br i1 %i.al, label %_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq i64 %i.ac, %i.ad
  %i.an = icmp eq ptr %i.z, null
  %or.cond.i.i.i.i = or i1 %i.an, %i.am
  %i.ao = icmp eq ptr %i.ak, null
  %or.cond3.i.i.i.i = or i1 %or.cond.i.i.i.i, %i.ao
  br i1 %or.cond3.i.i.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = mul i64 %i.s, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull align 1 %i.z, i64 noundef %i.ap, i1 noundef false) #51
  br label %_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i.i.i

_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  store ptr %i.ak, ptr %i.y, align 8
  br label %_ZN17QArrayDataPointerI16QCPFinancialDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit

.critedge.i:                                      ; preds = %bb.b, %bb.e, %_ZNK17QArrayDataPointerI16QCPFinancialDataE14freeSpaceAtEndEv.exit.i.i, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i
  %i.aq = phi i64 [ %i.t, %bb.e ], [ %i.t, %_ZNK17QArrayDataPointerI16QCPFinancialDataE14freeSpaceAtEndEv.exit.i.i ], [ %i.t, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit.i ], [ %i.q, %bb.b ]
  tail call void @_ZN17QArrayDataPointerI16QCPFinancialDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef %i.aq, ptr noundef null)
  br label %_ZN17QArrayDataPointerI16QCPFinancialDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit

bb.i:                                             ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE16freeSpaceAtBeginEv.exit
  %i.ar = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = icmp slt i64 %1, %i.as
  br i1 %i.at, label %bb.j, label %_ZN17QArrayDataPointerI16QCPFinancialDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit

bb.j:                                             ; preds = %bb.i
  store i64 %1, ptr %i.ar, align 8
  br label %_ZN17QArrayDataPointerI16QCPFinancialDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit

_ZN17QArrayDataPointerI16QCPFinancialDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit: ; preds = %.critedge.i, %_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i.i.i, %bb.d, %bb.c, %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI16QCPFinancialDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.critedge, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit

_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %_ZN17QArrayDataPointerI16QCPFinancialDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit [
    i32 1, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE16freeSpaceAtBeginEv.exit
    i32 0, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE14freeSpaceAtEndEv.exit
  ]

_ZNK17QArrayDataPointerI16QCPFinancialDataE16freeSpaceAtBeginEv.exit: ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = add i64 %i.f, 23
  %i.h = and i64 %i.g, -8
end_hunk_3
