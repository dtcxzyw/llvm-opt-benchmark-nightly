Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfCheckFile?download=true
inline.NumInlined: 710
inline.NumDeleted: 299
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7Imf_3_412_GLOBAL__N_113readMultiPartERNS_18MultiPartInputFileEbb:bb.a

bb.dl:                                            ; preds = %.loopexit.i, %.thread204.i
  %.pn108.pn207.i = phi { ptr, i32 } [ %i.js, %.thread204.i ], [ %.pn108.pn.i, %.loopexit.i ]
  %i.lk = ptrtoint ptr %.sroa.10.0.i118 to i64
  %i.ll = ptrtoint ptr %.sroa.0147.0.i to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0147.0.i, i64 noundef %i.lm) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit126.i

_ZNSt6vectorIjSaIjEED2Ev.exit126.i:               ; preds = %bb.dl, %.loopexit.i
  %.pn108.pn.pn.i = phi { ptr, i32 } [ %.pn108.pn207.i, %bb.dl ], [ %.pn108.pn.i, %.loopexit.i ] ; 2 uses
  %.not.i.i.i127.i = icmp eq ptr %.sroa.0152.0184.i, null
  br i1 %.not.i.i.i127.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit128.i, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit126.i, %_ZNSt6vectorIjSaIjEED2Ev.exit126.thread.i
  %.pn108.pn.pn221.i = phi { ptr, i32 } [ %i.in, %_ZNSt6vectorIjSaIjEED2Ev.exit126.thread.i ], [ %.pn108.pn.pn.i, %_ZNSt6vectorIjSaIjEED2Ev.exit126.i ]
  %.sroa.0159.0171177219.i = phi ptr [ %i.hw, %_ZNSt6vectorIjSaIjEED2Ev.exit126.thread.i ], [ %.sroa.0159.0171178.i, %_ZNSt6vectorIjSaIjEED2Ev.exit126.i ]
  %.sroa.10163.0168180217.i = phi ptr [ %i.hx, %_ZNSt6vectorIjSaIjEED2Ev.exit126.thread.i ], [ %.sroa.10163.0168181.i, %_ZNSt6vectorIjSaIjEED2Ev.exit126.i ]
  %.sroa.0152.0183216.i = phi ptr [ %i.ib, %_ZNSt6vectorIjSaIjEED2Ev.exit126.thread.i ], [ %.sroa.0152.0184.i, %_ZNSt6vectorIjSaIjEED2Ev.exit126.i ] ; 2 uses
  %.sroa.10156.0186215.i = phi ptr [ %i.ic, %_ZNSt6vectorIjSaIjEED2Ev.exit126.thread.i ], [ %.sroa.10156.0187.i, %_ZNSt6vectorIjSaIjEED2Ev.exit126.i ]
  %i.ln = ptrtoint ptr %.sroa.10156.0186215.i to i64
  %i.lo = ptrtoint ptr %.sroa.0152.0183216.i to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0152.0183216.i, i64 noundef %i.lp) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit128.i

_ZNSt6vectorIfSaIfEED2Ev.exit128.i:               ; preds = %bb.dm, %_ZNSt6vectorIjSaIjEED2Ev.exit126.i
  %.sroa.0159.0170.i = phi ptr [ %.sroa.0159.0171177219.i, %bb.dm ], [ %.sroa.0159.0171178.i, %_ZNSt6vectorIjSaIjEED2Ev.exit126.i ] ; 2 uses
  %.sroa.10163.0167.i = phi ptr [ %.sroa.10163.0168180217.i, %bb.dm ], [ %.sroa.10163.0168181.i, %_ZNSt6vectorIjSaIjEED2Ev.exit126.i ]
  %.pn108.pn.pn.pn.i = phi { ptr, i32 } [ %.pn108.pn.pn221.i, %bb.dm ], [ %.pn108.pn.pn.i, %_ZNSt6vectorIjSaIjEED2Ev.exit126.i ] ; 2 uses
  %.not.i.i.i129.i = icmp eq ptr %.sroa.0159.0170.i, null
  br i1 %.not.i.i.i129.i, label %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EED2Ev.exit130.i, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit128.i, %_ZNSt6vectorIfSaIfEED2Ev.exit128.thread.i
  %.pn108.pn.pn.pn229.i = phi { ptr, i32 } [ %i.im, %_ZNSt6vectorIfSaIfEED2Ev.exit128.thread.i ], [ %.pn108.pn.pn.pn.i, %_ZNSt6vectorIfSaIfEED2Ev.exit128.i ]
  %.sroa.10163.0167228.i = phi ptr [ %i.hx, %_ZNSt6vectorIfSaIfEED2Ev.exit128.thread.i ], [ %.sroa.10163.0167.i, %_ZNSt6vectorIfSaIfEED2Ev.exit128.i ]
  %.sroa.0159.0170227.i = phi ptr [ %i.hw, %_ZNSt6vectorIfSaIfEED2Ev.exit128.thread.i ], [ %.sroa.0159.0170.i, %_ZNSt6vectorIfSaIfEED2Ev.exit128.i ] ; 2 uses
  %i.lq = ptrtoint ptr %.sroa.10163.0167228.i to i64
  %i.lr = ptrtoint ptr %.sroa.0159.0170227.i to i64
  %i.ls = sub i64 %i.lq, %i.lr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0159.0170227.i, i64 noundef %i.ls) #26
  br label %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EED2Ev.exit130.i

_ZNSt6vectorIN9Imath_3_24halfESaIS1_EED2Ev.exit130.i: ; preds = %bb.dn, %_ZNSt6vectorIfSaIfEED2Ev.exit128.i, %bb.cd
  %.pn108.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.il, %bb.cd ], [ %.pn108.pn.pn.pn.i, %_ZNSt6vectorIfSaIfEED2Ev.exit128.i ], [ %.pn108.pn.pn.pn229.i, %bb.dn ]
  %i.lt = load ptr, ptr %i.i, align 8, !tbaa !74
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.lt)
          to label %_ZN7Imf_3_411FrameBufferD2Ev.exit131.i unwind label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EED2Ev.exit130.i
  %i.lu = landingpad { ptr, i32 }
          catch ptr null
  %i.lv = extractvalue { ptr, i32 } %i.lu, 0
  call void @__clang_call_terminate(ptr %i.lv) #30
  unreachable

_ZN7Imf_3_411FrameBufferD2Ev.exit131.i:           ; preds = %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EED2Ev.exit130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.dp

bb.dp:                                            ; preds = %_ZN7Imf_3_411FrameBufferD2Ev.exit131.i, %bb.bt
  %.pn108.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ht, %bb.bt ], [ %.pn108.pn.pn.pn.pn.i, %_ZN7Imf_3_411FrameBufferD2Ev.exit131.i ]
  %.10.i = extractvalue { ptr, i32 } %.pn108.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, 0
  %i.lw = call ptr @__cxa_begin_catch(ptr %.10.i) #25 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN7Imf_3_412_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit.thread174 unwind label %bb.dr

_ZN7Imf_3_412_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit.thread174: ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %bb.ds

_ZN7Imf_3_412_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit.thread: ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128.thread178

_ZN7Imf_3_412_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit: ; preds = %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EED2Ev.exit.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br i1 %.not232268.i, label %bb.ds, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128.thread178

bb.dq:                                            ; preds = %bb.bg
  %i.lx = landingpad { ptr, i32 }
          catch ptr null
  br label %.critedge103

bb.dr:                                            ; preds = %bb.dp, %bb.bh
  %i.ly = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %.critedge103

.critedge103:                                     ; preds = %bb.dr, %bb.dq
  %.pn97 = phi { ptr, i32 } [ %i.ly, %bb.dr ], [ %i.lx, %bb.dq ]
  %.085 = extractvalue { ptr, i32 } %.pn97, 0
  %i.lz = call ptr @__cxa_begin_catch(ptr %.085) #25 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit.thread174, %.critedge103, %_ZN7Imf_3_412_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit
  %i.ma = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.093291)
  %i.mb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7Imf_3_46Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.ma) ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !21 ; 3 uses
  %i.me = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L10TILEDIMAGEB5cxx11E, i64 8), align 8, !tbaa !21
  %i.mf = icmp eq i64 %i.md, %i.me
  br i1 %i.mf, label %bb.dt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128.thread178

bb.dt:                                            ; preds = %bb.ds
  %i.mg = icmp eq i64 %i.md, 0
  br i1 %i.mg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128: ; preds = %bb.dt
  %i.mh = load ptr, ptr @_ZN7Imf_3_4L10TILEDIMAGEB5cxx11E, align 8, !tbaa !28
  %i.mi = load ptr, ptr %i.mb, align 8, !tbaa !28
  %bcmp.i127 = call i32 @bcmp(ptr %i.mi, ptr %i.mh, i64 %i.md)
  %bcmp.i127.fr = freeze i32 %bcmp.i127
  %i.mj = icmp eq i32 %bcmp.i127.fr, 0
  br i1 %i.mj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128.thread178

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128.thread: ; preds = %bb.dt, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128.thread178

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128.thread178: ; preds = %bb.ds, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128, %_ZN7Imf_3_412_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit.thread, %_ZN7Imf_3_412_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread171
  %.5 = phi i1 [ %.3, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread171 ], [ %.3, %_ZN7Imf_3_412_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit ], [ %.3, %_ZN7Imf_3_412_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit.thread ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128.thread ], [ %.3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128 ], [ %.3, %bb.ds ] ; 5 uses
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit139.thread185, label %bb.du

bb.du:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128.thread178
  invoke void @_ZN7Imf_3_418MultiPartInputFile14flushPartCacheEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.dv unwind label %bb.fs

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  invoke void @_ZN7Imf_3_421DeepScanLineInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.093291)
          to label %bb.dw unwind label %bb.ft

bb.dw:                                            ; preds = %bb.dv
  %i.mk = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_421DeepScanLineInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.dx unwind label %.thread178.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.dx:                                            ; preds = %bb.dw
  %i.ml = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.mk)
          to label %bb.dy unwind label %.thread178.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.dy:                                            ; preds = %bb.dx
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !67 ; 2 uses
  %i.mo = sext i32 %i.mn to i64
  %i.mp = load i32, ptr %i.ml, align 4, !tbaa !68 ; 3 uses
  %i.mq = sext i32 %i.mp to i64
  %i.mr = sub nsw i64 %i.mo, %i.mq                ; 4 uses
  %i.ms = add nsw i64 %i.mr, 1                    ; 10 uses
  %i.mt = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_421DeepScanLineInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.dz unwind label %.thread178.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dz:                                            ; preds = %bb.dy
  %i.mu = invoke noundef i64 @_ZN7Imf_3_422calculateBytesPerPixelERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.mt)
          to label %bb.ea unwind label %.thread178.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ea:                                            ; preds = %bb.dz
  %i.mv = shl nsw i64 %i.ms, 2                    ; 2 uses
  %i.mw = icmp ugt i64 %i.mv, 8000000
  %or.cond.i129 = select i1 %1, i1 %i.mw, i1 false
  br i1 %or.cond.i129, label %_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit.thread181, label %bb.eb

_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit.thread181: ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit139.thread185

bb.eb:                                            ; preds = %bb.ea
  %i.mx = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.mk)
          to label %bb.ec unwind label %.thread178.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ec:                                            ; preds = %bb.eb
  %i.my = invoke ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.mx)
          to label %.preheader201.i unwind label %.thread178.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader201.i:                                  ; preds = %bb.ec, %bb.eg
  %indvars.iv297.i = phi i32 [ %indvars.iv.next298.i, %bb.eg ], [ -1, %bb.ec ] ; 2 uses
  %.sroa.0163.0.i = phi ptr [ %i.ne, %bb.eg ], [ %i.my, %bb.ec ] ; 2 uses
  %.097.i = phi i32 [ %i.nf, %bb.eg ], [ 0, %bb.ec ] ; 3 uses
  %i.mz = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.mk)
          to label %bb.ed unwind label %.thread178.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ed:                                            ; preds = %.preheader201.i
  %i.na = invoke ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.mz)
          to label %bb.ee unwind label %.thread178.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ee:                                            ; preds = %bb.ed
  %.not189.i = icmp eq ptr %.sroa.0163.0.i, %i.na
  br i1 %.not189.i, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.nb = icmp ugt i64 %i.ms, 4611686018427387903
  %i.nc = select i1 %i.nb, i64 -1, i64 %i.mv
  %i.nd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nc) #29
          to label %_ZN7Imf_3_45ArrayIjE11resizeEraseEl.exit.i unwind label %.thread178.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

bb.eg:                                            ; preds = %bb.ee
  %i.ne = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0163.0.i) #31
  %i.nf = add nuw nsw i32 %.097.i, 1
  %indvars.iv.next298.i = add i32 %indvars.iv297.i, 1
  br label %.preheader201.i, !llvm.loop !179

_ZN7Imf_3_45ArrayIjE11resizeEraseEl.exit.i:       ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ng = zext nneg i32 %.097.i to i64            ; 12 uses
  %i.nh = shl nuw nsw i64 %i.ng, 4                ; 2 uses
  %i.ni = or disjoint i64 %i.nh, 8
  %i.nj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ni) #29
          to label %.noexc132.i unwind label %bb.ei ; 2 uses

.noexc132.i:                                      ; preds = %_ZN7Imf_3_45ArrayIjE11resizeEraseEl.exit.i
  store i64 %i.ng, ptr %i.nj, align 16
  %i.nk = getelementptr i8, ptr %i.nj, i64 8      ; 5 uses
  %i.nl = icmp eq i32 %.097.i, 0                  ; 2 uses
  br i1 %i.nl, label %_ZN7Imf_3_45ArrayINS0_IPvEEEC2El.exit.thread.i, label %.lr.ph.i130

_ZN7Imf_3_45ArrayINS0_IPvEEEC2El.exit.thread.i:   ; preds = %.noexc132.i
  store ptr %i.nk, ptr %i.m, align 8, !tbaa !90
  store i64 %i.ng, ptr %7, align 8, !tbaa !91
  br label %._crit_edge.i132

.lr.ph.i130:                                      ; preds = %.noexc132.i
  call void @llvm.memset.p0.i64(ptr align 8 %i.nk, i8 0, i64 %i.nh, i1 false)
  store ptr %i.nk, ptr %i.m, align 8, !tbaa !90
  store i64 %i.ng, ptr %7, align 8, !tbaa !91
  %i.nm = icmp ugt i64 %i.ms, 2305843009213693951
  %i.nn = shl nuw nsw i64 %i.ms, 3
  %i.no = select i1 %i.nm, i64 -1, i64 %i.nn
  br label %bb.ej

._crit_edge.i132:                                 ; preds = %bb.el, %_ZN7Imf_3_45ArrayINS0_IPvEEEC2El.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i32 0, ptr %i.n, align 8, !tbaa !73
  store ptr null, ptr %i.o, align 8, !tbaa !74
  store ptr %i.n, ptr %i.p, align 8, !tbaa !75
  store ptr %i.n, ptr %i.q, align 8, !tbaa !76
  store i64 0, ptr %i.r, align 8, !tbaa !77
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.s, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit.i unwind label %bb.eh

bb.eh:                                            ; preds = %._crit_edge.i132
  %i.np = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %8) #25
  br label %.body.i

.thread178.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ed, %.preheader201.i, %bb.ef, %bb.ec, %bb.eb, %bb.dz, %bb.dy, %bb.dx, %bb.dw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_45ArrayIjED2Ev.exit137.i

bb.ei:                                            ; preds = %_ZN7Imf_3_45ArrayIjE11resizeEraseEl.exit.i
  %i.nq = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.fr

bb.ej:                                            ; preds = %bb.el, %.lr.ph.i130
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i130 ], [ %indvars.iv.next.i, %bb.el ] ; 2 uses
  %i.nr = getelementptr inbounds nuw [16 x i8], ptr %i.nk, i64 %indvars.iv.i ; 2 uses
  %i.ns = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.no) #29
          to label %.noexc133.i unwind label %bb.em

.noexc133.i:                                      ; preds = %bb.ej
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 8 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !94 ; 2 uses
  %i.nv = icmp eq ptr %i.nu, null
  br i1 %i.nv, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %.noexc133.i
  call void @_ZdaPv(ptr noundef nonnull %i.nu) #26
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %.noexc133.i
  store i64 %i.ms, ptr %i.nr, align 8, !tbaa !95
  store ptr %i.ns, ptr %i.nt, align 8, !tbaa !94
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i131 = icmp eq i64 %indvars.iv.next.i, %i.ng
  br i1 %exitcond.not.i131, label %._crit_edge.i132, label %bb.ej, !llvm.loop !180

bb.em:                                            ; preds = %bb.ej
  %i.nw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.fq

_ZN7Imf_3_415DeepFrameBufferC2Ev.exit.i:          ; preds = %._crit_edge.i132
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.nx = sub nsw i32 0, %i.mp
  %i.ny = sext i32 %i.nx to i64                   ; 2 uses
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.nd, i64 %i.ny
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %9, i32 noundef 0, ptr noundef nonnull %i.nz, i64 noundef 4, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.en unwind label %bb.et

bb.en:                                            ; preds = %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit.i
  invoke void @_ZN7Imf_3_415DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(50) %9)
          to label %bb.eo unwind label %bb.et

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.oa = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.mk)
          to label %bb.ep unwind label %.loopexit.split-lp197.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ep:                                            ; preds = %bb.eo
  %i.ob = invoke ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.oa)
          to label %.preheader195.i unwind label %.loopexit.split-lp197.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader195.i:                                  ; preds = %bb.ep, %bb.ew
  %.sroa.0149.0.i = phi ptr [ %i.ok, %bb.ew ], [ %i.ob, %bb.ep ] ; 3 uses
  %.095.i = phi i32 [ %24, %bb.ew ], [ 0, %bb.ep ] ; 2 uses
  %i.oc = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.mk)
          to label %bb.eq unwind label %.loopexit.split-lp197.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eq:                                            ; preds = %.preheader195.i
  %i.od = invoke ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.oc)
          to label %bb.er unwind label %.loopexit.split-lp197.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.er:                                            ; preds = %bb.eq
  %.not190.i = icmp eq ptr %.sroa.0149.0.i, %i.od
  br i1 %.not190.i, label %bb.es, label %bb.eu

bb.es:                                            ; preds = %bb.er
  invoke void @_ZN7Imf_3_421DeepScanLineInputPart14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(104) %8)
          to label %bb.ey unwind label %.loopexit.split-lp197.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.et:                                            ; preds = %bb.en, %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit.i
  %i.oe = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i133

bb.eu:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %23 = zext nneg i32 %.095.i to i64
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %i.nk, i64 %23
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !94
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.oh, i64 %i.ny
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef 2, ptr noundef %i.oi, i64 noundef 8, i64 noundef 0, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.ev unwind label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.0149.0.i, i64 32
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull %i.oj, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %bb.ew unwind label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ok = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0149.0.i) #31
  %24 = add nuw nsw i32 %.095.i, 1
  br label %.preheader195.i, !llvm.loop !181

bb.ex:                                            ; preds = %bb.ev, %bb.eu
  %i.ol = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i133

bb.ey:                                            ; preds = %bb.es
  %i.om = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %i.on = load i32, ptr %i.om, align 4, !tbaa !85 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ml, i64 12 ; 2 uses
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !86
  %.not250.i = icmp sgt i32 %i.on, %i.op
  br i1 %.not250.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit136.i, label %.lr.ph258.i

.lr.ph258.i:                                      ; preds = %bb.ey
  %.not270.i = icmp eq i64 %i.ms, 0
  %i.oq = zext i32 %indvars.iv297.i to i64
  %i.or = add nuw nsw i64 %i.oq, 1                ; 11 uses
  %brmerge.i = or i1 %.not270.i, %i.nl            ; 2 uses
  %i.os = add nsw i64 %i.ng, -1                   ; 3 uses
  %xtraiter = and i64 %i.ms, 3                    ; 3 uses
  %i.ot = icmp ult i64 %i.mr, 3
  %unroll_iter = and i64 %i.ms, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod663 = icmp ne i64 %xtraiter, 0
  %i.ou = icmp eq i32 %i.mn, %i.mp
  %unroll_iter670 = and i64 %i.ms, -2
  %i.ov = and i64 %i.mr, 1
  %lcmp.mod666.not.not = icmp eq i64 %i.ov, 0
  %lcmp.mod669 = trunc i64 %i.ms to i1
  %xtraiter672 = and i64 %i.ng, 3                 ; 3 uses
  %i.ow = icmp ult i64 %i.os, 3
  %unroll_iter677 = and i64 %i.ng, 2147483644
  %lcmp.mod674.not = icmp eq i64 %xtraiter672, 0
  %lcmp.mod676 = icmp ne i64 %xtraiter672, 0
  %xtraiter679 = and i64 %i.ng, 3                 ; 3 uses
  %i.ox = icmp ult i64 %i.os, 3
  %unroll_iter683 = and i64 %i.ng, 2147483644
  %lcmp.mod681.not = icmp eq i64 %xtraiter679, 0
  %lcmp.mod682 = icmp ne i64 %xtraiter679, 0
  %xtraiter685 = and i64 %i.ng, 3                 ; 3 uses
  %i.oy = icmp ult i64 %i.os, 3
  %unroll_iter689 = and i64 %i.ng, 2147483644
  %lcmp.mod687.not = icmp eq i64 %xtraiter685, 0
  %lcmp.mod688 = icmp ne i64 %xtraiter685, 0
  br label %bb.ez

.loopexit.split-lp197.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.eq, %.preheader195.i, %bb.es, %bb.ep, %bb.eo
  %lpad.loopexit.split-lp603 = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i133

bb.ez:                                            ; preds = %.thread.i, %.lr.ph258.i
  %.094255.i = phi i32 [ %i.on, %.lr.ph258.i ], [ %i.vs, %.thread.i ] ; 4 uses
  %.0106254.i = phi i1 [ false, %.lr.ph258.i ], [ %.4110173.i, %.thread.i ] ; 2 uses
  %.sroa.15.0253.i = phi ptr [ null, %.lr.ph258.i ], [ %.sroa.15.2172.i, %.thread.i ] ; 9 uses
  %.sroa.10.0252.i = phi ptr [ null, %.lr.ph258.i ], [ %.sroa.10.1171.i, %.thread.i ] ; 7 uses
  %.sroa.0.0251.i = phi ptr [ null, %.lr.ph258.i ], [ %.sroa.0.2170.i, %.thread.i ] ; 13 uses
  invoke void @_ZN7Imf_3_421DeepScanLineInputPart21readPixelSampleCountsEi(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %.094255.i)
          to label %.preheader194.i unwind label %.loopexit.i134

.preheader194.i:                                  ; preds = %bb.ez
  br i1 %brmerge.i, label %._crit_edge222.i, label %.preheader193.lr.ph.split.us.i

.preheader193.lr.ph.split.us.i:                   ; preds = %.preheader194.i
  br i1 %1, label %.preheader193.us.i.preheader, label %.preheader193.us.us.i.preheader

.preheader193.us.us.i.preheader:                  ; preds = %.preheader193.lr.ph.split.us.i
  br i1 %i.ot, label %.preheader193.us.us.i.epil.preheader, label %.preheader193.us.us.i

.preheader193.us.i.preheader:                     ; preds = %.preheader193.lr.ph.split.us.i
  br i1 %i.ou, label %.preheader193.us.i.epil.preheader, label %.preheader193.us.i

.preheader193.us.us.i:                            ; preds = %.preheader193.us.us.i.preheader, %.preheader193.us.us.i
  %.088221.us.us.i = phi i64 [ %i.pw, %.preheader193.us.us.i ], [ 0, %.preheader193.us.us.i.preheader ] ; 5 uses
  %.091219.us.us.i = phi i64 [ %i.pv, %.preheader193.us.us.i ], [ 0, %.preheader193.us.us.i.preheader ]
  %niter = phi i64 [ %niter.next.3, %.preheader193.us.us.i ], [ 0, %.preheader193.us.us.i.preheader ]
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %.088221.us.us.i
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !14
  %i.pb = zext i32 %i.pa to i64
  %i.pc = mul nuw i64 %i.or, %i.pb
  %i.pd = add i64 %i.pc, %.091219.us.us.i
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %.088221.us.us.i
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !14
  %i.ph = zext i32 %i.pg to i64
  %i.pi = mul nuw i64 %i.or, %i.ph
  %i.pj = add i64 %i.pi, %i.pd
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %.088221.us.us.i
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !14
  %i.pn = zext i32 %i.pm to i64
  %i.po = mul nuw i64 %i.or, %i.pn
  %i.pp = add i64 %i.po, %i.pj
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %.088221.us.us.i
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !14
  %i.pt = zext i32 %i.ps to i64
  %i.pu = mul nuw i64 %i.or, %i.pt
  %i.pv = add i64 %i.pu, %i.pp                    ; 3 uses
  %i.pw = add nuw i64 %.088221.us.us.i, 4         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge222.thread.i.loopexit.unr-lcssa, label %.preheader193.us.us.i, !llvm.loop !182

.preheader193.us.i:                               ; preds = %.preheader193.us.i.preheader, %.preheader193.us.i
  %.088221.us.i = phi i64 [ %i.qq, %.preheader193.us.i ], [ 0, %.preheader193.us.i.preheader ] ; 3 uses
  %.089220.us.i = phi i64 [ %i.qn, %.preheader193.us.i ], [ 0, %.preheader193.us.i.preheader ]
  %.091219.us.i = phi i64 [ %i.qp, %.preheader193.us.i ], [ 0, %.preheader193.us.i.preheader ]
  %niter671 = phi i64 [ %niter671.next.1, %.preheader193.us.i ], [ 0, %.preheader193.us.i.preheader ]
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %.088221.us.i
  %i.py = load i32, ptr %i.px, align 4, !tbaa !14
  %i.pz = zext i32 %i.py to i64                   ; 3 uses
  %i.qa = mul i64 %i.mu, %i.pz
  %i.qb = icmp ugt i64 %i.qa, 1000
  %spec.select268.i = select i1 %i.qb, i64 0, i64 %i.pz
  %i.qc = mul nuw i64 %i.or, %i.pz
  %i.qd = add i64 %i.qc, %.089220.us.i
  %i.qe = mul nuw i64 %spec.select268.i, %i.or
  %i.qf = add i64 %i.qe, %.091219.us.i
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %.088221.us.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 4
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !14
  %i.qj = zext i32 %i.qi to i64                   ; 3 uses
  %i.qk = mul i64 %i.mu, %i.qj
  %i.ql = icmp ugt i64 %i.qk, 1000
  %spec.select268.i.1 = select i1 %i.ql, i64 0, i64 %i.qj
  %i.qm = mul nuw i64 %i.or, %i.qj
  %i.qn = add i64 %i.qm, %i.qd                    ; 3 uses
  %i.qo = mul nuw i64 %spec.select268.i.1, %i.or
  %i.qp = add i64 %i.qo, %i.qf                    ; 3 uses
  %i.qq = add nuw i64 %.088221.us.i, 2            ; 2 uses
  %niter671.next.1 = add i64 %niter671, 2         ; 2 uses
  %niter671.ncmp.1 = icmp eq i64 %niter671.next.1, %unroll_iter670
  br i1 %niter671.ncmp.1, label %._crit_edge222.i.loopexit.unr-lcssa, label %.preheader193.us.i, !llvm.loop !182

._crit_edge222.i.loopexit.unr-lcssa:              ; preds = %.preheader193.us.i
  br i1 %lcmp.mod666.not.not, label %.preheader193.us.i.epil.preheader, label %._crit_edge222.i

.preheader193.us.i.epil.preheader:                ; preds = %._crit_edge222.i.loopexit.unr-lcssa, %.preheader193.us.i.preheader
  %.088221.us.i.epil.init = phi i64 [ 0, %.preheader193.us.i.preheader ], [ %i.qq, %._crit_edge222.i.loopexit.unr-lcssa ]
  %.089220.us.i.epil.init = phi i64 [ 0, %.preheader193.us.i.preheader ], [ %i.qn, %._crit_edge222.i.loopexit.unr-lcssa ]
  %.091219.us.i.epil.init = phi i64 [ 0, %.preheader193.us.i.preheader ], [ %i.qp, %._crit_edge222.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod669)
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %.088221.us.i.epil.init
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !14
  %i.qt = zext i32 %i.qs to i64                   ; 3 uses
  %i.qu = mul i64 %i.mu, %i.qt
  %i.qv = icmp ugt i64 %i.qu, 1000
  %spec.select268.i.epil = select i1 %i.qv, i64 0, i64 %i.qt
  %i.qw = mul nuw i64 %i.or, %i.qt
  %i.qx = add i64 %i.qw, %.089220.us.i.epil.init
  %i.qy = mul nuw i64 %spec.select268.i.epil, %i.or
  %i.qz = add i64 %i.qy, %.091219.us.i.epil.init
  br label %._crit_edge222.i

._crit_edge222.i:                                 ; preds = %.preheader193.us.i.epil.preheader, %._crit_edge222.i.loopexit.unr-lcssa, %.preheader194.i
  %.091.lcssa.i = phi i64 [ 0, %.preheader194.i ], [ %i.qp, %._crit_edge222.i.loopexit.unr-lcssa ], [ %i.qz, %.preheader193.us.i.epil.preheader ] ; 2 uses
  %.089.lcssa.i = phi i64 [ 0, %.preheader194.i ], [ %i.qn, %._crit_edge222.i.loopexit.unr-lcssa ], [ %i.qx, %.preheader193.us.i.epil.preheader ]
  %i.ra = add i64 %.089.lcssa.i, %.091.lcssa.i
  %i.rb = icmp ugt i64 %i.ra, 4095
  %or.cond130.not.i = select i1 %1, i1 %i.rb, i1 false
  br i1 %or.cond130.not.i, label %.thread.i, label %._crit_edge222.thread.i

._crit_edge222.thread.i.loopexit.unr-lcssa:       ; preds = %.preheader193.us.us.i
  br i1 %lcmp.mod.not, label %._crit_edge222.thread.i, label %.preheader193.us.us.i.epil.preheader

.preheader193.us.us.i.epil.preheader:             ; preds = %._crit_edge222.thread.i.loopexit.unr-lcssa, %.preheader193.us.us.i.preheader
  %.088221.us.us.i.epil.init = phi i64 [ 0, %.preheader193.us.us.i.preheader ], [ %i.pw, %._crit_edge222.thread.i.loopexit.unr-lcssa ]
  %.091219.us.us.i.epil.init = phi i64 [ 0, %.preheader193.us.us.i.preheader ], [ %i.pv, %._crit_edge222.thread.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod663)
  br label %.preheader193.us.us.i.epil

.preheader193.us.us.i.epil:                       ; preds = %.preheader193.us.us.i.epil, %.preheader193.us.us.i.epil.preheader
  %.088221.us.us.i.epil = phi i64 [ %i.rh, %.preheader193.us.us.i.epil ], [ %.088221.us.us.i.epil.init, %.preheader193.us.us.i.epil.preheader ] ; 2 uses
  %.091219.us.us.i.epil = phi i64 [ %i.rg, %.preheader193.us.us.i.epil ], [ %.091219.us.us.i.epil.init, %.preheader193.us.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader193.us.us.i.epil ], [ 0, %.preheader193.us.us.i.epil.preheader ]
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %.088221.us.us.i.epil
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !14
  %i.re = zext i32 %i.rd to i64
  %i.rf = mul nuw i64 %i.or, %i.re
  %i.rg = add i64 %i.rf, %.091219.us.us.i.epil    ; 2 uses
  %i.rh = add nuw i64 %.088221.us.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge222.thread.i, label %.preheader193.us.us.i.epil, !llvm.loop !183

._crit_edge222.thread.i:                          ; preds = %._crit_edge222.thread.i.loopexit.unr-lcssa, %.preheader193.us.us.i.epil, %._crit_edge222.i
  %.091.lcssa339.i = phi i64 [ %.091.lcssa.i, %._crit_edge222.i ], [ %i.pv, %._crit_edge222.thread.i.loopexit.unr-lcssa ], [ %i.rg, %.preheader193.us.us.i.epil ] ; 4 uses
  %i.ri = ptrtoint ptr %.sroa.10.0252.i to i64    ; 2 uses
  %i.rj = ptrtoint ptr %.sroa.0.0251.i to i64     ; 2 uses
  %i.rk = sub i64 %i.ri, %i.rj                    ; 4 uses
  %i.rl = ashr exact i64 %i.rk, 2                 ; 7 uses
  %i.rm = icmp ugt i64 %.091.lcssa339.i, %i.rl
  br i1 %i.rm, label %bb.fa, label %bb.fg

bb.fa:                                            ; preds = %._crit_edge222.thread.i
  %i.rn = sub nuw i64 %.091.lcssa339.i, %i.rl     ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN7Imf_3_412_GLOBAL__N_113readMultiPartERNS_18MultiPartInputFileEbb:bb.a
  %i.wy = load ptr, ptr @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, align 8, !tbaa !28
  %i.wz = load ptr, ptr %i.ws, align 8, !tbaa !28
  %bcmp.i138 = call i32 @bcmp(ptr %i.wz, ptr %i.wy, i64 %i.wu)
  %bcmp.i138.fr = freeze i32 %bcmp.i138
  %i.xa = icmp eq i32 %bcmp.i138.fr, 0
  br i1 %i.xa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit139.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit139.thread185

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit139.thread: ; preds = %bb.fv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit139
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit139.thread185

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit139.thread185: ; preds = %bb.fu, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit139.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit139, %_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit.thread181, %_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128.thread178
  %.7 = phi i1 [ %.5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit128.thread178 ], [ %.5, %_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit ], [ %.5, %_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit.thread181 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit139.thread ], [ %.5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit139 ], [ %.5, %bb.fu ] ; 5 uses
  br i1 %.189, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit161.thread192, label %bb.fw

bb.fw:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit139.thread185
  invoke void @_ZN7Imf_3_418MultiPartInputFile14flushPartCacheEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.fx unwind label %bb.il

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  invoke void @_ZN7Imf_3_418DeepTiledInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.093291)
          to label %bb.fy unwind label %bb.im

bb.fy:                                            ; preds = %bb.fx
  %i.xb = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418DeepTiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.fz unwind label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225.i ; 4 uses

bb.fz:                                            ; preds = %bb.fy
  %i.xc = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418DeepTiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ga unwind label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225.i

bb.ga:                                            ; preds = %bb.fz
  %i.xd = invoke noundef i64 @_ZN7Imf_3_422calculateBytesPerPixelERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.xc)
          to label %bb.gb unwind label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225.i ; 2 uses

bb.gb:                                            ; preds = %bb.ga
  %i.xe = trunc i64 %i.xd to i32                  ; 4 uses
  %i.xf = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418DeepTiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.gc unwind label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225.i

bb.gc:                                            ; preds = %bb.gb
  %i.xg = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.xf)
          to label %bb.gd unwind label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225.i ; 3 uses

bb.gd:                                            ; preds = %bb.gc
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !26 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xg, i64 4
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !27
  %i.xk = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ge unwind label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225.i ; 2 uses

bb.ge:                                            ; preds = %bb.gd
  %i.xl = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.gf unwind label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225.i ; 2 uses

bb.gf:                                            ; preds = %bb.ge
  %i.xm = sext i32 %i.xh to i64                   ; 7 uses
  %i.xn = sext i32 %i.xj to i64                   ; 2 uses
  %i.xo = mul nsw i64 %i.xn, %i.xm                ; 4 uses
  %i.xp = shl i64 %i.xo, 2                        ; 2 uses
  %i.xq = icmp ugt i64 %i.xp, 1000000
  %or.cond8.i = select i1 %or.cond.i140, i1 %i.xq, i1 false
  br i1 %or.cond8.i, label %_ZN7Imf_3_412_GLOBAL__N_112readDeepTileINS_18DeepTiledInputPartEEEbRT_bb.exit.thread188, label %bb.gg

_ZN7Imf_3_412_GLOBAL__N_112readDeepTileINS_18DeepTiledInputPartEEEbRT_bb.exit.thread188: ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit161.thread192

bb.gg:                                            ; preds = %bb.gf
  %i.xr = icmp ugt i64 %i.xo, 4611686018427387903
  %i.xs = select i1 %i.xr, i64 -1, i64 %i.xp
  %i.xt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.xs) #29
          to label %_ZN7Imf_3_47Array2DIjE11resizeEraseEll.exit.i unwind label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225.i ; 7 uses

_ZN7Imf_3_47Array2DIjE11resizeEraseEll.exit.i:    ; preds = %bb.gg
  %i.xu = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.xb)
          to label %bb.gh unwind label %.loopexit.split-lp356.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gh:                                            ; preds = %_ZN7Imf_3_47Array2DIjE11resizeEraseEll.exit.i
  %i.xv = invoke ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.xu)
          to label %.preheader354.i unwind label %.loopexit.split-lp356.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader354.i:                                  ; preds = %bb.gh, %bb.gl
  %.sroa.0248.0.i = phi ptr [ %i.yk, %bb.gl ], [ %i.xv, %bb.gh ] ; 2 uses
  %.0162.i = phi i32 [ %i.yl, %bb.gl ], [ 0, %bb.gh ] ; 14 uses
  %i.xw = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.xb)
          to label %bb.gi unwind label %.loopexit.split-lp356.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gi:                                            ; preds = %.preheader354.i
  %i.xx = invoke ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.xw)
          to label %bb.gj unwind label %.loopexit.split-lp356.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gj:                                            ; preds = %bb.gi
  %.not321.i = icmp eq ptr %.sroa.0248.0.i, %i.xx
  br i1 %.not321.i, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.xy = zext i32 %.0162.i to i64                ; 10 uses
  %i.xz = mul nuw nsw i64 %i.xy, 24               ; 3 uses
  %i.ya = add nuw nsw i64 %i.xz, 8
  %i.yb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ya) #29
          to label %.noexc214.i unwind label %.loopexit.split-lp356.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc214.i:                                      ; preds = %bb.gk
  store i64 %i.xy, ptr %i.yb, align 16
  %i.yc = getelementptr i8, ptr %i.yb, i64 8      ; 16 uses
  %i.yd = icmp eq i32 %.0162.i, 0                 ; 3 uses
  br i1 %i.yd, label %._crit_edge.i145, label %.lr.ph.i141

.lr.ph.i141:                                      ; preds = %.noexc214.i
  %i.ye = add nsw i64 %i.xz, -24
  %i.yf = urem i64 %i.ye, 24
  %i.yg = sub nsw i64 %i.xz, %i.yf
  call void @llvm.memset.p0.i64(ptr align 8 %i.yc, i8 0, i64 %i.yg, i1 false)
  %i.yh = icmp ugt i64 %i.xo, 2305843009213693951
  %i.yi = shl nuw i64 %i.xo, 3
  %i.yj = select i1 %i.yh, i64 -1, i64 %i.yi
  br label %bb.gn

bb.gl:                                            ; preds = %bb.gj
  %i.yk = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0248.0.i) #31
  %i.yl = add i32 %.0162.i, 1
  br label %.preheader354.i, !llvm.loop !190

._crit_edge.i145:                                 ; preds = %bb.gp, %.noexc214.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 0, ptr %i.t, align 8, !tbaa !73
  store ptr null, ptr %i.u, align 8, !tbaa !74
  store ptr %i.t, ptr %i.v, align 8, !tbaa !75
  store ptr %i.t, ptr %i.w, align 8, !tbaa !76
  store i64 0, ptr %i.x, align 8, !tbaa !77
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.y, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit.i147 unwind label %bb.gm

bb.gm:                                            ; preds = %._crit_edge.i145
  %i.ym = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %3) #25
  br label %.body.i146

.loopexit.split-lp356.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gi, %.preheader354.i, %bb.gk, %bb.gh, %_ZN7Imf_3_47Array2DIjE11resizeEraseEll.exit.i
  %lpad.loopexit.split-lp600 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp356.i

bb.gn:                                            ; preds = %bb.gp, %.lr.ph.i141
  %indvars.iv.i142 = phi i64 [ 0, %.lr.ph.i141 ], [ %indvars.iv.next.i143, %bb.gp ] ; 2 uses
  %i.yn = getelementptr inbounds nuw [24 x i8], ptr %i.yc, i64 %indvars.iv.i142 ; 3 uses
  %i.yo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yj) #29
          to label %.noexc215.i unwind label %bb.gq

.noexc215.i:                                      ; preds = %bb.gn
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 16 ; 2 uses
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !99 ; 2 uses
  %i.yr = icmp eq ptr %i.yq, null
  br i1 %i.yr, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %.noexc215.i
  call void @_ZdaPv(ptr noundef nonnull %i.yq) #26
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %.noexc215.i
  store i64 %i.xn, ptr %i.yn, align 8, !tbaa !100
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  store i64 %i.xm, ptr %i.ys, align 8, !tbaa !101
  store ptr %i.yo, ptr %i.yp, align 8, !tbaa !99
  %indvars.iv.next.i143 = add nuw nsw i64 %indvars.iv.i142, 1 ; 2 uses
  %exitcond.not.i144 = icmp eq i64 %indvars.iv.next.i143, %i.xy
  br i1 %exitcond.not.i144, label %._crit_edge.i145, label %bb.gn, !llvm.loop !191

bb.gq:                                            ; preds = %bb.gn
  %i.yt = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ii

_ZN7Imf_3_415DeepFrameBufferC2Ev.exit.i147:       ; preds = %._crit_edge.i145
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.yu = shl nsw i64 %i.xm, 2
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %4, i32 noundef 0, ptr noundef nonnull %i.xt, i64 noundef 4, i64 noundef %i.yu, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.gr unwind label %bb.gy

bb.gr:                                            ; preds = %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit.i147
  invoke void @_ZN7Imf_3_415DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(50) %4)
          to label %bb.gs unwind label %bb.gy

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.yv = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.xb)
          to label %bb.gt unwind label %.loopexit.split-lp350.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gt:                                            ; preds = %bb.gs
  %i.yw = invoke ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.yv)
          to label %.preheader348.i unwind label %.loopexit.split-lp350.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader348.i:                                  ; preds = %bb.gt
  %i.yx = shl nsw i32 %i.xh, 3
  %i.yy = sext i32 %i.yx to i64
  br label %bb.gu

bb.gu:                                            ; preds = %bb.hb, %.preheader348.i
  %.sroa.0238.0.i = phi ptr [ %i.zg, %bb.hb ], [ %i.yw, %.preheader348.i ] ; 3 uses
  %.0160.i = phi i32 [ %26, %bb.hb ], [ 0, %.preheader348.i ] ; 2 uses
  %i.yz = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.xb)
          to label %bb.gv unwind label %.loopexit.split-lp350.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gv:                                            ; preds = %bb.gu
  %i.za = invoke ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.yz)
          to label %bb.gw unwind label %.loopexit.split-lp350.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gw:                                            ; preds = %bb.gv
  %.not322.i = icmp eq ptr %.sroa.0238.0.i, %i.za
  br i1 %.not322.i, label %bb.gx, label %bb.gz

bb.gx:                                            ; preds = %bb.gw
  invoke void @_ZN7Imf_3_418DeepTiledInputPart14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.hd unwind label %.loopexit.split-lp350.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gy:                                            ; preds = %bb.gr, %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit.i147
  %i.zb = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i148

bb.gz:                                            ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %25 = zext nneg i32 %.0160.i to i64
  %i.zc = getelementptr inbounds nuw [24 x i8], ptr %i.yc, i64 %25
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !99
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef 2, ptr noundef %i.ze, i64 noundef 8, i64 noundef %i.yy, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ha unwind label %bb.hc

bb.ha:                                            ; preds = %bb.gz
  %i.zf = getelementptr inbounds nuw i8, ptr %.sroa.0238.0.i, i64 32
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull %i.zf, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.hb unwind label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.zg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0238.0.i) #31
  %26 = add nuw nsw i32 %.0160.i, 1
  br label %bb.gu, !llvm.loop !192

bb.hc:                                            ; preds = %bb.ha, %bb.gz
  %i.zh = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i148

bb.hd:                                            ; preds = %bb.gx
  %i.zi = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !87
  %i.zk = icmp eq i32 %i.zj, 2
  %.not323531.i = icmp sgt i32 %i.xk, 0
  br i1 %.not323531.i, label %.preheader346.lr.ph.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit218.i

.preheader346.lr.ph.i:                            ; preds = %bb.hd
  %.not210520.i = icmp sgt i32 %i.xl, 0
  %sext.i = shl i64 %i.xd, 32
  %i.zl = ashr exact i64 %sext.i, 32
  br i1 %.not210520.i, label %.preheader346.us.i.preheader, label %_ZNSt6vectorIfSaIfEED2Ev.exit218.i

.preheader346.us.i.preheader:                     ; preds = %.preheader346.lr.ph.i
  %i.zm = add nsw i64 %i.xy, -1                   ; 3 uses
  %xtraiter709 = and i64 %i.xy, 1
  %i.zn = icmp eq i64 %i.zm, 0
  %unroll_iter714 = and i64 %i.xy, 4294967294
  %lcmp.mod711.not = icmp eq i64 %xtraiter709, 0
  %lcmp.mod713 = trunc i32 %.0162.i to i1
  %xtraiter716 = and i64 %i.xy, 1
  %i.zo = icmp eq i64 %i.zm, 0
  %unroll_iter720 = and i64 %i.xy, 4294967294
  %lcmp.mod718.not = icmp eq i64 %xtraiter716, 0
  %lcmp.mod719 = trunc i32 %.0162.i to i1
  %xtraiter723 = and i64 %i.xy, 1
  %i.zp = icmp eq i64 %i.zm, 0
  %unroll_iter728 = and i64 %i.xy, 4294967294
  %lcmp.mod725.not = icmp eq i64 %xtraiter723, 0
  %lcmp.mod727 = trunc i32 %.0162.i to i1
  br label %.preheader346.us.i

.preheader346.us.i:                               ; preds = %.preheader346.us.i.preheader, %..thread288_crit_edge.us.i
  %.0155537.us.i = phi i32 [ %i.ahm, %..thread288_crit_edge.us.i ], [ 0, %.preheader346.us.i.preheader ] ; 6 uses
  %.0175535.us.i = phi i1 [ %.2177.us.i, %..thread288_crit_edge.us.i ], [ false, %.preheader346.us.i.preheader ]
  %.sroa.15.0534.us.i = phi ptr [ %.sroa.15.2.us.i, %..thread288_crit_edge.us.i ], [ null, %.preheader346.us.i.preheader ]
  %.sroa.10.0533.us.i = phi ptr [ %.sroa.10.2.us.i, %..thread288_crit_edge.us.i ], [ null, %.preheader346.us.i.preheader ]
  %.sroa.0.0532.us.i = phi ptr [ %.sroa.0.2.us.i, %..thread288_crit_edge.us.i ], [ null, %.preheader346.us.i.preheader ]
  br label %.preheader345.us.i

.preheader345.us.i:                               ; preds = %.thread277.us.i, %.preheader346.us.i
  %.0154526.us.i = phi i32 [ 0, %.preheader346.us.i ], [ %i.ahl, %.thread277.us.i ] ; 6 uses
  %.1176524.us.i = phi i1 [ %.0175535.us.i, %.preheader346.us.i ], [ %.2177.us.i, %.thread277.us.i ]
  %.sroa.15.1523.us.i = phi ptr [ %.sroa.15.0534.us.i, %.preheader346.us.i ], [ %.sroa.15.2.us.i, %.thread277.us.i ]
  %.sroa.10.1522.us.i = phi ptr [ %.sroa.10.0533.us.i, %.preheader346.us.i ], [ %.sroa.10.2.us.i, %.thread277.us.i ]
  %.sroa.0.1521.us.i = phi ptr [ %.sroa.0.0532.us.i, %.preheader346.us.i ], [ %.sroa.0.2.us.i, %.thread277.us.i ]
  %i.zq = icmp eq i32 %.0154526.us.i, %.0155537.us.i
  %or.cond212.not327.not330.us.i = or i1 %i.zk, %i.zq ; 2 uses
  %brmerge.not.us.i154 = and i1 %2, %or.cond212.not327.not330.us.i
  br label %bb.he

bb.he:                                            ; preds = %.thread.us.i, %.preheader345.us.i
  %.sroa.0.2.us.i = phi ptr [ %.sroa.0.3.us.i, %.thread.us.i ], [ %.sroa.0.1521.us.i, %.preheader345.us.i ] ; 5 uses
  %.sroa.10.2.us.i = phi ptr [ %.sroa.10.3.us.i, %.thread.us.i ], [ %.sroa.10.1522.us.i, %.preheader345.us.i ] ; 3 uses
  %.sroa.15.2.us.i = phi ptr [ %.sroa.15.3.us.i, %.thread.us.i ], [ %.sroa.15.1523.us.i, %.preheader345.us.i ] ; 5 uses
  %.2177.us.i = phi i1 [ %.3178.us.i, %.thread.us.i ], [ %.1176524.us.i, %.preheader345.us.i ] ; 4 uses
  %.0153.us.i = phi i32 [ %i.ahk, %.thread.us.i ], [ 0, %.preheader345.us.i ] ; 6 uses
  %i.zr = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputPart9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %.0155537.us.i)
          to label %bb.hf unwind label %.loopexit.split-lp.split.us.i

bb.hf:                                            ; preds = %bb.he
  %.not211.us.i = icmp slt i32 %.0153.us.i, %i.zr
  br i1 %.not211.us.i, label %.preheader342.us.i, label %.thread277.us.i

.preheader342.us.i:                               ; preds = %bb.hf, %bb.ia
  %.sroa.0.3.us.i = phi ptr [ %.sroa.0.8.us.i, %bb.ia ], [ %.sroa.0.2.us.i, %bb.hf ] ; 18 uses
  %.sroa.10.3.us.i = phi ptr [ %.sroa.10.7.us.i, %bb.ia ], [ %.sroa.10.2.us.i, %bb.hf ] ; 14 uses
  %.sroa.15.3.us.i = phi ptr [ %.sroa.15.8.us.i, %bb.ia ], [ %.sroa.15.2.us.i, %bb.hf ] ; 14 uses
  %.3178.us.i = phi i1 [ %.6181.us.i, %bb.ia ], [ %.2177.us.i, %bb.hf ] ; 3 uses
  %.0152.us.i = phi i32 [ %i.ahj, %bb.ia ], [ 0, %bb.hf ] ; 6 uses
  %i.zs = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputPart9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %.0154526.us.i)
          to label %bb.hg unwind label %.loopexit343.split.us.i

bb.hg:                                            ; preds = %.preheader342.us.i
  %.not205.us.i = icmp slt i32 %.0152.us.i, %i.zs
  br i1 %.not205.us.i, label %bb.hh, label %.thread.us.i

bb.hh:                                            ; preds = %bb.hg
  invoke void @_ZN7Imf_3_418DeepTiledInputPart21readPixelSampleCountsEiiiiii(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %.0152.us.i, i32 noundef %.0153.us.i, i32 noundef %.0152.us.i, i32 noundef %.0153.us.i, i32 noundef %.0154526.us.i, i32 noundef %.0155537.us.i)
          to label %bb.hj unwind label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.zt = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.hy

bb.hj:                                            ; preds = %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNK7Imf_3_418DeepTiledInputPart17dataWindowForTileEiiii(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Box") align 4 %6, ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %.0152.us.i, i32 noundef %.0153.us.i, i32 noundef %.0154526.us.i, i32 noundef %.0155537.us.i)
          to label %bb.hk unwind label %bb.hx

bb.hk:                                            ; preds = %bb.hj
  %i.zu = load i32, ptr %i.z, align 4, !tbaa !67  ; 2 uses
  %i.zv = load i32, ptr %6, align 4, !tbaa !68    ; 2 uses
  %i.zw = load i32, ptr %i.aa, align 4, !tbaa !86 ; 2 uses
  %i.zx = load i32, ptr %i.ab, align 4, !tbaa !85 ; 2 uses
  %.not442.us.i = icmp slt i32 %i.zw, %i.zx
  %.not207434.us.i = icmp slt i32 %i.zu, %i.zv
  %or.cond797.i = select i1 %.not442.us.i, i1 true, i1 %.not207434.us.i
  br i1 %or.cond797.i, label %._crit_edge446.us.thread.i, label %.preheader341.lr.ph.split.us543.i

.preheader341.lr.ph.split.us543.i:                ; preds = %bb.hk
  %i.zy = add i32 %i.zu, 1
  %i.zz = sub i32 %i.zy, %i.zv                    ; 4 uses
  %i.aaa = add i32 %i.zw, 1
  %i.aab = sub i32 %i.aaa, %i.zx
  %wide.trip.count671.i = zext i32 %i.aab to i64  ; 4 uses
  %wide.trip.count666.i = zext i32 %i.zz to i64   ; 6 uses
  br i1 %1, label %.preheader341.us451.us.i.preheader, label %.preheader341.us545.i.preheader

.preheader341.us545.i.preheader:                  ; preds = %.preheader341.lr.ph.split.us543.i
  %xtraiter691 = and i64 %wide.trip.count666.i, 3 ; 3 uses
  %i.aac = add i32 %i.zz, -1
  %i.aad = icmp ult i32 %i.aac, 3
  %unroll_iter697 = and i64 %wide.trip.count666.i, 4294967292
  %lcmp.mod693.not = icmp eq i64 %xtraiter691, 0
  %lcmp.mod696 = icmp ne i64 %xtraiter691, 0
  br label %.preheader341.us545.i

.preheader341.us451.us.i.preheader:               ; preds = %.preheader341.lr.ph.split.us543.i
  %xtraiter700 = and i64 %wide.trip.count666.i, 1
  %i.aae = icmp eq i32 %i.zz, 1
  %unroll_iter706 = and i64 %wide.trip.count666.i, 4294967294
  %lcmp.mod702.not = icmp eq i64 %xtraiter700, 0
  %lcmp.mod705 = trunc i32 %i.zz to i1
  br label %.preheader341.us451.us.i

.preheader341.us545.i:                            ; preds = %.preheader341.us545.i.preheader, %._crit_edge439.split.us.us.i
  %indvars.iv658.i = phi i64 [ %indvars.iv.next659.i, %._crit_edge439.split.us.us.i ], [ 0, %.preheader341.us545.i.preheader ] ; 2 uses
  %.0147444.us.i = phi i64 [ %.lcssa630, %._crit_edge439.split.us.us.i ], [ 0, %.preheader341.us545.i.preheader ] ; 2 uses
  %.0149443.us.i = phi i64 [ %.2151.us.us.i.lcssa, %._crit_edge439.split.us.us.i ], [ 0, %.preheader341.us545.i.preheader ] ; 2 uses
  %i.aaf = mul nsw i64 %indvars.iv658.i, %i.xm
  %i.aag = getelementptr inbounds [4 x i8], ptr %i.xt, i64 %i.aaf ; 5 uses
  br i1 %i.aad, label %.epil.preheader, label %.preheader341.us545.i.new

.preheader341.us545.i.new:                        ; preds = %.preheader341.us545.i, %.preheader341.us545.i.new
  %indvars.iv653.i = phi i64 [ %indvars.iv.next654.i.3, %.preheader341.us545.i.new ], [ 0, %.preheader341.us545.i ] ; 5 uses
  %.1148436.us.us.i = phi i64 [ %i.abd, %.preheader341.us545.i.new ], [ %.0147444.us.i, %.preheader341.us545.i ]
  %.1150435.us.us.i = phi i64 [ %.2151.us.us.i.3, %.preheader341.us545.i.new ], [ %.0149443.us.i, %.preheader341.us545.i ]
  %niter698 = phi i64 [ %niter698.next.3, %.preheader341.us545.i.new ], [ 0, %.preheader341.us545.i ]
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %indvars.iv653.i
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !14
  %i.aaj = mul i32 %i.aai, %.0162.i
  %i.aak = zext i32 %i.aaj to i64                 ; 2 uses
  %i.aal = add i64 %.1148436.us.us.i, %i.aak
  %.2151.us.us.i = add i64 %.1150435.us.us.i, %i.aak
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %indvars.iv653.i
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 4
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !14
  %i.aap = mul i32 %i.aao, %.0162.i
  %i.aaq = zext i32 %i.aap to i64                 ; 2 uses
  %i.aar = add i64 %i.aal, %i.aaq
  %.2151.us.us.i.1 = add i64 %.2151.us.us.i, %i.aaq
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %indvars.iv653.i
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 8
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !14
  %i.aav = mul i32 %i.aau, %.0162.i
  %i.aaw = zext i32 %i.aav to i64                 ; 2 uses
  %i.aax = add i64 %i.aar, %i.aaw
  %.2151.us.us.i.2 = add i64 %.2151.us.us.i.1, %i.aaw
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %indvars.iv653.i
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 12
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !14
  %i.abb = mul i32 %i.aba, %.0162.i
  %i.abc = zext i32 %i.abb to i64                 ; 2 uses
  %i.abd = add i64 %i.aax, %i.abc                 ; 3 uses
  %.2151.us.us.i.3 = add i64 %.2151.us.us.i.2, %i.abc ; 3 uses
  %indvars.iv.next654.i.3 = add nuw nsw i64 %indvars.iv653.i, 4 ; 2 uses
  %niter698.next.3 = add i64 %niter698, 4         ; 2 uses
  %niter698.ncmp.3 = icmp eq i64 %niter698.next.3, %unroll_iter697
  br i1 %niter698.ncmp.3, label %._crit_edge439.split.us.us.i.unr-lcssa, label %.preheader341.us545.i.new, !llvm.loop !193

._crit_edge439.split.us.us.i.unr-lcssa:           ; preds = %.preheader341.us545.i.new
  br i1 %lcmp.mod693.not, label %._crit_edge439.split.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge439.split.us.us.i.unr-lcssa, %.preheader341.us545.i
  %indvars.iv653.i.epil.init = phi i64 [ 0, %.preheader341.us545.i ], [ %indvars.iv.next654.i.3, %._crit_edge439.split.us.us.i.unr-lcssa ]
  %.1148436.us.us.i.epil.init = phi i64 [ %.0147444.us.i, %.preheader341.us545.i ], [ %i.abd, %._crit_edge439.split.us.us.i.unr-lcssa ]
  %.1150435.us.us.i.epil.init = phi i64 [ %.0149443.us.i, %.preheader341.us545.i ], [ %.2151.us.us.i.3, %._crit_edge439.split.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod696)
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hl, %.epil.preheader
  %indvars.iv653.i.epil = phi i64 [ %indvars.iv.next654.i.epil, %bb.hl ], [ %indvars.iv653.i.epil.init, %.epil.preheader ] ; 2 uses
  %.1148436.us.us.i.epil = phi i64 [ %i.abi, %bb.hl ], [ %.1148436.us.us.i.epil.init, %.epil.preheader ]
  %.1150435.us.us.i.epil = phi i64 [ %.2151.us.us.i.epil, %bb.hl ], [ %.1150435.us.us.i.epil.init, %.epil.preheader ]
  %epil.iter692 = phi i64 [ %epil.iter692.next, %bb.hl ], [ 0, %.epil.preheader ]
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %indvars.iv653.i.epil
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !14
  %i.abg = mul i32 %i.abf, %.0162.i
  %i.abh = zext i32 %i.abg to i64                 ; 2 uses
  %i.abi = add i64 %.1148436.us.us.i.epil, %i.abh ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN7Imf_3_412_GLOBAL__N_18readTileINS_14TiledInputFileEEEbRT_bb:bb.a

_ZNSt6vectorIN9Imath_3_24halfESaIS1_EED2Ev.exit130: ; preds = %bb.bb, %_ZNSt6vectorIfSaIfEED2Ev.exit128, %bb.v
  %.pn108.pn.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.v ], [ %.pn108.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit128 ], [ %.pn108.pn.pn.pn229, %bb.bb ]
  %i.du = load ptr, ptr %i.aa, align 8, !tbaa !74
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.du)
          to label %_ZN7Imf_3_411FrameBufferD2Ev.exit131 unwind label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EED2Ev.exit130
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #30
  unreachable

_ZN7Imf_3_411FrameBufferD2Ev.exit131:             ; preds = %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EED2Ev.exit130
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN7Imf_3_411FrameBufferD2Ev.exit131, %bb.l
  %.pn108.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.l ], [ %.pn108.pn.pn.pn.pn, %_ZN7Imf_3_411FrameBufferD2Ev.exit131 ]
  %.10 = extractvalue { ptr, i32 } %.pn108.pn.pn.pn.pn.pn.pn.pn.pn.pn, 0
  %i.dx = call ptr @__cxa_begin_catch(ptr %.10) #25 ; 0 uses
  call void @__cxa_end_catch()
  br label %.thread200

.thread200:                                       ; preds = %bb.ay, %bb.bd, %bb.j, %bb.k
  %.11107 = phi i1 [ false, %bb.j ], [ %.not232268, %bb.ay ], [ false, %bb.k ], [ true, %bb.bd ]
  ret i1 %.11107
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7Imf_3_414TiledInputFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7Imf_3_414TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !34
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !221
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !221
  br label %_ZNSt12__shared_ptrIN7Imf_3_414TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN7Imf_3_414TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN7Imf_3_414TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7Imf_3_414TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZN7Imf_3_47ContextD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN7Imf_3_414TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !34
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25, !inline_history !0
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25, !inline_history !0
  br label %_ZN7Imf_3_47ContextD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN7Imf_3_47ContextD2Ev.exit, !prof !37

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25
  br label %_ZN7Imf_3_47ContextD2Ev.exit

_ZN7Imf_3_47ContextD2Ev.exit:                     ; preds = %_ZNSt12__shared_ptrIN7Imf_3_414TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  ret void
}

declare void @_ZN7Imf_3_421DeepScanLineInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7Imf_3_412_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputFileEEEbRT_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Imf_3_4::Array.51", align 8 ; 8 uses
  %3 = alloca %"class.Imf_3_4::DeepFrameBuffer", align 8 ; 15 uses
  %4 = alloca %"struct.Imf_3_4::Slice", align 8   ; 5 uses
  %5 = alloca %"struct.Imf_3_4::DeepSlice", align 8 ; 5 uses
  %i.a = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_421DeepScanLineInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %.thread161.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.c unwind label %.thread161.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !67
  %i.e = sext i32 %i.d to i64
  %i.f = load i32, ptr %i.b, align 4, !tbaa !68   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = sub nsw i64 %i.e, %i.g                   ; 3 uses
  %i.i = add nsw i64 %i.h, 1                      ; 8 uses
  %i.j = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_421DeepScanLineInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %.thread161.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef i64 @_ZN7Imf_3_422calculateBytesPerPixelERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.j)
          to label %bb.e unwind label %.thread161.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.l = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.f unwind label %.thread161.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.m = invoke ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %.preheader176 unwind label %.thread161.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader176:                                    ; preds = %bb.f, %bb.j
  %indvars.iv255 = phi i32 [ %indvars.iv.next256, %bb.j ], [ -1, %bb.f ] ; 2 uses
  %.sroa.0156.0 = phi ptr [ %i.t, %bb.j ], [ %i.m, %bb.f ] ; 2 uses
  %.097 = phi i32 [ %i.u, %bb.j ], [ 0, %bb.f ]   ; 3 uses
  %i.n = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.g unwind label %.thread161.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %.preheader176
  %i.o = invoke ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %bb.h unwind label %.thread161.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %.not166 = icmp eq ptr %.sroa.0156.0, %i.o
  br i1 %.not166, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = icmp ugt i64 %i.i, 4611686018427387903
  %i.q = shl nuw nsw i64 %i.i, 2
  %i.r = select i1 %i.p, i64 -1, i64 %i.q
  %i.s = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #29
          to label %_ZN7Imf_3_45ArrayIjE11resizeEraseEl.exit unwind label %.thread161.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

bb.j:                                             ; preds = %bb.h
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0156.0) #31
  %i.u = add nuw nsw i32 %.097, 1
  %indvars.iv.next256 = add i32 %indvars.iv255, 1
  br label %.preheader176, !llvm.loop !222

_ZN7Imf_3_45ArrayIjE11resizeEraseEl.exit:         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.v = zext nneg i32 %.097 to i64               ; 10 uses
  %i.w = shl nuw nsw i64 %i.v, 4                  ; 2 uses
  %i.x = or disjoint i64 %i.w, 8
  %i.y = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.x) #29
          to label %.noexc127 unwind label %bb.l  ; 2 uses

.noexc127:                                        ; preds = %_ZN7Imf_3_45ArrayIjE11resizeEraseEl.exit
  store i64 %i.v, ptr %i.y, align 16
  %i.z = getelementptr i8, ptr %i.y, i64 8        ; 5 uses
  %i.aa = icmp eq i32 %.097, 0                    ; 3 uses
  br i1 %i.aa, label %_ZN7Imf_3_45ArrayINS0_IPvEEEC2El.exit.thread, label %.lr.ph

_ZN7Imf_3_45ArrayINS0_IPvEEEC2El.exit.thread:     ; preds = %.noexc127
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !90
  store i64 %i.v, ptr %2, align 8, !tbaa !91
  br label %._crit_edge

.lr.ph:                                           ; preds = %.noexc127
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %i.w, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !90
  store i64 %i.v, ptr %2, align 8, !tbaa !91
  %i.ad = icmp ugt i64 %i.i, 2305843009213693951
  %i.ae = shl nuw nsw i64 %i.i, 3
  %i.af = select i1 %i.ad, i64 -1, i64 %i.ae
  br label %bb.m

._crit_edge:                                      ; preds = %bb.o, %_ZN7Imf_3_45ArrayINS0_IPvEEEC2El.exit.thread
  %i.ag = phi ptr [ %i.ab, %_ZN7Imf_3_45ArrayINS0_IPvEEEC2El.exit.thread ], [ %i.ac, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !73
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !76
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.al, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.am, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %3) #25
  br label %.body

.thread161.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader176, %bb.g, %bb.e, %bb.f, %bb.c, %bb.d, %bb.a, %bb.b, %bb.i
  %lpad.loopexit.split-lp25 = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN7Imf_3_45ArrayIjED2Ev.exit132

bb.l:                                             ; preds = %_ZN7Imf_3_45ArrayIjE11resizeEraseEl.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.au

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.aq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #29
          to label %.noexc128 unwind label %bb.p

.noexc128:                                        ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !94 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc128
  tail call void @_ZdaPv(ptr noundef nonnull %i.as) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.noexc128
  store i64 %i.i, ptr %i.ap, align 8, !tbaa !95
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !94
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !223

bb.p:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.at

_ZN7Imf_3_415DeepFrameBufferC2Ev.exit:            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.av = sub nsw i32 0, %i.f
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.aw
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %4, i32 noundef 0, ptr noundef nonnull %i.ax, i64 noundef 4, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
  invoke void @_ZN7Imf_3_415DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(50) %4)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ay = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.s unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.az = invoke ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ay)
          to label %.preheader170 unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader170:                                    ; preds = %bb.s, %bb.z
  %.sroa.0144.0 = phi ptr [ %i.bi, %bb.z ], [ %i.az, %bb.s ] ; 3 uses
  %.095 = phi i32 [ %7, %bb.z ], [ 0, %bb.s ]     ; 2 uses
  %i.ba = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.t unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %.preheader170
  %i.bb = invoke ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ba)
          to label %bb.u unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %.not167 = icmp eq ptr %.sroa.0144.0, %i.bb
  br i1 %.not167, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN7Imf_3_421DeepScanLineInputFile14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.ab unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.q, %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %6 = zext nneg i32 %.095 to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %6
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.aw
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef 2, ptr noundef %i.bg, i64 noundef 8, i64 noundef 0, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0144.0, i64 32
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.bi = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0144.0) #31
  %7 = add nuw nsw i32 %.095, 1
  br label %.preheader170, !llvm.loop !224

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ab:                                            ; preds = %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !85 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !86
  %.not209 = icmp sgt i32 %i.bl, %i.bn
  br i1 %.not209, label %_ZNSt6vectorIfSaIfEED2Ev.exit131, label %.lr.ph217

.lr.ph217:                                        ; preds = %bb.ab
  %.not231 = icmp eq i64 %i.i, 0                  ; 2 uses
  %i.bo = zext i32 %indvars.iv255 to i64
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 5 uses
  %brmerge = or i1 %.not231, %i.aa
  %i.bq = add nsw i64 %i.v, -1                    ; 2 uses
  %brmerge300 = or i1 %.not231, %i.aa
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.br = icmp ult i64 %i.h, 3
  %unroll_iter = and i64 %i.i, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  %xtraiter31 = and i64 %i.v, 3                   ; 3 uses
  %i.bs = icmp ult i64 %i.bq, 3
  %unroll_iter36 = and i64 %i.v, 2147483644
  %lcmp.mod33.not = icmp eq i64 %xtraiter31, 0
  %lcmp.mod35 = icmp ne i64 %xtraiter31, 0
  %xtraiter38 = and i64 %i.v, 3                   ; 3 uses
  %i.bt = icmp ult i64 %i.bq, 3
  %unroll_iter42 = and i64 %i.v, 2147483644
  %lcmp.mod40.not = icmp eq i64 %xtraiter38, 0
  %lcmp.mod41 = icmp ne i64 %xtraiter38, 0
  br label %bb.ac

.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %.preheader170, %bb.s, %bb.r, %bb.v
  %lpad.loopexit.split-lp22 = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ac:                                            ; preds = %.lr.ph217, %.thread
  %.094214 = phi i32 [ %i.bl, %.lr.ph217 ], [ %i.gr, %.thread ] ; 4 uses
  %.0106213 = phi i1 [ false, %.lr.ph217 ], [ %.2108160, %.thread ]
  %.sroa.15.0212 = phi ptr [ null, %.lr.ph217 ], [ %.sroa.15.3, %.thread ] ; 8 uses
  %.sroa.10.0211 = phi ptr [ null, %.lr.ph217 ], [ %.sroa.10.1, %.thread ] ; 7 uses
  %.sroa.0.0210 = phi ptr [ null, %.lr.ph217 ], [ %.sroa.0.3, %.thread ] ; 13 uses
  invoke void @_ZN7Imf_3_421DeepScanLineInputFile21readPixelSampleCountsEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.094214)
          to label %.preheader169 unwind label %.loopexit

.preheader169:                                    ; preds = %bb.ac
  br i1 %brmerge300, label %._crit_edge197.thread, label %.preheader168.us.preheader

.preheader168.us.preheader:                       ; preds = %.preheader169
  br i1 %i.br, label %.preheader168.us.epil.preheader, label %.preheader168.us

.preheader168.us:                                 ; preds = %.preheader168.us.preheader, %.preheader168.us
  %.088196.us = phi i64 [ %i.cr, %.preheader168.us ], [ 0, %.preheader168.us.preheader ] ; 5 uses
  %.091194.us = phi i64 [ %i.cq, %.preheader168.us ], [ 0, %.preheader168.us.preheader ]
  %niter = phi i64 [ %niter.next.3, %.preheader168.us ], [ 0, %.preheader168.us.preheader ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.088196.us
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !14
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul nuw i64 %i.bp, %i.bw
  %i.by = add i64 %.091194.us, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.088196.us
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !14
  %i.cc = zext i32 %i.cb to i64
  %i.cd = mul nuw i64 %i.bp, %i.cc
  %i.ce = add i64 %i.by, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.088196.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !14
  %i.ci = zext i32 %i.ch to i64
  %i.cj = mul nuw i64 %i.bp, %i.ci
  %i.ck = add i64 %i.ce, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.088196.us
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !14
  %i.co = zext i32 %i.cn to i64
  %i.cp = mul nuw i64 %i.bp, %i.co
  %i.cq = add i64 %i.ck, %i.cp                    ; 3 uses
  %i.cr = add nuw i64 %.088196.us, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge197.unr-lcssa, label %.preheader168.us, !llvm.loop !225

._crit_edge197.thread:                            ; preds = %.preheader169
  %i.cs = ptrtoint ptr %.sroa.10.0211 to i64
  %i.ct = ptrtoint ptr %.sroa.0.0210 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 2
  br label %bb.aj

._crit_edge197.unr-lcssa:                         ; preds = %.preheader168.us
  br i1 %lcmp.mod.not, label %._crit_edge197, label %.preheader168.us.epil.preheader

.preheader168.us.epil.preheader:                  ; preds = %._crit_edge197.unr-lcssa, %.preheader168.us.preheader
  %.088196.us.epil.init = phi i64 [ 0, %.preheader168.us.preheader ], [ %i.cr, %._crit_edge197.unr-lcssa ]
  %.091194.us.epil.init = phi i64 [ 0, %.preheader168.us.preheader ], [ %i.cq, %._crit_edge197.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod30)
  br label %.preheader168.us.epil

.preheader168.us.epil:                            ; preds = %.preheader168.us.epil, %.preheader168.us.epil.preheader
  %.088196.us.epil = phi i64 [ %i.db, %.preheader168.us.epil ], [ %.088196.us.epil.init, %.preheader168.us.epil.preheader ] ; 2 uses
  %.091194.us.epil = phi i64 [ %i.da, %.preheader168.us.epil ], [ %.091194.us.epil.init, %.preheader168.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader168.us.epil ], [ 0, %.preheader168.us.epil.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.088196.us.epil
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !14
  %i.cy = zext i32 %i.cx to i64
  %i.cz = mul nuw i64 %i.bp, %i.cy
  %i.da = add i64 %.091194.us.epil, %i.cz         ; 2 uses
  %i.db = add nuw i64 %.088196.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge197, label %.preheader168.us.epil, !llvm.loop !226

._crit_edge197:                                   ; preds = %.preheader168.us.epil, %._crit_edge197.unr-lcssa
  %.lcssa = phi i64 [ %i.cq, %._crit_edge197.unr-lcssa ], [ %i.da, %.preheader168.us.epil ] ; 3 uses
  %i.dc = ptrtoint ptr %.sroa.10.0211 to i64      ; 2 uses
  %i.dd = ptrtoint ptr %.sroa.0.0210 to i64       ; 2 uses
  %i.de = sub i64 %i.dc, %i.dd                    ; 4 uses
  %i.df = ashr exact i64 %i.de, 2                 ; 7 uses
  %i.dg = icmp ugt i64 %.lcssa, %i.df
  br i1 %i.dg, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %._crit_edge197
  %i.dh = sub nuw i64 %.lcssa, %i.df              ; 6 uses
  %i.di = ptrtoint ptr %.sroa.15.0212 to i64      ; 2 uses
  %i.dj = sub i64 %i.di, %i.dc
  %i.dk = ashr exact i64 %i.dj, 2                 ; 2 uses
  %i.dl = icmp ult i64 %i.df, 2305843009213693952
  call void @llvm.assume(i1 %i.dl)
  %i.dm = xor i64 %i.df, 2305843009213693951      ; 2 uses
  %i.dn = icmp ule i64 %i.dk, %i.dm
  call void @llvm.assume(i1 %i.dn)
  %.not28.i = icmp ult i64 %i.dk, %i.dh
  br i1 %.not28.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store float 0.000000e+00, ptr %.sroa.10.0211, align 4, !tbaa !79
  %i.do = getelementptr i8, ptr %.sroa.10.0211, i64 4 ; 3 uses
  %i.dp = add nsw i64 %i.dh, -1                   ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.ae
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.dp, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.do, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !79
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i.i.i.i.i
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.af:                                            ; preds = %bb.ad
  %i.ds = icmp ult i64 %i.dm, %i.dh
  br i1 %i.ds, label %bb.ag, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
          to label %.noexc133 unwind label %.loopexit.split-lp

.noexc133:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.af
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.df, i64 %i.dh)
  %i.dt = add nuw nsw i64 %.sroa.speculated.i.i, %i.df
  %i.du = call i64 @llvm.umin.i64(i64 %i.dt, i64 2305843009213693951) ; 2 uses
  %i.dv = shl nuw nsw i64 %i.du, 2
  %i.dw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #29
          to label %.noexc134 unwind label %.loopexit ; 4 uses

.noexc134:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.de ; 3 uses
  store float 0.000000e+00, ptr %i.dx, align 4, !tbaa !79
  %i.dy = add nsw i64 %i.dh, -1                   ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc134
  %i.ea = getelementptr i8, ptr %i.dx, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.dy, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ea, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !79
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc134
  %i.eb = icmp sgt i64 %i.de, 0
  br i1 %i.eb, label %bb.ah, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

bb.ah:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dw, ptr align 4 %.sroa.0.0210, i64 %i.de, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i: ; preds = %bb.ah, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.0.0210, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i, label %bb.ai
end_hunk_2
begin_hunk_3_@_ZN7Imf_3_421DeepScanLineInputFileD2Ev:bb.a
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN7Imf_3_47ContextD2Ev.exit, !prof !37

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25
  br label %_ZN7Imf_3_47ContextD2Ev.exit

_ZN7Imf_3_47ContextD2Ev.exit:                     ; preds = %_ZNSt12__shared_ptrIN7Imf_3_421DeepScanLineInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  ret void
}

declare void @_ZN7Imf_3_418DeepTiledInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7Imf_3_412_GLOBAL__N_112readDeepTileINS_18DeepTiledInputFileEEEbRT_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Imf_3_4::DeepFrameBuffer", align 8 ; 15 uses
  %4 = alloca %"struct.Imf_3_4::Slice", align 8   ; 5 uses
  %5 = alloca %"struct.Imf_3_4::DeepSlice", align 8 ; 5 uses
  %6 = alloca %"class.Imath_3_2::Box", align 4    ; 8 uses
  %i.a = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418DeepTiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225 ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418DeepTiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef i64 @_ZN7Imf_3_422calculateBytesPerPixelERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
          to label %bb.d unwind label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.d = trunc i64 %i.c to i32                    ; 4 uses
  %i.e = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418DeepTiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225

bb.e:                                             ; preds = %bb.d
  %i.f = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.e)
          to label %bb.f unwind label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225 ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27
  %i.j = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputFile10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.g unwind label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.k = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputFile10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.h unwind label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.l = sext i32 %i.g to i64                     ; 7 uses
  %i.m = sext i32 %i.i to i64                     ; 2 uses
  %i.n = mul nsw i64 %i.m, %i.l                   ; 4 uses
  %i.o = shl i64 %i.n, 2                          ; 2 uses
  %or.cond = or i1 %1, %2
  %i.p = icmp ugt i64 %i.o, 1000000
  %or.cond8 = select i1 %or.cond, i1 %i.p, i1 false
  br i1 %or.cond8, label %_ZN7Imf_3_47Array2DIjED2Ev.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = icmp ugt i64 %i.n, 4611686018427387903
  %i.r = select i1 %i.q, i64 -1, i64 %i.o
  %i.s = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #29
          to label %_ZN7Imf_3_47Array2DIjE11resizeEraseEll.exit unwind label %_ZN7Imf_3_45ArrayINS_7Array2DIPfEEED2Ev.exit225 ; 7 uses

_ZN7Imf_3_47Array2DIjE11resizeEraseEll.exit:      ; preds = %bb.i
  %i.t = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.j unwind label %.loopexit.split-lp356.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_ZN7Imf_3_47Array2DIjE11resizeEraseEll.exit
  %i.u = invoke ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %.preheader354 unwind label %.loopexit.split-lp356.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader354:                                    ; preds = %bb.j, %bb.n
  %.sroa.0248.0 = phi ptr [ %i.aj, %bb.n ], [ %i.u, %bb.j ] ; 2 uses
  %.0162 = phi i32 [ %i.ak, %bb.n ], [ 0, %bb.j ] ; 14 uses
  %i.v = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.k unwind label %.loopexit.split-lp356.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %.preheader354
  %i.w = invoke ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %bb.l unwind label %.loopexit.split-lp356.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %.not321 = icmp eq ptr %.sroa.0248.0, %i.w
  br i1 %.not321, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.x = zext i32 %.0162 to i64                   ; 10 uses
  %i.y = mul nuw nsw i64 %i.x, 24                 ; 3 uses
  %i.z = add nuw nsw i64 %i.y, 8
  %i.aa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #29
          to label %.noexc214 unwind label %.loopexit.split-lp356.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc214:                                        ; preds = %bb.m
  store i64 %i.x, ptr %i.aa, align 16
  %i.ab = getelementptr i8, ptr %i.aa, i64 8      ; 16 uses
  %i.ac = icmp eq i32 %.0162, 0                   ; 3 uses
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc214
  %i.ad = add nsw i64 %i.y, -24
  %i.ae = urem i64 %i.ad, 24
  %i.af = sub nsw i64 %i.y, %i.ae
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.af, i1 false)
  %i.ag = icmp ugt i64 %i.n, 2305843009213693951
  %i.ah = shl nuw i64 %i.n, 3
  %i.ai = select i1 %i.ag, i64 -1, i64 %i.ah
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.aj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0248.0) #31
  %i.ak = add i32 %.0162, 1
  br label %.preheader354, !llvm.loop !233

._crit_edge:                                      ; preds = %bb.r, %.noexc214
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.al, align 8, !tbaa !73
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.am, align 8, !tbaa !74
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.al, ptr %i.an, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !76
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ap, align 8, !tbaa !77
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 48
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.aq, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %3) #25
  br label %.body

.loopexit.split-lp356.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader354, %bb.k, %bb.j, %_ZN7Imf_3_47Array2DIjE11resizeEraseEll.exit, %bb.m
  %lpad.loopexit.split-lp876 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp356

bb.p:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv ; 3 uses
  %i.at = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #29
          to label %.noexc215 unwind label %bb.s

.noexc215:                                        ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !99 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc215
  tail call void @_ZdaPv(ptr noundef nonnull %i.av) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.noexc215
  store i64 %i.m, ptr %i.as, align 8, !tbaa !100
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.l, ptr %i.ax, align 8, !tbaa !101
  store ptr %i.at, ptr %i.au, align 8, !tbaa !99
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !234

bb.s:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bk

_ZN7Imf_3_415DeepFrameBufferC2Ev.exit:            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.az = shl nsw i64 %i.l, 2
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %4, i32 noundef 0, ptr noundef nonnull %i.s, i64 noundef 4, i64 noundef %i.az, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
  invoke void @_ZN7Imf_3_415DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(50) %4)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ba = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.v unwind label %.loopexit.split-lp350.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.bb = invoke ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ba)
          to label %.preheader348 unwind label %.loopexit.split-lp350.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader348:                                    ; preds = %bb.v
  %i.bc = shl nsw i32 %i.g, 3
  %i.bd = sext i32 %i.bc to i64
  br label %bb.w

bb.w:                                             ; preds = %.preheader348, %bb.ad
  %.sroa.0238.0 = phi ptr [ %i.bl, %bb.ad ], [ %i.bb, %.preheader348 ] ; 3 uses
  %.0160 = phi i32 [ %8, %bb.ad ], [ 0, %.preheader348 ] ; 2 uses
  %i.be = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.x unwind label %.loopexit.split-lp350.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.bf = invoke ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.be)
          to label %bb.y unwind label %.loopexit.split-lp350.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %.not322 = icmp eq ptr %.sroa.0238.0, %i.bf
  br i1 %.not322, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN7Imf_3_418DeepTiledInputFile14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.af unwind label %.loopexit.split-lp350.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.t, %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %7 = zext nneg i32 %.0160 to i64
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !99
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef 2, ptr noundef %i.bj, i64 noundef 8, i64 noundef %i.bd, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0238.0, i64 32
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull %i.bk, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.bl = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0238.0) #31
  %8 = add nuw nsw i32 %.0160, 1
  br label %bb.w, !llvm.loop !235

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.af:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !87
  %i.bp = icmp eq i32 %i.bo, 2
  %.not323531 = icmp sgt i32 %i.j, 0
  br i1 %.not323531, label %.preheader346.lr.ph, label %_ZNSt6vectorIfSaIfEED2Ev.exit218

.preheader346.lr.ph:                              ; preds = %bb.af
  %.not210520 = icmp sgt i32 %i.k, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 4
  %sext = shl i64 %i.c, 32
  %i.bt = ashr exact i64 %sext, 32
  br i1 %.not210520, label %.preheader346.us.preheader, label %_ZNSt6vectorIfSaIfEED2Ev.exit218

.preheader346.us.preheader:                       ; preds = %.preheader346.lr.ph
  %i.bu = add nsw i64 %i.x, -1                    ; 3 uses
  %xtraiter892 = and i64 %i.x, 1
  %i.bv = icmp eq i64 %i.bu, 0
  %unroll_iter897 = and i64 %i.x, 4294967294
  %lcmp.mod894.not = icmp eq i64 %xtraiter892, 0
  %lcmp.mod896 = trunc i32 %.0162 to i1
  %xtraiter899 = and i64 %i.x, 1
  %i.bw = icmp eq i64 %i.bu, 0
  %unroll_iter903 = and i64 %i.x, 4294967294
  %lcmp.mod901.not = icmp eq i64 %xtraiter899, 0
  %lcmp.mod902 = trunc i32 %.0162 to i1
  %xtraiter906 = and i64 %i.x, 1
  %i.bx = icmp eq i64 %i.bu, 0
  %unroll_iter911 = and i64 %i.x, 4294967294
  %lcmp.mod908.not = icmp eq i64 %xtraiter906, 0
  %lcmp.mod910 = trunc i32 %.0162 to i1
  br label %.preheader346.us

.preheader346.us:                                 ; preds = %.preheader346.us.preheader, %..thread288_crit_edge.us
  %.0155537.us = phi i32 [ %i.kc, %..thread288_crit_edge.us ], [ 0, %.preheader346.us.preheader ] ; 6 uses
  %.0175535.us = phi i1 [ %.2177.us, %..thread288_crit_edge.us ], [ false, %.preheader346.us.preheader ]
  %.sroa.15.0534.us = phi ptr [ %.sroa.15.2.us, %..thread288_crit_edge.us ], [ null, %.preheader346.us.preheader ]
  %.sroa.10.0533.us = phi ptr [ %.sroa.10.2.us, %..thread288_crit_edge.us ], [ null, %.preheader346.us.preheader ]
  %.sroa.0.0532.us = phi ptr [ %.sroa.0.2.us, %..thread288_crit_edge.us ], [ null, %.preheader346.us.preheader ]
  br label %.preheader345.us

.preheader345.us:                                 ; preds = %.preheader346.us, %.thread277.us
  %.0154526.us = phi i32 [ 0, %.preheader346.us ], [ %i.kb, %.thread277.us ] ; 6 uses
  %.1176524.us = phi i1 [ %.0175535.us, %.preheader346.us ], [ %.2177.us, %.thread277.us ]
  %.sroa.15.1523.us = phi ptr [ %.sroa.15.0534.us, %.preheader346.us ], [ %.sroa.15.2.us, %.thread277.us ]
  %.sroa.10.1522.us = phi ptr [ %.sroa.10.0533.us, %.preheader346.us ], [ %.sroa.10.2.us, %.thread277.us ]
  %.sroa.0.1521.us = phi ptr [ %.sroa.0.0532.us, %.preheader346.us ], [ %.sroa.0.2.us, %.thread277.us ]
  %i.by = icmp eq i32 %.0154526.us, %.0155537.us
  %or.cond212.not327.not330.us = or i1 %i.bp, %i.by ; 2 uses
  %brmerge.not.us = and i1 %2, %or.cond212.not327.not330.us
  br label %bb.ag

bb.ag:                                            ; preds = %.thread.us, %.preheader345.us
  %.sroa.0.2.us = phi ptr [ %.sroa.0.3.us, %.thread.us ], [ %.sroa.0.1521.us, %.preheader345.us ] ; 5 uses
  %.sroa.10.2.us = phi ptr [ %.sroa.10.3.us, %.thread.us ], [ %.sroa.10.1522.us, %.preheader345.us ] ; 3 uses
  %.sroa.15.2.us = phi ptr [ %.sroa.15.3.us, %.thread.us ], [ %.sroa.15.1523.us, %.preheader345.us ] ; 5 uses
  %.2177.us = phi i1 [ %.3178.us, %.thread.us ], [ %.1176524.us, %.preheader345.us ] ; 4 uses
  %.0153.us = phi i32 [ %i.ka, %.thread.us ], [ 0, %.preheader345.us ] ; 6 uses
  %i.bz = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0155537.us)
          to label %bb.ah unwind label %.loopexit.split-lp.split.us

bb.ah:                                            ; preds = %bb.ag
  %.not211.us = icmp slt i32 %.0153.us, %i.bz
  br i1 %.not211.us, label %.preheader342.us, label %.thread277.us

.preheader342.us:                                 ; preds = %bb.ah, %bb.bc
  %.sroa.0.3.us = phi ptr [ %.sroa.0.8.us, %bb.bc ], [ %.sroa.0.2.us, %bb.ah ] ; 18 uses
  %.sroa.10.3.us = phi ptr [ %.sroa.10.7.us, %bb.bc ], [ %.sroa.10.2.us, %bb.ah ] ; 14 uses
  %.sroa.15.3.us = phi ptr [ %.sroa.15.8.us, %bb.bc ], [ %.sroa.15.2.us, %bb.ah ] ; 14 uses
  %.3178.us = phi i1 [ %.6181.us, %bb.bc ], [ %.2177.us, %bb.ah ] ; 3 uses
  %.0152.us = phi i32 [ %i.jz, %bb.bc ], [ 0, %bb.ah ] ; 6 uses
  %i.ca = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0154526.us)
          to label %bb.ai unwind label %.loopexit343.split.us

bb.ai:                                            ; preds = %.preheader342.us
  %.not205.us = icmp slt i32 %.0152.us, %i.ca
  br i1 %.not205.us, label %bb.aj, label %.thread.us

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN7Imf_3_418DeepTiledInputFile21readPixelSampleCountsEiiiiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0152.us, i32 noundef %.0153.us, i32 noundef %.0152.us, i32 noundef %.0153.us, i32 noundef %.0154526.us, i32 noundef %.0155537.us)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ba

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNK7Imf_3_418DeepTiledInputFile17dataWindowForTileEiiii(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Box") align 4 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0152.us, i32 noundef %.0153.us, i32 noundef %.0154526.us, i32 noundef %.0155537.us)
          to label %bb.am unwind label %bb.az

bb.am:                                            ; preds = %bb.al
  %i.cc = load i32, ptr %i.bq, align 4, !tbaa !67 ; 4 uses
  %i.cd = load i32, ptr %6, align 4, !tbaa !68    ; 4 uses
  %i.ce = load i32, ptr %i.br, align 4, !tbaa !86 ; 4 uses
  %i.cf = load i32, ptr %i.bs, align 4, !tbaa !85 ; 4 uses
  %.not442.us = icmp slt i32 %i.ce, %i.cf         ; 2 uses
  %.not207434.us = icmp slt i32 %i.cc, %i.cd
  %or.cond797 = select i1 %.not442.us, i1 true, i1 %.not207434.us
  br i1 %or.cond797, label %._crit_edge446.us.thread, label %.preheader341.lr.ph.split.us543

.preheader341.lr.ph.split.us543:                  ; preds = %bb.am
  %i.cg = add i32 %i.cc, 1
  %i.ch = sub i32 %i.cg, %i.cd                    ; 4 uses
  %i.ci = add i32 %i.ce, 1
  %i.cj = sub i32 %i.ci, %i.cf
  %wide.trip.count671 = zext i32 %i.cj to i64     ; 2 uses
  %wide.trip.count666 = zext i32 %i.ch to i64     ; 4 uses
  br i1 %1, label %.preheader341.us451.us.preheader, label %.preheader341.us545.preheader

.preheader341.us545.preheader:                    ; preds = %.preheader341.lr.ph.split.us543
  %xtraiter = and i64 %wide.trip.count666, 3      ; 3 uses
  %i.ck = add i32 %i.ch, -1
  %i.cl = icmp ult i32 %i.ck, 3
  %unroll_iter = and i64 %wide.trip.count666, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod881 = icmp ne i64 %xtraiter, 0
  br label %.preheader341.us545

.preheader341.us451.us.preheader:                 ; preds = %.preheader341.lr.ph.split.us543
  %xtraiter883 = and i64 %wide.trip.count666, 1
  %i.cm = icmp eq i32 %i.ch, 1
  %unroll_iter889 = and i64 %wide.trip.count666, 4294967294
  %lcmp.mod885.not = icmp eq i64 %xtraiter883, 0
  %lcmp.mod888 = trunc i32 %i.ch to i1
  br label %.preheader341.us451.us

.preheader341.us545:                              ; preds = %.preheader341.us545.preheader, %._crit_edge439.split.us.us
  %indvars.iv658 = phi i64 [ %indvars.iv.next659, %._crit_edge439.split.us.us ], [ 0, %.preheader341.us545.preheader ] ; 2 uses
  %.0147444.us = phi i64 [ %.lcssa, %._crit_edge439.split.us.us ], [ 0, %.preheader341.us545.preheader ] ; 2 uses
  %.0149443.us = phi i64 [ %.2151.us.us.lcssa, %._crit_edge439.split.us.us ], [ 0, %.preheader341.us545.preheader ] ; 2 uses
  %i.cn = mul nsw i64 %indvars.iv658, %i.l
  %i.co = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.cn ; 5 uses
  br i1 %i.cl, label %.epil.preheader, label %.preheader341.us545.new

.preheader341.us545.new:                          ; preds = %.preheader341.us545, %.preheader341.us545.new
  %indvars.iv653 = phi i64 [ %indvars.iv.next654.3, %.preheader341.us545.new ], [ 0, %.preheader341.us545 ] ; 5 uses
  %.1148436.us.us = phi i64 [ %i.dl, %.preheader341.us545.new ], [ %.0147444.us, %.preheader341.us545 ]
  %.1150435.us.us = phi i64 [ %.2151.us.us.3, %.preheader341.us545.new ], [ %.0149443.us, %.preheader341.us545 ]
  %niter = phi i64 [ %niter.next.3, %.preheader341.us545.new ], [ 0, %.preheader341.us545 ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv653
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !14
  %i.cr = mul i32 %i.cq, %.0162
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = add i64 %.1148436.us.us, %i.cs
  %.2151.us.us = add i64 %.1150435.us.us, %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv653
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !14
  %i.cx = mul i32 %i.cw, %.0162
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = add i64 %i.ct, %i.cy
  %.2151.us.us.1 = add i64 %.2151.us.us, %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv653
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !14
  %i.dd = mul i32 %i.dc, %.0162
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = add i64 %i.cz, %i.de
  %.2151.us.us.2 = add i64 %.2151.us.us.1, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv653
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !14
  %i.dj = mul i32 %i.di, %.0162
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = add i64 %i.df, %i.dk                    ; 3 uses
  %.2151.us.us.3 = add i64 %.2151.us.us.2, %i.dk  ; 3 uses
  %indvars.iv.next654.3 = add nuw nsw i64 %indvars.iv653, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge439.split.us.us.unr-lcssa, label %.preheader341.us545.new, !llvm.loop !236

._crit_edge439.split.us.us.unr-lcssa:             ; preds = %.preheader341.us545.new
  br i1 %lcmp.mod.not, label %._crit_edge439.split.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge439.split.us.us.unr-lcssa, %.preheader341.us545
  %indvars.iv653.epil.init = phi i64 [ 0, %.preheader341.us545 ], [ %indvars.iv.next654.3, %._crit_edge439.split.us.us.unr-lcssa ]
  %.1148436.us.us.epil.init = phi i64 [ %.0147444.us, %.preheader341.us545 ], [ %i.dl, %._crit_edge439.split.us.us.unr-lcssa ]
  %.1150435.us.us.epil.init = phi i64 [ %.0149443.us, %.preheader341.us545 ], [ %.2151.us.us.3, %._crit_edge439.split.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod881)
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.epil.preheader
  %indvars.iv653.epil = phi i64 [ %indvars.iv.next654.epil, %bb.an ], [ %indvars.iv653.epil.init, %.epil.preheader ] ; 2 uses
  %.1148436.us.us.epil = phi i64 [ %i.dq, %bb.an ], [ %.1148436.us.us.epil.init, %.epil.preheader ]
  %.1150435.us.us.epil = phi i64 [ %.2151.us.us.epil, %bb.an ], [ %.1150435.us.us.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.an ], [ 0, %.epil.preheader ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv653.epil
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !14
end_hunk_3
