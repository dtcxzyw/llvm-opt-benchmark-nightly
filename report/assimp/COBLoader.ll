Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/COBLoader?download=true
inline.NumInlined: 2279
inline.NumDeleted: 956
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6Assimp11COBImporter10BuildNodesERKNS_3COB4NodeERKNS1_5SceneEP7aiScene:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ko = getelementptr inbounds nuw i8, ptr %.3161, i64 92
  %i.kp = load i32, ptr %i.ko, align 4            ; 2 uses
  %i.kq = icmp ult i32 %i.kp, 3
  br i1 %i.kq, label %switch.lookup, label %bb.at

bb.at:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit
  %i.kr = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.kr, ptr noundef nonnull @.str.16)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.ax, %bb.aw, %bb.au, %bb.at
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.bh

switch.lookup:                                    ; preds = %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit
  %i.kt = zext nneg i32 %i.kp to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp11COBImporter10BuildNodesERKNS_3COB4NodeERKNS1_5SceneEP7aiScene, i64 %i.kt
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.b, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %switch.lookup, %bb.au
  %i.ku = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit204 unwind label %bb.av ; 0 uses

_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit204:   ; preds = %bb.aw
  %i.kv = load i32, ptr %i.b, align 4
  %.not174 = icmp eq i32 %i.kv, 2
  br i1 %.not174, label %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit204
  %i.kw = getelementptr inbounds nuw i8, ptr %.3161, i64 72
  %i.kx = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull %i.kw, i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit unwind label %bb.av ; 0 uses

_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit:      ; preds = %bb.ax, %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ky = getelementptr inbounds nuw i8, ptr %.3161, i64 76
  %i.kz = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull %i.ky, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit207 unwind label %bb.ar ; 0 uses

_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit207:   ; preds = %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit
  %i.la = getelementptr inbounds nuw i8, ptr %.3161, i64 56 ; 3 uses
  %i.lb = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull %i.la, i32 noundef 12, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %bb.ay unwind label %bb.ar     ; 0 uses

bb.ay:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit207
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.lc = getelementptr inbounds nuw i8, ptr %.3161, i64 64 ; 2 uses
  %i.ld = load float, ptr %i.lc, align 4
  %i.le = getelementptr inbounds nuw i8, ptr %.3161, i64 84
  %i.lf = load float, ptr %i.le, align 4          ; 2 uses
  %i.lg = fmul float %i.ld, %i.lf
  %i.lh = load <2 x float>, ptr %i.la, align 4
  %i.li = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = fmul <2 x float> %i.lh, %i.lj
  store <2 x float> %i.lk, ptr %11, align 8, !alias.scope !263
  store float %i.lg, ptr %i.ax, align 8, !alias.scope !263
  %i.ll = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull %11, i32 noundef 12, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %bb.az unwind label %bb.bb     ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.lm = load float, ptr %i.lc, align 4
  %i.ln = getelementptr inbounds nuw i8, ptr %.3161, i64 80
  %i.lo = load float, ptr %i.ln, align 8          ; 2 uses
  %i.lp = fmul float %i.lm, %i.lo
  %i.lq = load <2 x float>, ptr %i.la, align 8
  %i.lr = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.ls = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lt = fmul <2 x float> %i.lq, %i.ls
  store <2 x float> %i.lt, ptr %11, align 8
  store float %i.lp, ptr %i.ax, align 8
  %i.lu = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull %11, i32 noundef 12, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit212 unwind label %bb.bb ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit212: ; preds = %bb.az
  %i.lv = getelementptr inbounds nuw i8, ptr %.3161, i64 136 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8
  %.not276 = icmp eq ptr %i.lw, null
  br i1 %.not276, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit212
  invoke void @_ZN6Assimp14ConvertTextureERKSt10shared_ptrINS_3COB7TextureEEP10aiMaterial13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %i.lv, ptr noundef nonnull %i.il, i32 noundef 1)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ay, %bb.bf, %bb.bd, %bb.ba
  %i.lx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.bh

bb.bc:                                            ; preds = %bb.ba, %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit212
  %i.ly = getelementptr inbounds nuw i8, ptr %.3161, i64 104 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8
  %.not277 = icmp eq ptr %i.lz, null
  br i1 %.not277, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN6Assimp14ConvertTextureERKSt10shared_ptrINS_3COB7TextureEEP10aiMaterial13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %i.ly, ptr noundef nonnull %i.il, i32 noundef 18)
          to label %bb.be unwind label %bb.bb

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ma = getelementptr inbounds nuw i8, ptr %.3161, i64 120 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8
  %.not278 = icmp eq ptr %i.mb, null
  br i1 %.not278, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN6Assimp14ConvertTextureERKSt10shared_ptrINS_3COB7TextureEEP10aiMaterial13aiTextureType(ptr noundef nonnull align 8 dereferenceable(16) %i.ma, ptr noundef nonnull %i.il, i32 noundef 5)
          to label %bb.bg unwind label %bb.bb

bb.bg:                                            ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %.not.i213 = icmp eq ptr %.sroa.0231.0, null
  br i1 %.not.i213, label %.critedge, label %_ZNKSt14default_deleteIKN6Assimp3COB8MaterialEEclEPS3_.exit.i

_ZNKSt14default_deleteIKN6Assimp3COB8MaterialEEclEPS3_.exit.i: ; preds = %bb.bg
  %i.mc = load ptr, ptr %.sroa.0231.0, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.0231.0) #26, !inline_history !248
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %_ZNKSt14default_deleteIKN6Assimp3COB8MaterialEEclEPS3_.exit.i, %bb.bg, %._crit_edge
  %i.mf = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0263.0337) #31 ; 2 uses
  %.not272 = icmp eq ptr %i.mf, %i.z
  br i1 %.not272, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit218, label %bb.h

bb.bh:                                            ; preds = %bb.bb, %bb.av, %bb.as, %bb.ar, %.body
  %.pn175.pn = phi { ptr, i32 } [ %i.lx, %bb.bb ], [ %i.km, %bb.ar ], [ %i.ks, %bb.av ], [ %i.kn, %bb.as ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bi

bb.bi:                                            ; preds = %bb.an, %bb.ao, %bb.bh
  %.sroa.0231.2 = phi ptr [ %.sroa.0231.0, %bb.bh ], [ %.sroa.0231.0, %bb.ao ], [ %.sroa.0231.1, %bb.an ] ; 3 uses
  %.pn175.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn, %bb.bh ], [ %i.kj, %bb.ao ], [ %i.ki, %bb.an ] ; 2 uses
  %.not.i214 = icmp eq ptr %.sroa.0231.2, null
  br i1 %.not.i214, label %_ZNSt10unique_ptrIKN6Assimp3COB8MaterialESt14default_deleteIS3_EED2Ev.exit216, label %_ZNKSt14default_deleteIKN6Assimp3COB8MaterialEEclEPS3_.exit.i215

_ZNKSt14default_deleteIKN6Assimp3COB8MaterialEEclEPS3_.exit.i215: ; preds = %bb.bi
  %i.mg = load ptr, ptr %.sroa.0231.2, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8
  call void %i.mi(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.0231.2) #26, !inline_history !248
  br label %_ZNSt10unique_ptrIKN6Assimp3COB8MaterialESt14default_deleteIS3_EED2Ev.exit216

bb.bj:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.mj = tail call noalias noundef nonnull dereferenceable(1132) ptr @_Znwm(i64 noundef 1132) #29 ; 14 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1132) %i.mj, i8 0, i64 1072, i1 false)
  store float 1.000000e+00, ptr %i.mk, align 4
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 1076
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ml, i8 0, i64 40, i1 false)
  store <4 x float> <float f0x40C90FDB, float f0x40C90FDB, float 0.000000e+00, float 0.000000e+00>, ptr %i.mm, align 4
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.mo = load ptr, ptr %i.mn, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 8            ; 2 uses
  %i.mr = add i32 %i.mq, 1
  store i32 %i.mr, ptr %i.mp, align 8
  %i.ms = zext i32 %i.mq to i64
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.ms
  store ptr %i.mj, ptr %i.mt, align 8
  %i.mu = load i64, ptr %i.e, align 8             ; 4 uses
  %i.mv = icmp ugt i64 %i.mu, 1023
  br i1 %i.mv, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit217, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mw = trunc nuw nsw i64 %i.mu to i32
  store i32 %i.mw, ptr %i.mj, align 4
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mj, i64 4 ; 2 uses
  %i.my = load ptr, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mx, ptr align 1 %i.my, i64 %i.mu, i1 false)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mu
  store i8 0, ptr %i.mz, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit217

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit217: ; preds = %bb.bj, %bb.bk
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mj, i64 1092
  %i.nc = load float, ptr %i.na, align 4          ; 3 uses
  store float %i.nc, ptr %i.nb, align 4
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mj, i64 1096
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mj, i64 1104
  store float %i.nc, ptr %i.nf, align 4
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mj, i64 1108
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mj, i64 1080
  store float %i.nc, ptr %i.nh, align 4
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mj, i64 1084
  %i.nj = load <4 x float>, ptr %i.nd, align 8    ; 2 uses
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  store <2 x float> %i.nk, ptr %i.ne, align 4
  store <2 x float> %i.nk, ptr %i.ni, align 4
  %i.nl = fmul <4 x float> %i.nj, <float 1.000000e+00, float 1.000000e+00, float f0x3C8EFA35, float f0x3C8EFA35>
  %12 = shufflevector <4 x float> %i.nl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  store <4 x float> %12, ptr %i.ng, align 4
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.nn = load i32, ptr %i.nm, align 8
  %i.no = icmp eq i32 %i.nn, 0
  %i.np = select i1 %i.no, i32 3, i32 1
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mj, i64 1028
  store i32 %i.np, ptr %i.nq, align 4
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit218

bb.bl:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.nr = tail call noalias noundef nonnull dereferenceable(1084) ptr @_Znwm(i64 noundef 1084) #29 ; 7 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 1044
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1084) %i.nr, i8 0, i64 1044, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ns, align 4
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 1060
  store <4 x float> <float 1.000000e+00, float f0x3F490FDB, float 1.000000e-01, float 1.000000e+03>, ptr %i.nt, align 4
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 1076
  store <2 x float> zeroinitializer, ptr %i.nu, align 4
  %i.nv = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 8            ; 2 uses
  %i.nz = add i32 %i.ny, 1
  store i32 %i.nz, ptr %i.nx, align 8
  %i.oa = zext i32 %i.ny to i64
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.oa
  store ptr %i.nr, ptr %i.ob, align 8
  %i.oc = load i64, ptr %i.e, align 8             ; 4 uses
  %i.od = icmp ugt i64 %i.oc, 1023
  br i1 %i.od, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit218, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.oe = trunc nuw nsw i64 %i.oc to i32
  store i32 %i.oe, ptr %i.nr, align 4
  %i.of = getelementptr inbounds nuw i8, ptr %i.nr, i64 4 ; 2 uses
  %i.og = load ptr, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.of, ptr align 1 %i.og, i64 %i.oc, i1 false)
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.oc
  store i8 0, ptr %i.oh, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit218

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit218: ; preds = %.critedge, %bb.f, %bb.bm, %bb.bl, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.d, %bb.e, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit217
  %i.oi = getelementptr inbounds nuw i8, ptr %i.c, i64 1120 ; 3 uses
  %i.oj = load i32, ptr %i.oi, align 8            ; 2 uses
  %.not169 = icmp eq i32 %i.oj, 0
  br i1 %.not169, label %.loopexit281, label %bb.bn

bb.bn:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit218
  %i.ok = zext i32 %i.oj to i64
  %i.ol = shl nuw nsw i64 %i.ok, 2
  %i.om = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ol) #29
  %i.on = getelementptr inbounds nuw i8, ptr %i.c, i64 1128 ; 2 uses
  store ptr %i.om, ptr %i.on, align 8
  %i.oo = load i32, ptr %i.oi, align 8
  %.not349 = icmp eq i32 %i.oo, 0
  br i1 %.not349, label %.loopexit281, label %.lr.ph342

.lr.ph342:                                        ; preds = %bb.bn
  %i.op = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph342, %bb.bo
  %indvars.iv = phi i64 [ 0, %.lr.ph342 ], [ %indvars.iv.next, %bb.bo ] ; 3 uses
  %i.oq = load i32, ptr %i.op, align 8
  %i.or = trunc nuw i64 %indvars.iv to i32
  %i.os = xor i32 %i.or, -1
  %i.ot = add i32 %i.oq, %i.os
  %i.ou = load ptr, ptr %i.on, align 8
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv
  store i32 %i.ot, ptr %i.ov, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ow = load i32, ptr %i.oi, align 8
  %i.ox = zext i32 %i.ow to i64
  %i.oy = icmp samesign ult i64 %indvars.iv.next, %i.ox
  br i1 %i.oy, label %bb.bo, label %.loopexit281, !llvm.loop !249

.loopexit281:                                     ; preds = %bb.bo, %bb.bn, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit218
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.pb = load ptr, ptr %i.oz, align 8            ; 2 uses
  %i.pc = load ptr, ptr %i.pa, align 8            ; 2 uses
  %i.pd = icmp eq ptr %i.pb, %i.pc
  br i1 %i.pd, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %.loopexit281
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.pf = load ptr, ptr %i.pe, align 8            ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ph = load ptr, ptr %i.pg, align 8
  %i.pi = ptrtoint ptr %i.pf to i64
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = sub i64 %i.pi, %i.pj
  %i.pl = ashr exact i64 %i.pk, 3
  %i.pm = icmp ne ptr %i.pf, null
  %.neg.i.i219 = sext i1 %i.pm to i64
  %i.pn = add nsw i64 %i.pl, %.neg.i.i219
  %i.po = shl nsw i64 %i.pn, 6
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.pq = load ptr, ptr %i.pp, align 8
  %i.pr = ptrtoint ptr %i.pb to i64
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = sub i64 %i.pr, %i.ps
  %i.pu = ashr exact i64 %i.pt, 3
  %i.pv = add nsw i64 %i.po, %i.pu
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8
  %i.py = ptrtoint ptr %i.px to i64
  %i.pz = ptrtoint ptr %i.pc to i64
  %i.qa = sub i64 %i.py, %i.pz
  %i.qb = ashr exact i64 %i.qa, 3
  %i.qc = add nsw i64 %i.pv, %i.qb                ; 2 uses
  %i.qd = icmp ugt i64 %i.qc, 2305843009213693951
  %i.qe = shl i64 %i.qc, 3
  %i.qf = select i1 %i.qd, i64 -1, i64 %i.qe      ; 2 uses
  %i.qg = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.qf) #29 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.qg, i8 0, i64 %i.qf, i1 false)
  %i.qh = getelementptr inbounds nuw i8, ptr %i.c, i64 1112 ; 2 uses
  store ptr %i.qg, ptr %i.qh, align 8
  %i.qi = load ptr, ptr %i.pa, align 8, !noalias !264 ; 2 uses
  %i.qj = load ptr, ptr %i.oz, align 8, !noalias !265 ; 2 uses
  %.not280343 = icmp eq ptr %i.qi, %i.qj
  br i1 %.not280343, label %.loopexit, label %.lr.ph348

.lr.ph348:                                        ; preds = %bb.bp
  %i.qk = load ptr, ptr %i.pg, align 8, !noalias !264
  %i.ql = load ptr, ptr %i.pw, align 8, !noalias !264
  %i.qm = getelementptr inbounds nuw i8, ptr %i.c, i64 1104 ; 2 uses
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph348, %_ZNSt15_Deque_iteratorIPKN6Assimp3COB4NodeERS4_PS4_EppEv.exit
  %.sroa.0220.0346 = phi ptr [ %i.qi, %.lr.ph348 ], [ %.sroa.0220.1, %_ZNSt15_Deque_iteratorIPKN6Assimp3COB4NodeERS4_PS4_EppEv.exit ] ; 2 uses
  %.sroa.10.0345 = phi ptr [ %i.ql, %.lr.ph348 ], [ %.sroa.10.1, %_ZNSt15_Deque_iteratorIPKN6Assimp3COB4NodeERS4_PS4_EppEv.exit ] ; 2 uses
  %.sroa.13.0344 = phi ptr [ %i.qk, %.lr.ph348 ], [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIPKN6Assimp3COB4NodeERS4_PS4_EppEv.exit ] ; 2 uses
  %i.qn = load ptr, ptr %.sroa.0220.0346, align 8
  %i.qo = call noundef ptr @_ZN6Assimp11COBImporter10BuildNodesERKNS_3COB4NodeERKNS1_5SceneEP7aiScene(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(212) %i.qn, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef %3) ; 2 uses
  %i.qp = load ptr, ptr %i.qh, align 8
  %i.qq = load i32, ptr %i.qm, align 8            ; 2 uses
  %i.qr = add i32 %i.qq, 1
  store i32 %i.qr, ptr %i.qm, align 8
  %i.qs = zext i32 %i.qq to i64
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %i.qs
  store ptr %i.qo, ptr %i.qt, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qo, i64 1096
  store ptr %i.c, ptr %i.qu, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.0220.0346, i64 8 ; 2 uses
  %i.qw = icmp eq ptr %i.qv, %.sroa.10.0345
  br i1 %i.qw, label %bb.br, label %_ZNSt15_Deque_iteratorIPKN6Assimp3COB4NodeERS4_PS4_EppEv.exit

bb.br:                                            ; preds = %bb.bq
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.13.0344, i64 8 ; 2 uses
  %i.qy = load ptr, ptr %i.qx, align 8            ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 512
  br label %_ZNSt15_Deque_iteratorIPKN6Assimp3COB4NodeERS4_PS4_EppEv.exit

_ZNSt15_Deque_iteratorIPKN6Assimp3COB4NodeERS4_PS4_EppEv.exit: ; preds = %bb.bq, %bb.br
  %.sroa.13.1 = phi ptr [ %i.qx, %bb.br ], [ %.sroa.13.0344, %bb.bq ]
  %.sroa.10.1 = phi ptr [ %i.qz, %bb.br ], [ %.sroa.10.0345, %bb.bq ]
  %.sroa.0220.1 = phi ptr [ %i.qy, %bb.br ], [ %i.qv, %bb.bq ] ; 2 uses
  %.not280 = icmp eq ptr %.sroa.0220.1, %i.qj
  br i1 %.not280, label %.loopexit, label %bb.bq

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorIPKN6Assimp3COB4NodeERS4_PS4_EppEv.exit, %bb.bp, %.loopexit281
  ret ptr %i.c

_ZNSt10unique_ptrIKN6Assimp3COB8MaterialESt14default_deleteIS3_EED2Ev.exit216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bi, %_ZNKSt14default_deleteIKN6Assimp3COB8MaterialEEclEPS3_.exit.i215, %bb.g
  %.pn184.pn.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.g ], [ %.pn182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ], [ %.pn184, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn175.pn.pn.pn, %bb.bi ], [ %.pn175.pn.pn.pn, %_ZNKSt14default_deleteIKN6Assimp3COB8MaterialEEclEPS3_.exit.i215 ]
  resume { ptr, i32 } %.pn184.pn.pn.pn
}

declare void @_ZN6Assimp23FlipWindingOrderProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6Assimp12StreamReaderILb0ELb0EEESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !guid !267 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN6Assimp12StreamReaderILb0ELb0EEEEclEPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.g
end_hunk_0
