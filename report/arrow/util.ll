Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/util?download=true
inline.NumInlined: 6631
inline.NumDeleted: 2675
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_116NullArrayFactory5VisitERKNS_9UnionTypeE:bb.a
  store ptr null, ptr %0, align 8, !tbaa !91
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5arrow6StatusC2ERKS0_.exit73 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.cd

bb.bo:                                            ; preds = %bb.bl
  %i.il = load <2 x ptr>, ptr %i.hv, align 8, !tbaa !116, !noalias !2268
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i8 0, i64 16, i1 false)
  %i.im = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 64
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !165
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %indvars.iv ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !114 ; 8 uses
  store <2 x ptr> %i.il, ptr %i.ip, align 8, !tbaa !116
  %.not.i.i.i.i74 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i74, label %_ZN5arrow6StatusC2ERKS0_.exit73, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 4 uses
  %i.it = load atomic i64, ptr %i.is acquire, align 8 ; 2 uses
  %i.iu = icmp eq i64 %i.it, 4294967297
  %i.iv = trunc i64 %i.it to i32                  ; 2 uses
  br i1 %i.iu, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.is, align 8, !tbaa !110
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  store i32 0, ptr %i.iw, align 4, !tbaa !111
  %i.ix = load ptr, ptr %i.ir, align 8, !tbaa !113
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #19, !inline_history !7
  %i.ja = load ptr, ptr %i.ir, align 8, !tbaa !113
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #19, !inline_history !7
  br label %_ZN5arrow6StatusC2ERKS0_.exit73

bb.br:                                            ; preds = %bb.bp
  %i.jd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i.i.i.i.i75 = icmp eq i8 %i.jd, 0
  br i1 %.not.i.i.i.i.i75, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.je = add nsw i32 %i.iv, -1
  store i32 %i.je, ptr %i.is, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76

bb.bt:                                            ; preds = %bb.br
  %i.jf = atomicrmw volatile add ptr %i.is, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i.i.i77 = phi i32 [ %i.iv, %bb.bs ], [ %i.jf, %bb.bt ]
  %i.jg = icmp eq i32 %.0.i.i.i.i.i.i77, 1
  br i1 %i.jg, label %bb.bu, label %_ZN5arrow6StatusC2ERKS0_.exit73, !prof !118

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #19
  br label %_ZN5arrow6StatusC2ERKS0_.exit73

_ZN5arrow6StatusC2ERKS0_.exit73:                  ; preds = %bb.bo, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76, %bb.bu, %bb.bm
  %i.jh = load ptr, ptr %6, align 8, !tbaa !91    ; 2 uses
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %bb.bv, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !92

bb.bv:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit73
  %i.jj = load ptr, ptr %i.hw, align 8, !tbaa !114 ; 8 uses
  %.not.i.i.i.i.i82 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i.i82, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 4 uses
  %i.jl = load atomic i64, ptr %i.jk acquire, align 8 ; 2 uses
  %i.jm = icmp eq i64 %i.jl, 4294967297
  %i.jn = trunc i64 %i.jl to i32                  ; 2 uses
  br i1 %i.jm, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.jk, align 8, !tbaa !110
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store i32 0, ptr %i.jo, align 4, !tbaa !111
  %i.jp = load ptr, ptr %i.jj, align 8, !tbaa !113
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #19, !inline_history !4
  %i.js = load ptr, ptr %i.jj, align 8, !tbaa !113
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #19, !inline_history !4
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.by:                                            ; preds = %bb.bw
  %i.jv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i.i.i.i.i.i = icmp eq i8 %i.jv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jw = add nsw i32 %i.jn, -1
  store i32 %i.jw, ptr %i.jk, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ca:                                            ; preds = %bb.by
  %i.jx = atomicrmw volatile add ptr %i.jk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ca, %bb.bz
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jn, %bb.bz ], [ %i.jx, %bb.ca ]
  %i.jy = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jy, label %bb.cb, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !118

bb.cb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bx
  %.pr.i.pr = load ptr, ptr %6, align 8, !tbaa !91 ; 2 uses
  %.not.i.i83 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i83, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !156

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit73
  %i.jz = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.jh, %_ZN5arrow6StatusC2ERKS0_.exit73 ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 1
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !102, !range !103, !noundef !104
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %bb.bv, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %i.ij, label %bb.bk, label %.loopexit

.critedge:                                        ; preds = %bb.bk, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit71
  store ptr null, ptr %0, align 8, !tbaa !91, !alias.scope !2269
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, %.critedge, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  ret void

bb.cd:                                            ; preds = %bb.bn, %bb.ao
  %.pn33.pn = phi { ptr, i32 } [ %i.ik, %bb.bn ], [ %.pn31, %bb.ao ]
  resume { ptr, i32 } %.pn33.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188  ; 5 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.aw, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load <2 x ptr>, ptr %3, align 8, !tbaa !116 ; 15 uses
  %i.j = extractelement <2 x ptr> %i.i, i64 1     ; 16 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null        ; 5 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.k, align 4, !tbaa !42
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !42
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !214  ; 16 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %.fr193 = freeze i64 %i.s                       ; 3 uses
  %i.t = ashr i64 %.fr193, 4                      ; 2 uses
  %i.u = icmp ugt i64 %i.t, %2
  br i1 %i.u, label %bb.g, label %bb.y

bb.g:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit
  %.neg = mul i64 %2, -16                         ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.p, i64 %.neg ; 4 uses
  %i.w = icmp eq i64 %.neg, 0
  br i1 %i.w, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %i.x = add i64 %2, 1152921504606846975
  %i.y = and i64 %i.x, 1152921504606846975
  %xtraiter187 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter189 = phi i64 [ %prol.iter189.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !114
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.prol, i64 8
  %i.ab = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i.prol, align 8, !tbaa !116
  store ptr null, ptr %i.aa, align 8, !tbaa !114
  store <2 x ptr> %i.ab, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !116
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i.prol, align 8, !tbaa !141
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter189.next = add i64 %prol.iter189, 1   ; 2 uses
  %prol.iter189.cmp.not = icmp eq i64 %prol.iter189.next, %xtraiter187
  br i1 %prol.iter189.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2270

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.08.i.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.04.07.i.i.i.i.i.unr = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %i.ae = icmp samesign ult i64 %i.y, 3
  br i1 %i.ae, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !114
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.ah = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !116
  store ptr null, ptr %i.ag, align 8, !tbaa !114
  store <2 x ptr> %i.ah, ptr %.08.i.i.i.i.i, align 8, !tbaa !116
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !141
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  store ptr null, ptr %i.ak, align 8, !tbaa !114
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 24
  %i.am = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !116
  store ptr null, ptr %i.al, align 8, !tbaa !114
  store <2 x ptr> %i.am, ptr %i.aj, align 8, !tbaa !116
  store ptr null, ptr %i.ai, align 8, !tbaa !141
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store ptr null, ptr %i.ap, align 8, !tbaa !114
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 40
  %i.ar = load <2 x ptr>, ptr %i.an, align 8, !tbaa !116
  store ptr null, ptr %i.aq, align 8, !tbaa !114
  store <2 x ptr> %i.ar, ptr %i.ao, align 8, !tbaa !116
  store ptr null, ptr %i.an, align 8, !tbaa !141
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56
  store ptr null, ptr %i.au, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 56
  %i.aw = load <2 x ptr>, ptr %i.as, align 8, !tbaa !116
  store ptr null, ptr %i.av, align 8, !tbaa !114
  store <2 x ptr> %i.aw, ptr %i.at, align 8, !tbaa !116
  store ptr null, ptr %i.as, align 8, !tbaa !141
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 64 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.az = icmp eq ptr %i.ax, %i.p
  br i1 %i.az, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2271

_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.g
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %2
  store ptr %i.ba, ptr %i.c, align 8, !tbaa !188
  %i.bb = ptrtoint ptr %i.v to i64
  %i.bc = sub i64 %i.bb, %i.r
  %i.bd = ashr exact i64 %i.bc, 4                 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i69:                               ; preds = %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bz, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i ], [ %i.bd, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bg, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i ], [ %i.p, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bf, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i ], [ %i.v, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ]
  %i.bf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.bi = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !114 ; 8 uses
  store <2 x ptr> %i.bi, ptr %i.bg, align 8, !tbaa !116
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i69
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.bk, align 8, !tbaa !110
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !111
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !113
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #19, !inline_history !2272
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !113
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #19, !inline_history !2272
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.k ], [ %i.bx, %bb.l ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.m, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i, !prof !118

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #19
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i.i.i.i69
  %i.bz = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ca = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit, !llvm.loop !2273

_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.idx = shl nuw nsw i64 %2, 4
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.cd = extractelement <2 x ptr> %i.i, i64 0
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i, %_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit
  %.06.i.i.i = phi ptr [ %1, %_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit ], [ %i.da, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i ] ; 3 uses
  store ptr %i.cd, ptr %.06.i.i.i, align 8, !tbaa !141
  %i.ce = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !114 ; 3 uses
  %.not.i.i.i.i.i.i70 = icmp eq ptr %i.j, %i.cf
  br i1 %.not.i.i.i.i.i.i70, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = load i32, ptr %i.cc, align 4, !tbaa !42
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cc, align 4, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.cj = atomicrmw volatile add ptr %i.cc, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.o
  %i.ck = phi ptr [ %i.cf, %bb.o ], [ %i.cf, %bb.q ], [ %.pr.pre.i.i.i.i.i.i, %bb.r ] ; 8 uses
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not8.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.cl, align 8, !tbaa !110
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !111
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !113
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  tail call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #19, !inline_history !2274
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !113
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #19, !inline_history !2274
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i9.i.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i9.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.co, %bb.v ], [ %i.cy, %bb.w ]
  %i.cz = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.cz, label %bb.x, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i, !prof !118

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #19
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.t, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i
  store ptr %i.j, ptr %i.ce, align 8, !tbaa !114
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i

_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i, %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.da, %i.cb
  br i1 %.not.i.i.i, label %_ZSt4fillIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RKT0_.exit, label %bb.n, !llvm.loop !2275

bb.y:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit
  %i.db = sub nuw i64 %2, %i.t                    ; 9 uses
  %.not7.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 9 uses
  br i1 %.not.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader, label %.lr.ph.i.i.i.i.split.preheader

.lr.ph.i.i.i.i.split.preheader:                   ; preds = %.lr.ph.i.i.i.i
  %xtraiter = and i64 %i.db, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.split.prol.loopexit, label %.lr.ph.i.i.i.i.split.prol

.lr.ph.i.i.i.i.split.prol:                        ; preds = %.lr.ph.i.i.i.i.split.preheader
  store <2 x ptr> %i.i, ptr %i.p, align 8, !tbaa !116
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i.i.i.i.i.i.i.i.i71.prol = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i71.prol, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.split.prol
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !42
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dc, align 4, !tbaa !42
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.split.prol
  %i.dg = atomicrmw volatile add ptr %i.dc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol: ; preds = %bb.aa, %bb.z
  %i.dh = add nsw i64 %i.db, -1
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br label %.lr.ph.i.i.i.i.split.prol.loopexit

.lr.ph.i.i.i.i.split.prol.loopexit:               ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol, %.lr.ph.i.i.i.i.split.preheader
  %.lcssa184.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.split.preheader ], [ %i.di, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.split.preheader ], [ %i.di, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.db, %.lr.ph.i.i.i.i.split.preheader ], [ %i.dh, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %i.dj = icmp eq i64 %i.db, 1
  br i1 %i.dj, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.split

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader: ; preds = %.lr.ph.i.i.i.i
  %xtraiter185 = and i64 %i.db, 7                 ; 2 uses
  %lcmp.mod186.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader
  %i.dk = insertelement <2 x ptr> %i.i, ptr null, i64 1
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader
  %.09.i.i.i.i.us.prol = phi ptr [ %i.dm, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol ], [ %i.p, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader ] ; 2 uses
  %.068.i.i.i.i.us.prol = phi i64 [ %i.dl, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol ], [ %i.db, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol ], [ 0, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader ]
  store <2 x ptr> %i.dk, ptr %.09.i.i.i.i.us.prol, align 8, !tbaa !116
  %i.dl = add i64 %.068.i.i.i.i.us.prol, -1       ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter185
  br i1 %prol.iter.cmp.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol, !llvm.loop !2276

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader
  %.lcssa182.unr = phi ptr [ poison, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader ], [ %i.dm, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol ]
  %.09.i.i.i.i.us.unr = phi ptr [ %i.p, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader ], [ %i.dm, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol ]
  %.068.i.i.i.i.us.unr = phi i64 [ %i.db, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader ], [ %i.dl, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol ]
  %4 = icmp ult i64 %i.db, 8
  br i1 %4, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader.new

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader.new: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit
  %i.dn = insertelement <2 x ptr> %i.i, ptr null, i64 1
  %i.do = insertelement <2 x ptr> %i.i, ptr null, i64 1
  %i.dp = insertelement <2 x ptr> %i.i, ptr null, i64 1
  %i.dq = insertelement <2 x ptr> %i.i, ptr null, i64 1
  %i.dr = insertelement <2 x ptr> %i.i, ptr null, i64 1
  %i.ds = insertelement <2 x ptr> %i.i, ptr null, i64 1
  %i.dt = insertelement <2 x ptr> %i.i, ptr null, i64 1
  %i.du = insertelement <2 x ptr> %i.i, ptr null, i64 1
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader.new
  %.09.i.i.i.i.us = phi ptr [ %.09.i.i.i.i.us.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader.new ], [ %i.ed, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us ] ; 9 uses
  %.068.i.i.i.i.us = phi i64 [ %.068.i.i.i.i.us.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader.new ], [ %i.ec, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us ]
  store <2 x ptr> %i.dn, ptr %.09.i.i.i.i.us, align 8, !tbaa !116
  %i.dv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 16
  store <2 x ptr> %i.do, ptr %i.dv, align 8, !tbaa !116
  %i.dw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 32
  store <2 x ptr> %i.dp, ptr %i.dw, align 8, !tbaa !116
  %i.dx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 48
  store <2 x ptr> %i.dq, ptr %i.dx, align 8, !tbaa !116
  %i.dy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 64
  store <2 x ptr> %i.dr, ptr %i.dy, align 8, !tbaa !116
  %i.dz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 80
  store <2 x ptr> %i.ds, ptr %i.dz, align 8, !tbaa !116
  %i.ea = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 96
  store <2 x ptr> %i.dt, ptr %i.ea, align 8, !tbaa !116
  %i.eb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 112
  store <2 x ptr> %i.du, ptr %i.eb, align 8, !tbaa !116
  %i.ec = add i64 %.068.i.i.i.i.us, -8            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 128 ; 2 uses
  %.not.i.i.i.i.us.7 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i.i.us.7, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us, !llvm.loop !2277

.lr.ph.i.i.i.i.split:                             ; preds = %.lr.ph.i.i.i.i.split.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1
  %.09.i.i.i.i = phi ptr [ %i.eo, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1 ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i.split.prol.loopexit ] ; 3 uses
  %.068.i.i.i.i = phi i64 [ %i.en, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1 ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i.split.prol.loopexit ]
  store <2 x ptr> %i.i, ptr %.09.i.i.i.i, align 8, !tbaa !116
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i.i.i.i.i.i.i.i.i71 = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i71, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.split
  %i.ef = load i32, ptr %i.dc, align 4, !tbaa !42
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.dc, align 4, !tbaa !42
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.split
  %i.eh = atomicrmw volatile add ptr %i.dc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %i.ei = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store <2 x ptr> %i.i, ptr %i.ei, align 8, !tbaa !116
  %i.ej = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i.i.i.i.i.i.i.i.i71.1 = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i71.1, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %i.ek = load i32, ptr %i.dc, align 4, !tbaa !42
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %i.dc, align 4, !tbaa !42
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1

bb.ae:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %i.em = atomicrmw volatile add ptr %i.dc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1: ; preds = %bb.ae, %bb.ad
  %i.en = add i64 %.068.i.i.i.i, -2               ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.en, 0
  br i1 %.not.i.i.i.i.1, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.split, !llvm.loop !2277

_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.split.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us, %bb.y
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %bb.y ], [ %i.ed, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us ], [ %.lcssa182.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit ], [ %.lcssa184.unr, %.lr.ph.i.i.i.i.split.prol.loopexit ], [ %i.eo, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1 ] ; 4 uses
  store ptr %.0.lcssa.i.i.i.i, ptr %i.c, align 8, !tbaa !188
  %i.ep = icmp eq ptr %1, %i.p
  br i1 %i.ep, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread, label %.lr.ph.i.i.i.i.i72

_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %.fr193
  store ptr %i.eq, ptr %i.c, align 8, !tbaa !188
  br label %_ZSt4fillIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RKT0_.exit

.lr.ph.i.i.i.i.i72:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i72
  %.08.i.i.i.i.i73 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i72 ], [ %.0.lcssa.i.i.i.i, %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i74 = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i72 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit ] ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i73, i64 8
  store ptr null, ptr %i.er, align 8, !tbaa !114
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i74, i64 8
  %i.et = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i74, align 8, !tbaa !116
  store ptr null, ptr %i.es, align 8, !tbaa !114
  store <2 x ptr> %i.et, ptr %.08.i.i.i.i.i73, align 8, !tbaa !116
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i74, align 8, !tbaa !141
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i74, i64 16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i73, i64 16
  %i.ew = icmp eq ptr %i.eu, %i.p
  br i1 %i.ew, label %.lr.ph.i.i.i78, label %.lr.ph.i.i.i.i.i72, !llvm.loop !2271

.lr.ph.i.i.i78:                                   ; preds = %.lr.ph.i.i.i.i.i72
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %.fr193
  store ptr %i.ex, ptr %i.c, align 8, !tbaa !188
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.ez = extractelement <2 x ptr> %i.i, i64 0
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89, %.lr.ph.i.i.i78
  %.06.i.i.i79 = phi ptr [ %1, %.lr.ph.i.i.i78 ], [ %i.fw, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89 ] ; 3 uses
  store ptr %i.ez, ptr %.06.i.i.i79, align 8, !tbaa !141
  %i.fa = getelementptr inbounds nuw i8, ptr %.06.i.i.i79, i64 8 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !114 ; 3 uses
  %.not.i.i.i.i.i.i80 = icmp eq ptr %i.j, %i.fb
  br i1 %.not.i.i.i.i.i.i80, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i83, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i.i.i.i.i.i.i82 = icmp eq i8 %i.fc, 0
  br i1 %.not.i.i.i.i.i.i.i82, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fd = load i32, ptr %i.ey, align 4, !tbaa !42
  %i.fe = add nsw i32 %i.fd, 1
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i83

bb.aj:                                            ; preds = %bb.ah
  %i.ff = atomicrmw volatile add ptr %i.ey, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i91 = load ptr, ptr %i.fa, align 8, !tbaa !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i83

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i83: ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.fg = phi ptr [ %i.fb, %bb.ag ], [ %i.fb, %bb.ai ], [ %.pr.pre.i.i.i.i.i.i91, %bb.aj ] ; 8 uses
  %.not8.i.i.i.i.i.i84 = icmp eq ptr %i.fg, null
  br i1 %.not8.i.i.i.i.i.i84, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i88, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i83
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 4 uses
  %i.fi = load atomic i64, ptr %i.fh acquire, align 8 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 4294967297
  %i.fk = trunc i64 %i.fi to i32                  ; 2 uses
  br i1 %i.fj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.fh, align 8, !tbaa !110
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i32 0, ptr %i.fl, align 4, !tbaa !111
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !113
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  tail call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #19, !inline_history !2274
  %i.fp = load ptr, ptr %i.fg, align 8, !tbaa !113
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  tail call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #19, !inline_history !2274
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i88

bb.am:                                            ; preds = %bb.ak
  %i.fs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i9.i.i.i.i.i.i85 = icmp eq i8 %i.fs, 0
  br i1 %.not.i9.i.i.i.i.i.i85, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ft = add nsw i32 %i.fk, -1
  store i32 %i.ft, ptr %i.fh, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i86

bb.ao:                                            ; preds = %bb.am
  %i.fu = atomicrmw volatile add ptr %i.fh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i86

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i86: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i.i.i87 = phi i32 [ %i.fk, %bb.an ], [ %i.fu, %bb.ao ]
  %i.fv = icmp eq i32 %.0.i.i.i.i.i.i.i.i87, 1
  br i1 %i.fv, label %bb.ap, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i88, !prof !118

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i86
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #19
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i88

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i88: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i86, %bb.al, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i83
  store ptr %i.j, ptr %i.fa, align 8, !tbaa !114
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89

_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i88, %bb.af
  %i.fw = getelementptr inbounds nuw i8, ptr %.06.i.i.i79, i64 16 ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %i.fw, %i.p
  br i1 %.not.i.i.i90, label %_ZSt4fillIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RKT0_.exit, label %bb.af, !llvm.loop !2275

_ZSt4fillIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RKT0_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZSt4fillIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RKT0_.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.fy = load atomic i64, ptr %i.fx acquire, align 8 ; 2 uses
end_hunk_0
