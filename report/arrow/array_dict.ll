Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/array_dict?download=true
inline.NumInlined: 10069
inline.NumDeleted: 2207
loop-unroll.NumCompletelyUnrolled: 129
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_9Int32TypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE:bb.a

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.n = load ptr, ptr %7, align 8, !tbaa !196, !noalias !2857 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !144, !noalias !2857
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %7, align 8, !tbaa !196, !noalias !2857 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.u, align 8, !tbaa !144, !noalias !2857
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !2857
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !2857
  %i.y = load ptr, ptr %8, align 8, !tbaa !196    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !144
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ai

bb.g:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.ae = load ptr, ptr %8, align 8, !tbaa !196   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %.body
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !144
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.aj

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !191
  %.not54127 = icmp sgt i64 %i.al, 0
  br i1 %.not54127, label %.lr.ph129, label %.critedge70

.lr.ph129:                                        ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.ad

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !191
  %i.av = shl i64 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !291
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %9, i64 noundef %i.av, ptr noundef %i.ax)
  %i.ay = load ptr, ptr %9, align 8, !tbaa !176
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.l, label %bb.j, !prof !155

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !176
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.critedge66 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2858)
  call void @llvm.experimental.noalias.scope.decl(metadata !2859)
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !201, !noalias !2860 ; 3 uses
  store i64 %i.bc, ptr %10, align 8, !tbaa !201, !alias.scope !2860
  store ptr null, ptr %i.bb, align 8, !tbaa !201, !noalias !2860
  %.cast = inttoptr i64 %i.bc to ptr              ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !191
  %.not56.not125 = icmp sgt i64 %i.bh, 0
  br i1 %.not56.not125, label %.lr.ph, label %.critedge64

.lr.ph:                                           ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit82
  %.039126 = phi i64 [ 0, %.lr.ph ], [ %i.cv, %_ZN5arrow6StatusD2Ev.exit82 ] ; 3 uses
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !2862
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.039126
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !73 ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.039126
  %i.bs = sext i32 %i.bq to i64
  %i.bt = mul i64 %i.bs, -7046029288634856825
  %i.bu = call noundef i64 @llvm.bswap.i64(i64 %i.bt)
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !295, !noalias !2863
  %i.bw = load i64, ptr %i.bm, align 8, !tbaa !293, !noalias !2863
  %i.bx = icmp eq i32 %i.bq, 0
  %i.by = select i1 %i.bx, i64 42, i64 %i.bu      ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i, %bb.m
  %.pn.i.i.i.i = phi i64 [ %i.by, %bb.m ], [ %i.cg, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i ]
  %.0.in.in.i.i.i.i = phi i64 [ %i.by, %bb.m ], [ %.0.i.i.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i ]
  %storemerge.i.i.i.i = and i64 %.pn.i.i.i.i, %i.bw ; 2 uses
  %.0.in.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i, 5
  %.0.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %storemerge.i.i.i.i ; 5 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !545, !noalias !2863 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.by
  br i1 %i.cb, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i: ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !546, !noalias !2863
  %i.ce = icmp eq i32 %i.bq, %i.cd
  br i1 %i.ce, label %bb.o, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i, %bb.n
  %i.cf = icmp eq i64 %i.ca, 0
  %i.cg = add i64 %.0.i.i.i.i, %storemerge.i.i.i.i
  br i1 %i.cf, label %bb.p, label %bb.n, !llvm.loop !42

bb.o:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !547, !noalias !2863
  br label %_ZN5arrow6StatusD2Ev.exit82

bb.p:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i
  %i.cj = load ptr, ptr %i.bi, align 8, !tbaa !148, !noalias !2863
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !2863
  %i.cm = invoke noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(100) %i.bi)
          to label %.noexc77 unwind label %bb.q, !inline_history !43 ; 3 uses

.noexc77:                                         ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !2863
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !545, !noalias !2864
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.5.0.insert.ext.i.i = zext i32 %i.cm to i64
  %.sroa.5.0.insert.shift.i.i = shl nuw i64 %.sroa.5.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bq to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.cn, align 8, !noalias !2864
  %i.co = load i64, ptr %i.bn, align 8, !tbaa !294, !noalias !2864
  %i.cp = add i64 %i.co, 1                        ; 2 uses
  store i64 %i.cp, ptr %i.bn, align 8, !tbaa !294, !noalias !2864
  %i.cq = shl i64 %i.cp, 1
  %i.cr = load i64, ptr %i.bk, align 8, !tbaa !292, !noalias !2864 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.cq, %i.cr
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i, !prof !155

_ZN5arrow6StatusD2Ev.exit.thread.i.i:             ; preds = %.noexc77
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !2863
  br label %_ZN5arrow6StatusD2Ev.exit82

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %.noexc77
  %i.cs = shl i64 %i.cr, 2
  invoke void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %i.bk, i64 noundef %i.cs)
          to label %.noexc78 unwind label %bb.q

.noexc78:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !176, !noalias !2863 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !2863
  %i.ct = icmp eq ptr %.pr.i.i, null
  br i1 %i.ct, label %_ZN5arrow6StatusD2Ev.exit82, label %.critedge72

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.p
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN5arrow6StatusD2Ev.exit82:                      ; preds = %.noexc78, %_ZN5arrow6StatusD2Ev.exit.thread.i.i, %bb.o
  %.017.i.i = phi i32 [ %i.ci, %bb.o ], [ %i.cm, %.noexc78 ], [ %i.cm, %_ZN5arrow6StatusD2Ev.exit.thread.i.i ]
  store i32 %.017.i.i, ptr %i.br, align 4, !tbaa !73, !noalias !2863
  store ptr null, ptr %0, align 8, !tbaa !176
  %i.cv = add nuw nsw i64 %.039126, 1             ; 2 uses
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !191
  %.not56.not = icmp slt i64 %i.cv, %i.cy
  br i1 %.not56.not, label %bb.m, label %.critedge64, !llvm.loop !2847

.critedge64:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit82, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc83 unwind label %bb.aa

.noexc83:                                         ; preds = %.critedge64
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !160 ; 8 uses
  %i.db = load <2 x ptr>, ptr %3, align 8, !tbaa !162
  %i.dc = load <2 x ptr>, ptr %5, align 16, !tbaa !162
  store <2 x ptr> %i.dc, ptr %3, align 8, !tbaa !162
  store <2 x ptr> %i.db, ptr %5, align 16, !tbaa !162
  %.not.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %.noexc83
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.dd, align 8, !tbaa !158
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !159
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !148
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !27
  %i.dl = load ptr, ptr %i.da, align 8, !tbaa !148
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !27
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.u ], [ %i.dq, %bb.v ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.w, label %bb.x, !prof !156

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %.noexc83
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ds = load ptr, ptr %10, align 8, !tbaa !201  ; 3 uses
  %.not.i84 = icmp eq ptr %i.ds, null
  br i1 %.not.i84, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.x
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !148
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ds) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.x, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.dw = load ptr, ptr %9, align 8, !tbaa !176   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.y, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !155

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dy = load ptr, ptr %i.bb, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i85 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i85, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.y
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !148
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dy) #25, !inline_history !15
  %.pr.pre.i = load ptr, ptr %9, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !199

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.ec = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.dw, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !184, !range !172, !noundef !173
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.y, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.critedge70

bb.aa:                                            ; preds = %.critedge64
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %10, align 8, !tbaa !201
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.q
  %i.eh = phi ptr [ %.pre, %bb.aa ], [ %.cast, %bb.q ] ; 3 uses
  %.pn57 = phi { ptr, i32 } [ %i.eg, %bb.aa ], [ %i.cu, %bb.q ]
  %.not.i86 = icmp eq ptr %i.eh, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87: ; preds = %bb.ab
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !148
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.eh) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88, %bb.k
  %.pn60 = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %.pn57, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.aj

bb.ad:                                            ; preds = %.lr.ph129, %_ZN5arrow6StatusD2Ev.exit112
  %.037128 = phi i64 [ 0, %.lr.ph129 ], [ %i.fo, %_ZN5arrow6StatusD2Ev.exit112 ] ; 2 uses
  %i.el = load ptr, ptr %i.an, align 8, !tbaa !2862
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.037128
  %i.en = load i32, ptr %i.em, align 4, !tbaa !73 ; 4 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = mul i64 %i.eo, -7046029288634856825
  %i.eq = call noundef i64 @llvm.bswap.i64(i64 %i.ep)
  %i.er = load ptr, ptr %i.ap, align 8, !tbaa !295, !noalias !2865
  %i.es = load i64, ptr %i.aq, align 8, !tbaa !293, !noalias !2865
  %i.et = icmp eq i32 %i.en, 0
  %i.eu = select i1 %i.et, i64 42, i64 %i.eq      ; 4 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94, %bb.ad
  %.pn.i.i.i.i89 = phi i64 [ %i.eu, %bb.ad ], [ %i.fc, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94 ]
  %.0.in.in.i.i.i.i90 = phi i64 [ %i.eu, %bb.ad ], [ %.0.i.i.i.i93, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94 ]
  %storemerge.i.i.i.i91 = and i64 %.pn.i.i.i.i89, %i.es ; 2 uses
  %.0.in.i.i.i.i92 = lshr i64 %.0.in.in.i.i.i.i90, 5
  %.0.i.i.i.i93 = add nuw nsw i64 %.0.in.i.i.i.i92, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %storemerge.i.i.i.i91 ; 4 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !545, !noalias !2865 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, %i.eu
  br i1 %i.ex, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i105, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i105: ; preds = %bb.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !546, !noalias !2865
  %i.fa = icmp eq i32 %i.en, %i.ez
  br i1 %i.fa, label %_ZN5arrow6StatusD2Ev.exit112, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i105, %bb.ae
  %i.fb = icmp eq i64 %i.ew, 0
  %i.fc = add i64 %.0.i.i.i.i93, %storemerge.i.i.i.i91
  br i1 %i.fb, label %bb.af, label %bb.ae, !llvm.loop !42

bb.af:                                            ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94
  %i.fd = load ptr, ptr %i.am, align 8, !tbaa !148, !noalias !2865
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !2865
  %i.fg = call noundef i32 %i.ff(ptr noundef nonnull align 8 dereferenceable(100) %i.am), !noalias !2865, !inline_history !44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !2865
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !545, !noalias !2866
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.5.0.insert.ext.i.i95 = zext i32 %i.fg to i64
  %.sroa.5.0.insert.shift.i.i96 = shl nuw i64 %.sroa.5.0.insert.ext.i.i95, 32
  %.sroa.0.0.insert.ext.i.i97 = zext i32 %i.en to i64
  %.sroa.0.0.insert.insert.i.i98 = or disjoint i64 %.sroa.5.0.insert.shift.i.i96, %.sroa.0.0.insert.ext.i.i97
  store i64 %.sroa.0.0.insert.insert.i.i98, ptr %i.fh, align 8, !noalias !2866
  %i.fi = load i64, ptr %i.ar, align 8, !tbaa !294, !noalias !2866
  %i.fj = add i64 %i.fi, 1                        ; 2 uses
  store i64 %i.fj, ptr %i.ar, align 8, !tbaa !294, !noalias !2866
  %i.fk = shl i64 %i.fj, 1
  %i.fl = load i64, ptr %i.ao, align 8, !tbaa !292, !noalias !2866 ; 2 uses
  %.not.i.i.i99 = icmp ult i64 %i.fk, %i.fl
  br i1 %.not.i.i.i99, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i104, label %_ZN5arrow6StatusD2Ev.exit.i.i100, !prof !155

_ZN5arrow6StatusD2Ev.exit.thread.i.i104:          ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !2865
  br label %_ZN5arrow6StatusD2Ev.exit112

_ZN5arrow6StatusD2Ev.exit.i.i100:                 ; preds = %bb.af
  %i.fm = shl i64 %i.fl, 2
  call void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.ao, i64 noundef %i.fm), !noalias !2865
  %.pr.i.i101 = load ptr, ptr %4, align 8, !tbaa !176, !noalias !2865 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !2865
  %i.fn = icmp eq ptr %.pr.i.i101, null
  br i1 %i.fn, label %_ZN5arrow6StatusD2Ev.exit112, label %.critedge68

_ZN5arrow6StatusD2Ev.exit112:                     ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i105, %_ZN5arrow6StatusD2Ev.exit.i.i100, %_ZN5arrow6StatusD2Ev.exit.thread.i.i104
  store ptr null, ptr %0, align 8, !tbaa !176
  %i.fo = add nuw nsw i64 %.037128, 1             ; 2 uses
  %i.fp = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !191
  %.not54 = icmp slt i64 %i.fo, %i.fr
  br i1 %.not54, label %bb.ad, label %.critedge70, !llvm.loop !2854

.critedge68:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i100
  store ptr %.pr.i.i101, ptr %0, align 8, !tbaa !176
  br label %bb.ai

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit112, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !176, !alias.scope !2867
  br label %bb.ai

.critedge66:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

.critedge72:                                      ; preds = %.noexc78
  store ptr %.pr.i.i, ptr %0, align 8, !tbaa !176
  %.not.i113 = icmp eq i64 %i.bc, 0
  br i1 %.not.i113, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i114

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i114: ; preds = %.critedge72
  %i.fs = load ptr, ptr %.cast, align 8, !tbaa !148
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.cast) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115: ; preds = %.critedge72, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.fv = load ptr, ptr %9, align 8, !tbaa !176   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.ag, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116, !prof !155

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115
  %i.fx = load ptr, ptr %i.bb, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i117 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i117, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118: ; preds = %bb.ag
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !148
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fx) #25, !inline_history !15
  %.pr.pre.i119 = load ptr, ptr %9, align 8, !tbaa !176 ; 2 uses
  %.not.i.i120 = icmp eq ptr %.pr.pre.i119, null
  br i1 %.not.i.i120, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116, !prof !199

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115
  %i.gb = phi ptr [ %.pr.pre.i119, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118 ], [ %i.fv, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !184, !range !172, !noundef !173
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, label %bb.ah

bb.ah:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121: ; preds = %bb.ag, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge68, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, %.critedge70, %.critedge66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.aj:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn60.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn60, %bb.ac ]
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_9Int32TypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !294
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !296
  %i.g = icmp ne i32 %i.f, -1
  %i.h = zext i1 %i.g to i32
  %i.i = add nsw i32 %i.h, %i.d                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !110
  store ptr %i.k, ptr %4, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !73
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !73
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !160
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !158
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !159
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !0
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !0
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !156

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10UInt32TypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE:bb.a
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.n = load ptr, ptr %7, align 8, !tbaa !196, !noalias !2955 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !144, !noalias !2955
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %7, align 8, !tbaa !196, !noalias !2955 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.u, align 8, !tbaa !144, !noalias !2955
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !2955
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !2955
  %i.y = load ptr, ptr %8, align 8, !tbaa !196    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !144
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ai

bb.g:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.ae = load ptr, ptr %8, align 8, !tbaa !196   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %.body
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !144
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.aj

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !191
  %.not54126 = icmp sgt i64 %i.al, 0
  br i1 %.not54126, label %.lr.ph128, label %.critedge70

.lr.ph128:                                        ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.ad

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !191
  %i.av = shl i64 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !302
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %9, i64 noundef %i.av, ptr noundef %i.ax)
  %i.ay = load ptr, ptr %9, align 8, !tbaa !176
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.l, label %bb.j, !prof !155

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !176
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.critedge66 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2956)
  call void @llvm.experimental.noalias.scope.decl(metadata !2957)
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !201, !noalias !2958 ; 3 uses
  store i64 %i.bc, ptr %10, align 8, !tbaa !201, !alias.scope !2958
  store ptr null, ptr %i.bb, align 8, !tbaa !201, !noalias !2958
  %.cast = inttoptr i64 %i.bc to ptr              ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !191
  %.not56.not124 = icmp sgt i64 %i.bh, 0
  br i1 %.not56.not124, label %.lr.ph, label %.critedge64

.lr.ph:                                           ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit82
  %.039125 = phi i64 [ 0, %.lr.ph ], [ %i.cv, %_ZN5arrow6StatusD2Ev.exit82 ] ; 3 uses
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !2960
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.039125
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !73 ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.039125
  %i.bs = zext i32 %i.bq to i64                   ; 2 uses
  %i.bt = mul i64 %i.bs, -7046029288634856825
  %i.bu = call noundef i64 @llvm.bswap.i64(i64 %i.bt)
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !306, !noalias !2961
  %i.bw = load i64, ptr %i.bm, align 8, !tbaa !304, !noalias !2961
  %i.bx = icmp eq i32 %i.bq, 0
  %i.by = select i1 %i.bx, i64 42, i64 %i.bu      ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i, %bb.m
  %.pn.i.i.i.i = phi i64 [ %i.by, %bb.m ], [ %i.cg, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i ]
  %.0.in.in.i.i.i.i = phi i64 [ %i.by, %bb.m ], [ %.0.i.i.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i ]
  %storemerge.i.i.i.i = and i64 %.pn.i.i.i.i, %i.bw ; 2 uses
  %.0.in.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i, 5
  %.0.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %storemerge.i.i.i.i ; 5 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !553, !noalias !2961 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.by
  br i1 %i.cb, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i: ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !2962, !noalias !2961
  %i.ce = icmp eq i32 %i.bq, %i.cd
  br i1 %i.ce, label %bb.o, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i, %bb.n
  %i.cf = icmp eq i64 %i.ca, 0
  %i.cg = add i64 %.0.i.i.i.i, %storemerge.i.i.i.i
  br i1 %i.cf, label %bb.p, label %bb.n, !llvm.loop !2940

bb.o:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !554, !noalias !2961
  br label %_ZN5arrow6StatusD2Ev.exit82

bb.p:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i
  %i.cj = load ptr, ptr %i.bi, align 8, !tbaa !148, !noalias !2961
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !2961
  %i.cm = invoke noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(100) %i.bi)
          to label %.noexc77 unwind label %bb.q, !inline_history !2941 ; 3 uses

.noexc77:                                         ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !2961
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !553, !noalias !2963
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.5.0.insert.ext.i.i = zext i32 %i.cm to i64
  %.sroa.5.0.insert.shift.i.i = shl nuw i64 %.sroa.5.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i, %i.bs
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.cn, align 8, !noalias !2963
  %i.co = load i64, ptr %i.bn, align 8, !tbaa !305, !noalias !2963
  %i.cp = add i64 %i.co, 1                        ; 2 uses
  store i64 %i.cp, ptr %i.bn, align 8, !tbaa !305, !noalias !2963
  %i.cq = shl i64 %i.cp, 1
  %i.cr = load i64, ptr %i.bk, align 8, !tbaa !303, !noalias !2963 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.cq, %i.cr
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i, !prof !155

_ZN5arrow6StatusD2Ev.exit.thread.i.i:             ; preds = %.noexc77
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !2961
  br label %_ZN5arrow6StatusD2Ev.exit82

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %.noexc77
  %i.cs = shl i64 %i.cr, 2
  invoke void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %i.bk, i64 noundef %i.cs)
          to label %.noexc78 unwind label %bb.q

.noexc78:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !176, !noalias !2961 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !2961
  %i.ct = icmp eq ptr %.pr.i.i, null
  br i1 %i.ct, label %_ZN5arrow6StatusD2Ev.exit82, label %.critedge72

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.p
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN5arrow6StatusD2Ev.exit82:                      ; preds = %.noexc78, %_ZN5arrow6StatusD2Ev.exit.thread.i.i, %bb.o
  %.017.i.i = phi i32 [ %i.ci, %bb.o ], [ %i.cm, %.noexc78 ], [ %i.cm, %_ZN5arrow6StatusD2Ev.exit.thread.i.i ]
  store i32 %.017.i.i, ptr %i.br, align 4, !tbaa !73, !noalias !2961
  store ptr null, ptr %0, align 8, !tbaa !176
  %i.cv = add nuw nsw i64 %.039125, 1             ; 2 uses
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !191
  %.not56.not = icmp slt i64 %i.cv, %i.cy
  br i1 %.not56.not, label %bb.m, label %.critedge64, !llvm.loop !2944

.critedge64:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit82, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc83 unwind label %bb.aa

.noexc83:                                         ; preds = %.critedge64
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !160 ; 8 uses
  %i.db = load <2 x ptr>, ptr %3, align 8, !tbaa !162
  %i.dc = load <2 x ptr>, ptr %5, align 16, !tbaa !162
  store <2 x ptr> %i.dc, ptr %3, align 8, !tbaa !162
  store <2 x ptr> %i.db, ptr %5, align 16, !tbaa !162
  %.not.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %.noexc83
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.dd, align 8, !tbaa !158
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !159
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !148
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !27
  %i.dl = load ptr, ptr %i.da, align 8, !tbaa !148
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !27
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.u ], [ %i.dq, %bb.v ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.w, label %bb.x, !prof !156

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %.noexc83
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ds = load ptr, ptr %10, align 8, !tbaa !201  ; 3 uses
  %.not.i84 = icmp eq ptr %i.ds, null
  br i1 %.not.i84, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.x
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !148
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ds) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.x, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.dw = load ptr, ptr %9, align 8, !tbaa !176   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.y, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !155

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dy = load ptr, ptr %i.bb, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i85 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i85, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.y
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !148
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dy) #25, !inline_history !15
  %.pr.pre.i = load ptr, ptr %9, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !199

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.ec = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.dw, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !184, !range !172, !noundef !173
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.y, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.critedge70

bb.aa:                                            ; preds = %.critedge64
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %10, align 8, !tbaa !201
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.q
  %i.eh = phi ptr [ %.pre, %bb.aa ], [ %.cast, %bb.q ] ; 3 uses
  %.pn57 = phi { ptr, i32 } [ %i.eg, %bb.aa ], [ %i.cu, %bb.q ]
  %.not.i86 = icmp eq ptr %i.eh, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87: ; preds = %bb.ab
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !148
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.eh) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88, %bb.k
  %.pn60 = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %.pn57, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.aj

bb.ad:                                            ; preds = %.lr.ph128, %_ZN5arrow6StatusD2Ev.exit111
  %.037127 = phi i64 [ 0, %.lr.ph128 ], [ %i.fo, %_ZN5arrow6StatusD2Ev.exit111 ] ; 2 uses
  %i.el = load ptr, ptr %i.an, align 8, !tbaa !2960
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.037127
  %i.en = load i32, ptr %i.em, align 4, !tbaa !73 ; 3 uses
  %i.eo = zext i32 %i.en to i64                   ; 2 uses
  %i.ep = mul i64 %i.eo, -7046029288634856825
  %i.eq = call noundef i64 @llvm.bswap.i64(i64 %i.ep)
  %i.er = load ptr, ptr %i.ap, align 8, !tbaa !306, !noalias !2964
  %i.es = load i64, ptr %i.aq, align 8, !tbaa !304, !noalias !2964
  %i.et = icmp eq i32 %i.en, 0
  %i.eu = select i1 %i.et, i64 42, i64 %i.eq      ; 4 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94, %bb.ad
  %.pn.i.i.i.i89 = phi i64 [ %i.eu, %bb.ad ], [ %i.fc, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94 ]
  %.0.in.in.i.i.i.i90 = phi i64 [ %i.eu, %bb.ad ], [ %.0.i.i.i.i93, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94 ]
  %storemerge.i.i.i.i91 = and i64 %.pn.i.i.i.i89, %i.es ; 2 uses
  %.0.in.i.i.i.i92 = lshr i64 %.0.in.in.i.i.i.i90, 5
  %.0.i.i.i.i93 = add nuw nsw i64 %.0.in.i.i.i.i92, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %storemerge.i.i.i.i91 ; 4 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !553, !noalias !2964 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, %i.eu
  br i1 %i.ex, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i104, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i104: ; preds = %bb.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !2962, !noalias !2964
  %i.fa = icmp eq i32 %i.en, %i.ez
  br i1 %i.fa, label %_ZN5arrow6StatusD2Ev.exit111, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i104, %bb.ae
  %i.fb = icmp eq i64 %i.ew, 0
  %i.fc = add i64 %.0.i.i.i.i93, %storemerge.i.i.i.i91
  br i1 %i.fb, label %bb.af, label %bb.ae, !llvm.loop !2940

bb.af:                                            ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94
  %i.fd = load ptr, ptr %i.am, align 8, !tbaa !148, !noalias !2964
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !2964
  %i.fg = call noundef i32 %i.ff(ptr noundef nonnull align 8 dereferenceable(100) %i.am), !noalias !2964, !inline_history !2949
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !2964
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !553, !noalias !2965
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.5.0.insert.ext.i.i95 = zext i32 %i.fg to i64
  %.sroa.5.0.insert.shift.i.i96 = shl nuw i64 %.sroa.5.0.insert.ext.i.i95, 32
  %.sroa.0.0.insert.insert.i.i97 = or disjoint i64 %.sroa.5.0.insert.shift.i.i96, %i.eo
  store i64 %.sroa.0.0.insert.insert.i.i97, ptr %i.fh, align 8, !noalias !2965
  %i.fi = load i64, ptr %i.ar, align 8, !tbaa !305, !noalias !2965
  %i.fj = add i64 %i.fi, 1                        ; 2 uses
  store i64 %i.fj, ptr %i.ar, align 8, !tbaa !305, !noalias !2965
  %i.fk = shl i64 %i.fj, 1
  %i.fl = load i64, ptr %i.ao, align 8, !tbaa !303, !noalias !2965 ; 2 uses
  %.not.i.i.i98 = icmp ult i64 %i.fk, %i.fl
  br i1 %.not.i.i.i98, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i103, label %_ZN5arrow6StatusD2Ev.exit.i.i99, !prof !155

_ZN5arrow6StatusD2Ev.exit.thread.i.i103:          ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !2964
  br label %_ZN5arrow6StatusD2Ev.exit111

_ZN5arrow6StatusD2Ev.exit.i.i99:                  ; preds = %bb.af
  %i.fm = shl i64 %i.fl, 2
  call void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.ao, i64 noundef %i.fm), !noalias !2964
  %.pr.i.i100 = load ptr, ptr %4, align 8, !tbaa !176, !noalias !2964 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !2964
  %i.fn = icmp eq ptr %.pr.i.i100, null
  br i1 %i.fn, label %_ZN5arrow6StatusD2Ev.exit111, label %.critedge68

_ZN5arrow6StatusD2Ev.exit111:                     ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIjEENS_6StatusEOT_PiEUliE_ZNSA_IjEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i104, %_ZN5arrow6StatusD2Ev.exit.i.i99, %_ZN5arrow6StatusD2Ev.exit.thread.i.i103
  store ptr null, ptr %0, align 8, !tbaa !176
  %i.fo = add nuw nsw i64 %.037127, 1             ; 2 uses
  %i.fp = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !191
  %.not54 = icmp slt i64 %i.fo, %i.fr
  br i1 %.not54, label %bb.ad, label %.critedge70, !llvm.loop !2952

.critedge68:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i99
  store ptr %.pr.i.i100, ptr %0, align 8, !tbaa !176
  br label %bb.ai

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit111, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !176, !alias.scope !2966
  br label %bb.ai

.critedge66:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

.critedge72:                                      ; preds = %.noexc78
  store ptr %.pr.i.i, ptr %0, align 8, !tbaa !176
  %.not.i112 = icmp eq i64 %i.bc, 0
  br i1 %.not.i112, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit114, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i113

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i113: ; preds = %.critedge72
  %i.fs = load ptr, ptr %.cast, align 8, !tbaa !148
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.cast) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit114

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit114: ; preds = %.critedge72, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.fv = load ptr, ptr %9, align 8, !tbaa !176   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.ag, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i115, !prof !155

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit114
  %i.fx = load ptr, ptr %i.bb, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i116, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit120, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i117

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i117: ; preds = %bb.ag
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !148
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fx) #25, !inline_history !15
  %.pr.pre.i118 = load ptr, ptr %9, align 8, !tbaa !176 ; 2 uses
  %.not.i.i119 = icmp eq ptr %.pr.pre.i118, null
  br i1 %.not.i.i119, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit120, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i115, !prof !199

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i115: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i117, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit114
  %i.gb = phi ptr [ %.pr.pre.i118, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i117 ], [ %i.fv, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit114 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !184, !range !172, !noundef !173
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit120, label %bb.ah

bb.ah:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i115
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit120

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit120: ; preds = %bb.ag, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i117, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i115, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge68, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit120, %.critedge70, %.critedge66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.aj:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn60.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn60, %bb.ac ]
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10UInt32TypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !305
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !307
  %i.g = icmp ne i32 %i.f, -1
  %i.h = zext i1 %i.g to i32
  %i.i = add nsw i32 %i.h, %i.d                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !110
  store ptr %i.k, ptr %4, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !73
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !73
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !160
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !158
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !159
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !0
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !0
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !156

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10Date32TypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE:bb.a

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.n = load ptr, ptr %7, align 8, !tbaa !196, !noalias !4325 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !144, !noalias !4325
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %7, align 8, !tbaa !196, !noalias !4325 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.u, align 8, !tbaa !144, !noalias !4325
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !4325
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !4325
  %i.y = load ptr, ptr %8, align 8, !tbaa !196    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !144
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ai

bb.g:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.ae = load ptr, ptr %8, align 8, !tbaa !196   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %.body
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !144
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.aj

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !191
  %.not54127 = icmp sgt i64 %i.al, 0
  br i1 %.not54127, label %.lr.ph129, label %.critedge70

.lr.ph129:                                        ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.ad

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !191
  %i.av = shl i64 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !402
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %9, i64 noundef %i.av, ptr noundef %i.ax)
  %i.ay = load ptr, ptr %9, align 8, !tbaa !176
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.l, label %bb.j, !prof !155

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !176
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.critedge66 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !4326)
  call void @llvm.experimental.noalias.scope.decl(metadata !4327)
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !201, !noalias !4328 ; 3 uses
  store i64 %i.bc, ptr %10, align 8, !tbaa !201, !alias.scope !4328
  store ptr null, ptr %i.bb, align 8, !tbaa !201, !noalias !4328
  %.cast = inttoptr i64 %i.bc to ptr              ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !191
  %.not56.not125 = icmp sgt i64 %i.bh, 0
  br i1 %.not56.not125, label %.lr.ph, label %.critedge64

.lr.ph:                                           ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit82
  %.039126 = phi i64 [ 0, %.lr.ph ], [ %i.cv, %_ZN5arrow6StatusD2Ev.exit82 ] ; 3 uses
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !4330
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.039126
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !73 ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.039126
  %i.bs = sext i32 %i.bq to i64
  %i.bt = mul i64 %i.bs, -7046029288634856825
  %i.bu = call noundef i64 @llvm.bswap.i64(i64 %i.bt)
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !295, !noalias !4331
  %i.bw = load i64, ptr %i.bm, align 8, !tbaa !293, !noalias !4331
  %i.bx = icmp eq i32 %i.bq, 0
  %i.by = select i1 %i.bx, i64 42, i64 %i.bu      ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i, %bb.m
  %.pn.i.i.i.i = phi i64 [ %i.by, %bb.m ], [ %i.cg, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i ]
  %.0.in.in.i.i.i.i = phi i64 [ %i.by, %bb.m ], [ %.0.i.i.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i ]
  %storemerge.i.i.i.i = and i64 %.pn.i.i.i.i, %i.bw ; 2 uses
  %.0.in.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i, 5
  %.0.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %storemerge.i.i.i.i ; 5 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !545, !noalias !4331 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.by
  br i1 %i.cb, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i: ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !546, !noalias !4331
  %i.ce = icmp eq i32 %i.bq, %i.cd
  br i1 %i.ce, label %bb.o, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i, %bb.n
  %i.cf = icmp eq i64 %i.ca, 0
  %i.cg = add i64 %.0.i.i.i.i, %storemerge.i.i.i.i
  br i1 %i.cf, label %bb.p, label %bb.n, !llvm.loop !42

bb.o:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !547, !noalias !4331
  br label %_ZN5arrow6StatusD2Ev.exit82

bb.p:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i
  %i.cj = load ptr, ptr %i.bi, align 8, !tbaa !148, !noalias !4331
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !4331
  %i.cm = invoke noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(100) %i.bi)
          to label %.noexc77 unwind label %bb.q, !inline_history !43 ; 3 uses

.noexc77:                                         ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !4331
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !545, !noalias !4332
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.5.0.insert.ext.i.i = zext i32 %i.cm to i64
  %.sroa.5.0.insert.shift.i.i = shl nuw i64 %.sroa.5.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bq to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.cn, align 8, !noalias !4332
  %i.co = load i64, ptr %i.bn, align 8, !tbaa !294, !noalias !4332
  %i.cp = add i64 %i.co, 1                        ; 2 uses
  store i64 %i.cp, ptr %i.bn, align 8, !tbaa !294, !noalias !4332
  %i.cq = shl i64 %i.cp, 1
  %i.cr = load i64, ptr %i.bk, align 8, !tbaa !292, !noalias !4332 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.cq, %i.cr
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i, !prof !155

_ZN5arrow6StatusD2Ev.exit.thread.i.i:             ; preds = %.noexc77
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !4331
  br label %_ZN5arrow6StatusD2Ev.exit82

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %.noexc77
  %i.cs = shl i64 %i.cr, 2
  invoke void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %i.bk, i64 noundef %i.cs)
          to label %.noexc78 unwind label %bb.q

.noexc78:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !176, !noalias !4331 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !4331
  %i.ct = icmp eq ptr %.pr.i.i, null
  br i1 %i.ct, label %_ZN5arrow6StatusD2Ev.exit82, label %.critedge72

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.p
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN5arrow6StatusD2Ev.exit82:                      ; preds = %.noexc78, %_ZN5arrow6StatusD2Ev.exit.thread.i.i, %bb.o
  %.017.i.i = phi i32 [ %i.ci, %bb.o ], [ %i.cm, %.noexc78 ], [ %i.cm, %_ZN5arrow6StatusD2Ev.exit.thread.i.i ]
  store i32 %.017.i.i, ptr %i.br, align 4, !tbaa !73, !noalias !4331
  store ptr null, ptr %0, align 8, !tbaa !176
  %i.cv = add nuw nsw i64 %.039126, 1             ; 2 uses
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !191
  %.not56.not = icmp slt i64 %i.cv, %i.cy
  br i1 %.not56.not, label %bb.m, label %.critedge64, !llvm.loop !4315

.critedge64:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit82, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc83 unwind label %bb.aa

.noexc83:                                         ; preds = %.critedge64
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !160 ; 8 uses
  %i.db = load <2 x ptr>, ptr %3, align 8, !tbaa !162
  %i.dc = load <2 x ptr>, ptr %5, align 16, !tbaa !162
  store <2 x ptr> %i.dc, ptr %3, align 8, !tbaa !162
  store <2 x ptr> %i.db, ptr %5, align 16, !tbaa !162
  %.not.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %.noexc83
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.dd, align 8, !tbaa !158
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !159
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !148
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !27
  %i.dl = load ptr, ptr %i.da, align 8, !tbaa !148
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !27
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.u ], [ %i.dq, %bb.v ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.w, label %bb.x, !prof !156

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %.noexc83
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ds = load ptr, ptr %10, align 8, !tbaa !201  ; 3 uses
  %.not.i84 = icmp eq ptr %i.ds, null
  br i1 %.not.i84, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.x
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !148
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ds) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.x, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.dw = load ptr, ptr %9, align 8, !tbaa !176   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.y, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !155

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dy = load ptr, ptr %i.bb, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i85 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i85, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.y
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !148
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dy) #25, !inline_history !15
  %.pr.pre.i = load ptr, ptr %9, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !199

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.ec = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.dw, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !184, !range !172, !noundef !173
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.y, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.critedge70

bb.aa:                                            ; preds = %.critedge64
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %10, align 8, !tbaa !201
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.q
  %i.eh = phi ptr [ %.pre, %bb.aa ], [ %.cast, %bb.q ] ; 3 uses
  %.pn57 = phi { ptr, i32 } [ %i.eg, %bb.aa ], [ %i.cu, %bb.q ]
  %.not.i86 = icmp eq ptr %i.eh, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87: ; preds = %bb.ab
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !148
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.eh) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88, %bb.k
  %.pn60 = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %.pn57, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.aj

bb.ad:                                            ; preds = %.lr.ph129, %_ZN5arrow6StatusD2Ev.exit112
  %.037128 = phi i64 [ 0, %.lr.ph129 ], [ %i.fo, %_ZN5arrow6StatusD2Ev.exit112 ] ; 2 uses
  %i.el = load ptr, ptr %i.an, align 8, !tbaa !4330
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.037128
  %i.en = load i32, ptr %i.em, align 4, !tbaa !73 ; 4 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = mul i64 %i.eo, -7046029288634856825
  %i.eq = call noundef i64 @llvm.bswap.i64(i64 %i.ep)
  %i.er = load ptr, ptr %i.ap, align 8, !tbaa !295, !noalias !4333
  %i.es = load i64, ptr %i.aq, align 8, !tbaa !293, !noalias !4333
  %i.et = icmp eq i32 %i.en, 0
  %i.eu = select i1 %i.et, i64 42, i64 %i.eq      ; 4 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94, %bb.ad
  %.pn.i.i.i.i89 = phi i64 [ %i.eu, %bb.ad ], [ %i.fc, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94 ]
  %.0.in.in.i.i.i.i90 = phi i64 [ %i.eu, %bb.ad ], [ %.0.i.i.i.i93, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94 ]
  %storemerge.i.i.i.i91 = and i64 %.pn.i.i.i.i89, %i.es ; 2 uses
  %.0.in.i.i.i.i92 = lshr i64 %.0.in.in.i.i.i.i90, 5
  %.0.i.i.i.i93 = add nuw nsw i64 %.0.in.i.i.i.i92, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %storemerge.i.i.i.i91 ; 4 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !545, !noalias !4333 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, %i.eu
  br i1 %i.ex, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i105, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i105: ; preds = %bb.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !546, !noalias !4333
  %i.fa = icmp eq i32 %i.en, %i.ez
  br i1 %i.fa, label %_ZN5arrow6StatusD2Ev.exit112, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i105, %bb.ae
  %i.fb = icmp eq i64 %i.ew, 0
  %i.fc = add i64 %.0.i.i.i.i93, %storemerge.i.i.i.i91
  br i1 %i.fb, label %bb.af, label %bb.ae, !llvm.loop !42

bb.af:                                            ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94
  %i.fd = load ptr, ptr %i.am, align 8, !tbaa !148, !noalias !4333
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !4333
  %i.fg = call noundef i32 %i.ff(ptr noundef nonnull align 8 dereferenceable(100) %i.am), !noalias !4333, !inline_history !44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !4333
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !545, !noalias !4334
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.5.0.insert.ext.i.i95 = zext i32 %i.fg to i64
  %.sroa.5.0.insert.shift.i.i96 = shl nuw i64 %.sroa.5.0.insert.ext.i.i95, 32
  %.sroa.0.0.insert.ext.i.i97 = zext i32 %i.en to i64
  %.sroa.0.0.insert.insert.i.i98 = or disjoint i64 %.sroa.5.0.insert.shift.i.i96, %.sroa.0.0.insert.ext.i.i97
  store i64 %.sroa.0.0.insert.insert.i.i98, ptr %i.fh, align 8, !noalias !4334
  %i.fi = load i64, ptr %i.ar, align 8, !tbaa !294, !noalias !4334
  %i.fj = add i64 %i.fi, 1                        ; 2 uses
  store i64 %i.fj, ptr %i.ar, align 8, !tbaa !294, !noalias !4334
  %i.fk = shl i64 %i.fj, 1
  %i.fl = load i64, ptr %i.ao, align 8, !tbaa !292, !noalias !4334 ; 2 uses
  %.not.i.i.i99 = icmp ult i64 %i.fk, %i.fl
  br i1 %.not.i.i.i99, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i104, label %_ZN5arrow6StatusD2Ev.exit.i.i100, !prof !155

_ZN5arrow6StatusD2Ev.exit.thread.i.i104:          ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !4333
  br label %_ZN5arrow6StatusD2Ev.exit112

_ZN5arrow6StatusD2Ev.exit.i.i100:                 ; preds = %bb.af
  %i.fm = shl i64 %i.fl, 2
  call void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.ao, i64 noundef %i.fm), !noalias !4333
  %.pr.i.i101 = load ptr, ptr %4, align 8, !tbaa !176, !noalias !4333 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !4333
  %i.fn = icmp eq ptr %.pr.i.i101, null
  br i1 %i.fn, label %_ZN5arrow6StatusD2Ev.exit112, label %.critedge68

_ZN5arrow6StatusD2Ev.exit112:                     ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i105, %_ZN5arrow6StatusD2Ev.exit.i.i100, %_ZN5arrow6StatusD2Ev.exit.thread.i.i104
  store ptr null, ptr %0, align 8, !tbaa !176
  %i.fo = add nuw nsw i64 %.037128, 1             ; 2 uses
  %i.fp = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !191
  %.not54 = icmp slt i64 %i.fo, %i.fr
  br i1 %.not54, label %bb.ad, label %.critedge70, !llvm.loop !4322

.critedge68:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i100
  store ptr %.pr.i.i101, ptr %0, align 8, !tbaa !176
  br label %bb.ai

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit112, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !176, !alias.scope !4335
  br label %bb.ai

.critedge66:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

.critedge72:                                      ; preds = %.noexc78
  store ptr %.pr.i.i, ptr %0, align 8, !tbaa !176
  %.not.i113 = icmp eq i64 %i.bc, 0
  br i1 %.not.i113, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i114

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i114: ; preds = %.critedge72
  %i.fs = load ptr, ptr %.cast, align 8, !tbaa !148
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.cast) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115: ; preds = %.critedge72, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.fv = load ptr, ptr %9, align 8, !tbaa !176   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.ag, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116, !prof !155

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115
  %i.fx = load ptr, ptr %i.bb, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i117 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i117, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118: ; preds = %bb.ag
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !148
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fx) #25, !inline_history !15
  %.pr.pre.i119 = load ptr, ptr %9, align 8, !tbaa !176 ; 2 uses
  %.not.i.i120 = icmp eq ptr %.pr.pre.i119, null
  br i1 %.not.i.i120, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116, !prof !199

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115
  %i.gb = phi ptr [ %.pr.pre.i119, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118 ], [ %i.fv, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !184, !range !172, !noundef !173
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, label %bb.ah

bb.ah:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121: ; preds = %bb.ag, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge68, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, %.critedge70, %.critedge66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.aj:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn60.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn60, %bb.ac ]
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10Date32TypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !294
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !296
  %i.g = icmp ne i32 %i.f, -1
  %i.h = zext i1 %i.g to i32
  %i.i = add nsw i32 %i.h, %i.d                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !110
  store ptr %i.k, ptr %4, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !73
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !73
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !160
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !158
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !159
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !0
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !0
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !156

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10Time32TypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE:bb.a

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.n = load ptr, ptr %7, align 8, !tbaa !196, !noalias !4532 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !144, !noalias !4532
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %7, align 8, !tbaa !196, !noalias !4532 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.u, align 8, !tbaa !144, !noalias !4532
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !4532
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !4532
  %i.y = load ptr, ptr %8, align 8, !tbaa !196    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !144
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ai

bb.g:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.ae = load ptr, ptr %8, align 8, !tbaa !196   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %.body
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !144
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.aj

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !191
  %.not54127 = icmp sgt i64 %i.al, 0
  br i1 %.not54127, label %.lr.ph129, label %.critedge70

.lr.ph129:                                        ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.ad

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !191
  %i.av = shl i64 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !408
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %9, i64 noundef %i.av, ptr noundef %i.ax)
  %i.ay = load ptr, ptr %9, align 8, !tbaa !176
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.l, label %bb.j, !prof !155

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !176
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.critedge66 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !4533)
  call void @llvm.experimental.noalias.scope.decl(metadata !4534)
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !201, !noalias !4535 ; 3 uses
  store i64 %i.bc, ptr %10, align 8, !tbaa !201, !alias.scope !4535
  store ptr null, ptr %i.bb, align 8, !tbaa !201, !noalias !4535
  %.cast = inttoptr i64 %i.bc to ptr              ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !191
  %.not56.not125 = icmp sgt i64 %i.bh, 0
  br i1 %.not56.not125, label %.lr.ph, label %.critedge64

.lr.ph:                                           ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit82
  %.039126 = phi i64 [ 0, %.lr.ph ], [ %i.cv, %_ZN5arrow6StatusD2Ev.exit82 ] ; 3 uses
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !4537
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.039126
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !73 ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.039126
  %i.bs = sext i32 %i.bq to i64
  %i.bt = mul i64 %i.bs, -7046029288634856825
  %i.bu = call noundef i64 @llvm.bswap.i64(i64 %i.bt)
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !295, !noalias !4538
  %i.bw = load i64, ptr %i.bm, align 8, !tbaa !293, !noalias !4538
  %i.bx = icmp eq i32 %i.bq, 0
  %i.by = select i1 %i.bx, i64 42, i64 %i.bu      ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i, %bb.m
  %.pn.i.i.i.i = phi i64 [ %i.by, %bb.m ], [ %i.cg, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i ]
  %.0.in.in.i.i.i.i = phi i64 [ %i.by, %bb.m ], [ %.0.i.i.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i ]
  %storemerge.i.i.i.i = and i64 %.pn.i.i.i.i, %i.bw ; 2 uses
  %.0.in.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i, 5
  %.0.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %storemerge.i.i.i.i ; 5 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !545, !noalias !4538 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.by
  br i1 %i.cb, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i: ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !546, !noalias !4538
  %i.ce = icmp eq i32 %i.bq, %i.cd
  br i1 %i.ce, label %bb.o, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i, %bb.n
  %i.cf = icmp eq i64 %i.ca, 0
  %i.cg = add i64 %.0.i.i.i.i, %storemerge.i.i.i.i
  br i1 %i.cf, label %bb.p, label %bb.n, !llvm.loop !42

bb.o:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !547, !noalias !4538
  br label %_ZN5arrow6StatusD2Ev.exit82

bb.p:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i
  %i.cj = load ptr, ptr %i.bi, align 8, !tbaa !148, !noalias !4538
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !4538
  %i.cm = invoke noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(100) %i.bi)
          to label %.noexc77 unwind label %bb.q, !inline_history !43 ; 3 uses

.noexc77:                                         ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !4538
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !545, !noalias !4539
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.5.0.insert.ext.i.i = zext i32 %i.cm to i64
  %.sroa.5.0.insert.shift.i.i = shl nuw i64 %.sroa.5.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bq to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.cn, align 8, !noalias !4539
  %i.co = load i64, ptr %i.bn, align 8, !tbaa !294, !noalias !4539
  %i.cp = add i64 %i.co, 1                        ; 2 uses
  store i64 %i.cp, ptr %i.bn, align 8, !tbaa !294, !noalias !4539
  %i.cq = shl i64 %i.cp, 1
  %i.cr = load i64, ptr %i.bk, align 8, !tbaa !292, !noalias !4539 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.cq, %i.cr
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i, !prof !155

_ZN5arrow6StatusD2Ev.exit.thread.i.i:             ; preds = %.noexc77
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !4538
  br label %_ZN5arrow6StatusD2Ev.exit82

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %.noexc77
  %i.cs = shl i64 %i.cr, 2
  invoke void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %i.bk, i64 noundef %i.cs)
          to label %.noexc78 unwind label %bb.q

.noexc78:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !176, !noalias !4538 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !4538
  %i.ct = icmp eq ptr %.pr.i.i, null
  br i1 %i.ct, label %_ZN5arrow6StatusD2Ev.exit82, label %.critedge72

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.p
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN5arrow6StatusD2Ev.exit82:                      ; preds = %.noexc78, %_ZN5arrow6StatusD2Ev.exit.thread.i.i, %bb.o
  %.017.i.i = phi i32 [ %i.ci, %bb.o ], [ %i.cm, %.noexc78 ], [ %i.cm, %_ZN5arrow6StatusD2Ev.exit.thread.i.i ]
  store i32 %.017.i.i, ptr %i.br, align 4, !tbaa !73, !noalias !4538
  store ptr null, ptr %0, align 8, !tbaa !176
  %i.cv = add nuw nsw i64 %.039126, 1             ; 2 uses
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !191
  %.not56.not = icmp slt i64 %i.cv, %i.cy
  br i1 %.not56.not, label %bb.m, label %.critedge64, !llvm.loop !4522

.critedge64:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit82, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc83 unwind label %bb.aa

.noexc83:                                         ; preds = %.critedge64
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !160 ; 8 uses
  %i.db = load <2 x ptr>, ptr %3, align 8, !tbaa !162
  %i.dc = load <2 x ptr>, ptr %5, align 16, !tbaa !162
  store <2 x ptr> %i.dc, ptr %3, align 8, !tbaa !162
  store <2 x ptr> %i.db, ptr %5, align 16, !tbaa !162
  %.not.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %.noexc83
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.dd, align 8, !tbaa !158
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !159
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !148
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !27
  %i.dl = load ptr, ptr %i.da, align 8, !tbaa !148
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !27
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.u ], [ %i.dq, %bb.v ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.w, label %bb.x, !prof !156

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %.noexc83
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ds = load ptr, ptr %10, align 8, !tbaa !201  ; 3 uses
  %.not.i84 = icmp eq ptr %i.ds, null
  br i1 %.not.i84, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.x
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !148
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ds) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.x, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.dw = load ptr, ptr %9, align 8, !tbaa !176   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.y, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !155

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dy = load ptr, ptr %i.bb, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i85 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i85, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.y
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !148
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dy) #25, !inline_history !15
  %.pr.pre.i = load ptr, ptr %9, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !199

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.ec = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.dw, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !184, !range !172, !noundef !173
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.y, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.critedge70

bb.aa:                                            ; preds = %.critedge64
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %10, align 8, !tbaa !201
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.q
  %i.eh = phi ptr [ %.pre, %bb.aa ], [ %.cast, %bb.q ] ; 3 uses
  %.pn57 = phi { ptr, i32 } [ %i.eg, %bb.aa ], [ %i.cu, %bb.q ]
  %.not.i86 = icmp eq ptr %i.eh, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87: ; preds = %bb.ab
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !148
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.eh) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88, %bb.k
  %.pn60 = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %.pn57, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.aj

bb.ad:                                            ; preds = %.lr.ph129, %_ZN5arrow6StatusD2Ev.exit112
  %.037128 = phi i64 [ 0, %.lr.ph129 ], [ %i.fo, %_ZN5arrow6StatusD2Ev.exit112 ] ; 2 uses
  %i.el = load ptr, ptr %i.an, align 8, !tbaa !4537
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.037128
  %i.en = load i32, ptr %i.em, align 4, !tbaa !73 ; 4 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = mul i64 %i.eo, -7046029288634856825
  %i.eq = call noundef i64 @llvm.bswap.i64(i64 %i.ep)
  %i.er = load ptr, ptr %i.ap, align 8, !tbaa !295, !noalias !4540
  %i.es = load i64, ptr %i.aq, align 8, !tbaa !293, !noalias !4540
  %i.et = icmp eq i32 %i.en, 0
  %i.eu = select i1 %i.et, i64 42, i64 %i.eq      ; 4 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94, %bb.ad
  %.pn.i.i.i.i89 = phi i64 [ %i.eu, %bb.ad ], [ %i.fc, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94 ]
  %.0.in.in.i.i.i.i90 = phi i64 [ %i.eu, %bb.ad ], [ %.0.i.i.i.i93, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94 ]
  %storemerge.i.i.i.i91 = and i64 %.pn.i.i.i.i89, %i.es ; 2 uses
  %.0.in.i.i.i.i92 = lshr i64 %.0.in.in.i.i.i.i90, 5
  %.0.i.i.i.i93 = add nuw nsw i64 %.0.in.i.i.i.i92, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %storemerge.i.i.i.i91 ; 4 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !545, !noalias !4540 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, %i.eu
  br i1 %i.ex, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i105, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i105: ; preds = %bb.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !546, !noalias !4540
  %i.fa = icmp eq i32 %i.en, %i.ez
  br i1 %i.fa, label %_ZN5arrow6StatusD2Ev.exit112, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i105, %bb.ae
  %i.fb = icmp eq i64 %i.ew, 0
  %i.fc = add i64 %.0.i.i.i.i93, %storemerge.i.i.i.i91
  br i1 %i.fb, label %bb.af, label %bb.ae, !llvm.loop !42

bb.af:                                            ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94
  %i.fd = load ptr, ptr %i.am, align 8, !tbaa !148, !noalias !4540
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !4540
  %i.fg = call noundef i32 %i.ff(ptr noundef nonnull align 8 dereferenceable(100) %i.am), !noalias !4540, !inline_history !44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !4540
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !545, !noalias !4541
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.5.0.insert.ext.i.i95 = zext i32 %i.fg to i64
  %.sroa.5.0.insert.shift.i.i96 = shl nuw i64 %.sroa.5.0.insert.ext.i.i95, 32
  %.sroa.0.0.insert.ext.i.i97 = zext i32 %i.en to i64
  %.sroa.0.0.insert.insert.i.i98 = or disjoint i64 %.sroa.5.0.insert.shift.i.i96, %.sroa.0.0.insert.ext.i.i97
  store i64 %.sroa.0.0.insert.insert.i.i98, ptr %i.fh, align 8, !noalias !4541
  %i.fi = load i64, ptr %i.ar, align 8, !tbaa !294, !noalias !4541
  %i.fj = add i64 %i.fi, 1                        ; 2 uses
  store i64 %i.fj, ptr %i.ar, align 8, !tbaa !294, !noalias !4541
  %i.fk = shl i64 %i.fj, 1
  %i.fl = load i64, ptr %i.ao, align 8, !tbaa !292, !noalias !4541 ; 2 uses
  %.not.i.i.i99 = icmp ult i64 %i.fk, %i.fl
  br i1 %.not.i.i.i99, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i104, label %_ZN5arrow6StatusD2Ev.exit.i.i100, !prof !155

_ZN5arrow6StatusD2Ev.exit.thread.i.i104:          ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !4540
  br label %_ZN5arrow6StatusD2Ev.exit112

_ZN5arrow6StatusD2Ev.exit.i.i100:                 ; preds = %bb.af
  %i.fm = shl i64 %i.fl, 2
  call void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.ao, i64 noundef %i.fm), !noalias !4540
  %.pr.i.i101 = load ptr, ptr %4, align 8, !tbaa !176, !noalias !4540 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !4540
  %i.fn = icmp eq ptr %.pr.i.i101, null
  br i1 %i.fn, label %_ZN5arrow6StatusD2Ev.exit112, label %.critedge68

_ZN5arrow6StatusD2Ev.exit112:                     ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i105, %_ZN5arrow6StatusD2Ev.exit.i.i100, %_ZN5arrow6StatusD2Ev.exit.thread.i.i104
  store ptr null, ptr %0, align 8, !tbaa !176
  %i.fo = add nuw nsw i64 %.037128, 1             ; 2 uses
  %i.fp = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !191
  %.not54 = icmp slt i64 %i.fo, %i.fr
  br i1 %.not54, label %bb.ad, label %.critedge70, !llvm.loop !4529

.critedge68:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i100
  store ptr %.pr.i.i101, ptr %0, align 8, !tbaa !176
  br label %bb.ai

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit112, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !176, !alias.scope !4542
  br label %bb.ai

.critedge66:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

.critedge72:                                      ; preds = %.noexc78
  store ptr %.pr.i.i, ptr %0, align 8, !tbaa !176
  %.not.i113 = icmp eq i64 %i.bc, 0
  br i1 %.not.i113, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i114

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i114: ; preds = %.critedge72
  %i.fs = load ptr, ptr %.cast, align 8, !tbaa !148
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.cast) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115: ; preds = %.critedge72, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.fv = load ptr, ptr %9, align 8, !tbaa !176   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.ag, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116, !prof !155

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115
  %i.fx = load ptr, ptr %i.bb, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i117 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i117, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118: ; preds = %bb.ag
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !148
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fx) #25, !inline_history !15
  %.pr.pre.i119 = load ptr, ptr %9, align 8, !tbaa !176 ; 2 uses
  %.not.i.i120 = icmp eq ptr %.pr.pre.i119, null
  br i1 %.not.i.i120, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116, !prof !199

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115
  %i.gb = phi ptr [ %.pr.pre.i119, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118 ], [ %i.fv, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !184, !range !172, !noundef !173
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, label %bb.ah

bb.ah:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121: ; preds = %bb.ag, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge68, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, %.critedge70, %.critedge66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.aj:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn60.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn60, %bb.ac ]
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_10Time32TypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !294
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !296
  %i.g = icmp ne i32 %i.f, -1
  %i.h = zext i1 %i.g to i32
  %i.i = add nsw i32 %i.h, %i.d                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !110
  store ptr %i.k, ptr %4, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !73
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !73
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !160
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !158
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !159
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !0
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !0
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !156

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_24MonthDayNanoIntervalTypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE:bb.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.33)
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !110
  %i.h = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i1 noundef zeroext false)
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !4673
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(41) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.n = load ptr, ptr %7, align 8, !tbaa !196, !noalias !4673 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !144, !noalias !4673
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %7, align 8, !tbaa !196, !noalias !4673 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.u, align 8, !tbaa !144, !noalias !4673
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !4673
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !4673
  %i.y = load ptr, ptr %8, align 8, !tbaa !196    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !144
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ai

bb.g:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.ae = load ptr, ptr %8, align 8, !tbaa !196   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %.body
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !144
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.aj

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !191
  %.not54135 = icmp sgt i64 %i.al, 0
  br i1 %.not54135, label %.lr.ph137, label %.critedge70

.lr.ph137:                                        ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.ad

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !191
  %i.au = shl i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !416
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %9, i64 noundef %i.au, ptr noundef %i.aw)
  %i.ax = load ptr, ptr %9, align 8, !tbaa !176
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %bb.j, !prof !155

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !176
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.critedge66 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !4674)
  call void @llvm.experimental.noalias.scope.decl(metadata !4675)
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !201, !noalias !4676 ; 3 uses
  store i64 %i.bb, ptr %10, align 8, !tbaa !201, !alias.scope !4676
  store ptr null, ptr %i.ba, align 8, !tbaa !201, !noalias !4676
  %.cast = inttoptr i64 %i.bb to ptr              ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !191
  %.not56.not133 = icmp sgt i64 %i.bg, 0
  br i1 %.not56.not133, label %.lr.ph, label %.critedge64

.lr.ph:                                           ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit83
  %.039134 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %_ZN5arrow6StatusD2Ev.exit83 ] ; 3 uses
  %i.bm = invoke { i64, i64 } @_ZNK5arrow25MonthDayNanoIntervalArray8GetValueEl(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef %.039134)
          to label %_ZNK5arrow25MonthDayNanoIntervalArray7GetViewEl.exit unwind label %bb.q ; 2 uses

_ZNK5arrow25MonthDayNanoIntervalArray7GetViewEl.exit: ; preds = %bb.m
  %i.bn = extractvalue { i64, i64 } %i.bm, 0      ; 3 uses
  %i.bo = extractvalue { i64, i64 } %i.bm, 1      ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.039134
  %i.bq = mul i64 %i.bo, -7046029288634856825
  %i.br = mul i64 %i.bn, -4417276706812531889
  %i.bs = xor i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = xor i64 %i.bs, 1152921504606846976
  %i.bu = call noundef i64 @llvm.bswap.i64(i64 %i.bt)
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !420, !noalias !4677
  %i.bw = load i64, ptr %i.bk, align 8, !tbaa !418, !noalias !4677
  %i.bx = icmp eq i64 %i.bs, 1152921504606846976
  %i.by = select i1 %i.bx, i64 42, i64 %i.bu      ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i, %_ZNK5arrow25MonthDayNanoIntervalArray7GetViewEl.exit
  %.pn.i.i.i.i = phi i64 [ %i.by, %_ZNK5arrow25MonthDayNanoIntervalArray7GetViewEl.exit ], [ %i.cf, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i ]
  %.0.in.in.i.i.i.i = phi i64 [ %i.by, %_ZNK5arrow25MonthDayNanoIntervalArray7GetViewEl.exit ], [ %.0.i.i.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i ]
  %storemerge.i.i.i.i = and i64 %.pn.i.i.i.i, %i.bw ; 2 uses
  %.0.in.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i, 5
  %.0.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %storemerge.i.i.i.i ; 8 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !636, !noalias !4677 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.by
  br i1 %i.cb, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.i.i.i.i, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.i.i.i.i: ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cc, align 8, !noalias !4677
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !146, !noalias !4677
  %or.cond.i.i.i.i.i.i.i = icmp eq i64 %i.bn, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.cd = icmp eq i64 %i.bo, %.sroa.2.0.copyload.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i, i1 %i.cd, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.o, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.i.i.i.i, %bb.n
  %i.ce = icmp eq i64 %i.ca, 0
  %i.cf = add i64 %.0.i.i.i.i, %storemerge.i.i.i.i
  br i1 %i.ce, label %bb.p, label %bb.n, !llvm.loop !4658

bb.o:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !637, !noalias !4677
  br label %_ZN5arrow6StatusD2Ev.exit83

bb.p:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i
  %i.ci = load ptr, ptr %i.bh, align 8, !tbaa !148, !noalias !4677
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !4677
  %i.cl = invoke noundef i32 %i.ck(ptr noundef nonnull align 8 dereferenceable(100) %i.bh)
          to label %.noexc78 unwind label %bb.q, !inline_history !4659 ; 3 uses

.noexc78:                                         ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !4677
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !636, !noalias !4678
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.bn, ptr %i.cm, align 8, !noalias !4678
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 %i.bo, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !146, !noalias !4678
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i32 %i.cl, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !73, !noalias !4678
  %i.cn = load i64, ptr %i.bl, align 8, !tbaa !419, !noalias !4678
  %i.co = add i64 %i.cn, 1                        ; 2 uses
  store i64 %i.co, ptr %i.bl, align 8, !tbaa !419, !noalias !4678
  %i.cp = shl i64 %i.co, 1
  %i.cq = load i64, ptr %i.bi, align 8, !tbaa !417, !noalias !4678 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.cp, %i.cq
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i, !prof !155

_ZN5arrow6StatusD2Ev.exit.thread.i.i:             ; preds = %.noexc78
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !4677
  br label %_ZN5arrow6StatusD2Ev.exit83

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %.noexc78
  %i.cr = shl i64 %i.cq, 2
  invoke void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %i.bi, i64 noundef %i.cr)
          to label %.noexc79 unwind label %bb.q

.noexc79:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !176, !noalias !4677 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !4677
  %i.cs = icmp eq ptr %.pr.i.i, null
  br i1 %i.cs, label %_ZN5arrow6StatusD2Ev.exit83, label %.critedge72

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.p, %bb.m
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN5arrow6StatusD2Ev.exit83:                      ; preds = %.noexc79, %_ZN5arrow6StatusD2Ev.exit.thread.i.i, %bb.o
  %.017.i.i = phi i32 [ %i.ch, %bb.o ], [ %i.cl, %.noexc79 ], [ %i.cl, %_ZN5arrow6StatusD2Ev.exit.thread.i.i ]
  store i32 %.017.i.i, ptr %i.bp, align 4, !tbaa !73, !noalias !4677
  store ptr null, ptr %0, align 8, !tbaa !176
  %i.cu = add nuw nsw i64 %.039134, 1             ; 2 uses
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !191
  %.not56.not = icmp slt i64 %i.cu, %i.cx
  br i1 %.not56.not, label %bb.m, label %.critedge64, !llvm.loop !4662

.critedge64:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit83, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc84 unwind label %bb.aa

.noexc84:                                         ; preds = %.critedge64
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !160 ; 8 uses
  %i.da = load <2 x ptr>, ptr %3, align 8, !tbaa !162
  %i.db = load <2 x ptr>, ptr %5, align 16, !tbaa !162
  store <2 x ptr> %i.db, ptr %3, align 8, !tbaa !162
  store <2 x ptr> %i.da, ptr %5, align 16, !tbaa !162
  %.not.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %.noexc84
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.dc, align 8, !tbaa !158
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !159
  %i.dh = load ptr, ptr %i.cz, align 8, !tbaa !148
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #25, !inline_history !27
  %i.dk = load ptr, ptr %i.cz, align 8, !tbaa !148
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #25, !inline_history !27
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.df, %bb.u ], [ %i.dp, %bb.v ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dq, label %bb.w, label %bb.x, !prof !156

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.dr = load ptr, ptr %10, align 8, !tbaa !201  ; 3 uses
  %.not.i85 = icmp eq ptr %i.dr, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.x
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !148
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dr) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.x, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.dv = load ptr, ptr %9, align 8, !tbaa !176   ; 2 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.y, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !155

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dx = load ptr, ptr %i.ba, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i86, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.y
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !148
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dx) #25, !inline_history !15
  %.pr.pre.i = load ptr, ptr %9, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !199

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.eb = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.dv, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !184, !range !172, !noundef !173
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.y, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.critedge70

bb.aa:                                            ; preds = %.critedge64
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %10, align 8, !tbaa !201
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.q
  %i.eg = phi ptr [ %.pre, %bb.aa ], [ %.cast, %bb.q ] ; 3 uses
  %.pn57 = phi { ptr, i32 } [ %i.ef, %bb.aa ], [ %i.ct, %bb.q ]
  %.not.i87 = icmp eq ptr %i.eg, null
  br i1 %.not.i87, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88: ; preds = %bb.ab
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !148
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.eg) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, %bb.k
  %.pn60 = phi { ptr, i32 } [ %i.az, %bb.k ], [ %.pn57, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.aj

bb.ad:                                            ; preds = %.lr.ph137, %_ZN5arrow6StatusD2Ev.exit119
  %.037136 = phi i64 [ 0, %.lr.ph137 ], [ %i.fo, %_ZN5arrow6StatusD2Ev.exit119 ] ; 2 uses
  %i.ek = call { i64, i64 } @_ZNK5arrow25MonthDayNanoIntervalArray8GetValueEl(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef %.037136) ; 2 uses
  %i.el = extractvalue { i64, i64 } %i.ek, 0      ; 3 uses
  %i.em = extractvalue { i64, i64 } %i.ek, 1      ; 3 uses
  %i.en = mul i64 %i.em, -7046029288634856825
  %i.eo = mul i64 %i.el, -4417276706812531889
  %i.ep = xor i64 %i.en, %i.eo                    ; 2 uses
  %i.eq = xor i64 %i.ep, 1152921504606846976
  %i.er = call noundef i64 @llvm.bswap.i64(i64 %i.eq)
  %i.es = load ptr, ptr %i.ao, align 8, !tbaa !420, !noalias !4679
  %i.et = load i64, ptr %i.ap, align 8, !tbaa !418, !noalias !4679
  %i.eu = icmp eq i64 %i.ep, 1152921504606846976
  %i.ev = select i1 %i.eu, i64 42, i64 %i.er      ; 4 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i98, %bb.ad
  %.pn.i.i.i.i93 = phi i64 [ %i.ev, %bb.ad ], [ %i.fc, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i98 ]
  %.0.in.in.i.i.i.i94 = phi i64 [ %i.ev, %bb.ad ], [ %.0.i.i.i.i97, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i98 ]
  %storemerge.i.i.i.i95 = and i64 %.pn.i.i.i.i93, %i.et ; 2 uses
  %.0.in.i.i.i.i96 = lshr i64 %.0.in.in.i.i.i.i94, 5
  %.0.i.i.i.i97 = add nuw nsw i64 %.0.in.i.i.i.i96, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [32 x i8], ptr %i.es, i64 %storemerge.i.i.i.i95 ; 7 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !636, !noalias !4679 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, %i.ev
  br i1 %i.ey, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.i.i.i.i107, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i98

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.i.i.i.i107: ; preds = %bb.ae
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i108 = load i64, ptr %i.ez, align 8, !noalias !4679
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i109 = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %.sroa.2.0.copyload.i.i.i.i.i.i110 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i109, align 8, !tbaa !146, !noalias !4679
  %or.cond.i.i.i.i.i.i.i111 = icmp eq i64 %i.el, %.sroa.0.0.copyload.i.i.i.i.i.i108
  %i.fa = icmp eq i64 %i.em, %.sroa.2.0.copyload.i.i.i.i.i.i110
  %spec.select.i.i.i.i.i.i.i112 = select i1 %or.cond.i.i.i.i.i.i.i111, i1 %i.fa, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i112, label %_ZN5arrow6StatusD2Ev.exit119, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i98

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i98: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.i.i.i.i107, %bb.ae
  %i.fb = icmp eq i64 %i.ex, 0
  %i.fc = add i64 %.0.i.i.i.i97, %storemerge.i.i.i.i95
  br i1 %i.fb, label %bb.af, label %bb.ae, !llvm.loop !4658

bb.af:                                            ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i98
  %i.fd = load ptr, ptr %i.am, align 8, !tbaa !148, !noalias !4679
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !4679
  %i.fg = call noundef i32 %i.ff(ptr noundef nonnull align 8 dereferenceable(100) %i.am), !noalias !4679, !inline_history !4667
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !4679
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !636, !noalias !4680
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 %i.el, ptr %i.fh, align 8, !noalias !4680
  %.sroa.0.sroa.5.0..sroa_idx.i.i99 = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i64 %i.em, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i99, align 8, !tbaa !146, !noalias !4680
  %.sroa.5.0..sroa_idx.i.i100 = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  store i32 %i.fg, ptr %.sroa.5.0..sroa_idx.i.i100, align 8, !tbaa !73, !noalias !4680
  %i.fi = load i64, ptr %i.aq, align 8, !tbaa !419, !noalias !4680
  %i.fj = add i64 %i.fi, 1                        ; 2 uses
  store i64 %i.fj, ptr %i.aq, align 8, !tbaa !419, !noalias !4680
  %i.fk = shl i64 %i.fj, 1
  %i.fl = load i64, ptr %i.an, align 8, !tbaa !417, !noalias !4680 ; 2 uses
  %.not.i.i.i101 = icmp ult i64 %i.fk, %i.fl
  br i1 %.not.i.i.i101, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i106, label %_ZN5arrow6StatusD2Ev.exit.i.i102, !prof !155

_ZN5arrow6StatusD2Ev.exit.thread.i.i106:          ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !4679
  br label %_ZN5arrow6StatusD2Ev.exit119

_ZN5arrow6StatusD2Ev.exit.i.i102:                 ; preds = %bb.af
  %i.fm = shl i64 %i.fl, 2
  call void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 noundef %i.fm), !noalias !4679
  %.pr.i.i103 = load ptr, ptr %4, align 8, !tbaa !176, !noalias !4679 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !4679
  %i.fn = icmp eq ptr %.pr.i.i103, null
  br i1 %i.fn, label %_ZN5arrow6StatusD2Ev.exit119, label %.critedge68

_ZN5arrow6StatusD2Ev.exit119:                     ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_24MonthDayNanoIntervalType13MonthDayNanosES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.i.i.i.i107, %_ZN5arrow6StatusD2Ev.exit.i.i102, %_ZN5arrow6StatusD2Ev.exit.thread.i.i106
  store ptr null, ptr %0, align 8, !tbaa !176
  %i.fo = add nuw nsw i64 %.037136, 1             ; 2 uses
  %i.fp = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !191
  %.not54 = icmp slt i64 %i.fo, %i.fr
  br i1 %.not54, label %bb.ad, label %.critedge70, !llvm.loop !4670

.critedge68:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i102
  store ptr %.pr.i.i103, ptr %0, align 8, !tbaa !176
  br label %bb.ai

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit119, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !176, !alias.scope !4681
  br label %bb.ai

.critedge66:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

.critedge72:                                      ; preds = %.noexc79
  store ptr %.pr.i.i, ptr %0, align 8, !tbaa !176
  %.not.i120 = icmp eq i64 %i.bb, 0
  br i1 %.not.i120, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit122, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i121

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i121: ; preds = %.critedge72
  %i.fs = load ptr, ptr %.cast, align 8, !tbaa !148
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.cast) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit122

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit122: ; preds = %.critedge72, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.fv = load ptr, ptr %9, align 8, !tbaa !176   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.ag, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i123, !prof !155

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit122
  %i.fx = load ptr, ptr %i.ba, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i124 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i124, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit128, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i125

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i125: ; preds = %bb.ag
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !148
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fx) #25, !inline_history !15
  %.pr.pre.i126 = load ptr, ptr %9, align 8, !tbaa !176 ; 2 uses
  %.not.i.i127 = icmp eq ptr %.pr.pre.i126, null
  br i1 %.not.i.i127, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit128, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i123, !prof !199

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i123: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i125, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit122
  %i.gb = phi ptr [ %.pr.pre.i126, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i125 ], [ %i.fv, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit122 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !184, !range !172, !noundef !173
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit128, label %bb.ah

bb.ah:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i123
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit128

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit128: ; preds = %bb.ag, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i125, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i123, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge68, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit128, %.critedge70, %.critedge66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.aj:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn60.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn60, %bb.ac ]
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_24MonthDayNanoIntervalTypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !419
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !421
  %i.g = icmp ne i32 %i.f, -1
  %i.h = zext i1 %i.g to i32
  %i.i = add nsw i32 %i.h, %i.d                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !110
  store ptr %i.k, ptr %4, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !73
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !73
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !160
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !158
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !159
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !0
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !0
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
end_hunk_4
begin_hunk_5_@_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_17MonthIntervalTypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE:bb.a

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.n = load ptr, ptr %7, align 8, !tbaa !196, !noalias !4771 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !144, !noalias !4771
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %7, align 8, !tbaa !196, !noalias !4771 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.u, align 8, !tbaa !144, !noalias !4771
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !4771
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !4771
  %i.y = load ptr, ptr %8, align 8, !tbaa !196    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !144
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ai

bb.g:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.ae = load ptr, ptr %8, align 8, !tbaa !196   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %.body
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !144
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.aj

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !191
  %.not54127 = icmp sgt i64 %i.al, 0
  br i1 %.not54127, label %.lr.ph129, label %.critedge70

.lr.ph129:                                        ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.ad

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !191
  %i.av = shl i64 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !423
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %9, i64 noundef %i.av, ptr noundef %i.ax)
  %i.ay = load ptr, ptr %9, align 8, !tbaa !176
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.l, label %bb.j, !prof !155

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !176
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.critedge66 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !4772)
  call void @llvm.experimental.noalias.scope.decl(metadata !4773)
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !201, !noalias !4774 ; 3 uses
  store i64 %i.bc, ptr %10, align 8, !tbaa !201, !alias.scope !4774
  store ptr null, ptr %i.bb, align 8, !tbaa !201, !noalias !4774
  %.cast = inttoptr i64 %i.bc to ptr              ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !191
  %.not56.not125 = icmp sgt i64 %i.bh, 0
  br i1 %.not56.not125, label %.lr.ph, label %.critedge64

.lr.ph:                                           ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit82
  %.039126 = phi i64 [ 0, %.lr.ph ], [ %i.cv, %_ZN5arrow6StatusD2Ev.exit82 ] ; 3 uses
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !4776
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.039126
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !73 ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.039126
  %i.bs = sext i32 %i.bq to i64
  %i.bt = mul i64 %i.bs, -7046029288634856825
  %i.bu = call noundef i64 @llvm.bswap.i64(i64 %i.bt)
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !295, !noalias !4777
  %i.bw = load i64, ptr %i.bm, align 8, !tbaa !293, !noalias !4777
  %i.bx = icmp eq i32 %i.bq, 0
  %i.by = select i1 %i.bx, i64 42, i64 %i.bu      ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i, %bb.m
  %.pn.i.i.i.i = phi i64 [ %i.by, %bb.m ], [ %i.cg, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i ]
  %.0.in.in.i.i.i.i = phi i64 [ %i.by, %bb.m ], [ %.0.i.i.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i ]
  %storemerge.i.i.i.i = and i64 %.pn.i.i.i.i, %i.bw ; 2 uses
  %.0.in.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i, 5
  %.0.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %storemerge.i.i.i.i ; 5 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !545, !noalias !4777 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.by
  br i1 %i.cb, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i: ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !546, !noalias !4777
  %i.ce = icmp eq i32 %i.bq, %i.cd
  br i1 %i.ce, label %bb.o, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i, %bb.n
  %i.cf = icmp eq i64 %i.ca, 0
  %i.cg = add i64 %.0.i.i.i.i, %storemerge.i.i.i.i
  br i1 %i.cf, label %bb.p, label %bb.n, !llvm.loop !42

bb.o:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !547, !noalias !4777
  br label %_ZN5arrow6StatusD2Ev.exit82

bb.p:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i
  %i.cj = load ptr, ptr %i.bi, align 8, !tbaa !148, !noalias !4777
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !4777
  %i.cm = invoke noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(100) %i.bi)
          to label %.noexc77 unwind label %bb.q, !inline_history !43 ; 3 uses

.noexc77:                                         ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !4777
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !545, !noalias !4778
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.5.0.insert.ext.i.i = zext i32 %i.cm to i64
  %.sroa.5.0.insert.shift.i.i = shl nuw i64 %.sroa.5.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bq to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.cn, align 8, !noalias !4778
  %i.co = load i64, ptr %i.bn, align 8, !tbaa !294, !noalias !4778
  %i.cp = add i64 %i.co, 1                        ; 2 uses
  store i64 %i.cp, ptr %i.bn, align 8, !tbaa !294, !noalias !4778
  %i.cq = shl i64 %i.cp, 1
  %i.cr = load i64, ptr %i.bk, align 8, !tbaa !292, !noalias !4778 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.cq, %i.cr
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i, !prof !155

_ZN5arrow6StatusD2Ev.exit.thread.i.i:             ; preds = %.noexc77
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !4777
  br label %_ZN5arrow6StatusD2Ev.exit82

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %.noexc77
  %i.cs = shl i64 %i.cr, 2
  invoke void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %i.bk, i64 noundef %i.cs)
          to label %.noexc78 unwind label %bb.q

.noexc78:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !176, !noalias !4777 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !4777
  %i.ct = icmp eq ptr %.pr.i.i, null
  br i1 %i.ct, label %_ZN5arrow6StatusD2Ev.exit82, label %.critedge72

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.p
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN5arrow6StatusD2Ev.exit82:                      ; preds = %.noexc78, %_ZN5arrow6StatusD2Ev.exit.thread.i.i, %bb.o
  %.017.i.i = phi i32 [ %i.ci, %bb.o ], [ %i.cm, %.noexc78 ], [ %i.cm, %_ZN5arrow6StatusD2Ev.exit.thread.i.i ]
  store i32 %.017.i.i, ptr %i.br, align 4, !tbaa !73, !noalias !4777
  store ptr null, ptr %0, align 8, !tbaa !176
  %i.cv = add nuw nsw i64 %.039126, 1             ; 2 uses
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !191
  %.not56.not = icmp slt i64 %i.cv, %i.cy
  br i1 %.not56.not, label %bb.m, label %.critedge64, !llvm.loop !4761

.critedge64:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit82, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc83 unwind label %bb.aa

.noexc83:                                         ; preds = %.critedge64
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !160 ; 8 uses
  %i.db = load <2 x ptr>, ptr %3, align 8, !tbaa !162
  %i.dc = load <2 x ptr>, ptr %5, align 16, !tbaa !162
  store <2 x ptr> %i.dc, ptr %3, align 8, !tbaa !162
  store <2 x ptr> %i.db, ptr %5, align 16, !tbaa !162
  %.not.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %.noexc83
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.dd, align 8, !tbaa !158
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !159
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !148
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !27
  %i.dl = load ptr, ptr %i.da, align 8, !tbaa !148
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25, !inline_history !27
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.u ], [ %i.dq, %bb.v ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.w, label %bb.x, !prof !156

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %.noexc83
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ds = load ptr, ptr %10, align 8, !tbaa !201  ; 3 uses
  %.not.i84 = icmp eq ptr %i.ds, null
  br i1 %.not.i84, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.x
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !148
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ds) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.x, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.dw = load ptr, ptr %9, align 8, !tbaa !176   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.y, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !155

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dy = load ptr, ptr %i.bb, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i85 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i85, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.y
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !148
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dy) #25, !inline_history !15
  %.pr.pre.i = load ptr, ptr %9, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !199

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.ec = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.dw, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !184, !range !172, !noundef !173
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.y, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.critedge70

bb.aa:                                            ; preds = %.critedge64
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %10, align 8, !tbaa !201
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.q
  %i.eh = phi ptr [ %.pre, %bb.aa ], [ %.cast, %bb.q ] ; 3 uses
  %.pn57 = phi { ptr, i32 } [ %i.eg, %bb.aa ], [ %i.cu, %bb.q ]
  %.not.i86 = icmp eq ptr %i.eh, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87: ; preds = %bb.ab
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !148
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.eh) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88, %bb.k
  %.pn60 = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %.pn57, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.aj

bb.ad:                                            ; preds = %.lr.ph129, %_ZN5arrow6StatusD2Ev.exit112
  %.037128 = phi i64 [ 0, %.lr.ph129 ], [ %i.fo, %_ZN5arrow6StatusD2Ev.exit112 ] ; 2 uses
  %i.el = load ptr, ptr %i.an, align 8, !tbaa !4776
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.037128
  %i.en = load i32, ptr %i.em, align 4, !tbaa !73 ; 4 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = mul i64 %i.eo, -7046029288634856825
  %i.eq = call noundef i64 @llvm.bswap.i64(i64 %i.ep)
  %i.er = load ptr, ptr %i.ap, align 8, !tbaa !295, !noalias !4779
  %i.es = load i64, ptr %i.aq, align 8, !tbaa !293, !noalias !4779
  %i.et = icmp eq i32 %i.en, 0
  %i.eu = select i1 %i.et, i64 42, i64 %i.eq      ; 4 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94, %bb.ad
  %.pn.i.i.i.i89 = phi i64 [ %i.eu, %bb.ad ], [ %i.fc, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94 ]
  %.0.in.in.i.i.i.i90 = phi i64 [ %i.eu, %bb.ad ], [ %.0.i.i.i.i93, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94 ]
  %storemerge.i.i.i.i91 = and i64 %.pn.i.i.i.i89, %i.es ; 2 uses
  %.0.in.i.i.i.i92 = lshr i64 %.0.in.in.i.i.i.i90, 5
  %.0.i.i.i.i93 = add nuw nsw i64 %.0.in.i.i.i.i92, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %storemerge.i.i.i.i91 ; 4 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !545, !noalias !4779 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, %i.eu
  br i1 %i.ex, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i105, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i105: ; preds = %bb.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !546, !noalias !4779
  %i.fa = icmp eq i32 %i.en, %i.ez
  br i1 %i.fa, label %_ZN5arrow6StatusD2Ev.exit112, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i105, %bb.ae
  %i.fb = icmp eq i64 %i.ew, 0
  %i.fc = add i64 %.0.i.i.i.i93, %storemerge.i.i.i.i91
  br i1 %i.fb, label %bb.af, label %bb.ae, !llvm.loop !42

bb.af:                                            ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i94
  %i.fd = load ptr, ptr %i.am, align 8, !tbaa !148, !noalias !4779
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !4779
  %i.fg = call noundef i32 %i.ff(ptr noundef nonnull align 8 dereferenceable(100) %i.am), !noalias !4779, !inline_history !44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !4779
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !545, !noalias !4780
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.5.0.insert.ext.i.i95 = zext i32 %i.fg to i64
  %.sroa.5.0.insert.shift.i.i96 = shl nuw i64 %.sroa.5.0.insert.ext.i.i95, 32
  %.sroa.0.0.insert.ext.i.i97 = zext i32 %i.en to i64
  %.sroa.0.0.insert.insert.i.i98 = or disjoint i64 %.sroa.5.0.insert.shift.i.i96, %.sroa.0.0.insert.ext.i.i97
  store i64 %.sroa.0.0.insert.insert.i.i98, ptr %i.fh, align 8, !noalias !4780
  %i.fi = load i64, ptr %i.ar, align 8, !tbaa !294, !noalias !4780
  %i.fj = add i64 %i.fi, 1                        ; 2 uses
  store i64 %i.fj, ptr %i.ar, align 8, !tbaa !294, !noalias !4780
  %i.fk = shl i64 %i.fj, 1
  %i.fl = load i64, ptr %i.ao, align 8, !tbaa !292, !noalias !4780 ; 2 uses
  %.not.i.i.i99 = icmp ult i64 %i.fk, %i.fl
  br i1 %.not.i.i.i99, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i104, label %_ZN5arrow6StatusD2Ev.exit.i.i100, !prof !155

_ZN5arrow6StatusD2Ev.exit.thread.i.i104:          ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !4779
  br label %_ZN5arrow6StatusD2Ev.exit112

_ZN5arrow6StatusD2Ev.exit.i.i100:                 ; preds = %bb.af
  %i.fm = shl i64 %i.fl, 2
  call void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.ao, i64 noundef %i.fm), !noalias !4779
  %.pr.i.i101 = load ptr, ptr %4, align 8, !tbaa !176, !noalias !4779 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !4779
  %i.fn = icmp eq ptr %.pr.i.i101, null
  br i1 %i.fn, label %_ZN5arrow6StatusD2Ev.exit112, label %.critedge68

_ZN5arrow6StatusD2Ev.exit112:                     ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIiEENS_6StatusEOT_PiEUliE_ZNSA_IiEESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i105, %_ZN5arrow6StatusD2Ev.exit.i.i100, %_ZN5arrow6StatusD2Ev.exit.thread.i.i104
  store ptr null, ptr %0, align 8, !tbaa !176
  %i.fo = add nuw nsw i64 %.037128, 1             ; 2 uses
  %i.fp = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !191
  %.not54 = icmp slt i64 %i.fo, %i.fr
  br i1 %.not54, label %bb.ad, label %.critedge70, !llvm.loop !4768

.critedge68:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i100
  store ptr %.pr.i.i101, ptr %0, align 8, !tbaa !176
  br label %bb.ai

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit112, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !176, !alias.scope !4781
  br label %bb.ai

.critedge66:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

.critedge72:                                      ; preds = %.noexc78
  store ptr %.pr.i.i, ptr %0, align 8, !tbaa !176
  %.not.i113 = icmp eq i64 %i.bc, 0
  br i1 %.not.i113, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i114

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i114: ; preds = %.critedge72
  %i.fs = load ptr, ptr %.cast, align 8, !tbaa !148
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.cast) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115: ; preds = %.critedge72, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.fv = load ptr, ptr %9, align 8, !tbaa !176   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.ag, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116, !prof !155

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115
  %i.fx = load ptr, ptr %i.bb, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i117 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i117, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118: ; preds = %bb.ag
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !148
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fx) #25, !inline_history !15
  %.pr.pre.i119 = load ptr, ptr %9, align 8, !tbaa !176 ; 2 uses
  %.not.i.i120 = icmp eq ptr %.pr.pre.i119, null
  br i1 %.not.i.i120, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116, !prof !199

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115
  %i.gb = phi ptr [ %.pr.pre.i119, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118 ], [ %i.fv, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !184, !range !172, !noundef !173
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, label %bb.ah

bb.ah:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121: ; preds = %bb.ag, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge68, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, %.critedge70, %.critedge66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.aj:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn60.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn60, %bb.ac ]
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_17MonthIntervalTypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !294
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !296
  %i.g = icmp ne i32 %i.f, -1
  %i.h = zext i1 %i.g to i32
  %i.i = add nsw i32 %i.h, %i.d                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !110
  store ptr %i.k, ptr %4, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !73
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !73
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !160
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !158
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !159
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !0
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !0
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !156

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
end_hunk_5
begin_hunk_6_@_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_19DayTimeIntervalTypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE:bb.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.33)
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !110
  %i.h = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i1 noundef zeroext false)
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !4843
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(41) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.n = load ptr, ptr %7, align 8, !tbaa !196, !noalias !4843 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !144, !noalias !4843
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %7, align 8, !tbaa !196, !noalias !4843 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.u, align 8, !tbaa !144, !noalias !4843
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !4843
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !4843
  %i.y = load ptr, ptr %8, align 8, !tbaa !196    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !144
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ai

bb.g:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.ae = load ptr, ptr %8, align 8, !tbaa !196   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %.body
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !144
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.aj

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !191
  %.not54127 = icmp sgt i64 %i.al, 0
  br i1 %.not54127, label %.lr.ph129, label %.critedge70

.lr.ph129:                                        ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.ad

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !191
  %i.au = shl i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !429
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %9, i64 noundef %i.au, ptr noundef %i.aw)
  %i.ax = load ptr, ptr %9, align 8, !tbaa !176
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %bb.j, !prof !155

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !176
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.critedge66 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !4844)
  call void @llvm.experimental.noalias.scope.decl(metadata !4845)
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !201, !noalias !4846 ; 3 uses
  store i64 %i.bb, ptr %10, align 8, !tbaa !201, !alias.scope !4846
  store ptr null, ptr %i.ba, align 8, !tbaa !201, !noalias !4846
  %.cast = inttoptr i64 %i.bb to ptr              ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !191
  %.not56.not125 = icmp sgt i64 %i.bg, 0
  br i1 %.not56.not125, label %.lr.ph, label %.critedge64

.lr.ph:                                           ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit83
  %.039126 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %_ZN5arrow6StatusD2Ev.exit83 ] ; 3 uses
  %i.bm = invoke i64 @_ZNK5arrow20DayTimeIntervalArray8GetValueEl(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef %.039126)
          to label %_ZNK5arrow20DayTimeIntervalArray7GetViewEl.exit unwind label %bb.q ; 4 uses

_ZNK5arrow20DayTimeIntervalArray7GetViewEl.exit:  ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.039126
  %.sroa.6.0.extract.shift.i.i = lshr i64 %i.bm, 32
  %i.bo = mul i64 %.sroa.6.0.extract.shift.i.i, -7046029288634856825
  %i.bp = and i64 %i.bm, 4294967295
  %i.bq = mul i64 %i.bp, -4417276706812531889
  %i.br = xor i64 %i.bo, %i.bq                    ; 2 uses
  %i.bs = xor i64 %i.br, 576460752303423488
  %i.bt = call noundef i64 @llvm.bswap.i64(i64 %i.bs)
  %i.bu = load ptr, ptr %i.bj, align 8, !tbaa !433, !noalias !4847
  %i.bv = load i64, ptr %i.bk, align 8, !tbaa !431, !noalias !4847
  %i.bw = icmp eq i64 %i.br, 576460752303423488
  %i.bx = select i1 %i.bw, i64 42, i64 %i.bt      ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i, %_ZNK5arrow20DayTimeIntervalArray7GetViewEl.exit
  %.pn.i.i.i.i = phi i64 [ %i.bx, %_ZNK5arrow20DayTimeIntervalArray7GetViewEl.exit ], [ %i.ce, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i ]
  %.0.in.in.i.i.i.i = phi i64 [ %i.bx, %_ZNK5arrow20DayTimeIntervalArray7GetViewEl.exit ], [ %.0.i.i.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i ]
  %storemerge.i.i.i.i = and i64 %.pn.i.i.i.i, %i.bv ; 2 uses
  %.0.in.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i, 5
  %.0.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %storemerge.i.i.i.i ; 6 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !642, !noalias !4847 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.bx
  br i1 %i.ca, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.i.i.i.i, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.i.i.i.i: ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cb, align 8, !noalias !4847
  %i.cc = icmp eq i64 %i.bm, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.cc, label %bb.o, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.i.i.i.i, %bb.n
  %i.cd = icmp eq i64 %i.bz, 0
  %i.ce = add i64 %.0.i.i.i.i, %storemerge.i.i.i.i
  br i1 %i.cd, label %bb.p, label %bb.n, !llvm.loop !4828

bb.o:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !643, !noalias !4847
  br label %_ZN5arrow6StatusD2Ev.exit83

bb.p:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i
  %i.ch = load ptr, ptr %i.bh, align 8, !tbaa !148, !noalias !4847
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !4847
  %i.ck = invoke noundef i32 %i.cj(ptr noundef nonnull align 8 dereferenceable(100) %i.bh)
          to label %.noexc78 unwind label %bb.q, !inline_history !4829 ; 3 uses

.noexc78:                                         ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !4847
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !642, !noalias !4848
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %i.bm, ptr %i.cl, align 8, !noalias !4848
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i32 %i.ck, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !73, !noalias !4848
  %i.cm = load i64, ptr %i.bl, align 8, !tbaa !432, !noalias !4848
  %i.cn = add i64 %i.cm, 1                        ; 2 uses
  store i64 %i.cn, ptr %i.bl, align 8, !tbaa !432, !noalias !4848
  %i.co = shl i64 %i.cn, 1
  %i.cp = load i64, ptr %i.bi, align 8, !tbaa !430, !noalias !4848 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.co, %i.cp
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i, !prof !155

_ZN5arrow6StatusD2Ev.exit.thread.i.i:             ; preds = %.noexc78
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !4847
  br label %_ZN5arrow6StatusD2Ev.exit83

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %.noexc78
  %i.cq = shl i64 %i.cp, 2
  invoke void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %i.bi, i64 noundef %i.cq)
          to label %.noexc79 unwind label %bb.q

.noexc79:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !176, !noalias !4847 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !4847
  %i.cr = icmp eq ptr %.pr.i.i, null
  br i1 %i.cr, label %_ZN5arrow6StatusD2Ev.exit83, label %.critedge72

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.p, %bb.m
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN5arrow6StatusD2Ev.exit83:                      ; preds = %.noexc79, %_ZN5arrow6StatusD2Ev.exit.thread.i.i, %bb.o
  %.017.i.i = phi i32 [ %i.cg, %bb.o ], [ %i.ck, %.noexc79 ], [ %i.ck, %_ZN5arrow6StatusD2Ev.exit.thread.i.i ]
  store i32 %.017.i.i, ptr %i.bn, align 4, !tbaa !73, !noalias !4847
  store ptr null, ptr %0, align 8, !tbaa !176
  %i.ct = add nuw nsw i64 %.039126, 1             ; 2 uses
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !191
  %.not56.not = icmp slt i64 %i.ct, %i.cw
  br i1 %.not56.not, label %bb.m, label %.critedge64, !llvm.loop !4832

.critedge64:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit83, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc84 unwind label %bb.aa

.noexc84:                                         ; preds = %.critedge64
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !160 ; 8 uses
  %i.cz = load <2 x ptr>, ptr %3, align 8, !tbaa !162
  %i.da = load <2 x ptr>, ptr %5, align 16, !tbaa !162
  store <2 x ptr> %i.da, ptr %3, align 8, !tbaa !162
  store <2 x ptr> %i.cz, ptr %5, align 16, !tbaa !162
  %.not.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %.noexc84
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.db, align 8, !tbaa !158
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !159
  %i.dg = load ptr, ptr %i.cy, align 8, !tbaa !148
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #25, !inline_history !27
  %i.dj = load ptr, ptr %i.cy, align 8, !tbaa !148
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #25, !inline_history !27
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.de, %bb.u ], [ %i.do, %bb.v ]
  %i.dp = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dp, label %bb.w, label %bb.x, !prof !156

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.dq = load ptr, ptr %10, align 8, !tbaa !201  ; 3 uses
  %.not.i85 = icmp eq ptr %i.dq, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.x
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !148
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dq) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.x, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.du = load ptr, ptr %9, align 8, !tbaa !176   ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.y, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !155

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dw = load ptr, ptr %i.ba, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i86, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.y
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !148
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dw) #25, !inline_history !15
  %.pr.pre.i = load ptr, ptr %9, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !199

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.ea = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.du, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !184, !range !172, !noundef !173
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.y, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.critedge70

bb.aa:                                            ; preds = %.critedge64
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %10, align 8, !tbaa !201
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.q
  %i.ef = phi ptr [ %.pre, %bb.aa ], [ %.cast, %bb.q ] ; 3 uses
  %.pn57 = phi { ptr, i32 } [ %i.ee, %bb.aa ], [ %i.cs, %bb.q ]
  %.not.i87 = icmp eq ptr %i.ef, null
  br i1 %.not.i87, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88: ; preds = %bb.ab
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !148
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ef) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, %bb.k
  %.pn60 = phi { ptr, i32 } [ %i.az, %bb.k ], [ %.pn57, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.aj

bb.ad:                                            ; preds = %.lr.ph129, %_ZN5arrow6StatusD2Ev.exit112
  %.037128 = phi i64 [ 0, %.lr.ph129 ], [ %i.fm, %_ZN5arrow6StatusD2Ev.exit112 ] ; 2 uses
  %i.ej = call i64 @_ZNK5arrow20DayTimeIntervalArray8GetValueEl(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef %.037128) ; 4 uses
  %.sroa.6.0.extract.shift.i.i90 = lshr i64 %i.ej, 32
  %i.ek = mul i64 %.sroa.6.0.extract.shift.i.i90, -7046029288634856825
  %i.el = and i64 %i.ej, 4294967295
  %i.em = mul i64 %i.el, -4417276706812531889
  %i.en = xor i64 %i.ek, %i.em                    ; 2 uses
  %i.eo = xor i64 %i.en, 576460752303423488
  %i.ep = call noundef i64 @llvm.bswap.i64(i64 %i.eo)
  %i.eq = load ptr, ptr %i.ao, align 8, !tbaa !433, !noalias !4849
  %i.er = load i64, ptr %i.ap, align 8, !tbaa !431, !noalias !4849
  %i.es = icmp eq i64 %i.en, 576460752303423488
  %i.et = select i1 %i.es, i64 42, i64 %i.ep      ; 4 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i96, %bb.ad
  %.pn.i.i.i.i91 = phi i64 [ %i.et, %bb.ad ], [ %i.fa, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i96 ]
  %.0.in.in.i.i.i.i92 = phi i64 [ %i.et, %bb.ad ], [ %.0.i.i.i.i95, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i96 ]
  %storemerge.i.i.i.i93 = and i64 %.pn.i.i.i.i91, %i.er ; 2 uses
  %.0.in.i.i.i.i94 = lshr i64 %.0.in.in.i.i.i.i92, 5
  %.0.i.i.i.i95 = add nuw nsw i64 %.0.in.i.i.i.i94, 1 ; 2 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.eq, i64 %storemerge.i.i.i.i93 ; 5 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !642, !noalias !4849 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, %i.et
  br i1 %i.ew, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.i.i.i.i104, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i96

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.i.i.i.i104: ; preds = %bb.ae
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i105 = load i64, ptr %i.ex, align 8, !noalias !4849
  %i.ey = icmp eq i64 %i.ej, %.sroa.0.0.copyload.i.i.i.i.i.i105
  br i1 %i.ey, label %_ZN5arrow6StatusD2Ev.exit112, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i96

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i96: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.i.i.i.i104, %bb.ae
  %i.ez = icmp eq i64 %i.ev, 0
  %i.fa = add i64 %.0.i.i.i.i95, %storemerge.i.i.i.i93
  br i1 %i.ez, label %bb.af, label %bb.ae, !llvm.loop !4828

bb.af:                                            ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread.i.i.i.i96
  %i.fb = load ptr, ptr %i.am, align 8, !tbaa !148, !noalias !4849
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !4849
  %i.fe = call noundef i32 %i.fd(ptr noundef nonnull align 8 dereferenceable(100) %i.am), !noalias !4849, !inline_history !4837
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !4849
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !642, !noalias !4850
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i64 %i.ej, ptr %i.ff, align 8, !noalias !4850
  %.sroa.5.0..sroa_idx.i.i97 = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i32 %i.fe, ptr %.sroa.5.0..sroa_idx.i.i97, align 8, !tbaa !73, !noalias !4850
  %i.fg = load i64, ptr %i.aq, align 8, !tbaa !432, !noalias !4850
  %i.fh = add i64 %i.fg, 1                        ; 2 uses
  store i64 %i.fh, ptr %i.aq, align 8, !tbaa !432, !noalias !4850
  %i.fi = shl i64 %i.fh, 1
  %i.fj = load i64, ptr %i.an, align 8, !tbaa !430, !noalias !4850 ; 2 uses
  %.not.i.i.i98 = icmp ult i64 %i.fi, %i.fj
  br i1 %.not.i.i.i98, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i103, label %_ZN5arrow6StatusD2Ev.exit.i.i99, !prof !155

_ZN5arrow6StatusD2Ev.exit.thread.i.i103:          ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !4849
  br label %_ZN5arrow6StatusD2Ev.exit112

_ZN5arrow6StatusD2Ev.exit.i.i99:                  ; preds = %bb.af
  %i.fk = shl i64 %i.fj, 2
  call void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 noundef %i.fk), !noalias !4849
  %.pr.i.i100 = load ptr, ptr %4, align 8, !tbaa !176, !noalias !4849 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !4849
  %i.fl = icmp eq ptr %.pr.i.i100, null
  br i1 %i.fl, label %_ZN5arrow6StatusD2Ev.exit112, label %.critedge68

_ZN5arrow6StatusD2Ev.exit112:                     ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRS4_ZNS5_11GetOrInsertIS4_EENS_6StatusEOT_PiEUliE_ZNSC_IS4_EESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.i.i.i.i104, %_ZN5arrow6StatusD2Ev.exit.i.i99, %_ZN5arrow6StatusD2Ev.exit.thread.i.i103
  store ptr null, ptr %0, align 8, !tbaa !176
  %i.fm = add nuw nsw i64 %.037128, 1             ; 2 uses
  %i.fn = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !191
  %.not54 = icmp slt i64 %i.fm, %i.fp
  br i1 %.not54, label %bb.ad, label %.critedge70, !llvm.loop !4840

.critedge68:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i99
  store ptr %.pr.i.i100, ptr %0, align 8, !tbaa !176
  br label %bb.ai

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit112, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !176, !alias.scope !4851
  br label %bb.ai

.critedge66:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

.critedge72:                                      ; preds = %.noexc79
  store ptr %.pr.i.i, ptr %0, align 8, !tbaa !176
  %.not.i113 = icmp eq i64 %i.bb, 0
  br i1 %.not.i113, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i114

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i114: ; preds = %.critedge72
  %i.fq = load ptr, ptr %.cast, align 8, !tbaa !148
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.cast) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115: ; preds = %.critedge72, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ft = load ptr, ptr %9, align 8, !tbaa !176   ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.ag, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116, !prof !155

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115
  %i.fv = load ptr, ptr %i.ba, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i117 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i117, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118: ; preds = %bb.ag
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !148
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fv) #25, !inline_history !15
  %.pr.pre.i119 = load ptr, ptr %9, align 8, !tbaa !176 ; 2 uses
  %.not.i.i120 = icmp eq ptr %.pr.pre.i119, null
  br i1 %.not.i.i120, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116, !prof !199

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115
  %i.fz = phi ptr [ %.pr.pre.i119, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118 ], [ %i.ft, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit115 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !184, !range !172, !noundef !173
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, label %bb.ah

bb.ah:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121: ; preds = %bb.ag, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i118, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i116, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge68, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit121, %.critedge70, %.critedge66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.aj:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn60.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn60, %bb.ac ]
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_19DayTimeIntervalTypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !432
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !434
  %i.g = icmp ne i32 %i.f, -1
  %i.h = zext i1 %i.g to i32
  %i.i = add nsw i32 %i.h, %i.d                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !110
  store ptr %i.k, ptr %4, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !73
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !73
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !160
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !158
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !159
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !0
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !0
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !156
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE6UpsizeEm:bb.a
  %i.ai = phi i64 [ %.pre, %.loopexit ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.aj = add nuw i64 %.038, 1                    ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !4887

.critedge:                                        ; preds = %.noexc, %._crit_edge
  %storemerge = phi ptr [ null, %._crit_edge ], [ %i.p, %.noexc ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !176
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.al, align 8, !tbaa !158
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !159
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !148
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25, !inline_history !10
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !148
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25, !inline_history !10
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ao, %bb.k ], [ %i.ay, %bb.l ]
  %i.az = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.az, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !156

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.b, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ba = load ptr, ptr %4, align 8, !tbaa !176   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.n, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !155

bb.n:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !160 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.be, align 8, !tbaa !158
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !159
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !148
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #25, !inline_history !13
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !148
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #25, !inline_history !13
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bh, %bb.r ], [ %i.br, %bb.s ]
  %i.bs = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bs, label %bb.t, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !156

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.p, %bb.n
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !176  ; 2 uses
  %.not.i.i37 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i37, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !199

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.bt = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.ba, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !184, !range !172, !noundef !173
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.v:                                             ; preds = %bb.e, %bb.c
  %.pn31 = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.r, %bb.e ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn31
}

declare i64 @_ZNK5arrow20DayTimeIntervalArray8GetValueEl(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal16DictionaryTraitsINS_19DayTimeIntervalTypeEvE22GetDictionaryArrayDataEPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEERKNS0_15ScalarMemoTableINS2_15DayMillisecondsENS0_9HashTableEEEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.46") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(100) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Result.123", align 8 ; 12 uses
  %6 = alloca %"class.arrow::Result.50", align 8  ; 12 uses
  %7 = alloca %"class.std::shared_ptr.21", align 16 ; 9 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %9 = alloca %"class.std::shared_ptr.21", align 16 ; 9 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %12 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %13 = alloca %"class.std::shared_ptr.10", align 16 ; 4 uses
  %14 = alloca %"class.std::vector", align 8      ; 10 uses
  %15 = alloca [2 x %"class.std::shared_ptr.21"], align 16 ; 12 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !148
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(100) %3)
  %i.e = sext i32 %i.d to i64
  %i.f = sub nsw i64 %i.e, %4                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.g = shl nsw i64 %i.f, 3
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %6, i64 noundef %i.g, ptr noundef %1)
  %i.h = load ptr, ptr %6, align 8, !tbaa !176
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %bb.ce

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !4907)
  call void @llvm.experimental.noalias.scope.decl(metadata !4908)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !201, !noalias !4909
  store i64 %i.k, ptr %8, align 8, !tbaa !201, !alias.scope !4909
  store ptr null, ptr %i.j, align 8, !tbaa !201, !noalias !4909
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit unwind label %bb.w

_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.c
  %i.l = load ptr, ptr %8, align 8, !tbaa !201    ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !148
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.l) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.p = trunc i64 %4 to i32                      ; 2 uses
  %i.q = load ptr, ptr %7, align 16, !tbaa !104
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !430  ; 2 uses
  %.not7.i.i = icmp eq i64 %i.u, 0
  br i1 %.not7.i.i, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12VisitEntriesIZNKS5_10CopyValuesIS4_EEviPT_EUlPKNS7_5EntryEE_EEvOSA_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.d

bb.d:                                             ; preds = %_ZZNK5arrow8internal15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsENS0_9HashTableEE10CopyValuesIS3_EEviPT_ENKUlPKNS4_INS5_7PayloadEE5EntryEE_clESD_.exit.i.i.a, %.lr.ph.i.i
  %i.w = phi i64 [ %i.u, %.lr.ph.i.i ], [ %17, %_ZZNK5arrow8internal15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsENS0_9HashTableEE10CopyValuesIS3_EEviPT_ENKUlPKNS4_INS5_7PayloadEE5EntryEE_clESD_.exit.i.i.a ] ; 2 uses
  %.06.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ah, %_ZZNK5arrow8internal15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsENS0_9HashTableEE10CopyValuesIS3_EEviPT_ENKUlPKNS4_INS5_7PayloadEE5EntryEE_clESD_.exit.i.i.a ] ; 2 uses
  %16 = load ptr, ptr %i.v, align 8, !tbaa !433
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %16, i64 %.06.i.i ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !642
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %_ZZNK5arrow8internal15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsENS0_9HashTableEE10CopyValuesIS3_EEviPT_ENKUlPKNS4_INS5_7PayloadEE5EntryEE_clESD_.exit.i.i.a, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !643
  %i.ab = sub nsw i32 %i.aa, %i.p                 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.f, label %_ZZNK5arrow8internal15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsENS0_9HashTableEE10CopyValuesIS3_EEviPT_ENKUlPKNS4_INS5_7PayloadEE5EntryEE_clESD_.exit.i.i.a

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ae
  %i.ag = load i64, ptr %i.ad, align 8
  store i64 %i.ag, ptr %i.af, align 4
  %.pre.i.i = load i64, ptr %i.t, align 8, !tbaa !430
  br label %_ZZNK5arrow8internal15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsENS0_9HashTableEE10CopyValuesIS3_EEviPT_ENKUlPKNS4_INS5_7PayloadEE5EntryEE_clESD_.exit.i.i.a

_ZZNK5arrow8internal15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsENS0_9HashTableEE10CopyValuesIS3_EEviPT_ENKUlPKNS4_INS5_7PayloadEE5EntryEE_clESD_.exit.i.i.a: ; preds = %bb.f, %bb.e, %bb.d
  %17 = phi i64 [ %.pre.i.i, %bb.f ], [ %i.w, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.ah = add nuw i64 %.06.i.i, 1                 ; 2 uses
  %18 = icmp ult i64 %i.ah, %17
  br i1 %18, label %bb.d, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12VisitEntriesIZNKS5_10CopyValuesIS4_EEviPT_EUlPKNS7_5EntryEE_EEvOSA_.exit.i, !llvm.loop !4898

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12VisitEntriesIZNKS5_10CopyValuesIS4_EEviPT_EUlPKNS7_5EntryEE_EEvOSA_.exit.i: ; preds = %_ZZNK5arrow8internal15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsENS0_9HashTableEE10CopyValuesIS3_EEviPT_ENKUlPKNS4_INS5_7PayloadEE5EntryEE_clESD_.exit.i.i.a, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !434 ; 2 uses
  %.not.i31 = icmp eq i32 %i.aj, -1
  br i1 %.not.i31, label %_ZNK5arrow8internal15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsENS0_9HashTableEE10CopyValuesIS3_EEviPT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12VisitEntriesIZNKS5_10CopyValuesIS4_EEviPT_EUlPKNS7_5EntryEE_EEvOSA_.exit.i
  %i.ak = sub nsw i32 %i.aj, %i.p                 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.h, label %_ZNK5arrow8internal15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsENS0_9HashTableEE10CopyValuesIS3_EEviPT_.exit

bb.h:                                             ; preds = %bb.g
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.am
  store i64 0, ptr %i.an, align 4
  br label %_ZNK5arrow8internal15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsENS0_9HashTableEE10CopyValuesIS3_EEviPT_.exit

_ZNK5arrow8internal15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsENS0_9HashTableEE10CopyValuesIS3_EEviPT_.exit: ; preds = %bb.h, %bb.g, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsES1_E7PayloadEE12VisitEntriesIZNKS5_10CopyValuesIS4_EEviPT_EUlPKNS7_5EntryEE_EEvOSA_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !4910)
  %i.ao = load ptr, ptr %3, align 8, !tbaa !148, !noalias !4910
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !4910
  %i.ar = invoke noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(100) %3)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i unwind label %bb.x, !inline_history !4901

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %_ZNK5arrow8internal15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsENS0_9HashTableEE10CopyValuesIS3_EEviPT_.exit
  %i.as = load i32, ptr %i.ai, align 8, !tbaa !434, !noalias !4910 ; 2 uses
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not.i32 = icmp eq i32 %i.as, -1
  %.not24.i = icmp sgt i64 %4, %i.at
  %or.cond.i = or i1 %.not.i32, %.not24.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br i1 %or.cond.i, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.av = sext i32 %i.ar to i64
  %i.aw = sub nsw i64 %i.av, %4
  %i.ax = sub nsw i64 %i.at, %4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !4910
  invoke void @_ZN5arrow8internal15BitmapAllButOneEPNS_10MemoryPoolEllb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.123") align 8 %5, ptr noundef %1, i64 noundef %i.aw, i64 noundef %i.ax, i1 noundef zeroext true)
          to label %.noexc33 unwind label %bb.x

.noexc33:                                         ; preds = %bb.i
  %i.ay = load ptr, ptr %5, align 8, !tbaa !176, !noalias !4910
  %i.az = icmp eq ptr %i.ay, null                 ; 2 uses
  br i1 %i.az, label %_ZN5arrow6StatusC2ERKS0_.exit.i.thread, label %bb.j, !prof !155

bb.j:                                             ; preds = %.noexc33
  store ptr null, ptr %11, align 8, !tbaa !176, !alias.scope !4910
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !4910
  br label %.body

_ZN5arrow6StatusC2ERKS0_.exit.i.thread:           ; preds = %.noexc33
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !162, !noalias !4911
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false), !noalias !4910
  store <2 x ptr> %i.bc, ptr %9, align 16, !tbaa !162, !noalias !4910
  br label %bb.l

_ZN5arrow6StatusC2ERKS0_.exit.i:                  ; preds = %bb.j
  %.pre = load ptr, ptr %5, align 8, !tbaa !176, !noalias !4910 ; 2 uses
  %i.bd = icmp eq ptr %.pre, null
  br i1 %i.bd, label %bb.l, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !526

bb.l:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.thread, %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !160, !noalias !4910 ; 8 uses
  %.not.i.i.i.i.i36.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i36.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bg, align 8, !tbaa !158
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !159
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !148
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #25, !inline_history !4906
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !148
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #25, !inline_history !4906
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144, !noalias !4910
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.p ], [ %i.bt, %bb.q ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.r, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !156

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.n, %bb.l
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !176, !noalias !4910 ; 2 uses
  %.not.i.i37.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i37.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !199

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.bv = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %.pre, %_ZN5arrow6StatusC2ERKS0_.exit.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !184, !range !172, !noundef !173
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i: ; preds = %bb.s, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !4910
  br i1 %i.az, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i
  %.0 = phi i64 [ 0, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ], [ 1, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %_ZN5arrow6StatusD2Ev.exit43

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i
  %.pr = load ptr, ptr %11, align 8, !tbaa !176   ; 2 uses
  store ptr %.pr, ptr %10, align 8, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.bz = icmp eq ptr %.pr, null
  br i1 %i.bz, label %_ZN5arrow6StatusD2Ev.exit43, label %bb.t, !prof !527

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #25
  %i.ca = load ptr, ptr %10, align 8, !tbaa !176  ; 2 uses
  %.not.i35 = icmp eq ptr %i.ca, null
  br i1 %.not.i35, label %_ZN5arrow6StatusD2Ev.exit36, label %bb.u, !prof !155

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !184, !range !172, !noundef !173
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN5arrow6StatusD2Ev.exit36, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #25
  br label %_ZN5arrow6StatusD2Ev.exit36

_ZN5arrow6StatusD2Ev.exit36:                      ; preds = %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.bp

bb.w:                                             ; preds = %bb.c
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %8, align 8, !tbaa !201   ; 3 uses
  %.not.i37 = icmp eq ptr %i.cf, null
  br i1 %.not.i37, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit39, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i38

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i38: ; preds = %bb.w
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !148
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cf) #25, !inline_history !14
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit39

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit39: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i38, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.cd

bb.x:                                             ; preds = %bb.i, %_ZNK5arrow8internal15ScalarMemoTableINS_19DayTimeIntervalType15DayMillisecondsENS0_9HashTableEE10CopyValuesIS3_EEviPT_.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.x, %bb.k
  %.pn24 = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.cj, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.cc

_ZN5arrow6StatusD2Ev.exit43:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %.178 = phi i64 [ %.0, %_ZN5arrow6StatusD2Ev.exit.thread ], [ 1, %_ZN5arrow6StatusD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !160 ; 2 uses
  %i.cn = load <2 x ptr>, ptr %2, align 8, !tbaa !162
end_hunk_7
