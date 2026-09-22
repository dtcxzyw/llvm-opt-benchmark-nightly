Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_parser?download=true
inline.NumInlined: 13536
inline.NumDeleted: 4031
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN11flatbuffers6Parser13ParseAnyValueERNS_5ValueEPNS_8FieldDefEmPKNS_9StructDefEmb:bb.a
  br i1 %i.fx, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.au, %bb.n
  %.sink = phi ptr [ %i.bp, %bb.n ], [ %i.fw, %bb.au ]
  %.pn198.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.bo, %bb.n ], [ %.pn198.pn.pn.pn.pn.pn, %bb.au ]
  %i.fy = load i64, ptr %i.bd, align 8, !tbaa !81
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fz) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.au, %bb.n
  %.pn198.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.n ], [ %.pn198.pn.pn.pn.pn.pn, %bb.au ], [ %.pn198.pn.pn.pn.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.ce

bb.av:                                            ; preds = %..loopexit376_crit_edge, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, %.loopexit376
  %.3187359367 = phi ptr [ %i.ay, %.thread ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ], [ null, %.loopexit376 ], [ null, %..loopexit376_crit_edge ] ; 3 uses
  %i.ga = load i64, ptr %i.f, align 8, !tbaa !79
  %i.gb = icmp eq i64 %i.ga, 0
  %i.gc = icmp eq ptr %.3187359367, null          ; 2 uses
  %or.cond19.not = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %or.cond19.not, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.gd = load ptr, ptr %3, align 8, !tbaa !82, !noalias !956
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !79, !noalias !956 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.gg, ptr %13, align 8, !tbaa !80, !alias.scope !957
  %i.gh = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i64 0, ptr %i.gh, align 8, !tbaa !79, !alias.scope !957
  store i8 0, ptr %i.gg, align 8, !tbaa !81, !alias.scope !957
  %i.gi = add i64 %i.gf, 41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.gi)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !79, !alias.scope !957
  %i.gk = add i64 %i.gj, -4611686018427387863
  %i.gl = icmp ult i64 %i.gk, 41
  br i1 %i.gl, label %.invoke.i.i456, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i453: ; preds = %bb.ax
  %i.gm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.117, i64 noundef 41)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i454 unwind label %bb.ay ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i454: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i453
  %i.gn = load i64, ptr %i.gh, align 8, !tbaa !79, !alias.scope !957
  %i.go = sub i64 4611686018427387903, %i.gn
  %i.gp = icmp ult i64 %i.go, %i.gf
  br i1 %i.gp, label %.invoke.i.i456, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i455

.invoke.i.i456:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i454, %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.cont.i.i457 unwind label %bb.ay

.cont.i.i457:                                     ; preds = %.invoke.i.i456
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i455: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i454
  %i.gq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.gd, i64 noundef %i.gf)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.ay ; 0 uses

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i455, %.invoke.i.i456, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i453, %bb.aw
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gs = load ptr, ptr %13, align 8, !tbaa !82, !alias.scope !957 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.gg
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i455
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.gu = load ptr, ptr %13, align 8, !tbaa !82   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.gg
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271: ; preds = %bb.az
  %i.gw = load i64, ptr %i.gg, align 8, !tbaa !81
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.cd

bb.ba:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load ptr, ptr %13, align 8, !tbaa !82   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gg
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276.sink.split: ; preds = %bb.ba, %bb.ay
  %.sink554 = phi ptr [ %i.gs, %bb.ay ], [ %i.gz, %bb.ba ]
  %.pn208.ph = phi { ptr, i32 } [ %i.gr, %bb.ay ], [ %i.gy, %bb.ba ]
  %i.hb = load i64, ptr %i.gg, align 8, !tbaa !81
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %.sink554, i64 noundef %i.hc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276.sink.split, %bb.ba, %bb.ay
  %.pn208 = phi { ptr, i32 } [ %i.gy, %bb.ba ], [ %i.gr, %bb.ay ], [ %.pn208.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.ce

bb.bb:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  br i1 %i.gc, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hd = load i32, ptr %.3187359367, align 4, !tbaa !959
  %i.he = zext i32 %i.hd to i64
  %.not210 = icmp ult i64 %6, %i.he
  br i1 %.not210, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.118, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.hf = load ptr, ptr %14, align 8, !tbaa !82   ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277: ; preds = %bb.bf
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !81
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %.critedge240

bb.bg:                                            ; preds = %bb.bk
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bh:                                            ; preds = %bb.bd
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

bb.bi:                                            ; preds = %bb.be
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hn = load ptr, ptr %14, align 8, !tbaa !82   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.bi
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !81
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280, %bb.bh
  %.pn216 = phi { ptr, i32 } [ %i.hl, %bb.bh ], [ %i.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280 ], [ %i.hm, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.cb

bb.bj:                                            ; preds = %bb.bc
  %i.hs = getelementptr inbounds nuw i8, ptr %.3187359367, i64 4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %6
  br label %._crit_edge

bb.bk:                                            ; preds = %bb.bb
  %i.hu = load ptr, ptr %8, align 8, !tbaa !82
  invoke fastcc void @_ZN11flatbuffers12_GLOBAL__N_14atotIhEENS_12CheckedErrorEPKcRNS_6ParserEPT_(ptr dead_on_unwind noalias writable align 1 %0, ptr noundef %i.hu, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef %i.b)
          to label %bb.bl unwind label %bb.bg

bb.bl:                                            ; preds = %bb.bk
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.hv, align 1, !tbaa !213
  %i.hw = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %.critedge240, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bl, %bb.bj
  %.in = phi ptr [ %i.ht, %bb.bj ], [ %i.b, %bb.bl ]
  %i.hy = load i8, ptr %.in, align 1, !tbaa !81
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !950 ; 3 uses
  %i.ib = zext i8 %i.hy to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 200
  %i.id = load i8, ptr %i.ic, align 8, !tbaa !267, !range !208, !noundef !209
  %19 = getelementptr inbounds nuw i8, ptr %i.ia, i64 288
  %20 = load ptr, ptr %19, align 8, !tbaa !347
  %21 = zext nneg i8 %i.id to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %21 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 296
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !347 ; 2 uses
  %.not11.i = icmp eq ptr %i.ie, %i.ig
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

bb.bm:                                            ; preds = %.lr.ph.i
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ih, %i.ig
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !9

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.bm
  %.sroa.07.012.i = phi ptr [ %i.ih, %bb.bm ], [ %i.ie, %._crit_edge ] ; 2 uses
  %i.ii = load ptr, ptr %.sroa.07.012.i, align 8, !tbaa !348 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 160
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !350
  %i.il = icmp eq i64 %i.ik, %i.ib
  br i1 %i.il, label %_ZNK11flatbuffers7EnumDef13ReverseLookupElb.exit, label %bb.bm

.loopexit:                                        ; preds = %bb.bm, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %.loopexit
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.im = load ptr, ptr %15, align 8, !tbaa !82   ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %bb.bo
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !81
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %.critedge240

bb.bp:                                            ; preds = %bb.bv, %bb.bz, %bb.bs
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bq:                                            ; preds = %.loopexit
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

bb.br:                                            ; preds = %bb.bn
  %i.it = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iu = load ptr, ptr %15, align 8, !tbaa !82   ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286: ; preds = %bb.br
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !81
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286, %bb.bq
  %.pn212 = phi { ptr, i32 } [ %i.is, %bb.bq ], [ %i.it, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286 ], [ %i.it, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.cb

_ZNK11flatbuffers7EnumDef13ReverseLookupElb.exit: ; preds = %.lr.ph.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ii, i64 56
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !362
  switch i32 %i.ja, label %.critedge240 [
    i32 15, label %bb.bs
    i32 13, label %bb.bz
  ]

bb.bs:                                            ; preds = %_ZNK11flatbuffers7EnumDef13ReverseLookupElb.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ii, i64 64 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !363
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  invoke void @_ZN11flatbuffers6Parser10ParseTableERKNS_9StructDefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPj(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(336) %i.jc, ptr noundef nonnull %i.jd, ptr noundef null)
          to label %bb.bt unwind label %bb.bp

bb.bt:                                            ; preds = %bb.bs
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.je, align 1, !tbaa !213
  %i.jf = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %.critedge240, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jh = load ptr, ptr %i.jb, align 8, !tbaa !363 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 272
  %i.jj = load i8, ptr %i.ji, align 8, !tbaa !316, !range !208, !noundef !209
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.bv, label %.critedge240

bb.bv:                                            ; preds = %bb.bu
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 456
  invoke void @_ZN11flatbuffers6Parser15SerializeStructERNS_21FlatBufferBuilderImplILb0EEERKNS_9StructDefERKNS_5ValueE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(128) %i.jl, ptr noundef nonnull readonly align 8 dereferenceable(336) %i.jh, ptr noundef nonnull readonly align 8 dereferenceable(66) %2)
          to label %bb.bw unwind label %bb.bp

bb.bw:                                            ; preds = %bb.bv
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !364
  %i.jo = zext i32 %i.jn to i64
  %.neg.i = mul nsw i64 %i.jo, -8
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !365
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 %.neg.i
  store ptr %i.jr, ptr %i.jp, align 8, !tbaa !365
  store i32 0, ptr %i.jm, align 8, !tbaa !364
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 540
  store i16 0, ptr %i.js, align 4, !tbaa !366
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !354
  invoke void @_ZN11flatbuffers11NumToStringIjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, i32 noundef %i.ju)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.jv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.jd, ptr noundef nonnull align 8 dereferenceable(32) %16) #32 ; 0 uses
  %i.jw = load ptr, ptr %16, align 8, !tbaa !82   ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.jy = icmp eq ptr %i.jw, %i.jx
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %bb.bx
  %i.jz = load i64, ptr %i.jx, align 8, !tbaa !81
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.ka) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %.critedge240

bb.by:                                            ; preds = %bb.bw
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.cb

bb.bz:                                            ; preds = %_ZNK11flatbuffers7EnumDef13ReverseLookupElb.exit
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 274
  %i.kd = load i8, ptr %i.kc, align 2, !tbaa !330, !range !208, !noundef !209
  %i.ke = trunc nuw i8 %i.kd to i1
  invoke void @_ZN11flatbuffers6Parser11ParseStringERNS_5ValueEb(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(66) %2, i1 noundef zeroext %i.ke)
          to label %bb.ca unwind label %bb.bp

bb.ca:                                            ; preds = %bb.bz
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.kf, align 1, !tbaa !213
  %i.kg = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.kh = trunc nuw i8 %i.kg to i1
  br label %.critedge240

.critedge240:                                     ; preds = %bb.ca, %_ZNK11flatbuffers7EnumDef13ReverseLookupElb.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, %bb.bu, %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279
  %.19 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279 ], [ %i.kh, %bb.ca ], [ true, %bb.bl ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285 ], [ true, %bb.bt ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292 ], [ false, %_ZNK11flatbuffers7EnumDef13ReverseLookupElb.exit ], [ false, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.cd

bb.cb:                                            ; preds = %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %bb.bg
  %.pn216.pn = phi { ptr, i32 } [ %.pn216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ %i.hk, %bb.bg ], [ %i.kb, %bb.by ], [ %i.ir, %bb.bp ], [ %.pn212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.ce

.critedge236:                                     ; preds = %.noexc, %bb.s
  %i.ki = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !217 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !216 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.kj, %i.kl
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i459

.lr.ph.i.i.i.i459:                                ; preds = %.critedge236, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.kr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.kj, %.critedge236 ] ; 3 uses
  %i.km = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !82 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i459
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !81
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kq) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i460 = icmp eq ptr %i.kr, %i.kl
  br i1 %.not.i.i.i.i460, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i459, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ki, align 8, !tbaa !217
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
end_hunk_0
