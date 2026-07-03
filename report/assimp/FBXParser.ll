inline.NumInlined: 1816
inline.NumDeleted: 629
begin_hunk_0_@_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorI10aiVector2tIfESaIS3_EERKNS0_7ElementE:bb.a

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125 ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn79.pn, %bb.ay ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %i.iw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume

_ZN6Assimp3FBX12_GLOBAL__N_123ReadBinaryDataArrayHeadERPKcS3_RcRjRKNS0_7ElementE.exit: ; preds = %bb.h
  %i.ae = load i8, ptr %i.r, align 1              ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.val.i = load i32, ptr %i.af, align 1          ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  store ptr %i.ag, ptr %i.a, align 8
  %i.ah = and i32 %.val.i, 1
  %.not68 = icmp eq i32 %i.ah, 0
  br i1 %.not68, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp3FBX12_GLOBAL__N_123ReadBinaryDataArrayHeadERPKcS3_RcRjRKNS0_7ElementE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %1) #26
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.p:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %8, align 8               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.p
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.o
  %.pn79 = phi { ptr, i32 } [ %i.ai, %bb.o ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.aj, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ay

bb.q:                                             ; preds = %_ZN6Assimp3FBX12_GLOBAL__N_123ReadBinaryDataArrayHeadERPKcS3_RcRjRKNS0_7ElementE.exit
  %.not69 = icmp eq i32 %.val.i, 0
  br i1 %.not69, label %bb.ax, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = and i8 %i.ae, -3
  %or.cond.not = icmp eq i8 %i.ap, 100
  br i1 %or.cond.not, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %1) #26
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.w:                                             ; preds = %bb.t
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %10, align 8              ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.w
  %i.av = load i64, ptr %i.at, align 8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.v
  %.pn77 = phi { ptr, i32 } [ %i.aq, %bb.v ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.ar, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ay

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_119ReadBinaryDataArrayEcjRPKcS3_RSt6vectorIcSaIcEERKNS0_7ElementE(i8 noundef signext %i.ae, i32 noundef %.val.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.ax = zext i32 %.val.i to i64
  %i.ay = icmp eq i8 %i.ae, 100
  %i.az = select i1 %i.ay, i64 3, i64 2
  %i.ba = shl nuw nsw i64 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %12, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %.not70 = icmp eq i64 %i.ba, %i.bg
  br i1 %.not70, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull %1) #26
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.x
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ad:                                            ; preds = %bb.z
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.ae:                                            ; preds = %bb.aa
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %13, align 8              ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.ae
  %i.bn = load i64, ptr %i.bl, align 8
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.ad
  %.pn73 = phi { ptr, i32 } [ %i.bi, %bb.ad ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.bj, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.av

bb.af:                                            ; preds = %bb.y
  %i.bp = lshr exact i32 %.val.i, 1               ; 3 uses
  %i.bq = zext nneg i32 %i.bp to i64              ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = load ptr, ptr %0, align 8               ; 7 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 4 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = ashr exact i64 %i.bw, 3
  %i.by = icmp ult i64 %i.bx, %i.bq
  br i1 %i.by, label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.af
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 3 uses
  %i.cb = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cc = sub i64 %i.cb, %i.bv
  %i.cd = shl nuw nsw i64 %i.bq, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #28
          to label %.noexc unwind label %bb.ai    ; 7 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.bt, %i.ca
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc
  %i.cf = ptrtoaddr ptr %i.ce to i64
  %i.cg = add i64 %i.cb, -8
  %i.ch = sub i64 %i.cg, %i.bv                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check273 = icmp ult i64 %i.ch, 56
  %i.ck = sub i64 %i.cf, %i.bv
  %diff.check271 = icmp ult i64 %i.ck, 32
  %or.cond = or i1 %min.iters.check273, %diff.check271
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader332, label %vector.ph274

vector.ph274:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec276 = and i64 %i.cj, 4611686018427387900  ; 3 uses
  %i.cl = shl i64 %n.vec276, 3                    ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ce, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.bt, i64 %i.cl
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph274
  %index278 = phi i64 [ 0, %vector.ph274 ], [ %index.next283, %vector.body277 ] ; 2 uses
  %i.co = shl i64 %index278, 3                    ; 2 uses
  %next.gep279 = getelementptr i8, ptr %i.ce, i64 %i.co ; 2 uses
  %next.gep280 = getelementptr i8, ptr %i.bt, i64 %i.co ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.cp = getelementptr i8, ptr %next.gep280, i64 16
  %wide.load281 = load <2 x i64>, ptr %next.gep280, align 4, !alias.scope !67, !noalias !64
  %wide.load282 = load <2 x i64>, ptr %i.cp, align 4, !alias.scope !67, !noalias !64
  %i.cq = getelementptr i8, ptr %next.gep279, i64 16
  store <2 x i64> %wide.load281, ptr %next.gep279, align 4, !alias.scope !64, !noalias !67
  store <2 x i64> %wide.load282, ptr %i.cq, align 4, !alias.scope !64, !noalias !67
  %index.next283 = add nuw i64 %index278, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next283, %n.vec276
  br i1 %i.cr, label %middle.block284, label %vector.body277, !llvm.loop !69

middle.block284:                                  ; preds = %vector.body277
  %cmp.n285 = icmp eq i64 %i.cj, %n.vec276
  br i1 %cmp.n285, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader332

.lr.ph.i.i.i.i.preheader332:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block284
  %.012.i.i.i.i.ph = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.preheader ], [ %i.cm, %middle.block284 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.preheader ], [ %i.cn, %middle.block284 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader332, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader332 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader332 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.cs = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !67, !noalias !64
  store i64 %i.cs, ptr %.012.i.i.i.i, align 4, !alias.scope !64, !noalias !67
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ct, %i.ca
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !72

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block284, %.noexc
  %.not.i8.i = icmp eq ptr %i.bt, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bw) #27
  br label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.ag, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ce, ptr %0, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  store ptr %i.cv, ptr %i.bz, align 8
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.bq
  store ptr %i.cw, ptr %i.br, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.af
  switch i8 %i.ae, label %.loopexit [
    i8 100, label %bb.ah
    i8 102, label %bb.ao
  ]

bb.ah:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit
  %i.cx = load ptr, ptr %12, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.pre195 = load ptr, ptr %i.cy, align 8
  br label %bb.aj

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.aj:                                            ; preds = %bb.ah, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJffEEERS1_DpOT_.exit
  %i.da = phi ptr [ %.pre195, %bb.ah ], [ %i.el, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJffEEERS1_DpOT_.exit ] ; 5 uses
  %.061189 = phi ptr [ %i.cx, %bb.ah ], [ %i.en, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJffEEERS1_DpOT_.exit ] ; 2 uses
  %.062188 = phi i32 [ 0, %bb.ah ], [ %i.em, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJffEEERS1_DpOT_.exit ]
  %i.db = load <2 x double>, ptr %.061189, align 8
  %i.dc = fptrunc <2 x double> %i.db to <2 x float> ; 2 uses
  %i.dd = load ptr, ptr %i.br, align 8
  %.not.i = icmp eq ptr %i.da, %i.dd
  br i1 %.not.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store <2 x float> %i.dc, ptr %i.da, align 4
  %i.de = load ptr, ptr %i.cy, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  store ptr %i.df, ptr %i.cy, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJffEEERS1_DpOT_.exit

bb.al:                                            ; preds = %bb.aj
  %i.dg = load ptr, ptr %0, align 8               ; 7 uses
  %i.dh = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64               ; 3 uses
  %i.dj = sub i64 %i.dh, %i.di                    ; 4 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775800
  br i1 %i.dk, label %bb.am, label %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc94 unwind label %.loopexit.split-lp

.noexc94:                                         ; preds = %bb.am
  unreachable

_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.al
  %i.dl = ashr exact i64 %i.dj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 1152921504606846975)
  %i.dp = select i1 %i.dn, i64 1152921504606846975, i64 %i.do ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dq = shl nuw nsw i64 %i.dp, 3
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #28
          to label %.noexc95 unwind label %.loopexit174 ; 8 uses

.noexc95:                                         ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dj
  store <2 x float> %i.dc, ptr %i.ds, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.dg, %i.da
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc95
  %i.dt = ptrtoaddr ptr %i.dr to i64
  %i.du = sub i64 %i.dh, %i.di
  %i.dv = add i64 %i.du, -8                       ; 2 uses
  %i.dw = lshr i64 %i.dv, 3
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %min.iters.check309 = icmp ult i64 %i.dv, 24
  %i.dy = sub i64 %i.dt, %i.di
  %diff.check307 = icmp ult i64 %i.dy, 32
  %or.cond324 = or i1 %min.iters.check309, %diff.check307
  br i1 %or.cond324, label %.lr.ph.i.i.i.i.i.preheader328, label %vector.ph310

vector.ph310:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec312 = and i64 %i.dx, 4611686018427387900  ; 3 uses
  %i.dz = shl i64 %n.vec312, 3                    ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dr, i64 %i.dz  ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dg, i64 %i.dz
  br label %vector.body313

vector.body313:                                   ; preds = %vector.body313, %vector.ph310
  %index314 = phi i64 [ 0, %vector.ph310 ], [ %index.next319, %vector.body313 ] ; 2 uses
  %i.ec = shl i64 %index314, 3                    ; 2 uses
  %next.gep315 = getelementptr i8, ptr %i.dr, i64 %i.ec ; 2 uses
  %next.gep316 = getelementptr i8, ptr %i.dg, i64 %i.ec ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.ed = getelementptr i8, ptr %next.gep316, i64 16
  %wide.load317 = load <2 x i64>, ptr %next.gep316, align 4, !alias.scope !76, !noalias !73
  %wide.load318 = load <2 x i64>, ptr %i.ed, align 4, !alias.scope !76, !noalias !73
  %i.ee = getelementptr i8, ptr %next.gep315, i64 16
  store <2 x i64> %wide.load317, ptr %next.gep315, align 4, !alias.scope !73, !noalias !76
  store <2 x i64> %wide.load318, ptr %i.ee, align 4, !alias.scope !73, !noalias !76
  %index.next319 = add nuw i64 %index314, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next319, %n.vec312
  br i1 %i.ef, label %middle.block320, label %vector.body313, !llvm.loop !78

middle.block320:                                  ; preds = %vector.body313
  %cmp.n321 = icmp eq i64 %i.dx, %n.vec312
  br i1 %cmp.n321, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader328

.lr.ph.i.i.i.i.i.preheader328:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block320
  %.012.i.i.i.i.i.ph = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ea, %middle.block320 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eb, %middle.block320 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader328, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader328 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader328 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.eg = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !76, !noalias !73
  store i64 %i.eg, ptr %.012.i.i.i.i.i, align 4, !alias.scope !73, !noalias !76
  %i.eh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eh, %i.da
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !79

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block320, %.noexc95
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dr, %.noexc95 ], [ %i.ea, %middle.block320 ], [ %i.ei, %.lr.ph.i.i.i.i.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dj) #27
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.an, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.dr, ptr %0, align 8
  store ptr %i.ej, ptr %i.cy, align 8
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.ek, ptr %i.br, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJffEEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJffEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ak
  %i.el = phi ptr [ %i.ej, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.df, %bb.ak ]
  %i.em = add nuw nsw i32 %.062188, 1             ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.061189, i64 16
  %exitcond194.not = icmp eq i32 %i.em, %i.bp
  br i1 %exitcond194.not, label %.loopexit, label %bb.aj, !llvm.loop !80

.loopexit174:                                     ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ao:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit
  %i.eo = load ptr, ptr %12, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.pre = load ptr, ptr %i.ep, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRKfS6_EEERS1_DpOT_.exit
  %i.eq = phi ptr [ %.pre, %bb.ao ], [ %i.ga, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRKfS6_EEERS1_DpOT_.exit ] ; 5 uses
  %.059187 = phi i32 [ 0, %bb.ao ], [ %i.gb, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRKfS6_EEERS1_DpOT_.exit ]
  %.060186 = phi ptr [ %i.eo, %bb.ao ], [ %i.gc, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRKfS6_EEERS1_DpOT_.exit ] ; 2 uses
  %i.er = load <2 x float>, ptr %.060186, align 4 ; 2 uses
  %i.es = load ptr, ptr %i.br, align 8
  %.not.i96 = icmp eq ptr %i.eq, %i.es
  br i1 %.not.i96, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store <2 x float> %i.er, ptr %i.eq, align 4
  %i.et = load ptr, ptr %i.ep, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  store ptr %i.eu, ptr %i.ep, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRKfS6_EEERS1_DpOT_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.ev = load ptr, ptr %0, align 8               ; 7 uses
  %i.ew = ptrtoint ptr %i.eq to i64               ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64               ; 3 uses
  %i.ey = sub i64 %i.ew, %i.ex                    ; 4 uses
  %i.ez = icmp eq i64 %i.ey, 9223372036854775800
  br i1 %i.ez, label %bb.as, label %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i97

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc108 unwind label %.loopexit.split-lp177

.noexc108:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i97: ; preds = %bb.ar
  %i.fa = ashr exact i64 %i.ey, 3                 ; 3 uses
  %.sroa.speculated.i.i.i98 = call i64 @llvm.umax.i64(i64 %i.fa, i64 1)
  %i.fb = add nsw i64 %.sroa.speculated.i.i.i98, %i.fa ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  %i.fd = call i64 @llvm.umin.i64(i64 %i.fb, i64 1152921504606846975)
  %i.fe = select i1 %i.fc, i64 1152921504606846975, i64 %i.fd ; 3 uses
  %.not.i.i.i99 = icmp ne i64 %i.fe, 0
  call void @llvm.assume(i1 %.not.i.i.i99)
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #28
          to label %.noexc109 unwind label %.loopexit176 ; 8 uses

.noexc109:                                        ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i97
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ey
  store <2 x float> %i.er, ptr %i.fh, align 4
  %.not10.i.i.i.i.i100 = icmp eq ptr %i.ev, %i.eq
  br i1 %.not10.i.i.i.i.i100, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i105, label %.lr.ph.i.i.i.i.i101.preheader

.lr.ph.i.i.i.i.i101.preheader:                    ; preds = %.noexc109
  %i.fi = ptrtoaddr ptr %i.fg to i64
  %i.fj = sub i64 %i.ew, %i.ex
  %i.fk = add i64 %i.fj, -8                       ; 2 uses
  %i.fl = lshr i64 %i.fk, 3
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %min.iters.check291 = icmp ult i64 %i.fk, 24
  %i.fn = sub i64 %i.fi, %i.ex
  %diff.check289 = icmp ult i64 %i.fn, 32
  %or.cond325 = or i1 %min.iters.check291, %diff.check289
  br i1 %or.cond325, label %.lr.ph.i.i.i.i.i101.preheader329, label %vector.ph292

vector.ph292:                                     ; preds = %.lr.ph.i.i.i.i.i101.preheader
  %n.vec294 = and i64 %i.fm, 4611686018427387900  ; 3 uses
  %i.fo = shl i64 %n.vec294, 3                    ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fg, i64 %i.fo  ; 2 uses
  %i.fq = getelementptr i8, ptr %i.ev, i64 %i.fo
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph292
  %index296 = phi i64 [ 0, %vector.ph292 ], [ %index.next301, %vector.body295 ] ; 2 uses
  %i.fr = shl i64 %index296, 3                    ; 2 uses
  %next.gep297 = getelementptr i8, ptr %i.fg, i64 %i.fr ; 2 uses
  %next.gep298 = getelementptr i8, ptr %i.ev, i64 %i.fr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.fs = getelementptr i8, ptr %next.gep298, i64 16
  %wide.load299 = load <2 x i64>, ptr %next.gep298, align 4, !alias.scope !84, !noalias !81
  %wide.load300 = load <2 x i64>, ptr %i.fs, align 4, !alias.scope !84, !noalias !81
  %i.ft = getelementptr i8, ptr %next.gep297, i64 16
  store <2 x i64> %wide.load299, ptr %next.gep297, align 4, !alias.scope !81, !noalias !84
  store <2 x i64> %wide.load300, ptr %i.ft, align 4, !alias.scope !81, !noalias !84
  %index.next301 = add nuw i64 %index296, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next301, %n.vec294
  br i1 %i.fu, label %middle.block302, label %vector.body295, !llvm.loop !86

middle.block302:                                  ; preds = %vector.body295
  %cmp.n303 = icmp eq i64 %i.fm, %n.vec294
  br i1 %cmp.n303, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i105, label %.lr.ph.i.i.i.i.i101.preheader329

.lr.ph.i.i.i.i.i101.preheader329:                 ; preds = %.lr.ph.i.i.i.i.i101.preheader, %middle.block302
  %.012.i.i.i.i.i102.ph = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i101.preheader ], [ %i.fp, %middle.block302 ]
  %.0911.i.i.i.i.i103.ph = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i101.preheader ], [ %i.fq, %middle.block302 ]
  br label %.lr.ph.i.i.i.i.i101

.lr.ph.i.i.i.i.i101:                              ; preds = %.lr.ph.i.i.i.i.i101.preheader329, %.lr.ph.i.i.i.i.i101
  %.012.i.i.i.i.i102 = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i101 ], [ %.012.i.i.i.i.i102.ph, %.lr.ph.i.i.i.i.i101.preheader329 ] ; 2 uses
  %.0911.i.i.i.i.i103 = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i101 ], [ %.0911.i.i.i.i.i103.ph, %.lr.ph.i.i.i.i.i101.preheader329 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.fv = load i64, ptr %.0911.i.i.i.i.i103, align 4, !alias.scope !84, !noalias !81
  store i64 %i.fv, ptr %.012.i.i.i.i.i102, align 4, !alias.scope !81, !noalias !84
  %i.fw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i103, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i102, i64 8 ; 2 uses
  %.not.i.i.i.i.i104 = icmp eq ptr %i.fw, %i.eq
  br i1 %.not.i.i.i.i.i104, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i105, label %.lr.ph.i.i.i.i.i101, !llvm.loop !87

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i105: ; preds = %.lr.ph.i.i.i.i.i101, %middle.block302, %.noexc109
  %.0.lcssa.i.i.i.i.i106 = phi ptr [ %i.fg, %.noexc109 ], [ %i.fp, %middle.block302 ], [ %i.fx, %.lr.ph.i.i.i.i.i101 ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i106, i64 8 ; 2 uses
  %.not.i34.i.i107 = icmp eq ptr %i.ev, null
  br i1 %.not.i34.i.i107, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i105
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.ey) #27
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.at, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i105
  store ptr %i.fg, ptr %0, align 8
  store ptr %i.fy, ptr %i.ep, align 8
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fe
  store ptr %i.fz, ptr %i.br, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRKfS6_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRKfS6_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.aq
  %i.ga = phi ptr [ %i.fy, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.eu, %bb.aq ]
  %i.gb = add nuw nsw i32 %.059187, 1             ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.060186, i64 8
  %exitcond.not = icmp eq i32 %i.gb, %i.bp
  br i1 %exitcond.not, label %.loopexit, label %bb.ap, !llvm.loop !88

.loopexit176:                                     ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i97
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp177:                            ; preds = %bb.as
  %lpad.loopexit.split-lp179 = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit:                                        ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRKfS6_EEERS1_DpOT_.exit, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJffEEERS1_DpOT_.exit, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit
  %i.gd = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i.i110 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %.loopexit
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.loopexit, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ax

bb.av:                                            ; preds = %.loopexit176, %.loopexit.split-lp177, %.loopexit174, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.ai, %bb.ac
  %.pn73.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.ac ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.cz, %bb.ai ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit174 ], [ %lpad.loopexit178, %.loopexit176 ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp177 ]
  %i.gj = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i.i111 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIcSaIcEED2Ev.exit112, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gj to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.go) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit112

_ZNSt6vectorIcSaIcEED2Ev.exit112:                 ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ay

bb.ax:                                            ; preds = %bb.q, %_ZNSt6vectorIcSaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit181

bb.ay:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.pn79.pn = phi { ptr, i32 } [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn73.pn.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit112 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %common.resume

bb.az:                                            ; preds = %bb.g
  %i.gp = tail call noundef i64 @_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.n) ; 4 uses
  %i.gq = icmp ugt i64 %i.gp, 1152921504606846975
  br i1 %i.gq, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #26
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = load ptr, ptr %0, align 8               ; 7 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64               ; 4 uses
  %i.gw = sub i64 %i.gu, %i.gv                    ; 2 uses
  %i.gx = ashr exact i64 %i.gw, 3
  %i.gy = icmp ult i64 %i.gx, %i.gp
  br i1 %i.gy, label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i113, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit122

_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i113: ; preds = %bb.bb
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8            ; 3 uses
  %i.hb = ptrtoint ptr %i.ha to i64               ; 2 uses
  %i.hc = sub i64 %i.hb, %i.gv
  %i.hd = shl nuw nsw i64 %i.gp, 3
  %i.he = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hd) #28 ; 7 uses
  %.not10.i.i.i.i114 = icmp eq ptr %i.gt, %i.ha
  br i1 %.not10.i.i.i.i114, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i119, label %.lr.ph.i.i.i.i115.preheader

.lr.ph.i.i.i.i115.preheader:                      ; preds = %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i113
  %i.hf = ptrtoaddr ptr %i.he to i64
  %i.hg = add i64 %i.hb, -8
  %i.hh = sub i64 %i.hg, %i.gv                    ; 2 uses
  %i.hi = lshr i64 %i.hh, 3
  %i.hj = add nuw nsw i64 %i.hi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hh, 56
  %i.hk = sub i64 %i.hf, %i.gv
  %diff.check = icmp ult i64 %i.hk, 32
  %or.cond326 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond326, label %.lr.ph.i.i.i.i115.preheader335, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i115.preheader
  %n.vec = and i64 %i.hj, 4611686018427387900     ; 3 uses
  %i.hl = shl i64 %n.vec, 3                       ; 2 uses
  %i.hm = getelementptr i8, ptr %i.he, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.gt, i64 %i.hl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ho = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.he, i64 %i.ho ; 2 uses
  %next.gep249 = getelementptr i8, ptr %i.gt, i64 %i.ho ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.hp = getelementptr i8, ptr %next.gep249, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep249, align 4, !alias.scope !92, !noalias !89
  %wide.load250 = load <2 x i64>, ptr %i.hp, align 4, !alias.scope !92, !noalias !89
  %i.hq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !89, !noalias !92
  store <2 x i64> %wide.load250, ptr %i.hq, align 4, !alias.scope !89, !noalias !92
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hr = icmp eq i64 %index.next, %n.vec
  br i1 %i.hr, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i119, label %.lr.ph.i.i.i.i115.preheader335

.lr.ph.i.i.i.i115.preheader335:                   ; preds = %.lr.ph.i.i.i.i115.preheader, %middle.block
  %.012.i.i.i.i116.ph = phi ptr [ %i.he, %.lr.ph.i.i.i.i115.preheader ], [ %i.hm, %middle.block ]
  %.0911.i.i.i.i117.ph = phi ptr [ %i.gt, %.lr.ph.i.i.i.i115.preheader ], [ %i.hn, %middle.block ]
  br label %.lr.ph.i.i.i.i115

.lr.ph.i.i.i.i115:                                ; preds = %.lr.ph.i.i.i.i115.preheader335, %.lr.ph.i.i.i.i115
  %.012.i.i.i.i116 = phi ptr [ %i.hu, %.lr.ph.i.i.i.i115 ], [ %.012.i.i.i.i116.ph, %.lr.ph.i.i.i.i115.preheader335 ] ; 2 uses
  %.0911.i.i.i.i117 = phi ptr [ %i.ht, %.lr.ph.i.i.i.i115 ], [ %.0911.i.i.i.i117.ph, %.lr.ph.i.i.i.i115.preheader335 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.hs = load i64, ptr %.0911.i.i.i.i117, align 4, !alias.scope !92, !noalias !89
  store i64 %i.hs, ptr %.012.i.i.i.i116, align 4, !alias.scope !89, !noalias !92
  %i.ht = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i117, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i116, i64 8
  %.not.i.i.i.i118 = icmp eq ptr %i.ht, %i.ha
  br i1 %.not.i.i.i.i118, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i119, label %.lr.ph.i.i.i.i115, !llvm.loop !95

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i119: ; preds = %.lr.ph.i.i.i.i115, %middle.block, %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i113
  %.not.i8.i120 = icmp eq ptr %i.gt, null
  br i1 %.not.i8.i120, label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i121, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i119
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gw) #27
  br label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i121

_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i121: ; preds = %bb.bc, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i119
  store ptr %i.he, ptr %0, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hc
  store ptr %i.hv, ptr %i.gz, align 8
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.gp
  store ptr %i.hw, ptr %i.gr, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit122

_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit122: ; preds = %bb.bb, %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i121
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8            ; 2 uses
  %.not.i123 = icmp eq ptr %i.hy, null
  br i1 %.not.i123, label %bb.bd, label %_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE.exit

bb.bd:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 8 dereferenceable(40) %1) #26
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.hz = landingpad { ptr, i32 }
          cleanup
  %i.ia = load ptr, ptr %2, align 8               ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124: ; preds = %bb.bf
  %i.id = load i64, ptr %i.ib, align 8
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE.exit: ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.if = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.if, ptr %15, align 8
  store i8 97, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 1, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 0, ptr %i.ih, align 1
  %i.ii = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6Assimp3FBX18GetRequiredElementERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(48) %i.hy, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull %1)
          to label %bb.bg unwind label %bb.bk     ; 2 uses

bb.bg:                                            ; preds = %_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE.exit
  %i.ij = load ptr, ptr %15, align 8              ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.if
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.bg
  %i.il = load i64, ptr %i.if, align 8
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ip = load ptr, ptr %i.io, align 8            ; 3 uses
  %i.iq = load ptr, ptr %i.in, align 8            ; 3 uses
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = and i64 %i.it, 8
  %.not = icmp eq i64 %i.iu, 0
  br i1 %.not, label %.preheader, label %bb.bh

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %.not173184 = icmp eq ptr %i.iq, %i.ip
  br i1 %.not173184, label %.loopexit181, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.bn

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull %1) #26
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  unreachable

bb.bk:                                            ; preds = %_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE.exit
  %i.iw = landingpad { ptr, i32 }
          cleanup
  %i.ix = load ptr, ptr %15, align 8              ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.if
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.bk
  %i.iz = load i64, ptr %i.if, align 8
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %common.resume

bb.bl:                                            ; preds = %bb.bh
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

bb.bm:                                            ; preds = %bb.bi
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jd = load ptr, ptr %16, align 8              ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.bm
  %i.jg = load i64, ptr %i.je, align 8
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134, %bb.bl
  %.pn65 = phi { ptr, i32 } [ %i.jb, %bb.bl ], [ %i.jc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134 ], [ %i.jc, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %common.resume

bb.bn:                                            ; preds = %.lr.ph, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit
  %.sroa.0155.0185 = phi ptr [ %i.iq, %.lr.ph ], [ %i.jl, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0155.0185, i64 8
  %i.jj = load ptr, ptr %.sroa.0155.0185, align 8
  %i.jk = call noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.jj) ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0155.0185, i64 16 ; 2 uses
  %i.jm = load ptr, ptr %i.ji, align 8
  %i.jn = call noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.jm) ; 2 uses
  %i.jo = load ptr, ptr %i.iv, align 8            ; 6 uses
  %i.jp = load ptr, ptr %i.gr, align 8
  %.not.i137 = icmp eq ptr %i.jo, %i.jp
  br i1 %.not.i137, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store float %i.jk, ptr %i.jo, align 4
  %.sroa_idx148 = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  store float %i.jn, ptr %.sroa_idx148, align 4
  %i.jq = load ptr, ptr %i.iv, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store ptr %i.jr, ptr %i.iv, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit

bb.bp:                                            ; preds = %bb.bn
  %i.js = load ptr, ptr %0, align 8               ; 7 uses
  %i.jt = ptrtoint ptr %i.jo to i64               ; 2 uses
  %i.ju = ptrtoint ptr %i.js to i64               ; 3 uses
  %i.jv = sub i64 %i.jt, %i.ju                    ; 4 uses
  %i.jw = icmp eq i64 %i.jv, 9223372036854775800
  br i1 %i.jw, label %bb.bq, label %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i138

bb.bq:                                            ; preds = %bb.bp
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
  unreachable

_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i138: ; preds = %bb.bp
  %i.jx = ashr exact i64 %i.jv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i139 = call i64 @llvm.umax.i64(i64 %i.jx, i64 1)
  %i.jy = add nsw i64 %.sroa.speculated.i.i.i139, %i.jx ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %i.jx
  %i.ka = call i64 @llvm.umin.i64(i64 %i.jy, i64 1152921504606846975)
  %i.kb = select i1 %i.jz, i64 1152921504606846975, i64 %i.ka ; 3 uses
  %.not.i.i.i140 = icmp ne i64 %i.kb, 0
  call void @llvm.assume(i1 %.not.i.i.i140)
  %i.kc = shl nuw nsw i64 %i.kb, 3
  %i.kd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kc) #28 ; 8 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.jv ; 2 uses
  store float %i.jk, ptr %i.ke, align 4
  %.sroa_idx150 = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  store float %i.jn, ptr %.sroa_idx150, align 4
  %.not10.i.i.i.i.i141 = icmp eq ptr %i.js, %i.jo
  br i1 %.not10.i.i.i.i.i141, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i142.preheader

.lr.ph.i.i.i.i.i142.preheader:                    ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i138
  %i.kf = ptrtoaddr ptr %i.kd to i64
  %i.kg = sub i64 %i.jt, %i.ju
  %i.kh = add i64 %i.kg, -8                       ; 2 uses
  %i.ki = lshr i64 %i.kh, 3
  %i.kj = add nuw nsw i64 %i.ki, 1                ; 2 uses
  %min.iters.check255 = icmp ult i64 %i.kh, 24
  %i.kk = sub i64 %i.kf, %i.ju
  %diff.check253 = icmp ult i64 %i.kk, 32
  %or.cond327 = or i1 %min.iters.check255, %diff.check253
  br i1 %or.cond327, label %.lr.ph.i.i.i.i.i142.preheader333, label %vector.ph256

vector.ph256:                                     ; preds = %.lr.ph.i.i.i.i.i142.preheader
  %n.vec258 = and i64 %i.kj, 4611686018427387900  ; 3 uses
  %i.kl = shl i64 %n.vec258, 3                    ; 2 uses
  %i.km = getelementptr i8, ptr %i.kd, i64 %i.kl  ; 2 uses
  %i.kn = getelementptr i8, ptr %i.js, i64 %i.kl
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph256
  %index260 = phi i64 [ 0, %vector.ph256 ], [ %index.next265, %vector.body259 ] ; 2 uses
  %i.ko = shl i64 %index260, 3                    ; 2 uses
  %next.gep261 = getelementptr i8, ptr %i.kd, i64 %i.ko ; 2 uses
  %next.gep262 = getelementptr i8, ptr %i.js, i64 %i.ko ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.kp = getelementptr i8, ptr %next.gep262, i64 16
  %wide.load263 = load <2 x i64>, ptr %next.gep262, align 4, !alias.scope !99, !noalias !96
  %wide.load264 = load <2 x i64>, ptr %i.kp, align 4, !alias.scope !99, !noalias !96
  %i.kq = getelementptr i8, ptr %next.gep261, i64 16
  store <2 x i64> %wide.load263, ptr %next.gep261, align 4, !alias.scope !96, !noalias !99
  store <2 x i64> %wide.load264, ptr %i.kq, align 4, !alias.scope !96, !noalias !99
  %index.next265 = add nuw i64 %index260, 4       ; 2 uses
  %i.kr = icmp eq i64 %index.next265, %n.vec258
  br i1 %i.kr, label %middle.block266, label %vector.body259, !llvm.loop !101

middle.block266:                                  ; preds = %vector.body259
  %cmp.n267 = icmp eq i64 %i.kj, %n.vec258
  br i1 %cmp.n267, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i142.preheader333

.lr.ph.i.i.i.i.i142.preheader333:                 ; preds = %.lr.ph.i.i.i.i.i142.preheader, %middle.block266
  %.012.i.i.i.i.i143.ph = phi ptr [ %i.kd, %.lr.ph.i.i.i.i.i142.preheader ], [ %i.km, %middle.block266 ]
  %.0911.i.i.i.i.i144.ph = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i142.preheader ], [ %i.kn, %middle.block266 ]
  br label %.lr.ph.i.i.i.i.i142

.lr.ph.i.i.i.i.i142:                              ; preds = %.lr.ph.i.i.i.i.i142.preheader333, %.lr.ph.i.i.i.i.i142
  %.012.i.i.i.i.i143 = phi ptr [ %i.ku, %.lr.ph.i.i.i.i.i142 ], [ %.012.i.i.i.i.i143.ph, %.lr.ph.i.i.i.i.i142.preheader333 ] ; 2 uses
  %.0911.i.i.i.i.i144 = phi ptr [ %i.kt, %.lr.ph.i.i.i.i.i142 ], [ %.0911.i.i.i.i.i144.ph, %.lr.ph.i.i.i.i.i142.preheader333 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.ks = load i64, ptr %.0911.i.i.i.i.i144, align 4, !alias.scope !99, !noalias !96
  store i64 %i.ks, ptr %.012.i.i.i.i.i143, align 4, !alias.scope !96, !noalias !99
  %i.kt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i144, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i143, i64 8 ; 2 uses
  %.not.i.i.i.i.i145 = icmp eq ptr %i.kt, %i.jo
  br i1 %.not.i.i.i.i.i145, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i142, !llvm.loop !102

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i142, %middle.block266, %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i138
  %.0.lcssa.i.i.i.i.i146 = phi ptr [ %i.kd, %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i138 ], [ %i.km, %middle.block266 ], [ %i.ku, %.lr.ph.i.i.i.i.i142 ]
  %i.kv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i146, i64 8
  %.not.i23.i.i = icmp eq ptr %i.js, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef %i.jv) #27
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.br, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.kd, ptr %0, align 8
  store ptr %i.kv, ptr %i.iv, align 8
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kb
  store ptr %i.kw, ptr %i.gr, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.bo, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.not173 = icmp eq ptr %i.jl, %i.ip
  br i1 %.not173, label %.loopexit181, label %bb.bn, !llvm.loop !103

.loopexit181:                                     ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit, %.preheader, %bb.ax
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %0, align 8                ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIP10aiVector2tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIP10aiVector2tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.r, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #26
  unreachable

_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.x, i8 0, i64 %i.y, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.z = ptrtoaddr ptr %i.w to i64
  %i.aa = sub i64 %i.d, %i.e
  %i.ab = add i64 %i.aa, -8                       ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 56
  %i.ae = sub i64 %i.z, %i.e
  %diff.check = icmp ult i64 %i.ae, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.ai ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.aj = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 4, !alias.scope !107, !noalias !104
  %wide.load13 = load <2 x i64>, ptr %i.aj, align 4, !alias.scope !107, !noalias !104
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !104, !noalias !107
  store <2 x i64> %wide.load13, ptr %i.ak, align 4, !alias.scope !104, !noalias !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.am = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !107, !noalias !104
  store i64 %i.am, ptr %.012.i.i.i.i, align 4, !alias.scope !104, !noalias !107
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !110

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.not.i36.i = icmp eq ptr %i.c, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.ap = sub i64 %i.l, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #27
  br label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i

_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i: ; preds = %bb.e, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.w, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.at, ptr %i.a, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i, %_ZSt27__uninitialized_default_n_aIP10aiVector2tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorIiSaIiEERKNS0_7ElementE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(address_is_null) dereferenceable(40) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.std::vector.17", align 8   ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %1) #26
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %6, align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn50 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.q = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.h, label %bb.ao

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.u = load ptr, ptr %i.q, align 8              ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ult i64 %i.z, 5
  br i1 %i.aa, label %bb.i, label %_ZN6Assimp3FBX12_GLOBAL__N_123ReadBinaryDataArrayHeadERPKcS3_RcRjRKNS0_7ElementE.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 8 dereferenceable(40) %1) #26
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %4, align 8               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71 ], [ %.pn50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn47.pn, %bb.an ], [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ]
  resume { ptr, i32 } %common.resume.op

end_hunk_0
