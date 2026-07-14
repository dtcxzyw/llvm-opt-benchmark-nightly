inline.NumInlined: 1816
inline.NumDeleted: 629
begin_hunk_0_@_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorI10aiVector2tIfESaIS3_EERKNS0_7ElementE:bb.a

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125 ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn79.pn, %bb.ay ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %i.iu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ]
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
  %18 = add i64 %i.cb, -8
  %i.cg = sub i64 %18, %i.bv                      ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check273 = icmp ult i64 %i.cg, 72
  %i.cj = sub i64 %i.bv, %i.cf
  %diff.check271 = icmp ugt i64 %i.cj, -32
  %or.cond = or i1 %min.iters.check273, %diff.check271
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader332, label %vector.ph274

vector.ph274:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec276 = and i64 %i.ci, 4611686018427387900  ; 3 uses
  %i.ck = shl i64 %n.vec276, 3                    ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ce, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.bt, i64 %i.ck
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph274
  %index278 = phi i64 [ 0, %vector.ph274 ], [ %index.next283, %vector.body277 ] ; 2 uses
  %i.cn = shl i64 %index278, 3                    ; 2 uses
  %next.gep279 = getelementptr i8, ptr %i.ce, i64 %i.cn ; 2 uses
  %next.gep280 = getelementptr i8, ptr %i.bt, i64 %i.cn ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.co = getelementptr i8, ptr %next.gep280, i64 16
  %wide.load281 = load <2 x i64>, ptr %next.gep280, align 4, !alias.scope !67, !noalias !64
  %wide.load282 = load <2 x i64>, ptr %i.co, align 4, !alias.scope !67, !noalias !64
  %i.cp = getelementptr i8, ptr %next.gep279, i64 16
  store <2 x i64> %wide.load281, ptr %next.gep279, align 4, !alias.scope !64, !noalias !67
  store <2 x i64> %wide.load282, ptr %i.cp, align 4, !alias.scope !64, !noalias !67
  %index.next283 = add nuw i64 %index278, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next283, %n.vec276
  br i1 %i.cq, label %middle.block284, label %vector.body277, !llvm.loop !69

middle.block284:                                  ; preds = %vector.body277
  %cmp.n285 = icmp eq i64 %i.ci, %n.vec276
  br i1 %cmp.n285, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader332

.lr.ph.i.i.i.i.preheader332:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block284
  %.012.i.i.i.i.ph = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.preheader ], [ %i.cl, %middle.block284 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.preheader ], [ %i.cm, %middle.block284 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader332, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader332 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader332 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.cr = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !67, !noalias !64
  store i64 %i.cr, ptr %.012.i.i.i.i, align 4, !alias.scope !64, !noalias !67
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.cs, %i.ca
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !72

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block284, %.noexc
  %.not.i8.i = icmp eq ptr %i.bt, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bw) #27
  br label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.ag, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ce, ptr %0, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  store ptr %i.cu, ptr %i.bz, align 8
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.bq
  store ptr %i.cv, ptr %i.br, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.af
  switch i8 %i.ae, label %.loopexit [
    i8 100, label %bb.ah
    i8 102, label %bb.ao
  ]

bb.ah:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit
  %i.cw = load ptr, ptr %12, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.pre195 = load ptr, ptr %i.cx, align 8
  br label %bb.aj

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.aj:                                            ; preds = %bb.ah, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJffEEERS1_DpOT_.exit
  %i.cz = phi ptr [ %.pre195, %bb.ah ], [ %i.ek, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJffEEERS1_DpOT_.exit ] ; 5 uses
  %.061189 = phi ptr [ %i.cw, %bb.ah ], [ %i.em, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJffEEERS1_DpOT_.exit ] ; 2 uses
  %.062188 = phi i32 [ 0, %bb.ah ], [ %i.el, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJffEEERS1_DpOT_.exit ]
  %i.da = load <2 x double>, ptr %.061189, align 8
  %i.db = fptrunc <2 x double> %i.da to <2 x float> ; 2 uses
  %i.dc = load ptr, ptr %i.br, align 8
  %.not.i = icmp eq ptr %i.cz, %i.dc
  br i1 %.not.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store <2 x float> %i.db, ptr %i.cz, align 4
  %i.dd = load ptr, ptr %i.cx, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  store ptr %i.de, ptr %i.cx, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJffEEERS1_DpOT_.exit

bb.al:                                            ; preds = %bb.aj
  %i.df = load ptr, ptr %0, align 8               ; 7 uses
  %i.dg = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64               ; 3 uses
  %i.di = sub i64 %i.dg, %i.dh                    ; 4 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775800
  br i1 %i.dj, label %bb.am, label %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc94 unwind label %.loopexit.split-lp

.noexc94:                                         ; preds = %bb.am
  unreachable

_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.al
  %i.dk = ashr exact i64 %i.di, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dl, i64 1152921504606846975)
  %i.do = select i1 %i.dm, i64 1152921504606846975, i64 %i.dn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dp = shl nuw nsw i64 %i.do, 3
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #28
          to label %.noexc95 unwind label %.loopexit174 ; 8 uses

.noexc95:                                         ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.di
  store <2 x float> %i.db, ptr %i.dr, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.df, %i.cz
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc95
  %i.ds = ptrtoaddr ptr %i.dq to i64
  %i.dt = sub i64 %i.dg, %i.dh
  %i.du = add i64 %i.dt, -8                       ; 2 uses
  %i.dv = lshr i64 %i.du, 3
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check309 = icmp ult i64 %i.du, 24
  %i.dx = sub i64 %i.dh, %i.ds
  %diff.check307 = icmp ugt i64 %i.dx, -32
  %or.cond324 = or i1 %min.iters.check309, %diff.check307
  br i1 %or.cond324, label %.lr.ph.i.i.i.i.i.preheader328, label %vector.ph310

vector.ph310:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec312 = and i64 %i.dw, 4611686018427387900  ; 3 uses
  %i.dy = shl i64 %n.vec312, 3                    ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dq, i64 %i.dy  ; 2 uses
  %i.ea = getelementptr i8, ptr %i.df, i64 %i.dy
  br label %vector.body313

vector.body313:                                   ; preds = %vector.body313, %vector.ph310
  %index314 = phi i64 [ 0, %vector.ph310 ], [ %index.next319, %vector.body313 ] ; 2 uses
  %i.eb = shl i64 %index314, 3                    ; 2 uses
  %next.gep315 = getelementptr i8, ptr %i.dq, i64 %i.eb ; 2 uses
  %next.gep316 = getelementptr i8, ptr %i.df, i64 %i.eb ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.ec = getelementptr i8, ptr %next.gep316, i64 16
  %wide.load317 = load <2 x i64>, ptr %next.gep316, align 4, !alias.scope !76, !noalias !73
  %wide.load318 = load <2 x i64>, ptr %i.ec, align 4, !alias.scope !76, !noalias !73
  %i.ed = getelementptr i8, ptr %next.gep315, i64 16
  store <2 x i64> %wide.load317, ptr %next.gep315, align 4, !alias.scope !73, !noalias !76
  store <2 x i64> %wide.load318, ptr %i.ed, align 4, !alias.scope !73, !noalias !76
  %index.next319 = add nuw i64 %index314, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next319, %n.vec312
  br i1 %i.ee, label %middle.block320, label %vector.body313, !llvm.loop !78

middle.block320:                                  ; preds = %vector.body313
  %cmp.n321 = icmp eq i64 %i.dw, %n.vec312
  br i1 %cmp.n321, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader328

.lr.ph.i.i.i.i.i.preheader328:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block320
  %.012.i.i.i.i.i.ph = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dz, %middle.block320 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ea, %middle.block320 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader328, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader328 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader328 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.ef = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !76, !noalias !73
  store i64 %i.ef, ptr %.012.i.i.i.i.i, align 4, !alias.scope !73, !noalias !76
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eg, %i.cz
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !79

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block320, %.noexc95
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dq, %.noexc95 ], [ %i.dz, %middle.block320 ], [ %i.eh, %.lr.ph.i.i.i.i.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.di) #27
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorI10aiVector2tIfESaIS3_EERKNS0_7ElementE:bb.a
bb.aq:                                            ; preds = %bb.ap
  store <2 x float> %i.eq, ptr %i.ep, align 4
  %i.es = load ptr, ptr %i.eo, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  store ptr %i.et, ptr %i.eo, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRKfS6_EEERS1_DpOT_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.eu = load ptr, ptr %0, align 8               ; 7 uses
  %i.ev = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64               ; 3 uses
  %i.ex = sub i64 %i.ev, %i.ew                    ; 4 uses
  %i.ey = icmp eq i64 %i.ex, 9223372036854775800
  br i1 %i.ey, label %bb.as, label %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i97

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc108 unwind label %.loopexit.split-lp177

.noexc108:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i97: ; preds = %bb.ar
  %i.ez = ashr exact i64 %i.ex, 3                 ; 3 uses
  %.sroa.speculated.i.i.i98 = call i64 @llvm.umax.i64(i64 %i.ez, i64 1)
  %i.fa = add nsw i64 %.sroa.speculated.i.i.i98, %i.ez ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.ez
  %i.fc = call i64 @llvm.umin.i64(i64 %i.fa, i64 1152921504606846975)
  %i.fd = select i1 %i.fb, i64 1152921504606846975, i64 %i.fc ; 3 uses
  %.not.i.i.i99 = icmp ne i64 %i.fd, 0
  call void @llvm.assume(i1 %.not.i.i.i99)
  %i.fe = shl nuw nsw i64 %i.fd, 3
  %i.ff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fe) #28
          to label %.noexc109 unwind label %.loopexit176 ; 8 uses

.noexc109:                                        ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i97
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ex
  store <2 x float> %i.eq, ptr %i.fg, align 4
  %.not10.i.i.i.i.i100 = icmp eq ptr %i.eu, %i.ep
  br i1 %.not10.i.i.i.i.i100, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i105, label %.lr.ph.i.i.i.i.i101.preheader

.lr.ph.i.i.i.i.i101.preheader:                    ; preds = %.noexc109
  %i.fh = ptrtoaddr ptr %i.ff to i64
  %i.fi = sub i64 %i.ev, %i.ew
  %i.fj = add i64 %i.fi, -8                       ; 2 uses
  %i.fk = lshr i64 %i.fj, 3
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 2 uses
  %min.iters.check291 = icmp ult i64 %i.fj, 24
  %i.fm = sub i64 %i.ew, %i.fh
  %diff.check289 = icmp ugt i64 %i.fm, -32
  %or.cond325 = or i1 %min.iters.check291, %diff.check289
  br i1 %or.cond325, label %.lr.ph.i.i.i.i.i101.preheader329, label %vector.ph292

vector.ph292:                                     ; preds = %.lr.ph.i.i.i.i.i101.preheader
  %n.vec294 = and i64 %i.fl, 4611686018427387900  ; 3 uses
  %i.fn = shl i64 %n.vec294, 3                    ; 2 uses
  %i.fo = getelementptr i8, ptr %i.ff, i64 %i.fn  ; 2 uses
  %i.fp = getelementptr i8, ptr %i.eu, i64 %i.fn
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph292
  %index296 = phi i64 [ 0, %vector.ph292 ], [ %index.next301, %vector.body295 ] ; 2 uses
  %i.fq = shl i64 %index296, 3                    ; 2 uses
  %next.gep297 = getelementptr i8, ptr %i.ff, i64 %i.fq ; 2 uses
  %next.gep298 = getelementptr i8, ptr %i.eu, i64 %i.fq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.fr = getelementptr i8, ptr %next.gep298, i64 16
  %wide.load299 = load <2 x i64>, ptr %next.gep298, align 4, !alias.scope !84, !noalias !81
  %wide.load300 = load <2 x i64>, ptr %i.fr, align 4, !alias.scope !84, !noalias !81
  %i.fs = getelementptr i8, ptr %next.gep297, i64 16
  store <2 x i64> %wide.load299, ptr %next.gep297, align 4, !alias.scope !81, !noalias !84
  store <2 x i64> %wide.load300, ptr %i.fs, align 4, !alias.scope !81, !noalias !84
  %index.next301 = add nuw i64 %index296, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next301, %n.vec294
  br i1 %i.ft, label %middle.block302, label %vector.body295, !llvm.loop !86

middle.block302:                                  ; preds = %vector.body295
  %cmp.n303 = icmp eq i64 %i.fl, %n.vec294
  br i1 %cmp.n303, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i105, label %.lr.ph.i.i.i.i.i101.preheader329

.lr.ph.i.i.i.i.i101.preheader329:                 ; preds = %.lr.ph.i.i.i.i.i101.preheader, %middle.block302
  %.012.i.i.i.i.i102.ph = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i101.preheader ], [ %i.fo, %middle.block302 ]
  %.0911.i.i.i.i.i103.ph = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i101.preheader ], [ %i.fp, %middle.block302 ]
  br label %.lr.ph.i.i.i.i.i101

.lr.ph.i.i.i.i.i101:                              ; preds = %.lr.ph.i.i.i.i.i101.preheader329, %.lr.ph.i.i.i.i.i101
  %.012.i.i.i.i.i102 = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i101 ], [ %.012.i.i.i.i.i102.ph, %.lr.ph.i.i.i.i.i101.preheader329 ] ; 2 uses
  %.0911.i.i.i.i.i103 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i101 ], [ %.0911.i.i.i.i.i103.ph, %.lr.ph.i.i.i.i.i101.preheader329 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.fu = load i64, ptr %.0911.i.i.i.i.i103, align 4, !alias.scope !84, !noalias !81
  store i64 %i.fu, ptr %.012.i.i.i.i.i102, align 4, !alias.scope !81, !noalias !84
  %i.fv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i103, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i102, i64 8 ; 2 uses
  %.not.i.i.i.i.i104 = icmp eq ptr %i.fv, %i.ep
  br i1 %.not.i.i.i.i.i104, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i105, label %.lr.ph.i.i.i.i.i101, !llvm.loop !87

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i105: ; preds = %.lr.ph.i.i.i.i.i101, %middle.block302, %.noexc109
  %.0.lcssa.i.i.i.i.i106 = phi ptr [ %i.ff, %.noexc109 ], [ %i.fo, %middle.block302 ], [ %i.fw, %.lr.ph.i.i.i.i.i101 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i106, i64 8 ; 2 uses
  %.not.i34.i.i107 = icmp eq ptr %i.eu, null
  br i1 %.not.i34.i.i107, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i105
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ex) #27
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.at, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i105
  store ptr %i.ff, ptr %0, align 8
  store ptr %i.fx, ptr %i.eo, align 8
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fd
  store ptr %i.fy, ptr %i.br, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRKfS6_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRKfS6_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.aq
  %i.fz = phi ptr [ %i.fx, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKfS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.et, %bb.aq ]
  %i.ga = add nuw nsw i32 %.059187, 1             ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.060186, i64 8
  %exitcond.not = icmp eq i32 %i.ga, %i.bp
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
  %i.gc = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i.i110 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %.loopexit
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gc to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gh) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.loopexit, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ax

bb.av:                                            ; preds = %.loopexit176, %.loopexit.split-lp177, %.loopexit174, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.ai, %bb.ac
  %.pn73.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.ac ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.cy, %bb.ai ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit174 ], [ %lpad.loopexit178, %.loopexit176 ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp177 ]
  %i.gi = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i.i111 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIcSaIcEED2Ev.exit112, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.gi to i64
  %i.gn = sub i64 %i.gl, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gn) #27
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
  %i.go = tail call noundef i64 @_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.n) ; 4 uses
  %i.gp = icmp ugt i64 %i.go, 1152921504606846975
  br i1 %i.gp, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #26
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = load ptr, ptr %0, align 8               ; 7 uses
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64               ; 4 uses
  %i.gv = sub i64 %i.gt, %i.gu                    ; 2 uses
  %i.gw = ashr exact i64 %i.gv, 3
  %i.gx = icmp ult i64 %i.gw, %i.go
  br i1 %i.gx, label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i113, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit122

_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i113: ; preds = %bb.bb
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8            ; 3 uses
  %i.ha = ptrtoint ptr %i.gz to i64               ; 2 uses
  %i.hb = sub i64 %i.ha, %i.gu
  %i.hc = shl nuw nsw i64 %i.go, 3
  %i.hd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #28 ; 7 uses
  %.not10.i.i.i.i114 = icmp eq ptr %i.gs, %i.gz
  br i1 %.not10.i.i.i.i114, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i119, label %.lr.ph.i.i.i.i115.preheader

.lr.ph.i.i.i.i115.preheader:                      ; preds = %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i113
  %i.he = ptrtoaddr ptr %i.hd to i64
  %19 = add i64 %i.ha, -8
  %i.hf = sub i64 %19, %i.gu                      ; 2 uses
  %i.hg = lshr i64 %i.hf, 3
  %i.hh = add nuw nsw i64 %i.hg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hf, 72
  %i.hi = sub i64 %i.gu, %i.he
  %diff.check = icmp ugt i64 %i.hi, -32
  %or.cond326 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond326, label %.lr.ph.i.i.i.i115.preheader335, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i115.preheader
  %n.vec = and i64 %i.hh, 4611686018427387900     ; 3 uses
  %i.hj = shl i64 %n.vec, 3                       ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hd, i64 %i.hj
  %i.hl = getelementptr i8, ptr %i.gs, i64 %i.hj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hd, i64 %i.hm ; 2 uses
  %next.gep249 = getelementptr i8, ptr %i.gs, i64 %i.hm ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.hn = getelementptr i8, ptr %next.gep249, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep249, align 4, !alias.scope !92, !noalias !89
  %wide.load250 = load <2 x i64>, ptr %i.hn, align 4, !alias.scope !92, !noalias !89
  %i.ho = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !89, !noalias !92
  store <2 x i64> %wide.load250, ptr %i.ho, align 4, !alias.scope !89, !noalias !92
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hp = icmp eq i64 %index.next, %n.vec
  br i1 %i.hp, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hh, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i119, label %.lr.ph.i.i.i.i115.preheader335

.lr.ph.i.i.i.i115.preheader335:                   ; preds = %.lr.ph.i.i.i.i115.preheader, %middle.block
  %.012.i.i.i.i116.ph = phi ptr [ %i.hd, %.lr.ph.i.i.i.i115.preheader ], [ %i.hk, %middle.block ]
  %.0911.i.i.i.i117.ph = phi ptr [ %i.gs, %.lr.ph.i.i.i.i115.preheader ], [ %i.hl, %middle.block ]
  br label %.lr.ph.i.i.i.i115

.lr.ph.i.i.i.i115:                                ; preds = %.lr.ph.i.i.i.i115.preheader335, %.lr.ph.i.i.i.i115
  %.012.i.i.i.i116 = phi ptr [ %i.hs, %.lr.ph.i.i.i.i115 ], [ %.012.i.i.i.i116.ph, %.lr.ph.i.i.i.i115.preheader335 ] ; 2 uses
  %.0911.i.i.i.i117 = phi ptr [ %i.hr, %.lr.ph.i.i.i.i115 ], [ %.0911.i.i.i.i117.ph, %.lr.ph.i.i.i.i115.preheader335 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.hq = load i64, ptr %.0911.i.i.i.i117, align 4, !alias.scope !92, !noalias !89
  store i64 %i.hq, ptr %.012.i.i.i.i116, align 4, !alias.scope !89, !noalias !92
  %i.hr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i117, i64 8 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i116, i64 8
  %.not.i.i.i.i118 = icmp eq ptr %i.hr, %i.gz
  br i1 %.not.i.i.i.i118, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i119, label %.lr.ph.i.i.i.i115, !llvm.loop !95

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i119: ; preds = %.lr.ph.i.i.i.i115, %middle.block, %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i113
  %.not.i8.i120 = icmp eq ptr %i.gs, null
  br i1 %.not.i8.i120, label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i121, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i119
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gv) #27
  br label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i121

_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i121: ; preds = %bb.bc, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i119
  store ptr %i.hd, ptr %0, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hb
  store ptr %i.ht, ptr %i.gy, align 8
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.go
  store ptr %i.hu, ptr %i.gq, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit122

_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit122: ; preds = %bb.bb, %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i121
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8            ; 2 uses
  %.not.i123 = icmp eq ptr %i.hw, null
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
  %i.hx = landingpad { ptr, i32 }
          cleanup
  %i.hy = load ptr, ptr %2, align 8               ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124: ; preds = %bb.bf
  %i.ib = load i64, ptr %i.hz, align 8
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE.exit: ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.id = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.id, ptr %15, align 8
  store i8 97, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 1, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 0, ptr %i.if, align 1
  %i.ig = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6Assimp3FBX18GetRequiredElementERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(48) %i.hw, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull %1)
          to label %bb.bg unwind label %bb.bk     ; 2 uses

bb.bg:                                            ; preds = %_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE.exit
  %i.ih = load ptr, ptr %15, align 8              ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.id
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.bg
  %i.ij = load i64, ptr %i.id, align 8
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.in = load ptr, ptr %i.im, align 8            ; 3 uses
  %i.io = load ptr, ptr %i.il, align 8            ; 3 uses
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = and i64 %i.ir, 8
  %.not = icmp eq i64 %i.is, 0
  br i1 %.not, label %.preheader, label %bb.bh

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %.not173184 = icmp eq ptr %i.io, %i.in
  br i1 %.not173184, label %.loopexit181, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
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
  %i.iu = landingpad { ptr, i32 }
          cleanup
  %i.iv = load ptr, ptr %15, align 8              ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.id
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.bk
  %i.ix = load i64, ptr %i.id, align 8
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %common.resume

bb.bl:                                            ; preds = %bb.bh
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

bb.bm:                                            ; preds = %bb.bi
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jb = load ptr, ptr %16, align 8              ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.bm
  %i.je = load i64, ptr %i.jc, align 8
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134, %bb.bl
  %.pn65 = phi { ptr, i32 } [ %i.iz, %bb.bl ], [ %i.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134 ], [ %i.ja, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %common.resume

end_hunk_1
