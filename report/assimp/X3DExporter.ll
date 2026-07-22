inline.NumInlined: 1687
inline.NumDeleted: 345
begin_hunk_0_@_ZN6Assimp11X3DExporter11Export_NodeEPK6aiNodem:bb.a
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.bf
  %i.qx = load i64, ptr %i.qv, align 8
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.be
  %.pn63 = phi { ptr, i32 } [ %i.qs, %bb.be ], [ %i.qt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.qt, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.bm

bb.bg:                                            ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.qz = load float, ptr %15, align 8            ; 2 uses
  %i.ra = load float, ptr %i.p, align 4           ; 2 uses
  %i.rb = fmul float %i.ra, %i.ra
  %i.rc = call float @llvm.fmuladd.f32(float %i.qz, float %i.qz, float %i.rb)
  %i.rd = load float, ptr %i.q, align 8           ; 3 uses
  %i.re = call noundef float @llvm.fmuladd.f32(float %i.rd, float %i.rd, float %i.rc)
  %i.rf = fcmp ogt float %i.re, 0.000000e+00
  br i1 %i.rf, label %bb.bh, label %._crit_edge.i.i

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %.sroa.09.0.copyload = load <2 x float>, ptr %15, align 8
  invoke fastcc void @"_ZZN6Assimp11X3DExporter11Export_NodeEPK6aiNodemENK3$_1clB5cxx11E10aiVector3tIfE"(ptr dead_on_unwind noalias writable align 8 %18, <2 x float> %.sroa.09.0.copyload, float %i.rd)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.rg = invoke noundef ptr @_ZNSt7__cxx114listIN6Assimp11X3DExporter10SAttributeESaIS3_EE14_M_create_nodeIJRA12_KcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEPSt10_List_nodeIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 1 dereferenceable(12) @.str.11, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.rg, ptr noundef nonnull align 8 dereferenceable(24) %13) #26
  %i.rh = load i64, ptr %i.c, align 8
  %i.ri = add i64 %i.rh, 1
  store i64 %i.ri, ptr %i.c, align 8
  %i.rj = load ptr, ptr %18, align 8              ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.rl = icmp eq ptr %i.rj, %i.rk
  br i1 %i.rl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.bj
  %i.rm = load i64, ptr %i.rk, align 8
  %i.rn = add i64 %i.rm, 1
  call void @_ZdlPvm(ptr noundef %i.rj, i64 noundef %i.rn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %._crit_edge.i.i

bb.bk:                                            ; preds = %bb.bh
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

bb.bl:                                            ; preds = %bb.bi
  %i.rp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rq = load ptr, ptr %18, align 8              ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.rs = icmp eq ptr %i.rq, %i.rr
  br i1 %i.rs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.bl
  %i.rt = load i64, ptr %i.rr, align 8
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.ru) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %bb.bk
  %.pn65 = phi { ptr, i32 } [ %i.ro, %bb.bk ], [ %i.rp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %i.rp, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.bm

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.rv = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.rv, ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.rv, ptr noundef nonnull align 1 dereferenceable(9) @.str.12, i64 9, i1 false)
  %i.rw = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 9, ptr %i.rw, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %19, i64 25
  store i8 0, ptr %i.rx, align 1
  invoke void @_ZN6Assimp11X3DExporter19NodeHelper_OpenNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmbRKNS1_4listINS0_10SAttributeESaISA_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %2, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.bn unwind label %bb.bo

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %.body, %bb.ax
  %.pn65.pn = phi { ptr, i32 } [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.pr, %bb.ax ], [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.cz

bb.bn:                                            ; preds = %._crit_edge.i.i
  %i.ry = load ptr, ptr %19, align 8              ; 2 uses
  %i.rz = icmp eq ptr %i.ry, %i.rv
  br i1 %i.rz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.bn
  %i.sa = load i64, ptr %i.rv, align 8
  %i.sb = add i64 %i.sa, 1
  call void @_ZdlPvm(ptr noundef %i.ry, i64 noundef %i.sb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.br

bb.bo:                                            ; preds = %._crit_edge.i.i
  %i.sc = landingpad { ptr, i32 }
          cleanup
  %i.sd = load ptr, ptr %19, align 8              ; 2 uses
  %i.se = icmp eq ptr %i.sd, %i.rv
  br i1 %i.se, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.bo
  %i.sf = load i64, ptr %i.rv, align 8
  %i.sg = add i64 %i.sf, 1
  call void @_ZdlPvm(ptr noundef %i.sd, i64 noundef %i.sg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.cz

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.sh = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.sh, ptr %20, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.sh, ptr noundef nonnull align 1 dereferenceable(5) @.str.13, i64 5, i1 false)
  %i.si = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 5, ptr %i.si, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %20, i64 21
  store i8 0, ptr %i.sj, align 1
  invoke void @_ZN6Assimp11X3DExporter19NodeHelper_OpenNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmb(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %2, i1 noundef zeroext false)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %.critedge
  %i.sk = load ptr, ptr %20, align 8              ; 2 uses
  %i.sl = icmp eq ptr %i.sk, %i.sh
  br i1 %i.sl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.bp
  %i.sm = load i64, ptr %i.sh, align 8
  %i.sn = add i64 %i.sm, 1
  call void @_ZdlPvm(ptr noundef %i.sk, i64 noundef %i.sn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.br

bb.bq:                                            ; preds = %.critedge
  %i.so = landingpad { ptr, i32 }
          cleanup
  %i.sp = load ptr, ptr %20, align 8              ; 2 uses
  %i.sq = icmp eq ptr %i.sp, %i.sh
  br i1 %i.sq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.bq
  %i.sr = load i64, ptr %i.sh, align 8
  %i.ss = add i64 %i.sr, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.ss) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.cz

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 1136 ; 2 uses
  %i.su = load ptr, ptr %i.st, align 8            ; 3 uses
  %.not72 = icmp eq ptr %i.su, null
  br i1 %.not72, label %.loopexit, label %.preheader192

.preheader192:                                    ; preds = %bb.br
  %i.sv = load i32, ptr %i.su, align 8
  %.not207 = icmp eq i32 %i.sv, 0
  br i1 %.not207, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader192
  %i.sw = add i64 %2, 1                           ; 5 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph, %bb.cn
  %i.ta = phi ptr [ %i.su, %.lr.ph ], [ %i.ww, %bb.cn ] ; 2 uses
  %.048202 = phi i64 [ 0, %.lr.ph ], [ %i.wv, %bb.cn ] ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load ptr, ptr %i.tb, align 8
  %i.td = getelementptr inbounds nuw [1028 x i8], ptr %i.tc, i64 %.048202 ; 5 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %i.tf = load ptr, ptr %i.te, align 8
  %i.tg = getelementptr inbounds nuw [16 x i8], ptr %i.tf, i64 %.048202 ; 7 uses
  %i.th = load i32, ptr %i.tg, align 8
  switch i32 %i.th, label %bb.bz [
    i32 0, label %bb.bu
    i32 4, label %bb.bv
    i32 3, label %bb.bw
    i32 1, label %bb.bx
    i32 5, label %bb.by
  ]

bb.bt:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu
  %i.ti = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.bu:                                            ; preds = %bb.bs
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.tk = load ptr, ptr %i.tj, align 8
  %i.tl = load i8, ptr %i.tk, align 1, !range !167, !noundef !168
  %i.tm = trunc nuw i8 %i.tl to i1
  invoke void @_ZN6Assimp11X3DExporter22Export_MetadataBooleanERK8aiStringbm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(1028) %i.td, i1 noundef zeroext %i.tm, i64 noundef %i.sw)
          to label %bb.cn unwind label %bb.bt

bb.bv:                                            ; preds = %bb.bs
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.to = load ptr, ptr %i.tn, align 8
  %i.tp = load double, ptr %i.to, align 8
  invoke void @_ZN6Assimp11X3DExporter21Export_MetadataDoubleERK8aiStringdm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(1028) %i.td, double noundef %i.tp, i64 noundef %i.sw)
          to label %bb.cn unwind label %bb.bt

bb.bw:                                            ; preds = %bb.bs
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8
  %i.ts = load float, ptr %i.tr, align 4
  invoke void @_ZN6Assimp11X3DExporter20Export_MetadataFloatERK8aiStringfm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(1028) %i.td, float noundef %i.ts, i64 noundef %i.sw)
          to label %bb.cn unwind label %bb.bt

bb.bx:                                            ; preds = %bb.bs
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.tu = load ptr, ptr %i.tt, align 8
  %i.tv = load i32, ptr %i.tu, align 4
  invoke void @_ZN6Assimp11X3DExporter22Export_MetadataIntegerERK8aiStringim(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(1028) %i.td, i32 noundef %i.tv, i64 noundef %i.sw)
          to label %bb.cn unwind label %bb.bt

bb.by:                                            ; preds = %bb.bs
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.tx = load ptr, ptr %i.tw, align 8
  invoke void @_ZN6Assimp11X3DExporter21Export_MetadataStringERK8aiStringS3_m(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(1028) %i.td, ptr noundef nonnull align 4 dereferenceable(1028) %i.tx, i64 noundef %i.sw)
          to label %bb.cn unwind label %bb.bt

bb.bz:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %25 = load i32, ptr %i.tg, align 8              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.ty = call i32 @llvm.abs.i32(i32 %25, i1 false) ; 5 uses
  %i.tz = icmp ult i32 %i.ty, 10
  br i1 %i.tz, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i120

.lr.ph.i.i120:                                    ; preds = %bb.bz, %bb.cf
  %.02230.i.i = phi i32 [ %i.ug, %bb.cf ], [ %i.ty, %bb.bz ] ; 5 uses
  %.02329.i.i = phi i32 [ %i.uh, %bb.cf ], [ 1, %bb.bz ] ; 4 uses
  %i.ua = icmp ult i32 %.02230.i.i, 100
  br i1 %i.ua, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.lr.ph.i.i120
  %i.ub = add i32 %.02329.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.cb:                                            ; preds = %.lr.ph.i.i120
  %i.uc = icmp ult i32 %.02230.i.i, 1000
  br i1 %i.uc, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ud = add i32 %.02329.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.cd:                                            ; preds = %bb.cb
  %i.ue = icmp ult i32 %.02230.i.i, 10000
  br i1 %i.ue, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.uf = add i32 %.02329.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.cf:                                            ; preds = %bb.cd
  %i.ug = udiv i32 %.02230.i.i, 10000
  %i.uh = add i32 %.02329.i.i, 4                  ; 2 uses
  %i.ui = icmp ult i32 %.02230.i.i, 100000
  br i1 %i.ui, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i120, !llvm.loop !172

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.cf, %bb.ce, %bb.cc, %bb.ca, %bb.bz
  %.0.i.i = phi i32 [ %i.uf, %bb.ce ], [ %i.ub, %bb.ca ], [ %i.ud, %bb.cc ], [ 1, %bb.bz ], [ %i.uh, %bb.cf ] ; 2 uses
  %.lobit.i = lshr i32 %25, 31                    ; 2 uses
  %i.uj = add i32 %.0.i.i, %.lobit.i
  %i.uk = zext i32 %i.uj to i64
  store ptr %i.sx, ptr %22, align 8, !alias.scope !169
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef %i.uk, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.ci

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.ul = zext nneg i32 %.lobit.i to i64
  %i.um = load ptr, ptr %22, align 8, !alias.scope !169
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 %i.ul ; 4 uses
  %i.uo = icmp ugt i32 %i.ty, 99
  br i1 %i.uo, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i121

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.up = add i32 %.0.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.us, %.lr.ph.i11.i ], [ %i.ty, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.vd, %.lr.ph.i11.i ], [ %i.up, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.uq = urem i32 %.020.i.i, 100
  %i.ur = shl nuw nsw i32 %i.uq, 1
  %i.us = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.ut = zext nneg i32 %i.ur to i64
  %i.uu = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ut ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 1
  %i.uw = load i8, ptr %i.uv, align 1, !noalias !169
  %i.ux = zext i32 %.01819.i.i to i64
  %i.uy = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.ux
  store i8 %i.uw, ptr %i.uy, align 1
  %i.uz = load i8, ptr %i.uu, align 2, !noalias !169
  %i.va = add i32 %.01819.i.i, -1
  %i.vb = zext i32 %i.va to i64
  %i.vc = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.vb
  store i8 %i.uz, ptr %i.vc, align 1
  %i.vd = add i32 %.01819.i.i, -2
  %i.ve = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ve, label %.lr.ph.i11.i, label %._crit_edge.i.i121, !llvm.loop !173

._crit_edge.i.i121:                               ; preds = %.lr.ph.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.ty, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.us, %.lr.ph.i11.i ] ; 3 uses
  %i.vf = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.vf, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %._crit_edge.i.i121
  %i.vg = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.vh = zext nneg i32 %i.vg to i64
  %i.vi = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.vh ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 1
  %i.vk = load i8, ptr %i.vj, align 1, !noalias !169
  %i.vl = getelementptr inbounds nuw i8, ptr %i.un, i64 1
  store i8 %i.vk, ptr %i.vl, align 1
  %i.vm = load i8, ptr %i.vi, align 2, !noalias !169
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.ch:                                            ; preds = %._crit_edge.i.i121
  %i.vn = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.vo = or disjoint i8 %i.vn, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.ci:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.vp = landingpad { ptr, i32 }
          catch ptr null
  %i.vq = extractvalue { ptr, i32 } %i.vp, 0
  call void @__clang_call_terminate(ptr %i.vq) #28
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.cg, %bb.ch
  %storemerge.i.i = phi i8 [ %i.vo, %bb.ch ], [ %i.vm, %bb.cg ]
  store i8 %storemerge.i.i, ptr %i.un, align 1
  %i.vr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.14, i64 noundef 27)
          to label %.noexc123 unwind label %bb.cl ; 6 uses

.noexc123:                                        ; preds = %_ZNSt7__cxx119to_stringEi.exit
  store ptr %i.sy, ptr %21, align 8, !alias.scope !174
  %i.vs = load ptr, ptr %i.vr, align 8            ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 16 ; 5 uses
  %i.vu = icmp eq ptr %i.vs, %i.vt
  br i1 %i.vu, label %bb.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

bb.cj:                                            ; preds = %.noexc123
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vw = load i64, ptr %i.vv, align 8            ; 3 uses
  %i.vx = icmp ult i64 %i.vw, 16
  call void @llvm.assume(i1 %i.vx)
  %i.vy = add nuw nsw i64 %i.vw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sy, ptr noundef nonnull align 8 dereferenceable(1) %i.vt, i64 %i.vy, i1 false)
  br label %bb.ck

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %.noexc123
  store ptr %i.vs, ptr %21, align 8, !alias.scope !174
  %i.vz = load i64, ptr %i.vt, align 8
  store i64 %i.vz, ptr %i.sy, align 8, !alias.scope !174
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122, %bb.cj
  %i.wa = phi i64 [ %i.vw, %bb.cj ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122 ]
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  store i64 %i.wa, ptr %i.sz, align 8, !alias.scope !174
  store ptr %i.vt, ptr %i.vr, align 8
  store i64 0, ptr %i.wb, align 8
  store i8 0, ptr %i.vt, align 8
  %i.wc = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc124 unwind label %bb.cm

.noexc124:                                        ; preds = %bb.ck
  invoke void @_ZN6Assimp6Logger5errorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.wc, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %_ZN6Assimp11X3DExporter8LogErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.cm

_ZN6Assimp11X3DExporter8LogErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc124
  %i.wd = load ptr, ptr %21, align 8              ; 2 uses
  %i.we = icmp eq ptr %i.wd, %i.sy
  br i1 %i.we, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZN6Assimp11X3DExporter8LogErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.wf = load i64, ptr %i.sy, align 8
  %i.wg = add i64 %i.wf, 1
  call void @_ZdlPvm(ptr noundef %i.wd, i64 noundef %i.wg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZN6Assimp11X3DExporter8LogErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  %i.wh = load ptr, ptr %22, align 8              ; 2 uses
  %i.wi = icmp eq ptr %i.wh, %i.sx
  br i1 %i.wi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.wj = load i64, ptr %i.sx, align 8
  %i.wk = add i64 %i.wj, 1
  call void @_ZdlPvm(ptr noundef %i.wh, i64 noundef %i.wk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.cn

bb.cl:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.cm:                                            ; preds = %.noexc124, %bb.ck
  %i.wm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wn = load ptr, ptr %21, align 8              ; 2 uses
  %i.wo = icmp eq ptr %i.wn, %i.sy
  br i1 %i.wo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.cm
  %i.wp = load i64, ptr %i.sy, align 8
  %i.wq = add i64 %i.wp, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.cl
  %.pn77 = phi { ptr, i32 } [ %i.wl, %bb.cl ], [ %i.wm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %i.wm, %bb.cm ]
  %i.wr = load ptr, ptr %22, align 8              ; 2 uses
  %i.ws = icmp eq ptr %i.wr, %i.sx
  br i1 %i.ws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.wt = load i64, ptr %i.sx, align 8
  %i.wu = add i64 %i.wt, 1
  call void @_ZdlPvm(ptr noundef %i.wr, i64 noundef %i.wu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.cz

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by
  %i.wv = add nuw nsw i64 %.048202, 1             ; 2 uses
  %i.ww = load ptr, ptr %i.st, align 8            ; 2 uses
  %i.wx = load i32, ptr %i.ww, align 8
  %i.wy = zext i32 %i.wx to i64
  %i.wz = icmp samesign ult i64 %i.wv, %i.wy
  br i1 %i.wz, label %bb.bs, label %.loopexit, !llvm.loop !177

.loopexit:                                        ; preds = %bb.cn, %.preheader192, %bb.br
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  %i.xb = load i32, ptr %i.xa, align 8
  %.not208 = icmp eq i32 %i.xb, 0
  br i1 %.not208, label %.preheader, label %.lr.ph204

.lr.ph204:                                        ; preds = %.loopexit
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.xd = add i64 %2, 1
  br label %bb.co

.preheader:                                       ; preds = %bb.cp, %.loopexit
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.xf = load i32, ptr %i.xe, align 8
  %.not209 = icmp eq i32 %i.xf, 0
  br i1 %.not209, label %._crit_edge, label %.lr.ph206

.lr.ph206:                                        ; preds = %.preheader
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 1112
end_hunk_0
