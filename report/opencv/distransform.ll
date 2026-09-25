Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/distransform?download=true
inline.NumInlined: 181
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv17distanceTransformERKNS_11_InputArrayERKNS_12_OutputArrayEiii:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !27 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !26 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !54 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.ax = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !54 ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr %19, i64 128
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !55 ; 2 uses
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !55 ; 7 uses
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = load i32, ptr %16, align 8, !tbaa !19
  %i.be = and i32 %i.bd, 4095
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit19.i
  %i.bg = load i32, ptr %19, align 8, !tbaa !19
  %i.bh = and i32 %i.bg, 4095
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK2cv11_InputArray6getMatEi.exit19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cvL17distanceATS_L1_8uERKNS_3MatERS0_, ptr noundef nonnull @.str.1, i32 noundef 931) #19
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i

bb.aa:                                            ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %9, align 8, !tbaa !23    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i: ; preds = %bb.aa
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !24
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i, %bb.z
  %.pn.i.i = phi { ptr, i32 } [ %i.bj, %bb.z ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i ], [ %i.bk, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.bh

bb.ab:                                            ; preds = %bb.v
  %i.bq = load i32, ptr %i.s, align 8, !tbaa !25  ; 6 uses
  %i.br = icmp slt i32 %i.bq, 3
  br i1 %i.br, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc24.i unwind label %bb.bm

.noexc24.i:                                       ; preds = %bb.ac
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.8, i32 noundef 109) #19
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.noexc24.i
  unreachable

bb.ae:                                            ; preds = %.noexc24.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ae
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !24
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.body25.i

bb.af:                                            ; preds = %bb.ab
  %i.by = icmp sgt i32 %i.bq, 0
  br i1 %i.by, label %bb.ag, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.af
  %i.bz = icmp eq i32 %i.bq, 0
  %i.ca = zext i1 %i.bz to i32
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 84
  %i.cc = icmp eq i32 %i.bq, 2
  %.sroa.gep33.i = getelementptr inbounds nuw i8, ptr %16, i64 88
  %.sroa.gep33.val.i = load i32, ptr %.sroa.gep33.i, align 8
  %.val36.i = load i32, ptr %i.cb, align 4        ; 2 uses
  %i.cd = select i1 %i.cc, i32 %.sroa.gep33.val.i, i32 %.val36.i ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bq, 1
  br i1 %.not.i.i.i, label %bb.ah, label %_ZNK2cv8MatShapeclEv.exit.i.i

bb.ah:                                            ; preds = %bb.ag, %.thread.i.i.i
  %i.ce = phi i32 [ %i.ca, %.thread.i.i.i ], [ %i.cd, %bb.ag ]
  %i.cf = icmp sgt i32 %i.bq, -1
  %i.cg = zext i1 %i.cf to i32
  br label %_ZNK2cv8MatShapeclEv.exit.i.i

_ZNK2cv8MatShapeclEv.exit.i.i:                    ; preds = %bb.ah, %bb.ag
  %i.ch = phi i32 [ %i.ce, %bb.ah ], [ %i.cd, %bb.ag ]
  %i.ci = phi i32 [ %i.cg, %bb.ah ], [ %.val36.i, %bb.ag ]
  %i.cj = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !25 ; 6 uses
  %i.cl = icmp slt i32 %i.ck, 3
  br i1 %i.cl, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc27.i unwind label %bb.bm

.noexc27.i:                                       ; preds = %bb.ai
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.8, i32 noundef 109) #19
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.noexc27.i
  unreachable

bb.ak:                                            ; preds = %.noexc27.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i142.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.i.i: ; preds = %bb.ak
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !24
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i142.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i142.i.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.body25.i

bb.al:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit.i.i
  %i.cs = icmp sgt i32 %i.ck, 0
  br i1 %i.cs, label %bb.am, label %.thread.i144.i.i

.thread.i144.i.i:                                 ; preds = %bb.al
  %i.ct = icmp eq i32 %i.ck, 0
  %i.cu = zext i1 %i.ct to i32
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 84
  %i.cw = icmp eq i32 %i.ck, 2
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %19, i64 88
  %.sroa.gep.val.i = load i32, ptr %.sroa.gep.i, align 8
  %.val37.i = load i32, ptr %i.cv, align 4        ; 2 uses
  %i.cx = select i1 %i.cw, i32 %.sroa.gep.val.i, i32 %.val37.i ; 2 uses
  %.not.i149.i.i = icmp eq i32 %i.ck, 1
  br i1 %.not.i149.i.i, label %bb.an, label %_ZNK2cv8MatShapeclEv.exit150.i.i

bb.an:                                            ; preds = %bb.am, %.thread.i144.i.i
  %i.cy = phi i32 [ %i.cu, %.thread.i144.i.i ], [ %i.cx, %bb.am ]
  %i.cz = icmp sgt i32 %i.ck, -1
  %i.da = zext i1 %i.cz to i32
  br label %_ZNK2cv8MatShapeclEv.exit150.i.i

_ZNK2cv8MatShapeclEv.exit150.i.i:                 ; preds = %bb.an, %bb.am
  %i.db = phi i32 [ %i.cy, %bb.an ], [ %i.cx, %bb.am ]
  %i.dc = phi i32 [ %i.da, %bb.an ], [ %.val37.i, %bb.am ]
  %i.dd = icmp eq i32 %i.ch, %i.db
  %i.de = icmp eq i32 %i.ci, %i.dc
  %i.df = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %i.df, label %vector.body, label %bb.ao

vector.body:                                      ; preds = %_ZNK2cv8MatShapeclEv.exit150.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_ZNK2cv8MatShapeclEv.exit150.i.i ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %_ZNK2cv8MatShapeclEv.exit150.i.i ] ; 2 uses
  %21 = trunc <16 x i64> %vec.ind to <16 x i32>
  %22 = add <16 x i32> %21, splat (i32 1)
  %i.dg = call <16 x i32> @llvm.umin.v16i32(<16 x i32> %22, <16 x i32> splat (i32 255))
  %i.dh = trunc nuw <16 x i32> %i.dg to <16 x i8>
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  store <16 x i8> %i.dh, ptr %i.di, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.dj = icmp eq i64 %index.next, 256
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !116

bb.ao:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit150.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cvL17distanceATS_L1_8uERKNS_3MatERS0_, ptr noundef nonnull @.str.1, i32 noundef 932) #19
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.i.i

bb.as:                                            ; preds = %bb.ap
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %11, align 8, !tbaa !23   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151.i.i: ; preds = %bb.as
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !24
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.i.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151.i.i, %bb.ar
  %.pn130.i.i = phi { ptr, i32 } [ %i.dk, %bb.ar ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151.i.i ], [ %i.dl, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.bh

middle.block:                                     ; preds = %vector.body
  %i.dr = load i8, ptr %i.av, align 1, !tbaa !24
  %i.ds = icmp ne i8 %i.dr, 0
  %i.dt = sext i1 %i.ds to i8
  store i8 %i.dt, ptr %i.ay, align 1, !tbaa !24
  %i.du = icmp sgt i32 %i.ar, 1                   ; 2 uses
  br i1 %i.du, label %.lr.ph.preheader.i.i, label %.preheader.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %middle.block
  %wide.trip.count.i.i = zext nneg i32 %i.ar to i64 ; 2 uses
  %i.dv = add nsw i64 %wide.trip.count.i.i, -1    ; 6 uses
  %i.dw = add nsw i64 %wide.trip.count.i.i, -2    ; 2 uses
  %xtraiter45 = and i64 %i.dv, 1
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter48 = and i64 %i.dv, -2
  br label %.lr.ph.i.i

.preheader.i.i.unr-lcssa:                         ; preds = %bb.bc
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.preheader.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv184.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next185.i.i.1, %.preheader.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod47 = trunc i64 %i.dv to i1
  call void @llvm.assume(i1 %lcmp.mod47)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv184.i.i.epil.init
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !24
  %i.ea = icmp eq i8 %i.dz, 0
  br i1 %i.ea, label %.preheader.i.i.epilog-lcssa, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.epil.preheader
  %i.eb = getelementptr i8, ptr %i.ay, i64 %indvars.iv184.i.i.epil.init
  %i.ec = getelementptr i8, ptr %i.eb, i64 -1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !24
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !24
  br label %.preheader.i.i.epilog-lcssa

.preheader.i.i.epilog-lcssa:                      ; preds = %bb.at, %.lr.ph.i.i.epil.preheader
  %i.eh = phi i8 [ %i.eg, %bb.at ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv184.i.i.epil.init
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !24
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.unr-lcssa, %.preheader.i.i.epilog-lcssa
  %i.ej = icmp sgt i32 %i.at, 1
  br i1 %i.ej, label %.lr.ph165.i.i, label %._crit_edge166.thread.i.i

.preheader.thread.i.i:                            ; preds = %middle.block
  %i.ek = icmp sgt i32 %i.at, 1
  br i1 %i.ek, label %.lr.ph165.thread.i.i, label %.loopexit.i

.lr.ph165.thread.i.i:                             ; preds = %.preheader.thread.i.i
  %sext134222.i.i = shl i64 %i.ba, 32
  %i.el = ashr exact i64 %sext134222.i.i, 32      ; 3 uses
  %sext135223.i.i = shl i64 %i.bb, 32
  %i.em = ashr exact i64 %sext135223.i.i, 32      ; 3 uses
  %.neg224.i.i = mul i64 %i.bb, -4294967296
  %i.en = ashr exact i64 %.neg224.i.i, 32         ; 3 uses
  %i.eo = add nsw i32 %i.at, -1                   ; 3 uses
  %xtraiter = and i32 %i.eo, 1
  %i.ep = icmp eq i32 %i.at, 2
  br i1 %i.ep, label %.lr.ph165.split.i.i.epil.preheader, label %.lr.ph165.thread.i.i.new

.lr.ph165.thread.i.i.new:                         ; preds = %.lr.ph165.thread.i.i
  %unroll_iter = and i32 %i.eo, -2
  br label %.lr.ph165.split.i.i

.lr.ph165.i.i:                                    ; preds = %.preheader.i.i
  %sext134.i.i = shl i64 %i.ba, 32
  %i.eq = ashr exact i64 %sext134.i.i, 32
  %sext135.i.i = shl i64 %i.bb, 32
  %i.er = ashr exact i64 %sext135.i.i, 32
  %.neg.i.i = mul i64 %i.bb, -4294967296
  %i.es = ashr exact i64 %.neg.i.i, 32
  %xtraiter50 = and i64 %i.dv, 1
  %i.et = icmp eq i64 %i.dw, 0
  %unroll_iter53 = and i64 %i.dv, -2
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  %lcmp.mod52 = trunc i64 %i.dv to i1
  br label %.lr.ph165.split.us.i.i

.lr.ph165.split.us.i.i:                           ; preds = %._crit_edge.us.i.i, %.lr.ph165.i.i
  %.0110164.us.i.i = phi ptr [ %i.ev, %._crit_edge.us.i.i ], [ %i.ay, %.lr.ph165.i.i ] ; 4 uses
  %.0112163.us.i.i = phi ptr [ %i.eu, %._crit_edge.us.i.i ], [ %i.av, %.lr.ph165.i.i ]
  %.0113162.us.i.i = phi i32 [ %i.gr, %._crit_edge.us.i.i ], [ 1, %.lr.ph165.i.i ]
  %i.eu = getelementptr inbounds i8, ptr %.0112163.us.i.i, i64 %i.eq ; 5 uses
  %i.ev = getelementptr inbounds i8, ptr %.0110164.us.i.i, i64 %i.er ; 7 uses
  %i.ew = load i8, ptr %i.eu, align 1, !tbaa !24
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %.lr.ph161.us.i.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph165.split.us.i.i
  %i.ey = getelementptr inbounds i8, ptr %i.ev, i64 %i.es
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !24
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !24
  %i.fd = zext i8 %i.fc to i32
  br label %.lr.ph161.us.i.i

.lr.ph161.us.i.i:                                 ; preds = %bb.au, %.lr.ph165.split.us.i.i
  %i.fe = phi i32 [ %i.fd, %bb.au ], [ 0, %.lr.ph165.split.us.i.i ] ; 3 uses
  %i.ff = trunc nuw i32 %i.fe to i8
  store i8 %i.ff, ptr %i.ev, align 1, !tbaa !24
  br i1 %i.et, label %.epil.preheader, label %.lr.ph161.us.i.i.new

.lr.ph161.us.i.i.new:                             ; preds = %.lr.ph161.us.i.i, %bb.ay
  %indvars.iv189.i.i = phi i64 [ %indvars.iv.next190.i.i.1, %bb.ay ], [ 1, %.lr.ph161.us.i.i ] ; 5 uses
  %.0118159.us.i.i = phi i32 [ %i.gd, %bb.ay ], [ %i.fe, %.lr.ph161.us.i.i ]
  %niter54 = phi i64 [ %niter54.next.1, %bb.ay ], [ 0, %.lr.ph161.us.i.i ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv189.i.i
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !24
  %i.fi = icmp eq i8 %i.fh, 0
  br i1 %i.fi, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph161.us.i.i.new
  %i.fj = getelementptr inbounds nuw i8, ptr %.0110164.us.i.i, i64 %indvars.iv189.i.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !24
  %i.fl = zext i8 %i.fk to i32
  %..0118.us.i.i = call i32 @llvm.umin.i32(i32 %.0118159.us.i.i, i32 %i.fl)
  %i.fm = zext nneg i32 %..0118.us.i.i to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !24
  %i.fp = zext i8 %i.fo to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph161.us.i.i.new
  %i.fq = phi i32 [ %i.fp, %bb.av ], [ 0, %.lr.ph161.us.i.i.new ] ; 2 uses
  %i.fr = trunc nuw i32 %i.fq to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ev, i64 %indvars.iv189.i.i
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !24
  %indvars.iv.next190.i.i = add nuw nsw i64 %indvars.iv189.i.i, 1 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv.next190.i.i
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !24
  %i.fv = icmp eq i8 %i.fu, 0
  br i1 %i.fv, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fw = getelementptr inbounds nuw i8, ptr %.0110164.us.i.i, i64 %indvars.iv.next190.i.i
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !24
  %i.fy = zext i8 %i.fx to i32
  %..0118.us.i.i.1 = call i32 @llvm.umin.i32(i32 %i.fq, i32 %i.fy)
  %i.fz = zext nneg i32 %..0118.us.i.i.1 to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !24
  %i.gc = zext i8 %i.gb to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gd = phi i32 [ %i.gc, %bb.ax ], [ 0, %bb.aw ] ; 3 uses
  %i.ge = trunc nuw i32 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ev, i64 %indvars.iv.next190.i.i
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !24
  %indvars.iv.next190.i.i.1 = add nuw nsw i64 %indvars.iv189.i.i, 2 ; 2 uses
end_hunk_0
