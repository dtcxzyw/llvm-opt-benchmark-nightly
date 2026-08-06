begin_hunk_0_@_ZN15TCPStreamDialog14fillThroughputEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN15TCPStreamDialog16staticMetaObjectE, ptr noundef nonnull @.str.43, ptr noundef null, i32 noundef -1)
          to label %_ZN15TCPStreamDialog2trEPKcS1_i.exit120 unwind label %bb.al

_ZN15TCPStreamDialog2trEPKcS1_i.exit120:          ; preds = %bb.y
  %i.bi = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.z unwind label %bb.am      ; 0 uses

bb.z:                                             ; preds = %_ZN15TCPStreamDialog2trEPKcS1_i.exit120
  %i.bj = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i121 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i121, label %_ZN7QStringD2Ev.exit124, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i122

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i122:   ; preds = %bb.z
  %i.bk = atomicrmw sub ptr %i.bj, i32 1 acq_rel, align 4
  %.not.i.i123 = icmp eq i32 %i.bk, 1
  br i1 %.not.i.i123, label %bb.aa, label %_ZN7QStringD2Ev.exit124

bb.aa:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i122
  %i.bl = load ptr, ptr %7, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bl, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit124

_ZN7QStringD2Ev.exit124:                          ; preds = %bb.z, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i122, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ej

bb.ab:                                            ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit128

.body:                                            ; preds = %bb.e, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i314, %bb.d
  %i.bn = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i125, label %_ZN7QStringD2Ev.exit128, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i126

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i126:   ; preds = %.body
  %i.bo = atomicrmw sub ptr %i.bn, i32 1 acq_rel, align 4
  %.not.i.i127 = icmp eq i32 %i.bo, 1
  br i1 %.not.i.i127, label %bb.ac, label %_ZN7QStringD2Ev.exit128

bb.ac:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i126
  %i.bp = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bp, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit128

_ZN7QStringD2Ev.exit128:                          ; preds = %bb.ac, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i126, %.body, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.ab ], [ %i.l, %.body ], [ %i.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i126 ], [ %i.l, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.bq = load ptr, ptr %2, align 16              ; 2 uses
  %.not.i.i.i129 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i129, label %_ZN7QStringD2Ev.exit132, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i130

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i130:   ; preds = %_ZN7QStringD2Ev.exit128
  %i.br = atomicrmw sub ptr %i.bq, i32 1 acq_rel, align 4
  %.not.i.i131 = icmp eq i32 %i.br, 1
  br i1 %.not.i.i131, label %bb.ad, label %_ZN7QStringD2Ev.exit132

bb.ad:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i130
  %i.bs = load ptr, ptr %2, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bs, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit132

_ZN7QStringD2Ev.exit132:                          ; preds = %_ZN7QStringD2Ev.exit128, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i130, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN7QStringD2Ev.exit312

bb.ae:                                            ; preds = %_ZN7QStringD2Ev.exit115
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit136

bb.af:                                            ; preds = %_ZN15TCPStreamDialog2trEPKcS1_i.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bv = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i133 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i133, label %_ZN7QStringD2Ev.exit136, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i134

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i134:   ; preds = %bb.af
  %i.bw = atomicrmw sub ptr %i.bv, i32 1 acq_rel, align 4
  %.not.i.i135 = icmp eq i32 %i.bw, 1
  br i1 %.not.i.i135, label %bb.ag, label %_ZN7QStringD2Ev.exit136

bb.ag:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i134
  %i.bx = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bx, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit136

_ZN7QStringD2Ev.exit136:                          ; preds = %bb.ag, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i134, %bb.af, %bb.ae
  %.pn93 = phi { ptr, i32 } [ %i.bt, %bb.ae ], [ %i.bu, %bb.af ], [ %i.bu, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i134 ], [ %i.bu, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ew

bb.ah:                                            ; preds = %bb.j, %_ZN7QStringD2Ev.exit119
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ai:                                            ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.l, %bb.k
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.aj:                                            ; preds = %bb.m
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ew

bb.ak:                                            ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ew

bb.al:                                            ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit140

bb.am:                                            ; preds = %_ZN15TCPStreamDialog2trEPKcS1_i.exit120
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ce = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i137 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i137, label %_ZN7QStringD2Ev.exit140, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i138

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i138:   ; preds = %bb.am
  %i.cf = atomicrmw sub ptr %i.ce, i32 1 acq_rel, align 4
  %.not.i.i139 = icmp eq i32 %i.cf, 1
  br i1 %.not.i.i139, label %bb.an, label %_ZN7QStringD2Ev.exit140

bb.an:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i138
  %i.cg = load ptr, ptr %7, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cg, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit140

_ZN7QStringD2Ev.exit140:                          ; preds = %bb.an, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i138, %bb.am, %bb.al
  %.pn95 = phi { ptr, i32 } [ %i.cc, %bb.al ], [ %i.cd, %bb.am ], [ %i.cd, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i138 ], [ %i.cd, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ew

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %17, i8 0, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  %i.cj = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #30
          to label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %bb.ap ; 3 uses

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i
  store ptr %i.cj, ptr %17, align 8
  store ptr %i.cj, ptr %i.ci, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 32
  store ptr %i.ck, ptr %i.ch, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  store i32 0, ptr %18, align 4
  store i32 0, ptr %i.cl, align 4
  %i.cm = invoke noundef align 4 dereferenceable(8) ptr @_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %17, ptr noundef nonnull align 4 dereferenceable(8) %18)
          to label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit unwind label %bb.aq ; 0 uses

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i142: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.3
  %i.cn = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 4 uses
  %i.cq = sub i64 %i.cp, %i.eg
  %i.cr = invoke noalias noundef dereferenceable_or_null(64) ptr @_Znwm(i64 noundef 64) #30
          to label %.noexc151 unwind label %bb.ap ; 10 uses

.noexc151:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i142
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %.not10.i.i.i.i143 = icmp eq ptr %i.ee, %i.co
  br i1 %.not10.i.i.i.i143, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i148, label %.lr.ph.i.i.i.i144.preheader

.lr.ph.i.i.i.i144.preheader:                      ; preds = %.noexc151
  %i.ct = sub i64 %i.cp, %i.eg
  %i.cu = add i64 %i.ct, -8                       ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cu, 824
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i144.preheader1011, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i144.preheader
  %i.cx = sub i64 %i.cp, %i.eg
  %i.cy = and i64 %i.cx, 7
  %ident.check = icmp ne i64 %i.cy, 0
  %i.cz = add i64 %i.cp, -8
  %i.da = sub i64 %i.cz, %i.eg                    ; 2 uses
  %mul861 = and i64 %i.da, -8
  %mul = and i64 %i.da, -8
  %i.db = getelementptr i8, ptr %i.cr, i64 %mul
  %i.dc = icmp ult ptr %i.db, %i.cr
  %i.dd = getelementptr i8, ptr %i.ee, i64 %mul861
  %i.de = icmp ult ptr %i.dd, %i.ee
  %i.df = or i1 %ident.check, %i.dc
  %i.dg = or i1 %i.df, %i.de
  %i.dh = sub i64 %i.eg, %i.cs
  %diff.check = icmp ugt i64 %i.dh, -32
  %or.cond987 = or i1 %i.dg, %diff.check
  br i1 %or.cond987, label %.lr.ph.i.i.i.i144.preheader1011, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.cw, 4611686018427387900     ; 3 uses
  %i.di = shl i64 %n.vec, 3                       ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cr, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.ee, i64 %i.di
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cr, i64 %i.dl ; 2 uses
  %next.gep864 = getelementptr i8, ptr %i.ee, i64 %i.dl ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.dm = getelementptr i8, ptr %next.gep864, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep864, align 4, !alias.scope !105, !noalias !102
  %wide.load865 = load <2 x i64>, ptr %i.dm, align 4, !alias.scope !105, !noalias !102
  %i.dn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !102, !noalias !105
  store <2 x i64> %wide.load865, ptr %i.dn, align 4, !alias.scope !102, !noalias !105
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i148, label %.lr.ph.i.i.i.i144.preheader1011

.lr.ph.i.i.i.i144.preheader1011:                  ; preds = %vector.scevcheck, %.lr.ph.i.i.i.i144.preheader, %middle.block
  %.012.i.i.i.i145.ph = phi ptr [ %i.cr, %vector.scevcheck ], [ %i.cr, %.lr.ph.i.i.i.i144.preheader ], [ %i.dj, %middle.block ]
  %.0911.i.i.i.i146.ph = phi ptr [ %i.ee, %vector.scevcheck ], [ %i.ee, %.lr.ph.i.i.i.i144.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph.i.i.i.i144

.lr.ph.i.i.i.i144:                                ; preds = %.lr.ph.i.i.i.i144.preheader1011, %.lr.ph.i.i.i.i144
  %.012.i.i.i.i145 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i144 ], [ %.012.i.i.i.i145.ph, %.lr.ph.i.i.i.i144.preheader1011 ] ; 2 uses
  %.0911.i.i.i.i146 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i144 ], [ %.0911.i.i.i.i146.ph, %.lr.ph.i.i.i.i144.preheader1011 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.dp = load i64, ptr %.0911.i.i.i.i146, align 4, !alias.scope !105, !noalias !102
  store i64 %i.dp, ptr %.012.i.i.i.i145, align 4, !alias.scope !102, !noalias !105
  %i.dq = getelementptr i8, ptr %.0911.i.i.i.i146, i64 8 ; 2 uses
  %i.dr = getelementptr i8, ptr %.012.i.i.i.i145, i64 8
  %.not.i.i.i.i147 = icmp eq ptr %i.dq, %i.co
  br i1 %.not.i.i.i.i147, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i148, label %.lr.ph.i.i.i.i144, !llvm.loop !110

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i148: ; preds = %.lr.ph.i.i.i.i144, %middle.block, %.noexc151
  %.not.i8.i149 = icmp eq ptr %i.ee, null
  br i1 %.not.i8.i149, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit.i150, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i148
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.eh) #29
  br label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit.i150

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit.i150: ; preds = %bb.ao, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i148
  store ptr %i.cr, ptr %16, align 8
  %i.ds = getelementptr i8, ptr %i.cr, i64 %i.cq
  store ptr %i.ds, ptr %i.cn, align 8
  %i.dt = getelementptr i8, ptr %i.cr, i64 64
  store ptr %i.dt, ptr %i.ec, align 8
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE7reserveEm.exit152

_ZNSt6vectorISt4pairIjjESaIS1_EE7reserveEm.exit152: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.3, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit.i150
  %.090634 = load ptr, ptr %i.bg, align 8         ; 2 uses
  %.not97635 = icmp eq ptr %.090634, null
  br i1 %.not97635, label %._crit_edge665, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE7reserveEm.exit152
  %i.du = getelementptr i8, ptr %0, i64 144
  %i.dv = getelementptr i8, ptr %0, i64 176
  %i.dw = getelementptr i8, ptr %0, i64 168
  %i.dx = getelementptr i8, ptr %0, i64 200
  br label %bb.ar

bb.ap:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i142, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  store i32 0, ptr %18, align 4
  store i32 0, ptr %i.cl, align 4
  %i.dz = invoke noundef align 4 dereferenceable(8) ptr @_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %17, ptr noundef nonnull align 4 dereferenceable(8) %18)
          to label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.1 unwind label %bb.aq ; 0 uses

_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.1: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  store i32 0, ptr %18, align 4
  store i32 0, ptr %i.cl, align 4
  %i.ea = invoke noundef align 4 dereferenceable(8) ptr @_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %17, ptr noundef nonnull align 4 dereferenceable(8) %18)
          to label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.2 unwind label %bb.aq ; 0 uses

_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.2: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  store i32 0, ptr %18, align 4
  store i32 0, ptr %i.cl, align 4
  %i.eb = invoke noundef align 4 dereferenceable(8) ptr @_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %17, ptr noundef nonnull align 4 dereferenceable(8) %18)
          to label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.3 unwind label %bb.aq ; 0 uses

_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.3: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.2
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %i.ec = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = load ptr, ptr %16, align 8              ; 10 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64               ; 6 uses
  %i.eh = sub i64 %i.ef, %i.eg                    ; 2 uses
  %i.ei = icmp ult i64 %i.eh, 64
  br i1 %i.ei, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i142, label %_ZNSt6vectorISt4pairIjjESaIS1_EE7reserveEm.exit152

bb.aq:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.2, %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit.1, %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %.loopexit.split-lp

bb.ar:                                            ; preds = %.lr.ph, %bb.aw
  %.090636 = phi ptr [ %.090634, %.lr.ph ], [ %.090, %bb.aw ] ; 7 uses
  %i.ek = load i16, ptr %i.dw, align 8
  %i.el = load i16, ptr %i.dx, align 8
  %i.em = getelementptr i8, ptr %.090636, i64 64
  %i.en = getelementptr i8, ptr %.090636, i64 88
  %i.eo = getelementptr i8, ptr %.090636, i64 60
  %i.ep = load i16, ptr %i.eo, align 4
  %i.eq = getelementptr i8, ptr %.090636, i64 62
  %i.er = load i16, ptr %i.eq, align 2
  %i.es = invoke i32 @compare_headers(ptr noundef %i.du, ptr noundef %i.dv, i16 noundef zeroext %i.ek, i16 noundef zeroext %i.el, ptr noundef %i.em, ptr noundef %i.en, i16 noundef zeroext %i.ep, i16 noundef zeroext %i.er, i32 noundef 0)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %bb.ar
  %.not587 = icmp eq i32 %i.es, 0
  br i1 %.not587, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.et = getelementptr i8, ptr %.090636, i64 48
  %i.eu = load i16, ptr %i.et, align 8
  %i.ev = and i16 %i.eu, 16
  %.not98 = icmp eq i16 %i.ev, 0
  br i1 %.not98, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ew = getelementptr i8, ptr %.090636, i64 36
  %i.ex = load i32, ptr %i.ew, align 4
  br label %.loopexit609

bb.av:                                            ; preds = %bb.ar
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.aw:                                            ; preds = %bb.as, %bb.at
  %.090 = load ptr, ptr %.090636, align 8         ; 2 uses
  %.not97 = icmp eq ptr %.090, null
  br i1 %.not97, label %.loopexit609, label %bb.ar, !llvm.loop !111

.loopexit609:                                     ; preds = %bb.aw, %bb.au
  %.087.ph = phi i32 [ %i.ex, %bb.au ], [ 0, %bb.aw ]
  %.091655.pr = load ptr, ptr %i.bg, align 8      ; 2 uses
  %.not99656 = icmp eq ptr %.091655.pr, null
  br i1 %.not99656, label %._crit_edge665, label %.lr.ph664

.lr.ph664:                                        ; preds = %.loopexit609
  %i.ez = getelementptr i8, ptr %0, i64 144
  %i.fa = getelementptr i8, ptr %0, i64 176
  %i.fb = getelementptr i8, ptr %0, i64 168
  %i.fc = getelementptr i8, ptr %0, i64 200
  %i.fd = getelementptr i8, ptr %0, i64 104
  %i.fe = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 13 uses
  %i.ff = getelementptr i8, ptr %0, i64 600       ; 4 uses
  br label %bb.ax

._crit_edge665:                                   ; preds = %bb.dv, %_ZNSt6vectorISt4pairIjjESaIS1_EE7reserveEm.exit152, %.loopexit609
  %i.fg = load ptr, ptr %i.an, align 8
  invoke void @_ZN8QCPGraph7setDataERK5QListIdES3_b(ptr noundef align 8 dereferenceable_or_null(313) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext false)
          to label %bb.dw unwind label %bb.el

bb.ax:                                            ; preds = %.lr.ph664, %bb.dv
  %.091662 = phi ptr [ %.091655.pr, %.lr.ph664 ], [ %.091, %bb.dv ] ; 13 uses
  %.188661 = phi i32 [ %.087.ph, %.lr.ph664 ], [ %.289, %bb.dv ] ; 4 uses
  %.0660 = phi i32 [ 0, %.lr.ph664 ], [ %.1.lcssa, %bb.dv ] ; 3 uses
  %.0568659 = phi i32 [ 0, %.lr.ph664 ], [ %.1569.lcssa, %bb.dv ] ; 3 uses
  %.0571658 = phi i64 [ 0, %.lr.ph664 ], [ %spec.select586, %bb.dv ] ; 2 uses
  %.0578657 = phi i64 [ 0, %.lr.ph664 ], [ %spec.select585, %bb.dv ] ; 2 uses
  %i.fh = load i16, ptr %i.fb, align 8
  %i.fi = load i16, ptr %i.fc, align 8
  %i.fj = getelementptr i8, ptr %.091662, i64 64
  %i.fk = getelementptr i8, ptr %.091662, i64 88
  %i.fl = getelementptr i8, ptr %.091662, i64 60
  %i.fm = load i16, ptr %i.fl, align 4
end_hunk_0
begin_hunk_1_@_ZN15TCPStreamDialog14fillThroughputEv:bb.a
  %.078.i.i.i.i.i.i37.i.prol = phi ptr [ %i.jv, %.lr.ph.i.i.i.i.i.i34.i.prol ], [ %.sroa.09.022.i22.i, %.lr.ph.i.i.i.i.i.preheader.i33.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i34.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i33.i ]
  %i.jv = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i.prol, i64 -8 ; 3 uses
  %i.jw = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i.prol, i64 -8 ; 3 uses
  %i.jx = load i32, ptr %i.jv, align 4
  store i32 %i.jx, ptr %i.jw, align 4
  %i.jy = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i.prol, i64 -4
  %i.jz = load i32, ptr %i.jy, align 4
  %i.ka = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i.prol, i64 -4
  store i32 %i.jz, ptr %i.ka, align 4
  %i.kb = add nsw i64 %.010.i.i.i.i.i.i35.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i34.i.prol, !llvm.loop !118

.lr.ph.i.i.i.i.i.i34.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i34.i.prol, %.lr.ph.i.i.i.i.i.preheader.i33.i
  %.010.i.i.i.i.i.i35.i.unr = phi i64 [ %i.js, %.lr.ph.i.i.i.i.i.preheader.i33.i ], [ %i.kb, %.lr.ph.i.i.i.i.i.i34.i.prol ]
  %.069.i.i.i.i.i.i36.i.unr = phi ptr [ %i.ju, %.lr.ph.i.i.i.i.i.preheader.i33.i ], [ %i.jw, %.lr.ph.i.i.i.i.i.i34.i.prol ]
  %.078.i.i.i.i.i.i37.i.unr = phi ptr [ %.sroa.09.022.i22.i, %.lr.ph.i.i.i.i.i.preheader.i33.i ], [ %i.jv, %.lr.ph.i.i.i.i.i.i34.i.prol ]
  %i.kc = icmp ult i64 %i.js, 4
  br i1 %i.kc, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i, label %.lr.ph.i.i.i.i.i.i34.i

.lr.ph.i.i.i.i.i.i34.i:                           ; preds = %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i34.i
  %.010.i.i.i.i.i.i35.i = phi i64 [ %i.lb, %.lr.ph.i.i.i.i.i.i34.i ], [ %.010.i.i.i.i.i.i35.i.unr, %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i36.i = phi ptr [ %i.kw, %.lr.ph.i.i.i.i.i.i34.i ], [ %.069.i.i.i.i.i.i36.i.unr, %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i37.i = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i.i34.i ], [ %.078.i.i.i.i.i.i37.i.unr, %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit ] ; 8 uses
  %i.kd = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -8
  %i.ke = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -8
  %i.kf = load i32, ptr %i.kd, align 4
  store i32 %i.kf, ptr %i.ke, align 4
  %i.kg = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -4
  %i.kh = load i32, ptr %i.kg, align 4
  %i.ki = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -4
  store i32 %i.kh, ptr %i.ki, align 4
  %i.kj = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -16
  %i.kk = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -16
  %i.kl = load i32, ptr %i.kj, align 4
  store i32 %i.kl, ptr %i.kk, align 4
  %i.km = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -12
  %i.kn = load i32, ptr %i.km, align 4
  %i.ko = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -12
  store i32 %i.kn, ptr %i.ko, align 4
  %i.kp = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -24
  %i.kq = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -24
  %i.kr = load i32, ptr %i.kp, align 4
  store i32 %i.kr, ptr %i.kq, align 4
  %i.ks = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -20
  %i.kt = load i32, ptr %i.ks, align 4
  %i.ku = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -20
  store i32 %i.kt, ptr %i.ku, align 4
  %i.kv = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -32 ; 2 uses
  %i.kw = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -32 ; 2 uses
  %i.kx = load i32, ptr %i.kv, align 4
  store i32 %i.kx, ptr %i.kw, align 4
  %i.ky = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -28
  %i.kz = load i32, ptr %i.ky, align 4
  %i.la = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -28
  store i32 %i.kz, ptr %i.la, align 4
  %i.lb = add nsw i64 %.010.i.i.i.i.i.i35.i, -4
  %i.lc = icmp sgt i64 %.010.i.i.i.i.i.i35.i, 4
  br i1 %i.lc, label %.lr.ph.i.i.i.i.i.i34.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i, !llvm.loop !114

bb.bj:                                            ; preds = %.lr.ph.i21.i
  %.sroa.0564.0.extract.trunc = trunc i64 %i.jp to i32 ; 2 uses
  %i.ld = load i32, ptr %.pn21.i23.i, align 4     ; 2 uses
  %i.le = sub i32 %.sroa.0564.0.extract.trunc, %i.ld
  %i.lf = icmp slt i32 %i.le, 0
  br i1 %i.lf, label %.lr.ph.i.i28.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i

.lr.ph.i.i28.i:                                   ; preds = %bb.bj, %.lr.ph.i.i28.i
  %i.lg = phi i32 [ %i.lk, %.lr.ph.i.i28.i ], [ %i.ld, %bb.bj ]
  %.sroa.0.09.i.i29.i = phi ptr [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i28.i ], [ %.pn21.i23.i, %bb.bj ] ; 3 uses
  %.sroa.04.08.i.i30.i = phi ptr [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ], [ %.sroa.09.022.i22.i, %bb.bj ] ; 3 uses
  store i32 %i.lg, ptr %.sroa.04.08.i.i30.i, align 4
  %i.lh = getelementptr i8, ptr %.sroa.04.08.i.i30.i, i64 -4
  %i.li = load i32, ptr %i.lh, align 4
  %i.lj = getelementptr i8, ptr %.sroa.04.08.i.i30.i, i64 4
  store i32 %i.li, ptr %i.lj, align 4
  %.sroa.0.0.i.i31.i = getelementptr i8, ptr %.sroa.0.09.i.i29.i, i64 -8 ; 2 uses
  %i.lk = load i32, ptr %.sroa.0.0.i.i31.i, align 4 ; 2 uses
  %i.ll = sub i32 %.sroa.0564.0.extract.trunc, %i.lk
  %i.lm = icmp slt i32 %i.ll, 0
  br i1 %i.lm, label %.lr.ph.i.i28.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i, !llvm.loop !115

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i: ; preds = %.lr.ph.i.i28.i, %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i34.i, %bb.bj, %bb.bi
  %.sroa.04.0.lcssa.i.i25.i.sink = phi ptr [ %i.go, %bb.bi ], [ %i.go, %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit ], [ %.sroa.09.022.i22.i, %bb.bj ], [ %i.go, %.lr.ph.i.i.i.i.i.i34.i ], [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ]
  store i64 %i.jp, ptr %.sroa.04.0.lcssa.i.i25.i.sink, align 4
  %.sroa.09.0.i26.i = getelementptr i8, ptr %.sroa.09.022.i22.i, i64 8 ; 2 uses
  %.not.i27.i = icmp eq ptr %.sroa.09.0.i26.i, %i.gq
  br i1 %.not.i27.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exitthread-pre-split, label %.lr.ph.i21.i, !llvm.loop !116

bb.bk:                                            ; preds = %.lr.ph638, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit161
  %indvars.iv = phi i64 [ 0, %.lr.ph638 ], [ %indvars.iv.next, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit161 ] ; 7 uses
  %i.ln = load ptr, ptr %i.ci, align 8
  %i.lo = load ptr, ptr %17, align 8              ; 2 uses
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = sub i64 %i.lp, %i.lq
  %i.ls = ashr exact i64 %i.lr, 3
  %.not.i = icmp ugt i64 %i.ls, %indvars.iv
  br i1 %.not.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit, label %bb.bl, !prof !119

bb.bl:                                            ; preds = %bb.bk
  call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef nonnull @.str.250, i32 noundef 1128, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EEixEm, ptr noundef nonnull @.str.251) #32
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit:        ; preds = %bb.bk
  %i.lt = getelementptr [4 x i8], ptr %i.gm, i64 %indvars.iv
  %i.lu = load i32, ptr %i.lt, align 4
  %i.lv = getelementptr [8 x i8], ptr %i.lo, i64 %indvars.iv
  store i32 %i.lu, ptr %i.lv, align 4
  %i.lw = load ptr, ptr %i.ci, align 8
  %i.lx = load ptr, ptr %17, align 8              ; 2 uses
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = sub i64 %i.ly, %i.lz
  %i.mb = ashr exact i64 %i.ma, 3
  %.not.i160 = icmp ugt i64 %i.mb, %indvars.iv
  br i1 %.not.i160, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit161, label %bb.bm, !prof !119

bb.bm:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit
  call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef nonnull @.str.250, i32 noundef 1128, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EEixEm, ptr noundef nonnull @.str.251) #32
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit161:     ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit
  %i.mc = getelementptr [4 x i8], ptr %i.gn, i64 %indvars.iv
  %i.md = load i32, ptr %i.mc, align 4
  %i.me = getelementptr [8 x i8], ptr %i.lx, i64 %indvars.iv
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  store i32 %i.md, ptr %i.mf, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mg = load i8, ptr %i.gk, align 1             ; 5 uses
  %i.mh = zext i8 %i.mg to i64
  %i.mi = icmp samesign ult i64 %indvars.iv.next, %i.mh
  br i1 %i.mi, label %bb.bk, label %._crit_edge, !llvm.loop !120

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exitthread-pre-split: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i, %.preheader.i18.i, %._crit_edge
  %.pr = load i8, ptr %i.gk, align 1
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit: ; preds = %bb.bd, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exitthread-pre-split
  %i.mj = phi i8 [ %.pr, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exitthread-pre-split ], [ 0, %bb.bd ] ; 4 uses
  %i.mk = load ptr, ptr %16, align 8              ; 4 uses
  %i.ml = load ptr, ptr %i.fe, align 8            ; 3 uses
  %.not143164.i = icmp eq ptr %i.mk, %i.ml
  br i1 %.not143164.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, %bb.bp
  %.1575 = phi i32 [ %i.mt, %bb.bp ], [ %i.gj, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit ] ; 3 uses
  %.sroa.0133.0165.i = phi ptr [ %i.mu, %bb.bp ], [ %i.mk, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit ] ; 6 uses
  %i.mm = getelementptr i8, ptr %.sroa.0133.0165.i, i64 4
  %i.mn = load i32, ptr %i.mm, align 4            ; 2 uses
  %i.mo = sub i32 %i.gi, %i.mn
  %.not.i162 = icmp sgt i32 %i.mo, -1
  %i.mp = load i32, ptr %.sroa.0133.0165.i, align 4 ; 3 uses
  br i1 %.not.i162, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i
  %i.mq = sub i32 %i.gi, %i.mp
  %i.mr = icmp slt i32 %i.mq, 1
  br i1 %i.mr, label %.loopexit152.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.neg68.i = sub i32 %.1575, %i.gi
  %i.ms = add i32 %.neg68.i, %i.mp
  store i32 %i.gi, ptr %.sroa.0133.0165.i, align 4
  %.pre = load ptr, ptr %16, align 8
  br label %.loopexit152.i

bb.bp:                                            ; preds = %.lr.ph.i
  %.neg.i = sub i32 %i.mp, %i.mn
  %i.mt = add i32 %.neg.i, %.1575                 ; 2 uses
  %i.mu = getelementptr i8, ptr %.sroa.0133.0165.i, i64 8 ; 2 uses
  %.not143.i = icmp eq ptr %i.mu, %i.ml
  br i1 %.not143.i, label %.loopexit152.i, label %.lr.ph.i, !llvm.loop !121

.loopexit152.i:                                   ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.mv = phi ptr [ %i.mk, %bb.bn ], [ %.pre, %bb.bo ], [ %i.mk, %bb.bp ] ; 19 uses
  %.2576 = phi i32 [ %.1575, %bb.bn ], [ %i.ms, %bb.bo ], [ %i.mt, %bb.bp ] ; 3 uses
  %.sroa.0133.0163.i = phi ptr [ %.sroa.0133.0165.i, %bb.bn ], [ %.sroa.0133.0165.i, %bb.bo ], [ %i.ml, %bb.bp ] ; 6 uses
  %.not144.i = icmp eq ptr %.sroa.0133.0163.i, %i.mv
  br i1 %.not144.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i, label %bb.bq

bb.bq:                                            ; preds = %.loopexit152.i
  %i.mw = ptrtoint ptr %i.mv to i64               ; 2 uses
  %i.mx = ptrtoint ptr %.sroa.0133.0163.i to i64  ; 4 uses
  %i.my = sub i64 %i.mx, %i.mw                    ; 2 uses
  %i.mz = getelementptr i8, ptr %i.mv, i64 %i.my  ; 8 uses
  %i.na = load ptr, ptr %i.fe, align 8            ; 5 uses
  %.not11.i.i.i = icmp eq ptr %.sroa.0133.0163.i, %i.na
  br i1 %.not11.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nb = ptrtoint ptr %i.na to i64               ; 3 uses
  %i.nc = sub i64 %i.nb, %i.mx                    ; 3 uses
  %i.nd = ashr exact i64 %i.nc, 3                 ; 9 uses
  %i.ne = icmp sgt i64 %i.nd, 0
  br i1 %i.ne, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.br
  %min.iters.check963 = icmp ult i64 %i.nd, 72
  br i1 %min.iters.check963, label %.lr.ph.i.i.i.i.i.i.i.i.preheader994, label %vector.scevcheck928

vector.scevcheck928:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.nf = add nsw i64 %i.nd, -1                   ; 4 uses
  %mul.result930 = shl i64 %i.nf, 3
  %i.ng = getelementptr i8, ptr %i.mv, i64 %mul.result930
  %i.nh = icmp ult ptr %i.ng, %i.mv
  %scevgep932 = getelementptr i8, ptr %i.mv, i64 4 ; 2 uses
  %mul.result934 = shl i64 %i.nf, 3
  %mul.overflow935 = icmp ugt i64 %i.nf, 2305843009213693951
  %i.ni = getelementptr i8, ptr %scevgep932, i64 %mul.result934
  %i.nj = icmp ult ptr %i.ni, %scevgep932
  %i.nk = or i1 %i.nj, %mul.overflow935
  %mul.result937 = shl i64 %i.nf, 3
  %19 = getelementptr i8, ptr %i.mz, i64 %mul.result937
  %20 = icmp ult ptr %19, %.sroa.0133.0163.i
  %i.nl = or i1 %i.nh, %i.nk
  %i.nm = or i1 %20, %i.nl
  br i1 %i.nm, label %.lr.ph.i.i.i.i.i.i.i.i.preheader994, label %vector.memcheck939

vector.memcheck939:                               ; preds = %vector.scevcheck928
  %scevgep940 = getelementptr i8, ptr %i.mv, i64 4 ; 4 uses
  %scevgep941 = getelementptr i8, ptr %scevgep940, i64 %i.my ; 2 uses
  %i.nn = sub i64 %i.nb, %i.mw
  %scevgep943 = getelementptr i8, ptr %i.mv, i64 -4 ; 2 uses
  %scevgep944 = getelementptr i8, ptr %scevgep943, i64 %i.nc ; 3 uses
  %scevgep945 = getelementptr i8, ptr %i.mv, i64 %i.nc ; 3 uses
  %scevgep946 = getelementptr i8, ptr %scevgep943, i64 %i.nn ; 2 uses
  %bound0 = icmp ult ptr %scevgep941, %scevgep944
  %bound1 = icmp ult ptr %i.mv, %i.na
  %found.conflict = and i1 %bound0, %bound1
  %bound0947 = icmp ult ptr %scevgep941, %scevgep945
  %bound1948 = icmp ult ptr %scevgep940, %i.na
  %found.conflict949 = and i1 %bound0947, %bound1948
  %conflict.rdx = or i1 %found.conflict, %found.conflict949
  %bound0950 = icmp ult ptr %i.mv, %scevgep945
  %bound1951 = icmp ult ptr %scevgep940, %scevgep944
  %found.conflict952 = and i1 %bound0950, %bound1951
  %conflict.rdx953 = or i1 %conflict.rdx, %found.conflict952
  %bound0954 = icmp ult ptr %i.mv, %scevgep946
  %bound1955 = icmp ult ptr %.sroa.0133.0163.i, %scevgep944
  %found.conflict956 = and i1 %bound0954, %bound1955
  %conflict.rdx957 = or i1 %conflict.rdx953, %found.conflict956
  %bound0958 = icmp ult ptr %scevgep940, %scevgep946
  %bound1959 = icmp ult ptr %.sroa.0133.0163.i, %scevgep945
  %found.conflict960 = and i1 %bound0958, %bound1959
  %conflict.rdx961 = or i1 %conflict.rdx957, %found.conflict960
  br i1 %conflict.rdx961, label %.lr.ph.i.i.i.i.i.i.i.i.preheader994, label %vector.ph964

vector.ph964:                                     ; preds = %vector.memcheck939
  %n.vec966 = and i64 %i.nd, 4611686018427387900  ; 3 uses
  %i.no = and i64 %i.nd, 3
  %i.np = shl i64 %n.vec966, 3                    ; 2 uses
  %i.nq = getelementptr i8, ptr %i.mv, i64 %i.np
  %i.nr = getelementptr i8, ptr %i.mz, i64 %i.np
  br label %vector.body967

vector.body967:                                   ; preds = %vector.body967, %vector.ph964
  %index968 = phi i64 [ 0, %vector.ph964 ], [ %index.next981, %vector.body967 ] ; 2 uses
  %i.ns = shl i64 %index968, 3                    ; 3 uses
  %i.nt = or disjoint i64 %i.ns, 16               ; 2 uses
  %next.gep969 = getelementptr i8, ptr %i.mv, i64 %i.ns
  %next.gep970 = getelementptr i8, ptr %i.mv, i64 %i.nt
  %next.gep971 = getelementptr i8, ptr %i.mz, i64 %i.ns
  %next.gep972 = getelementptr i8, ptr %i.mz, i64 %i.nt
  %wide.vec973 = load <4 x i32>, ptr %next.gep971, align 4
  %wide.vec976 = load <4 x i32>, ptr %next.gep972, align 4
  store <4 x i32> %wide.vec973, ptr %next.gep969, align 4
  store <4 x i32> %wide.vec976, ptr %next.gep970, align 4
  %index.next981 = add nuw i64 %index968, 4       ; 2 uses
  %i.nu = icmp eq i64 %index.next981, %n.vec966
  br i1 %i.nu, label %middle.block982, label %vector.body967, !llvm.loop !122

middle.block982:                                  ; preds = %vector.body967
  %cmp.n983 = icmp eq i64 %i.nd, %n.vec966
  br i1 %cmp.n983, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader994

.lr.ph.i.i.i.i.i.i.i.i.preheader994:              ; preds = %vector.memcheck939, %vector.scevcheck928, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block982
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.nd, %vector.memcheck939 ], [ %i.nd, %vector.scevcheck928 ], [ %i.nd, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.no, %middle.block982 ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.mv, %vector.memcheck939 ], [ %i.mv, %vector.scevcheck928 ], [ %i.mv, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.nq, %middle.block982 ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.mz, %vector.memcheck939 ], [ %i.mz, %vector.scevcheck928 ], [ %i.mz, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.nr, %middle.block982 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader994, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.ob, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader994 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.oa, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader994 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.nz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader994 ] ; 3 uses
  %i.nv = load i32, ptr %.0910.i.i.i.i.i.i.i.i, align 4
  store i32 %i.nv, ptr %.0811.i.i.i.i.i.i.i.i, align 4
  %i.nw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 4
  %i.nx = load i32, ptr %i.nw, align 4
  %i.ny = getelementptr i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 4
  store i32 %i.nx, ptr %i.ny, align 4
  %i.nz = getelementptr i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 8
  %i.oa = getelementptr i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 8
  %i.ob = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.oc = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.oc, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i, !llvm.loop !123

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block982
  %.pre.i.i.i = load ptr, ptr %i.fe, align 8      ; 2 uses
  %.pre13.i.i.i = ptrtoint ptr %.pre.i.i.i to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i, %bb.br, %bb.bq
  %.pre-phi14.i.i.i = phi i64 [ %i.nb, %bb.br ], [ %.pre13.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i ], [ %i.mx, %bb.bq ]
  %i.od = phi ptr [ %i.na, %bb.br ], [ %.pre.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i ], [ %i.mz, %bb.bq ]
  %i.oe = sub i64 %.pre-phi14.i.i.i, %i.mx
  %i.of = getelementptr i8, ptr %i.mv, i64 %i.oe  ; 2 uses
  %.not.i.i.i.i163 = icmp eq ptr %i.od, %i.of
  br i1 %.not.i.i.i.i163, label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i, label %_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i
  store ptr %i.of, ptr %i.fe, align 8
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, %_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i, %.loopexit152.i
  %.2576827 = phi i32 [ %.2576, %.loopexit152.i ], [ %.2576, %_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E.exit.i.i.i.i ], [ %.2576, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i ], [ %i.gj, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit ] ; 3 uses
  %i.og = zext i8 %i.mj to i32                    ; 3 uses
  %.not184.i = icmp eq i8 %i.mj, 0
  br i1 %.not184.i, label %.loopexit.i, label %.lr.ph167.i

.lr.ph167.i:                                      ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i
  %i.oh = load ptr, ptr %i.ci, align 8
  %i.oi = load ptr, ptr %17, align 8              ; 2 uses
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = ashr exact i64 %i.ol, 3
  %wide.trip.count.i = zext i8 %i.mj to i64
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %.lr.ph167.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph167.i ], [ %indvars.iv.next.i, %bb.bu ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.om
  br i1 %exitcond.not.i, label %bb.bt, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit.i, !prof !124

bb.bt:                                            ; preds = %bb.bs
  call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef nonnull @.str.250, i32 noundef 1128, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EEixEm, ptr noundef nonnull @.str.251) #32
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit.i:      ; preds = %bb.bs
  %i.on = getelementptr [8 x i8], ptr %i.oi, i64 %indvars.iv.i ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.op = load i32, ptr %i.oo, align 4
  %i.oq = sub i32 %i.gi, %i.op
  %.not69.i = icmp sgt i32 %i.oq, -1
  br i1 %.not69.i, label %bb.bu, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i:    ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit.i
  %i.or = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.os = load i32, ptr %i.on, align 4
  %i.ot = sub i32 %i.os, %i.gi
  %.not70.i = icmp sgt i32 %i.ot, -1
  br i1 %.not70.i, label %.loopexit.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit81.i

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit81.i:    ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i
  store i32 %i.gi, ptr %i.on, align 4
  br label %.loopexit.i

bb.bu:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond192.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond192.not.i, label %_ZL24goodput_adjust_for_sacksPjjRSt6vectorISt4pairIjjESaIS2_EEhS5_.exit, label %bb.bs, !llvm.loop !125

.loopexit.i:                                      ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit81.i, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i, %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i
  %.0158.i = phi i32 [ %i.or, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit81.i ], [ %i.or, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i ], [ 0, %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i ] ; 3 uses
  %i.ou = icmp slt i32 %.0158.i, %i.og
  br i1 %i.ou, label %.lr.ph177.i, label %.critedge.i

.lr.ph177.i:                                      ; preds = %.loopexit.i
  %i.ov = load ptr, ptr %16, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.ci, %.lr.ph177.i
  %.5 = phi i32 [ %.2576827, %.lr.ph177.i ], [ %.6, %bb.ci ] ; 5 uses
  %.1175.i = phi i32 [ %.0158.i, %.lr.ph177.i ], [ %.2.i, %bb.ci ] ; 5 uses
  %.sroa.0109.0174.i = phi ptr [ %i.ov, %.lr.ph177.i ], [ %.sroa.0109.1.i, %bb.ci ] ; 12 uses
  %.sroa.0109.0174.i897 = ptrtoaddr ptr %.sroa.0109.0174.i to i64
  %i.ow = load ptr, ptr %i.fe, align 8
  %.not145.i = icmp eq ptr %.sroa.0109.0174.i, %i.ow
  br i1 %.not145.i, label %.critedge.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ox = sext i32 %.1175.i to i64                ; 2 uses
  %i.oy = load ptr, ptr %i.ci, align 8
  %i.oz = load ptr, ptr %17, align 8              ; 2 uses
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = sub i64 %i.pa, %i.pb
  %i.pd = ashr exact i64 %i.pc, 3
  %.not.i82.i = icmp ugt i64 %i.pd, %i.ox
  br i1 %.not.i82.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit83.i, label %bb.bx, !prof !119

bb.bx:                                            ; preds = %bb.bw
  call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef nonnull @.str.250, i32 noundef 1128, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EEixEm, ptr noundef nonnull @.str.251) #32
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit83.i:    ; preds = %bb.bw
  %i.pe = getelementptr [8 x i8], ptr %i.oz, i64 %i.ox ; 4 uses
  %i.pf = getelementptr i8, ptr %.sroa.0109.0174.i, i64 4 ; 4 uses
  %i.pg = load i32, ptr %i.pf, align 4            ; 3 uses
  %i.ph = load i32, ptr %i.pe, align 4            ; 3 uses
  %i.pi = sub i32 %i.pg, %i.ph
  %.not71.i = icmp sgt i32 %i.pi, -1
  br i1 %.not71.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit83.i
  %i.pj = getelementptr i8, ptr %.sroa.0109.0174.i, i64 8
  br label %bb.ci, !llvm.loop !126

bb.bz:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit83.i
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pe, i64 4 ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 4            ; 4 uses
  %i.pm = load i32, ptr %.sroa.0109.0174.i, align 4 ; 2 uses
  %i.pn = sub i32 %i.pl, %i.pm
  %.not72.i = icmp sgt i32 %i.pn, -1
  br i1 %.not72.i, label %.preheader.i, label %bb.ca

.preheader.i:                                     ; preds = %bb.bz
  %i.po = sub i32 %i.pg, %i.pl
  %.not73171.i = icmp sgt i32 %i.po, -1
  br i1 %.not73171.i, label %._crit_edge.i, label %.lr.ph173.i

.lr.ph173.i:                                      ; preds = %.preheader.i
  %i.pp = getelementptr i8, ptr %.sroa.0109.0174.i, i64 8 ; 4 uses
  %i.pq = getelementptr i8, ptr %.sroa.0109.0174.i, i64 12
  %i.pr = ptrtoint ptr %i.pp to i64
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ps = load ptr, ptr %16, align 8
  %i.pt = invoke ptr @_ZNSt6vectorISt4pairIjjESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %16, ptr %.sroa.0109.0174.i, ptr noundef align 4 dereferenceable(8) %i.pe)
          to label %.noexc164 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc164:                                        ; preds = %bb.ca
  %i.pu = ptrtoint ptr %.sroa.0109.0174.i to i64
  %i.pv = ptrtoint ptr %i.ps to i64
  %i.pw = sub i64 %i.pu, %i.pv
  %i.px = sub i32 %.5, %i.ph
  %i.py = add i32 %i.px, %i.pl
  %i.pz = load ptr, ptr %16, align 8
  %sext.i = shl i64 %i.pw, 29
  %i.qa = ashr exact i64 %sext.i, 29
  %i.qb = getelementptr i8, ptr %i.pz, i64 %i.qa
  %i.qc = getelementptr i8, ptr %i.qb, i64 8
  %i.qd = add nsw i32 %.1175.i, 1
  br label %bb.ci

bb.cb:                                            ; preds = %bb.cf, %.lr.ph173.i
  %i.qe = phi i32 [ %i.pl, %.lr.ph173.i ], [ %i.rv, %bb.cf ] ; 5 uses
  %.7 = phi i32 [ %.5, %.lr.ph173.i ], [ %.8, %bb.cf ]
  %.pn.i = phi i32 [ %i.pg, %.lr.ph173.i ], [ %i.rw, %bb.cf ]
  %i.qf = load ptr, ptr %i.fe, align 8
  %i.qg = icmp eq ptr %i.pp, %i.qf
  br i1 %i.qg, label %.critedge2.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qh = load i32, ptr %i.pp, align 4            ; 2 uses
  %i.qi = sub i32 %i.qe, %i.qh
  %.not75.i = icmp sgt i32 %i.qi, -1
  br i1 %.not75.i, label %bb.cd, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.cb, %bb.cc
  store i32 %i.qe, ptr %i.pf, align 4
  br label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.qj = load i32, ptr %i.pq, align 4
  store i32 %i.qj, ptr %i.pf, align 4
  %i.qk = load ptr, ptr %16, align 8              ; 3 uses
  %i.ql = ptrtoint ptr %i.qk to i64               ; 2 uses
  %i.qm = sub i64 %i.pr, %i.ql
  %i.qn = getelementptr i8, ptr %i.qk, i64 %i.qm  ; 7 uses
  %i.qo = getelementptr i8, ptr %i.qn, i64 8      ; 9 uses
  %i.qp = load ptr, ptr %i.fe, align 8            ; 4 uses
  %.not.i.i88.i = icmp eq ptr %i.qo, %i.qp
  br i1 %.not.i.i88.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.qq = ptrtoint ptr %i.qp to i64
  %i.qr = ptrtoint ptr %i.qo to i64
  %i.qs = sub i64 %i.qq, %i.qr
  %i.qt = ashr exact i64 %i.qs, 3                 ; 8 uses
  %i.qu = icmp sgt i64 %i.qt, 0
  br i1 %i.qu, label %.lr.ph.i.i.i.i.i.i.i89.i.preheader, label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit.i

.lr.ph.i.i.i.i.i.i.i89.i.preheader:               ; preds = %bb.ce
  %min.iters.check907 = icmp ult i64 %i.qt, 60
  br i1 %min.iters.check907, label %.lr.ph.i.i.i.i.i.i.i89.i.preheader989, label %vector.scevcheck893

vector.scevcheck893:                              ; preds = %.lr.ph.i.i.i.i.i.i.i89.i.preheader
  %i.qv = add nsw i64 %i.qt, -1                   ; 4 uses
  %mul.result895 = shl i64 %i.qv, 3
  %i.qw = getelementptr i8, ptr %i.qn, i64 %mul.result895
  %i.qx = icmp ult ptr %i.qw, %i.pp
  %scevgep = getelementptr i8, ptr %i.qk, i64 12
  %scevgep898 = getelementptr i8, ptr %scevgep, i64 %.sroa.0109.0174.i897
  %i.qy = sub i64 0, %i.ql
  %scevgep899 = getelementptr i8, ptr %scevgep898, i64 %i.qy ; 2 uses
  %mul.result901 = shl i64 %i.qv, 3
  %mul.overflow902 = icmp ugt i64 %i.qv, 2305843009213693951
  %i.qz = getelementptr i8, ptr %scevgep899, i64 %mul.result901
  %i.ra = icmp ult ptr %i.qz, %scevgep899
  %i.rb = or i1 %i.ra, %mul.overflow902
  %mul.result904 = shl i64 %i.qv, 3
  %21 = getelementptr i8, ptr %i.qo, i64 %mul.result904
  %22 = icmp ult ptr %21, %i.qo
  %i.rc = or i1 %i.qx, %i.rb
  %i.rd = or i1 %22, %i.rc
  br i1 %i.rd, label %.lr.ph.i.i.i.i.i.i.i89.i.preheader989, label %vector.ph908

vector.ph908:                                     ; preds = %vector.scevcheck893
  %n.vec910 = and i64 %i.qt, 4611686018427387900  ; 3 uses
  %i.re = and i64 %i.qt, 3
  %i.rf = shl i64 %n.vec910, 3                    ; 2 uses
  %i.rg = getelementptr i8, ptr %i.qn, i64 %i.rf
  %i.rh = getelementptr i8, ptr %i.qo, i64 %i.rf
  br label %vector.body911

vector.body911:                                   ; preds = %vector.body911, %vector.ph908
  %index912 = phi i64 [ 0, %vector.ph908 ], [ %index.next922, %vector.body911 ] ; 2 uses
  %i.ri = shl i64 %index912, 3                    ; 3 uses
  %i.rj = or disjoint i64 %i.ri, 16               ; 2 uses
  %next.gep913 = getelementptr i8, ptr %i.qn, i64 %i.ri
  %next.gep914 = getelementptr i8, ptr %i.qn, i64 %i.rj
  %next.gep915 = getelementptr i8, ptr %i.qo, i64 %i.ri
  %next.gep916 = getelementptr i8, ptr %i.qo, i64 %i.rj
  %wide.vec = load <4 x i32>, ptr %next.gep915, align 4
  %wide.vec918 = load <4 x i32>, ptr %next.gep916, align 4
  store <4 x i32> %wide.vec, ptr %next.gep913, align 4
  store <4 x i32> %wide.vec918, ptr %next.gep914, align 4
  %index.next922 = add nuw i64 %index912, 4       ; 2 uses
  %i.rk = icmp eq i64 %index.next922, %n.vec910
  br i1 %i.rk, label %middle.block923, label %vector.body911, !llvm.loop !127

middle.block923:                                  ; preds = %vector.body911
  %cmp.n924 = icmp eq i64 %i.qt, %n.vec910
  br i1 %cmp.n924, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i93.i, label %.lr.ph.i.i.i.i.i.i.i89.i.preheader989

.lr.ph.i.i.i.i.i.i.i89.i.preheader989:            ; preds = %vector.scevcheck893, %.lr.ph.i.i.i.i.i.i.i89.i.preheader, %middle.block923
  %.012.i.i.i.i.i.i.i90.i.ph = phi i64 [ %i.qt, %vector.scevcheck893 ], [ %i.qt, %.lr.ph.i.i.i.i.i.i.i89.i.preheader ], [ %i.re, %middle.block923 ]
  %.0811.i.i.i.i.i.i.i91.i.ph = phi ptr [ %i.qn, %vector.scevcheck893 ], [ %i.qn, %.lr.ph.i.i.i.i.i.i.i89.i.preheader ], [ %i.rg, %middle.block923 ]
  %.0910.i.i.i.i.i.i.i92.i.ph = phi ptr [ %i.qo, %vector.scevcheck893 ], [ %i.qo, %.lr.ph.i.i.i.i.i.i.i89.i.preheader ], [ %i.rh, %middle.block923 ]
  br label %.lr.ph.i.i.i.i.i.i.i89.i

.lr.ph.i.i.i.i.i.i.i89.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i89.i.preheader989, %.lr.ph.i.i.i.i.i.i.i89.i
  %.012.i.i.i.i.i.i.i90.i = phi i64 [ %i.rr, %.lr.ph.i.i.i.i.i.i.i89.i ], [ %.012.i.i.i.i.i.i.i90.i.ph, %.lr.ph.i.i.i.i.i.i.i89.i.preheader989 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i91.i = phi ptr [ %i.rq, %.lr.ph.i.i.i.i.i.i.i89.i ], [ %.0811.i.i.i.i.i.i.i91.i.ph, %.lr.ph.i.i.i.i.i.i.i89.i.preheader989 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i92.i = phi ptr [ %i.rp, %.lr.ph.i.i.i.i.i.i.i89.i ], [ %.0910.i.i.i.i.i.i.i92.i.ph, %.lr.ph.i.i.i.i.i.i.i89.i.preheader989 ] ; 3 uses
  %i.rl = load i32, ptr %.0910.i.i.i.i.i.i.i92.i, align 4
  store i32 %i.rl, ptr %.0811.i.i.i.i.i.i.i91.i, align 4
  %i.rm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i92.i, i64 4
  %i.rn = load i32, ptr %i.rm, align 4
  %i.ro = getelementptr i8, ptr %.0811.i.i.i.i.i.i.i91.i, i64 4
  store i32 %i.rn, ptr %i.ro, align 4
  %i.rp = getelementptr i8, ptr %.0910.i.i.i.i.i.i.i92.i, i64 8
  %i.rq = getelementptr i8, ptr %.0811.i.i.i.i.i.i.i91.i, i64 8
  %i.rr = add nsw i64 %.012.i.i.i.i.i.i.i90.i, -1
  %i.rs = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i90.i, 1
  br i1 %i.rs, label %.lr.ph.i.i.i.i.i.i.i89.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i93.i, !llvm.loop !128

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i93.i: ; preds = %.lr.ph.i.i.i.i.i.i.i89.i, %middle.block923
  %.pre.i.i94.i = load ptr, ptr %i.fe, align 8
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i93.i, %bb.ce, %bb.cd
  %i.rt = phi ptr [ %.pre.i.i94.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i93.i ], [ %i.qp, %bb.ce ], [ %i.qp, %bb.cd ]
  %i.ru = getelementptr i8, ptr %i.rt, i64 -8
  store ptr %i.ru, ptr %i.fe, align 8
  %.pre199.i = load i32, ptr %i.pf, align 4
  %.pre200.i = load i32, ptr %i.pk, align 4
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit.i, %.critedge2.i
  %i.rv = phi i32 [ %i.qe, %.critedge2.i ], [ %.pre200.i, %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit.i ] ; 2 uses
  %.pn590 = phi i32 [ %i.qe, %.critedge2.i ], [ %i.qh, %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit.i ]
  %i.rw = phi i32 [ %i.qe, %.critedge2.i ], [ %.pre199.i, %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit.i ] ; 2 uses
  %.pn589 = sub i32 %.pn590, %.pn.i
  %.8 = add i32 %.pn589, %.7                      ; 2 uses
  %i.rx = sub i32 %i.rw, %i.rv
  %.not73.i = icmp sgt i32 %i.rx, -1
  br i1 %.not73.i, label %._crit_edge.loopexit.i, label %bb.cb, !llvm.loop !129

._crit_edge.loopexit.i:                           ; preds = %bb.cf
  %.pre201.i = load i32, ptr %i.pe, align 4
  %.pre202.i = load i32, ptr %.sroa.0109.0174.i, align 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.9 = phi i32 [ %.5, %.preheader.i ], [ %.8, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ry = phi i32 [ %i.pm, %.preheader.i ], [ %.pre202.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.rz = phi i32 [ %i.ph, %.preheader.i ], [ %.pre201.i, %._crit_edge.loopexit.i ] ; 3 uses
  %i.sa = sub i32 %i.rz, %i.ry
  %.not74.i = icmp sgt i32 %i.sa, -1
  br i1 %.not74.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge.i
  %i.sb = add i32 %i.ry, %.9
  %i.sc = sub i32 %i.sb, %i.rz
  store i32 %i.rz, ptr %.sroa.0109.0174.i, align 4
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %._crit_edge.i
  %.10 = phi i32 [ %.9, %._crit_edge.i ], [ %i.sc, %bb.cg ]
  %i.sd = add nsw i32 %.1175.i, 1
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %.noexc164, %bb.by
  %.6 = phi i32 [ %.10, %bb.ch ], [ %i.py, %.noexc164 ], [ %.5, %bb.by ] ; 2 uses
  %.sroa.0109.1.i = phi ptr [ %.sroa.0109.0174.i, %bb.ch ], [ %i.qc, %.noexc164 ], [ %i.pj, %bb.by ]
  %.2.i = phi i32 [ %i.sd, %bb.ch ], [ %i.qd, %.noexc164 ], [ %.1175.i, %bb.by ] ; 3 uses
  %i.se = icmp slt i32 %.2.i, %i.og
  br i1 %i.se, label %bb.bv, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ci, %bb.bv, %.loopexit.i
  %.3577 = phi i32 [ %.2576827, %.loopexit.i ], [ %.6, %bb.ci ], [ %.5, %bb.bv ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.0158.i, %.loopexit.i ], [ %.2.i, %bb.ci ], [ %.1175.i, %bb.bv ] ; 2 uses
  %i.sf = icmp slt i32 %.1.lcssa.i, %i.og
  br i1 %i.sf, label %.lr.ph182.i, label %_ZL24goodput_adjust_for_sacksPjjRSt6vectorISt4pairIjjESaIS2_EEhS5_.exit

.lr.ph182.i:                                      ; preds = %.critedge.i
  %i.sg = sext i32 %.1.lcssa.i to i64
  %wide.trip.count196.i = zext i8 %i.mj to i64
  br label %bb.cj

bb.cj:                                            ; preds = %.noexc165, %.lr.ph182.i
  %.4 = phi i32 [ %.3577, %.lr.ph182.i ], [ %i.ss, %.noexc165 ]
  %indvars.iv193.i = phi i64 [ %i.sg, %.lr.ph182.i ], [ %indvars.iv.next194.i, %.noexc165 ] ; 3 uses
  %i.sh = load ptr, ptr %i.ci, align 8
  %i.si = load ptr, ptr %17, align 8              ; 2 uses
  %i.sj = ptrtoint ptr %i.sh to i64
  %i.sk = ptrtoint ptr %i.si to i64
  %i.sl = sub i64 %i.sj, %i.sk
  %i.sm = ashr exact i64 %i.sl, 3
  %.not.i96.i = icmp ugt i64 %i.sm, %indvars.iv193.i
  br i1 %.not.i96.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit97.i, label %bb.ck, !prof !119

bb.ck:                                            ; preds = %bb.cj
  call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef nonnull @.str.250, i32 noundef 1128, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EEixEm, ptr noundef nonnull @.str.251) #32
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit97.i:    ; preds = %bb.cj
  %i.sn = getelementptr [8 x i8], ptr %i.si, i64 %indvars.iv193.i ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  %i.sp = load i32, ptr %i.so, align 4
  %i.sq = load i32, ptr %i.sn, align 4
  %i.sr = sub i32 %i.sp, %i.sq
  %i.ss = add i32 %i.sr, %.4                      ; 2 uses
  %i.st = load ptr, ptr %i.fe, align 8            ; 5 uses
  %i.su = load ptr, ptr %i.ec, align 8
  %.not.i318 = icmp eq ptr %i.st, %i.su
  br i1 %.not.i318, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit97.i
  %i.sv = load i64, ptr %i.sn, align 4
  store i64 %i.sv, ptr %i.st, align 4
  %i.sw = load ptr, ptr %i.fe, align 8
  %i.sx = getelementptr i8, ptr %i.sw, i64 8
  store ptr %i.sx, ptr %i.fe, align 8
  br label %.noexc165

bb.cm:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit97.i
  %i.sy = load ptr, ptr %16, align 8              ; 10 uses
  %i.sz = ptrtoint ptr %i.st to i64               ; 4 uses
  %i.ta = ptrtoint ptr %i.sy to i64               ; 6 uses
  %i.tb = sub i64 %i.sz, %i.ta                    ; 3 uses
  %i.tc = icmp eq i64 %i.tb, 9223372036854775800
  br i1 %i.tc, label %bb.cn, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.243) #34
          to label %.noexc321 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc321:                                        ; preds = %bb.cn
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cm
  %i.td = ashr exact i64 %i.tb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.td, i64 1)
  %i.te = add nsw i64 %.sroa.speculated.i.i.i, %i.td ; 2 uses
  %i.tf = icmp ult i64 %i.te, %i.td
  %i.tg = call i64 @llvm.umin.i64(i64 %i.te, i64 1152921504606846975)
  %i.th = select i1 %i.tf, i64 1152921504606846975, i64 %i.tg ; 3 uses
  %.not.i.i.i319 = icmp eq i64 %i.th, 0
  br i1 %.not.i.i.i319, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i.i, label %bb.co

bb.co:                                            ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ti = shl nuw nsw i64 %i.th, 3
  %i.tj = invoke noalias noundef ptr @_Znwm(i64 noundef %i.ti) #30
          to label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i.i unwind label %.loopexit.split-lp.loopexit

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %bb.co, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.tk = phi ptr [ null, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.tj, %bb.co ] ; 11 uses
  %i.tl = ptrtoaddr ptr %i.tk to i64
  %i.tm = getelementptr i8, ptr %i.tk, i64 %i.tb
  %i.tn = load i64, ptr %i.sn, align 4
  store i64 %i.tn, ptr %i.tm, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.sy, %i.st
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i.i
  %i.to = sub i64 %i.sz, %i.ta
  %i.tp = add i64 %i.to, -8                       ; 2 uses
  %i.tq = lshr i64 %i.tp, 3
  %i.tr = add nuw nsw i64 %i.tq, 1                ; 2 uses
  %min.iters.check878 = icmp ult i64 %i.tp, 776
  br i1 %min.iters.check878, label %.lr.ph.i.i.i.i.i.preheader990, label %vector.scevcheck867

vector.scevcheck867:                              ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ts = sub i64 %i.sz, %i.ta
  %i.tt = and i64 %i.ts, 7
  %ident.check868 = icmp ne i64 %i.tt, 0
  %i.tu = add i64 %i.sz, -8
  %i.tv = sub i64 %i.tu, %i.ta                    ; 2 uses
  %mul872 = and i64 %i.tv, -8
  %mul869 = and i64 %i.tv, -8
  %i.tw = getelementptr i8, ptr %i.tk, i64 %mul869
  %i.tx = icmp ult ptr %i.tw, %i.tk
  %i.ty = getelementptr i8, ptr %i.sy, i64 %mul872
  %i.tz = icmp ult ptr %i.ty, %i.sy
  %i.ua = or i1 %ident.check868, %i.tx
  %i.ub = or i1 %i.ua, %i.tz
  %i.uc = sub i64 %i.ta, %i.tl
  %diff.check876 = icmp ugt i64 %i.uc, -32
  %or.cond988 = or i1 %i.ub, %diff.check876
  br i1 %or.cond988, label %.lr.ph.i.i.i.i.i.preheader990, label %vector.ph879

vector.ph879:                                     ; preds = %vector.scevcheck867
  %n.vec881 = and i64 %i.tr, 4611686018427387900  ; 3 uses
  %i.ud = shl i64 %n.vec881, 3                    ; 2 uses
  %i.ue = getelementptr i8, ptr %i.tk, i64 %i.ud  ; 2 uses
  %i.uf = getelementptr i8, ptr %i.sy, i64 %i.ud
  br label %vector.body882

vector.body882:                                   ; preds = %vector.body882, %vector.ph879
  %index883 = phi i64 [ 0, %vector.ph879 ], [ %index.next888, %vector.body882 ] ; 2 uses
  %i.ug = shl i64 %index883, 3                    ; 2 uses
  %next.gep884 = getelementptr i8, ptr %i.tk, i64 %i.ug ; 2 uses
  %next.gep885 = getelementptr i8, ptr %i.sy, i64 %i.ug ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.uh = getelementptr i8, ptr %next.gep885, i64 16
  %wide.load886 = load <2 x i64>, ptr %next.gep885, align 4, !alias.scope !133, !noalias !130
  %wide.load887 = load <2 x i64>, ptr %i.uh, align 4, !alias.scope !133, !noalias !130
  %i.ui = getelementptr i8, ptr %next.gep884, i64 16
  store <2 x i64> %wide.load886, ptr %next.gep884, align 4, !alias.scope !130, !noalias !133
  store <2 x i64> %wide.load887, ptr %i.ui, align 4, !alias.scope !130, !noalias !133
  %index.next888 = add nuw i64 %index883, 4       ; 2 uses
  %i.uj = icmp eq i64 %index.next888, %n.vec881
  br i1 %i.uj, label %middle.block889, label %vector.body882, !llvm.loop !135

middle.block889:                                  ; preds = %vector.body882
  %cmp.n890 = icmp eq i64 %i.tr, %n.vec881
  br i1 %cmp.n890, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader990

.lr.ph.i.i.i.i.i.preheader990:                    ; preds = %vector.scevcheck867, %.lr.ph.i.i.i.i.i.preheader, %middle.block889
  %.012.i.i.i.i.i.ph = phi ptr [ %i.tk, %vector.scevcheck867 ], [ %i.tk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ue, %middle.block889 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.sy, %vector.scevcheck867 ], [ %i.sy, %.lr.ph.i.i.i.i.i.preheader ], [ %i.uf, %middle.block889 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader990, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.um, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader990 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ul, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader990 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.uk = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !133, !noalias !130
  store i64 %i.uk, ptr %.012.i.i.i.i.i, align 4, !alias.scope !130, !noalias !133
  %i.ul = getelementptr i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.um = getelementptr i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i320 = icmp eq ptr %i.ul, %i.st
  br i1 %.not.i.i.i.i.i320, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !136

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block889, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.tk, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i.i ], [ %i.ue, %middle.block889 ], [ %i.um, %.lr.ph.i.i.i.i.i ]
  %i.un = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.sy, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.uo = load ptr, ptr %i.ec, align 8
  %i.up = ptrtoint ptr %i.uo to i64
  %i.uq = sub i64 %i.up, %i.ta
  call void @_ZdlPvm(ptr noundef nonnull %i.sy, i64 noundef %i.uq) #29
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.cp, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.tk, ptr %16, align 8
  store ptr %i.un, ptr %i.fe, align 8
  %i.ur = getelementptr [8 x i8], ptr %i.tk, i64 %i.th
  store ptr %i.ur, ptr %i.ec, align 8
  br label %.noexc165

.noexc165:                                        ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.cl
  %indvars.iv.next194.i = add nuw nsw i64 %indvars.iv193.i, 1 ; 2 uses
  %exitcond197.not.i = icmp eq i64 %indvars.iv.next194.i, %wide.trip.count196.i
  br i1 %exitcond197.not.i, label %_ZL24goodput_adjust_for_sacksPjjRSt6vectorISt4pairIjjESaIS2_EEhS5_.exit, label %bb.cj, !llvm.loop !137

bb.cq:                                            ; preds = %bb.be
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZL24goodput_adjust_for_sacksPjjRSt6vectorISt4pairIjjESaIS2_EEhS5_.exit: ; preds = %bb.bu, %.noexc165, %bb.bb, %bb.bc, %.critedge.i, %bb.az
  %..sroa.sel.v.sroa.phi = phi ptr [ %..sroa.sel.v.sroa.gep, %bb.az ], [ %..sroa.sel.v.sroa.gep720, %.noexc165 ], [ %..sroa.sel.v.sroa.gep720, %bb.bb ], [ %..sroa.sel.v.sroa.gep720, %.critedge.i ], [ %..sroa.sel.v.sroa.gep720, %bb.bc ], [ %..sroa.sel.v.sroa.gep720, %bb.bu ] ; 3 uses
  %.0574 = phi i32 [ %i.gc, %bb.az ], [ %i.ss, %.noexc165 ], [ 0, %bb.bb ], [ %.3577, %.critedge.i ], [ 0, %bb.bc ], [ %.2576827, %bb.bu ] ; 2 uses
  %.289 = phi i32 [ %.188661, %bb.az ], [ %i.gi, %.noexc165 ], [ %.188661, %bb.bb ], [ %i.gi, %.critedge.i ], [ %.188661, %bb.bc ], [ %i.gi, %bb.bu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %i.ga, ptr %i.d, align 8
  %i.ut = load i64, ptr %..sroa.sel.v.sroa.phi, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIdE7emplaceIJRdEEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %., i64 noundef %i.ut, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc166 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc166:                                        ; preds = %_ZL24goodput_adjust_for_sacksPjjRSt6vectorISt4pairIjjESaIS2_EEhS5_.exit
  %i.uu = load ptr, ptr %., align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.uu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc166
  %i.uv = load atomic i32, ptr %i.uu monotonic, align 4
  %i.uw = icmp sgt i32 %i.uv, 1
  br i1 %i.uw, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i, label %bb.cr

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i, %.noexc166
  invoke void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %., i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cr:                                            ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ux = uitofp i32 %.0574 to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %i.ux, ptr %i.c, align 8
  %.sroa.sel537.v.sroa.sel.v.sroa.sel.v = select i1 %.not588, ptr %11, ptr %10
  %.sroa.sel537.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel537.v.sroa.sel.v.sroa.sel.v, i64 16
  %i.uy = load i64, ptr %.sroa.sel537.v.sroa.sel.v.sroa.sel, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIdE7emplaceIJRdEEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.fq, i64 noundef %i.uy, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc171 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc171:                                        ; preds = %bb.cr
  %i.uz = load ptr, ptr %i.fq, align 8            ; 2 uses
  %.not.i.i.i.i.i.i168 = icmp eq ptr %i.uz, null
  br i1 %.not.i.i.i.i.i.i168, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i170, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i169

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i169: ; preds = %.noexc171
  %i.va = load atomic i32, ptr %i.uz monotonic, align 4
  %i.vb = icmp sgt i32 %i.va, 1
  br i1 %i.vb, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i170, label %_ZN5QListIdE6appendEd.exit173

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i170: ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i169, %.noexc171
  invoke void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.fq, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListIdE6appendEd.exit173 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN5QListIdE6appendEd.exit173:                    ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i170, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.speculated400639 = select i1 %.not588, i32 %.0568659, i32 %.0660 ; 2 uses
  %i.vc = sext i32 %.sroa.speculated400639 to i64 ; 2 uses
  %i.vd = load i64, ptr %..sroa.sel.v.sroa.phi, align 8
  %i.ve = icmp sgt i64 %i.vd, %i.vc
  br i1 %i.ve, label %.lr.ph645, label %.critedge

.lr.ph645:                                        ; preds = %_ZN5QListIdE6appendEd.exit173
  %..sroa.sel548.v.sroa.sel.v.sroa.sel.v = select i1 %.not588, ptr %9, ptr %8
  %..sroa.sel548.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %..sroa.sel548.v.sroa.sel.v.sroa.sel.v, i64 8 ; 2 uses
  %.sroa.sel540.v.sroa.sel.v.sroa.sel.v = select i1 %.not588, ptr %11, ptr %10
  %.sroa.sel540.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel540.v.sroa.sel.v.sroa.sel.v, i64 8
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not588, ptr %15, ptr %14
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16 ; 8 uses
  %.sroa.sel450.v.sroa.sel.v.sroa.sel.v = select i1 %.not588, ptr %15, ptr %14
  %.sroa.sel450.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel450.v.sroa.sel.v.sroa.sel.v, i64 8 ; 6 uses
  %.sroa.sel480.v.sroa.sel.v.sroa.sel.v = select i1 %.not588, ptr %13, ptr %12
  %.sroa.sel480.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel480.v.sroa.sel.v.sroa.sel.v, i64 16 ; 8 uses
  %.sroa.sel507.v.sroa.sel.v.sroa.sel.v = select i1 %.not588, ptr %13, ptr %12
  %.sroa.sel507.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel507.v.sroa.sel.v.sroa.sel.v, i64 8 ; 6 uses
  br label %bb.cs

bb.cs:                                            ; preds = %.lr.ph645, %_ZN5QListIdE6appendEd.exit209
  %i.vf = phi i64 [ %i.vc, %.lr.ph645 ], [ %i.abc, %_ZN5QListIdE6appendEd.exit209 ] ; 3 uses
  %.sroa.speculated400644 = phi i32 [ %.sroa.speculated400639, %.lr.ph645 ], [ %i.abb, %_ZN5QListIdE6appendEd.exit209 ]
  %.1643 = phi i32 [ %.0660, %.lr.ph645 ], [ %spec.select584, %_ZN5QListIdE6appendEd.exit209 ] ; 2 uses
  %.1569642 = phi i32 [ %.0568659, %.lr.ph645 ], [ %spec.select583, %_ZN5QListIdE6appendEd.exit209 ] ; 2 uses
  %.1572641 = phi i64 [ %.0571658, %.lr.ph645 ], [ %spec.select582, %_ZN5QListIdE6appendEd.exit209 ] ; 3 uses
  %.1579640 = phi i64 [ %.0578657, %.lr.ph645 ], [ %spec.select, %_ZN5QListIdE6appendEd.exit209 ] ; 3 uses
  %i.vg = load ptr, ptr %., align 8               ; 3 uses
  %.not.i.i.i.i174 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i.i174, label %_ZN5QListIdE6detachEv.exit.i, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i: ; preds = %bb.cs
  %i.vh = load atomic i32, ptr %i.vg monotonic, align 4
  %i.vi = icmp sgt i32 %i.vh, 1
  br i1 %i.vi, label %_ZN5QListIdE6detachEv.exit.i, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i

_ZN5QListIdE6detachEv.exit.i:                     ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i, %bb.cs
  invoke void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %., i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %.noexc176 unwind label %.loopexit

.noexc176:                                        ; preds = %_ZN5QListIdE6detachEv.exit.i
  %.pre.i175 = load ptr, ptr %., align 8          ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i175, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i: ; preds = %.noexc176, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i
  %i.vj = phi ptr [ %.pre.i175, %.noexc176 ], [ %i.vg, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i ]
  %i.vk = load atomic i32, ptr %i.vj monotonic, align 4
  %i.vl = icmp sgt i32 %i.vk, 1
  br i1 %i.vl, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i, label %bb.ct

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i, %.noexc176
  invoke void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %., i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.ct unwind label %.loopexit

bb.ct:                                            ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i
  %i.vm = load ptr, ptr %..sroa.sel548.v.sroa.sel.v.sroa.sel, align 8
  %i.vn = getelementptr [8 x i8], ptr %i.vm, i64 %i.vf
  %i.vo = load double, ptr %i.vn, align 8
  %i.vp = fsub double %i.ga, %i.vo
  %i.vq = load double, ptr %i.ff, align 8
  %i.vr = fcmp ogt double %i.vp, %i.vq
  br i1 %i.vr, label %bb.cu, label %.critedge

bb.cu:                                            ; preds = %bb.ct
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIdSt4pairIKdP7segmentESt10_Select1stIS4_ESt4lessIdESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E:bb.a
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIdSt4pairIKdP7segmentESt10_Select1stIS4_ESt4lessIdESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef align 8 dereferenceable_or_null(48) %0, ptr noundef %i.b)
  %i.c = getelementptr i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !189

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget8setFocusEN2Qt11FocusReasonE(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN4QPenC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN6QBrushC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QPixmapC1ERKS_(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN12QPainterPathC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr ptr @_ZNSt6vectorISt4pairIjjESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef align 8 dereferenceable_or_null(24) %0, ptr %1, ptr noundef align 4 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 12 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 9 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 7 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 8 uses
  %i.g = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp eq ptr %1, null
  br i1 %.not23, label %bb.c, label %bb.d, !prof !124

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef nonnull @.str.241, i32 noundef 143, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_, ptr noundef nonnull @.str.242) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %2, align 4
  store i64 %i.j, ptr %i.f, align 4
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.e, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.a, i64 %i.d
  %i.n = load i64, ptr %2, align 4
  %i.o = getelementptr i8, ptr %i.f, i64 -8
  %i.p = load i64, ptr %i.o, align 4
  store i64 %i.p, ptr %i.f, align 4
  %i.q = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  store ptr %i.r, ptr %i.e, align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -8       ; 3 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.b
  %i.v = ashr exact i64 %i.u, 3                   ; 5 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.f
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.v, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.q, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.x = getelementptr i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.y = getelementptr i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.z = load i32, ptr %i.x, align 4
  store i32 %i.z, ptr %i.y, align 4
  %i.aa = getelementptr i8, ptr %.078.i.i.i.i.i.i.prol, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr i8, ptr %.069.i.i.i.i.i.i.prol, i64 -4
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = add nsw i64 %.010.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !190

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.y, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ae = icmp ult i64 %i.v, 4
  br i1 %i.ae, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.af = getelementptr i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.ag = getelementptr i8, ptr %.069.i.i.i.i.i.i, i64 -8
  %i.ah = load i32, ptr %i.af, align 4
  store i32 %i.ah, ptr %i.ag, align 4
  %i.ai = getelementptr i8, ptr %.078.i.i.i.i.i.i, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr i8, ptr %.069.i.i.i.i.i.i, i64 -4
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = getelementptr i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.am = getelementptr i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.an = load i32, ptr %i.al, align 4
  store i32 %i.an, ptr %i.am, align 4
  %i.ao = getelementptr i8, ptr %.078.i.i.i.i.i.i, i64 -12
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr i8, ptr %.069.i.i.i.i.i.i, i64 -12
  store i32 %i.ap, ptr %i.aq, align 4
  %i.ar = getelementptr i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.as = getelementptr i8, ptr %.069.i.i.i.i.i.i, i64 -24
  %i.at = load i32, ptr %i.ar, align 4
  store i32 %i.at, ptr %i.as, align 4
  %i.au = getelementptr i8, ptr %.078.i.i.i.i.i.i, i64 -20
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = getelementptr i8, ptr %.069.i.i.i.i.i.i, i64 -20
  store i32 %i.av, ptr %i.aw, align 4
  %i.ax = getelementptr i8, ptr %.078.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ay = getelementptr i8, ptr %.069.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.az = load i32, ptr %i.ax, align 4
  store i32 %i.az, ptr %i.ay, align 4
  %i.ba = getelementptr i8, ptr %.078.i.i.i.i.i.i, i64 -28
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = getelementptr i8, ptr %.069.i.i.i.i.i.i, i64 -28
  store i32 %i.bb, ptr %i.bc, align 4
  %i.bd = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.be = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i, label %.loopexit, !llvm.loop !114

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.f
  store i64 %i.n, ptr %i.m, align 4
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.bf = getelementptr i8, ptr %i.a, i64 %i.d    ; 6 uses
  %i.bg = ptrtoint ptr %i.f to i64                ; 4 uses
  %i.bh = sub i64 %i.bg, %i.c                     ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775800
  br i1 %i.bi, label %bb.h, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.243) #34
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.bj = ashr exact i64 %i.bh, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 1152921504606846975)
  %i.bn = select i1 %i.bl, i64 1152921504606846975, i64 %i.bm ; 3 uses
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = tail call noalias noundef ptr @_Znwm(i64 noundef %i.bo) #30
  br label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.i, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.bq = phi ptr [ %i.bp, %bb.i ], [ null, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 11 uses
  %i.br = ptrtoaddr ptr %i.bq to i64
  %i.bs = getelementptr i8, ptr %i.bq, i64 %i.d
  %i.bt = load i64, ptr %2, align 4
  store i64 %i.bt, ptr %i.bs, align 4
  %.not10.i.i.i.i = icmp eq ptr %i.a, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i
  %i.bu = sub i64 %i.b, %i.c
  %i.bv = add i64 %i.bu, -8                       ; 2 uses
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bv, 824
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader68, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.preheader
  %i.by = sub i64 %i.b, %i.c
  %i.bz = and i64 %i.by, 7
  %ident.check = icmp ne i64 %i.bz, 0
  %i.ca = add i64 %i.b, -8
  %i.cb = sub i64 %i.ca, %i.c                     ; 2 uses
  %mul34 = and i64 %i.cb, -8
  %mul = and i64 %i.cb, -8
  %i.cc = getelementptr i8, ptr %i.bq, i64 %mul
  %i.cd = icmp ult ptr %i.cc, %i.bq
  %i.ce = getelementptr i8, ptr %i.a, i64 %mul34
  %i.cf = icmp ult ptr %i.ce, %i.a
  %i.cg = or i1 %ident.check, %i.cd
  %i.ch = or i1 %i.cg, %i.cf
  %i.ci = sub i64 %i.c, %i.br
  %diff.check = icmp ugt i64 %i.ci, -32
  %or.cond = select i1 %i.ch, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.bx, 4611686018427387900     ; 3 uses
  %i.cj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bq, i64 %i.cj  ; 2 uses
  %i.cl = getelementptr i8, ptr %i.a, i64 %i.cj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.cm ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.a, i64 %i.cm ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.cn = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep37, align 4, !alias.scope !194, !noalias !191
  %wide.load38 = load <2 x i64>, ptr %i.cn, align 4, !alias.scope !194, !noalias !191
  %i.co = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !191, !noalias !194
  store <2 x i64> %wide.load38, ptr %i.co, align 4, !alias.scope !191, !noalias !194
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !196

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader68

.lr.ph.i.i.i.i.preheader68:                       ; preds = %vector.scevcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bq, %vector.scevcheck ], [ %i.bq, %.lr.ph.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.a, %vector.scevcheck ], [ %i.a, %.lr.ph.i.i.i.i.preheader ], [ %i.cl, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader68, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader68 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader68 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.cq = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !194, !noalias !191
  store i64 %i.cq, ptr %.012.i.i.i.i, align 4, !alias.scope !191, !noalias !194
  %i.cr = getelementptr i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cr, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !197

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bq, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i ], [ %i.ck, %middle.block ], [ %i.cs, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i49 = ptrtoaddr ptr %.0.lcssa.i.i.i.i to i64
  %i.ct = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 8 uses
  %.not10.i.i.i16.i = icmp eq ptr %1, %i.f
  br i1 %.not10.i.i.i16.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i17.i.preheader

.lr.ph.i.i.i17.i.preheader:                       ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.cu = sub i64 %i.bg, %i.b
  %i.cv = add i64 %i.cu, -8                       ; 2 uses
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check52 = icmp ult i64 %i.cv, 856
  br i1 %min.iters.check52, label %.lr.ph.i.i.i17.i.preheader67, label %vector.scevcheck40

vector.scevcheck40:                               ; preds = %.lr.ph.i.i.i17.i.preheader
  %i.cy = sub i64 %i.bg, %i.b
  %i.cz = and i64 %i.cy, 7
  %ident.check41 = icmp ne i64 %i.cz, 0
  %i.da = add i64 %i.bg, -8
  %i.db = sub i64 %i.da, %i.b                     ; 2 uses
  %mul45 = and i64 %i.db, -8
  %mul42 = and i64 %i.db, -8
  %i.dc = getelementptr i8, ptr %i.ct, i64 %mul42
  %i.dd = icmp ult ptr %i.dc, %i.ct
  %i.de = getelementptr i8, ptr %i.bf, i64 %mul45
  %i.df = icmp ult ptr %i.de, %1
  %i.dg = or i1 %ident.check41, %i.dd
  %i.dh = or i1 %i.dg, %i.df
  br i1 %i.dh, label %.lr.ph.i.i.i17.i.preheader67, label %vector.memcheck48

vector.memcheck48:                                ; preds = %vector.scevcheck40
  %i.di = sub i64 %.0.lcssa.i.i.i.i49, %i.b
  %i.dj = add i64 %i.di, 7
  %diff.check50 = icmp ult i64 %i.dj, 31
  br i1 %diff.check50, label %.lr.ph.i.i.i17.i.preheader67, label %vector.ph53

vector.ph53:                                      ; preds = %vector.memcheck48
  %n.vec55 = and i64 %i.cx, 4611686018427387900   ; 3 uses
  %i.dk = shl i64 %n.vec55, 3                     ; 2 uses
  %i.dl = getelementptr i8, ptr %i.ct, i64 %i.dk  ; 2 uses
  %i.dm = getelementptr i8, ptr %i.bf, i64 %i.dk
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph53
  %index57 = phi i64 [ 0, %vector.ph53 ], [ %index.next62, %vector.body56 ] ; 2 uses
  %i.dn = shl i64 %index57, 3                     ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.ct, i64 %i.dn ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.bf, i64 %i.dn ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.do = getelementptr i8, ptr %next.gep59, i64 16
  %wide.load60 = load <2 x i64>, ptr %next.gep59, align 4, !alias.scope !201, !noalias !198
  %wide.load61 = load <2 x i64>, ptr %i.do, align 4, !alias.scope !201, !noalias !198
  %i.dp = getelementptr i8, ptr %next.gep58, i64 16
  store <2 x i64> %wide.load60, ptr %next.gep58, align 4, !alias.scope !198, !noalias !201
  store <2 x i64> %wide.load61, ptr %i.dp, align 4, !alias.scope !198, !noalias !201
  %index.next62 = add nuw i64 %index57, 4         ; 2 uses
  %i.dq = icmp eq i64 %index.next62, %n.vec55
  br i1 %i.dq, label %middle.block63, label %vector.body56, !llvm.loop !203

middle.block63:                                   ; preds = %vector.body56
  %cmp.n64 = icmp eq i64 %i.cx, %n.vec55
  br i1 %cmp.n64, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i17.i.preheader67

.lr.ph.i.i.i17.i.preheader67:                     ; preds = %vector.memcheck48, %vector.scevcheck40, %.lr.ph.i.i.i17.i.preheader, %middle.block63
  %.012.i.i.i18.i.ph = phi ptr [ %i.ct, %vector.memcheck48 ], [ %i.ct, %vector.scevcheck40 ], [ %i.ct, %.lr.ph.i.i.i17.i.preheader ], [ %i.dl, %middle.block63 ]
  %.0911.i.i.i19.i.ph = phi ptr [ %i.bf, %vector.memcheck48 ], [ %i.bf, %vector.scevcheck40 ], [ %i.bf, %.lr.ph.i.i.i17.i.preheader ], [ %i.dm, %middle.block63 ]
  br label %.lr.ph.i.i.i17.i

.lr.ph.i.i.i17.i:                                 ; preds = %.lr.ph.i.i.i17.i.preheader67, %.lr.ph.i.i.i17.i
  %.012.i.i.i18.i = phi ptr [ %i.dt, %.lr.ph.i.i.i17.i ], [ %.012.i.i.i18.i.ph, %.lr.ph.i.i.i17.i.preheader67 ] ; 2 uses
  %.0911.i.i.i19.i = phi ptr [ %i.ds, %.lr.ph.i.i.i17.i ], [ %.0911.i.i.i19.i.ph, %.lr.ph.i.i.i17.i.preheader67 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.dr = load i64, ptr %.0911.i.i.i19.i, align 4, !alias.scope !201, !noalias !198
  store i64 %i.dr, ptr %.012.i.i.i18.i, align 4, !alias.scope !198, !noalias !201
  %i.ds = getelementptr i8, ptr %.0911.i.i.i19.i, i64 8 ; 2 uses
  %i.dt = getelementptr i8, ptr %.012.i.i.i18.i, i64 8 ; 2 uses
  %.not.i.i.i20.i = icmp eq ptr %i.ds, %i.f
  br i1 %.not.i.i.i20.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i17.i, !llvm.loop !204

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i17.i, %middle.block63, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %.0.lcssa.i.i.i21.i = phi ptr [ %i.ct, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i ], [ %i.dl, %middle.block63 ], [ %i.dt, %.lr.ph.i.i.i17.i ]
  %.not.i23.i = icmp eq ptr %i.a, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.du = load ptr, ptr %i.g, align 8
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.dw) #29
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, %bb.j
  store ptr %i.bq, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21.i, ptr %i.e, align 8
  %i.dx = getelementptr [8 x i8], ptr %i.bq, i64 %i.bn
  store ptr %i.dx, ptr %i.g, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %.loopexit, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit
  %i.dy = load ptr, ptr %0, align 8
  %i.dz = getelementptr i8, ptr %i.dy, i64 %i.d
  ret ptr %i.dz
}

; Function Attrs: noreturn nounwind null_pointer_is_valid
declare void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: noreturn null_pointer_is_valid
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare void @_ZNK7QString3argEyii5QChar(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(24), i64 noundef, i32 noundef, i32 noundef, i16) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare { i64, i64 } @_ZNK5QRectanERKS_(ptr noundef align 4 dereferenceable_or_null(16), ptr noundef align 4 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare { double, double } @_ZNK11QEventPoint8positionEv(ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #13

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK10QTransform4typeEv(ptr noundef align 8 dereferenceable_or_null(74)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN15MainApplication17windowTitleStringE5QListI7QStringE(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(168), ptr noundef align 8) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListI7QStringED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI7QStringED2Ev.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i:  ; preds = %bb.a
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN17QArrayDataPointerI7QStringED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.idx.i.i = mul i64 %i.f, 24                    ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %.idx.i.i
  %.not4.i.i.i.i.i = icmp eq i64 %.idx.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i, align 8    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i.i.i, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.j, i64 noundef 2, i64 noundef 8) #28
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i:       ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.k = getelementptr i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !186

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i, %bb.b
  %i.l = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 24, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerI7QStringED2Ev.exit

_ZN17QArrayDataPointerI7QStringED2Ev.exit:        ; preds = %bb.a, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate16QMovableArrayOpsI7QStringE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %1, ptr noundef align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit
  %i.d = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %1, %i.e
  br i1 %i.f, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit, label %bb.e

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit: ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.a to i64
  %i.l = add i64 %i.k, 23
  %i.m = and i64 %i.l, -8
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.n, %i.m
  %.neg4.i.neg = sdiv exact i64 %i.o, 24
  %.neg3.i = sub i64 %i.h, %1
  %.not = icmp eq i64 %.neg3.i, %.neg4.i.neg
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit
  %i.p = getelementptr [24 x i8], ptr %i.j, i64 %1 ; 3 uses
  %i.q = load ptr, ptr %2, align 8                ; 3 uses
  store ptr %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8
end_hunk_2
begin_hunk_3_@_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_:bb.a
bb.l:                                             ; preds = %bb.k, %_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit
  %i.be = phi ptr [ %i.bb, %bb.k ], [ %i.as, %_ZN9QtPrivate12QPodArrayOpsIdE10copyAppendEPKdS3_.exit ] ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.be, null
  br i1 %.not.i.i32, label %_ZN17QArrayDataPointerIdED2Ev.exit35, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i33

_ZN17QArrayDataPointerIdE5derefEv.exit.i33:       ; preds = %bb.l
  %i.bf = atomicrmw sub ptr %i.be, i32 1 acq_rel, align 4
  %.not.i34 = icmp eq i32 %i.bf, 1
  br i1 %.not.i34, label %bb.m, label %_ZN17QArrayDataPointerIdED2Ev.exit35

bb.m:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i33
  %i.bg = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bg, i64 noundef 8, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIdED2Ev.exit35

_ZN17QArrayDataPointerIdED2Ev.exit35:             ; preds = %bb.l, %_ZN17QArrayDataPointerIdE5derefEv.exit.i33, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.n

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIdED2Ev.exit35, %_ZN9QtPrivate12QPodArrayOpsIdE10reallocateExN10QArrayData16AllocationOptionE.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerIdE12allocateGrowERKS0_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind noalias writable sret(%struct.QArrayDataPointer.26) align 8 %0, ptr noundef align 8 dereferenceable(24) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit, label %_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit.thread

_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.d, i64 0)
  %i.e = add i64 %.sroa.speculated, %2
  br label %_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit.thread: ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = load i64, ptr %i.b, align 8              ; 2 uses
  %.sroa.speculated45 = tail call i64 @llvm.smax.i64(i64 %i.h, i64 %i.g)
  %i.i = add i64 %.sroa.speculated45, %2
  %i.j = icmp eq i32 %3, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = add i64 %i.m, 23
  %i.o = and i64 %i.n, -8
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.p, %i.o
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = add i64 %i.h, %i.r
  %i.t = sub i64 %i.g, %i.s
  %.ph = select i1 %i.j, i64 %i.t, i64 %i.r
  %i.u = sub i64 %i.i, %.ph                       ; 2 uses
  %i.v = getelementptr i8, ptr %i.c, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 1
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit31, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit.thread
  %spec.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 %i.g)
  br label %_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit31: ; preds = %bb.b, %_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit.thread, %_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit
  %i.y = phi i64 [ %i.e, %_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit ], [ %spec.select.i.i, %bb.b ], [ %i.u, %_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit.thread ] ; 2 uses
  %i.z = phi i64 [ 0, %_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit ], [ %i.g, %bb.b ], [ %i.g, %_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit.thread ]
  %i.aa = icmp sle i64 %i.y, %i.z
  %i.ab = zext i1 %i.aa to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ac = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 8, i64 noundef %i.y, i32 noundef %i.ab) #28 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 8) ]
  %i.ad = load ptr, ptr %i.a, align 8             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not = icmp ne ptr %i.ad, null
  %i.ae = icmp ne ptr %i.ac, null
  %i.af = and i1 %i.ae, %.not
  br i1 %i.af, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit31
  %i.ag = icmp eq i32 %3, 1
  br i1 %i.ag, label %_ZNK17QArrayDataPointerIdE16freeSpaceAtBeginEv.exit33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %1, align 8               ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNK17QArrayDataPointerIdE5flagsEv.exit, label %_ZNK17QArrayDataPointerIdE16freeSpaceAtBeginEv.exit33.thread

_ZNK17QArrayDataPointerIdE16freeSpaceAtBeginEv.exit33.thread: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = add i64 %i.al, 23
  %i.an = and i64 %i.am, -8
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = getelementptr i8, ptr %i.ac, i64 %i.ap
  br label %bb.e

_ZNK17QArrayDataPointerIdE16freeSpaceAtBeginEv.exit33: ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %i.ad, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.b, align 8
  %i.au = add i64 %2, %i.at
  %i.av = sub i64 %i.as, %i.au
  %i.aw = sdiv i64 %i.av, 2
  %i.ax = call noundef i64 @llvm.smax.i64(i64 %i.aw, i64 0)
  %.pr.pre = load ptr, ptr %1, align 8            ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %i.ac, i64 %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %2 ; 2 uses
  %.not.i34 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i34, label %_ZNK17QArrayDataPointerIdE5flagsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerIdE16freeSpaceAtBeginEv.exit33.thread, %_ZNK17QArrayDataPointerIdE16freeSpaceAtBeginEv.exit33
  %i.ba = phi ptr [ %i.aq, %_ZNK17QArrayDataPointerIdE16freeSpaceAtBeginEv.exit33.thread ], [ %i.az, %_ZNK17QArrayDataPointerIdE16freeSpaceAtBeginEv.exit33 ]
  %.pr62 = phi ptr [ %i.ah, %_ZNK17QArrayDataPointerIdE16freeSpaceAtBeginEv.exit33.thread ], [ %.pr.pre, %_ZNK17QArrayDataPointerIdE16freeSpaceAtBeginEv.exit33 ]
  %i.bb = getelementptr i8, ptr %.pr62, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  br label %_ZNK17QArrayDataPointerIdE5flagsEv.exit

_ZNK17QArrayDataPointerIdE5flagsEv.exit:          ; preds = %bb.d, %_ZNK17QArrayDataPointerIdE16freeSpaceAtBeginEv.exit33, %bb.e
  %i.bd = phi ptr [ %i.ba, %bb.e ], [ %i.az, %_ZNK17QArrayDataPointerIdE16freeSpaceAtBeginEv.exit33 ], [ %i.ac, %bb.d ]
  %.sroa.0.0.i = phi i32 [ %i.bc, %bb.e ], [ 0, %_ZNK17QArrayDataPointerIdE16freeSpaceAtBeginEv.exit33 ], [ 0, %bb.d ]
  %i.be = getelementptr i8, ptr %i.ad, i64 4
  store i32 %.sroa.0.0.i, ptr %i.be, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit31, %_ZNK17QArrayDataPointerIdE5flagsEv.exit
  %.sink = phi ptr [ %i.bd, %_ZNK17QArrayDataPointerIdE5flagsEv.exit ], [ %i.ac, %_ZNK17QArrayDataPointerIdE22constAllocatedCapacityEv.exit31 ]
  store ptr %i.ad, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bg, align 8
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef align 4 dereferenceable(8) ptr @_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, ptr noundef align 4 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 4
  store i64 %i.e, ptr %i.b, align 4
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  store ptr %i.g, ptr %i.a, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8                ; 10 uses
  %i.i = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 6 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.243) #34
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i, %i.m  ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef ptr @_Znwm(i64 noundef %i.r) #30
  br label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.e, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.t = phi ptr [ %i.s, %bb.e ], [ null, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 12 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = getelementptr i8, ptr %i.t, i64 %i.k
  %i.w = load i64, ptr %1, align 4
  store i64 %i.w, ptr %i.v, align 4
  %.not10.i.i.i.i = icmp eq ptr %i.h, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i
  %i.x = sub i64 %i.i, %i.j
  %i.y = add i64 %i.x, -8                         ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 824
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader13, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ab = sub i64 %i.i, %i.j
  %i.ac = and i64 %i.ab, 7
  %ident.check = icmp ne i64 %i.ac, 0
  %i.ad = add i64 %i.i, -8
  %i.ae = sub i64 %i.ad, %i.j                     ; 2 uses
  %mul7 = and i64 %i.ae, -8
  %mul = and i64 %i.ae, -8
  %i.af = getelementptr i8, ptr %i.t, i64 %mul
  %i.ag = icmp ult ptr %i.af, %i.t
  %i.ah = getelementptr i8, ptr %i.h, i64 %mul7
  %i.ai = icmp ult ptr %i.ah, %i.h
  %i.aj = or i1 %ident.check, %i.ag
  %i.ak = or i1 %i.aj, %i.ai
  %i.al = sub i64 %i.j, %i.u
  %diff.check = icmp ugt i64 %i.al, -32
  %or.cond = or i1 %i.ak, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.t, i64 %i.am   ; 2 uses
  %i.ao = getelementptr i8, ptr %i.h, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ap ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.h, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.aq = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 4, !alias.scope !221, !noalias !218
  %wide.load11 = load <2 x i64>, ptr %i.aq, align 4, !alias.scope !221, !noalias !218
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !218, !noalias !221
  store <2 x i64> %wide.load11, ptr %i.ar, align 4, !alias.scope !218, !noalias !221
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.preheader13

.lr.ph.i.i.i.i.preheader13:                       ; preds = %vector.scevcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.t, %vector.scevcheck ], [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader13, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader13 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.at = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !221, !noalias !218
  store i64 %i.at, ptr %.012.i.i.i.i, align 4, !alias.scope !218, !noalias !221
  %i.au = getelementptr i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !224

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.t, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i ], [ %i.an, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i ]
  %i.aw = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.ax = load ptr, ptr %i.c, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.az) #29
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, %bb.f
  store ptr %i.t, ptr %0, align 8
  store ptr %i.aw, ptr %i.a, align 8
  %i.ba = getelementptr [8 x i8], ptr %i.t, i64 %i.q
  store ptr %i.ba, ptr %i.c, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, %bb.b
  %i.bb = phi ptr [ %i.aw, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ], [ %i.g, %bb.b ] ; 2 uses
  %i.bc = phi ptr [ %i.t, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ], [ %.pre, %bb.b ]
  %i.bd = icmp eq ptr %i.bc, %i.bb
  br i1 %i.bd, label %bb.h, label %_ZNSt6vectorISt4pairIjjESaIS1_EE4backEv.exit, !prof !124

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef nonnull @.str.250, i32 noundef 1235, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EE4backEv, ptr noundef nonnull @.str.253) #32
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EE4backEv.exit:     ; preds = %bb.g
  %i.be = getelementptr i8, ptr %i.bb, i64 -8
  ret ptr %i.be
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #2 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph24

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET_SG_SG_T0_.exit
  %i.h = icmp eq i64 %i.w, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph24, !llvm.loop !225

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge16.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_RT0_(ptr %0, ptr %storemerge16.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_RT0_(ptr %0, ptr %storemerge16.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph24:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1623 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01722 = phi i64 [ %i.w, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.z, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr [8 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %storemerge1623, i64 -8
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_SG_T0_(ptr %0, ptr %i.f, ptr %i.k, ptr %i.l, ptr %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph24
  %.sroa.09.0.i.i = phi ptr [ %storemerge1623, %.lr.ph24 ], [ %.sroa.09.1.i.i, %bb.f ]
  %.sroa.012.0.i.i = phi ptr [ %i.f, %.lr.ph24 ], [ %i.n, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.c ], [ %i.n, %bb.d ] ; 10 uses
  %i.m = tail call noundef zeroext i1 %3(ptr noundef align 4 dereferenceable(8) %.sroa.012.1.i.i, ptr noundef align 4 dereferenceable(8) %0), !inline_history !226
  %i.n = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.m, label %bb.d, label %.preheader.i.i, !llvm.loop !227

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.d ] ; 2 uses
  %.sroa.09.1.i.i = getelementptr i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 6 uses
  %i.o = tail call noundef zeroext i1 %3(ptr noundef align 4 dereferenceable(8) %0, ptr noundef align 4 dereferenceable(8) %.sroa.09.1.i.i), !inline_history !226
  br i1 %i.o, label %.preheader.i.i, label %bb.e, !llvm.loop !228

bb.e:                                             ; preds = %.preheader.i.i
  %i.p = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.p, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET_SG_SG_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %.sroa.012.1.i.i, align 4
  %i.r = load i32, ptr %.sroa.09.1.i.i, align 4
  store i32 %i.r, ptr %.sroa.012.1.i.i, align 4
  store i32 %i.q, ptr %.sroa.09.1.i.i, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  %i.t = getelementptr i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 2 uses
  %i.u = load i32, ptr %i.s, align 4
  %i.v = load i32, ptr %i.t, align 4
  store i32 %i.v, ptr %i.s, align 4
  store i32 %i.u, ptr %i.t, align 4
  br label %bb.c, !llvm.loop !229

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET_SG_SG_T0_.exit: ; preds = %bb.e
  %i.w = add i64 %.01722, -1                      ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_(ptr %.sroa.012.1.i.i, ptr %storemerge1623, i64 noundef %i.w, ptr %3)
  %i.x = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.y = sub i64 %i.x, %i.a
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 16
  br i1 %i.aa, label %bb.b, label %.loopexit, !llvm.loop !225

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET_SG_SG_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit ] ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i = load i64, ptr %i.f, align 4 ; 4 uses
  %i.g = load i32, ptr %0, align 4
  store i32 %i.g, ptr %i.f, align 4
  %i.h = load i32, ptr %i.e, align 4
end_hunk_3
