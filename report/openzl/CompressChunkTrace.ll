Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/CompressChunkTrace?download=true
inline.NumInlined: 1971
inline.NumDeleted: 1047
begin_hunk_0_@_ZN6openzl10visualizer18CompressChunkTrace20on_codecEncode_startEP12ZL_Encoder_sPK15ZL_Compressor_s9ZL_NodeIDPPK10ZL_Input_sm:bb.a
  store ptr %i.x, ptr %i.w, align 8, !tbaa !98
  store i64 0, ptr %i.y, align 8, !tbaa !148
  store i8 0, ptr %i.x, align 8, !tbaa !99
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bi, ptr noundef nonnull align 8 dereferenceable(200) %i.aa, i64 48, i1 false), !tbaa.struct !210
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.bl = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !85
  store <2 x ptr> %i.bl, ptr %i.bj, align 8, !tbaa !85
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !211
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !211
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.al, i64 168
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.br = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !85
  store <2 x ptr> %i.br, ptr %i.bp, align 8, !tbaa !85
  %i.bs = getelementptr inbounds nuw i8, ptr %i.al, i64 184
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 184
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !212
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 0, i64 24, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.al, i64 192
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  %i.bx = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !85
  store <2 x ptr> %i.bx, ptr %i.bv, align 8, !tbaa !85
  %i.by = getelementptr inbounds nuw i8, ptr %i.al, i64 208
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !213
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.al, i64 216 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 216 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !214 ; 3 uses
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !214
  %i.ce = getelementptr inbounds nuw i8, ptr %i.al, i64 224
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 224 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !215 ; 2 uses
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !215
  %i.ch = getelementptr inbounds nuw i8, ptr %i.al, i64 232 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 232 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !216 ; 3 uses
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !217
  %i.ck = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !218
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !218
  %i.cn = getelementptr inbounds nuw i8, ptr %i.al, i64 248
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !tbaa.struct !220
  %i.cp = getelementptr inbounds nuw i8, ptr %i.al, i64 264 ; 4 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !221
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 264 ; 4 uses
  %i.cr = icmp eq ptr %i.cd, %i.cq
  br i1 %i.cr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  store ptr %i.cp, ptr %i.cb, align 8, !tbaa !214
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !221
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !221
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  %i.ct = phi ptr [ %i.cp, %bb.m ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6openzl10visualizer5CodecC2EOS1_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !58
  %i.cw = sext i32 %i.cv to i64
  %i.cx = urem i64 %i.cw, %i.cg
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cx
  store ptr %i.ch, ptr %i.cy, align 8, !tbaa !222
  br label %_ZN6openzl10visualizer5CodecC2EOS1_.exit

_ZN6openzl10visualizer5CodecC2EOS1_.exit:         ; preds = %bb.n, %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 256
  store i64 0, ptr %i.cz, align 8, !tbaa !223
  store i64 1, ptr %i.cf, align 8, !tbaa !215
  store ptr null, ptr %i.cq, align 8, !tbaa !221
  store ptr %i.cq, ptr %i.cc, align 8, !tbaa !214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.al, i64 272
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 272 ; 2 uses
  %i.dc = load <2 x ptr>, ptr %i.db, align 8, !tbaa !224
  store <2 x ptr> %i.dc, ptr %i.da, align 8, !tbaa !224
  %i.dd = getelementptr inbounds nuw i8, ptr %i.al, i64 288
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 288
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !225
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.al, i64 312
  %i.di = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !85
  store <2 x ptr> %i.di, ptr %i.dh, align 8, !tbaa !85
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 328
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 328
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !88
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  %i.dn = load <2 x ptr>, ptr %i.af, align 8, !tbaa !85
  store <2 x ptr> %i.dn, ptr %i.dm, align 8, !tbaa !85
  %i.do = getelementptr inbounds nuw i8, ptr %i.al, i64 352
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 352
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !88
  store ptr %i.dq, ptr %i.do, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.dr = load ptr, ptr %i.ak, align 8, !tbaa !149
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 360
  store ptr %i.ds, ptr %i.ak, align 8, !tbaa !149
  br label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit

bb.p:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr %i.al, ptr noundef nonnull align 8 dereferenceable(360) %6)
          to label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit unwind label %bb.s

_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.p, %_ZN6openzl10visualizer5CodecC2EOS1_.exit
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.t

._crit_edge:                                      ; preds = %bb.z, %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !226, !range !56, !noundef !57
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.ac, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.q:                                             ; preds = %bb.f, %bb.e
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.h, %bb.g
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %i.w, align 8, !tbaa !98  ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.x
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.eb = load i64, ptr %i.x, align 8, !tbaa !99
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn = phi { ptr, i32 } [ %i.dx, %bb.q ], [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dy, %bb.r ] ; 2 uses
  %i.ed = load ptr, ptr %6, align 8, !tbaa !98    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.c
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ef = load i64, ptr %i.c, align 8, !tbaa !99
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.s:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.af, %bb.p
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.t:                                             ; preds = %.lr.ph, %bb.z
  %.046 = phi i64 [ 0, %.lr.ph ], [ %i.fm, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.046
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !18
  %i.ek = invoke i32 @ZL_Data_id(ptr noundef %i.ej)
          to label %_ZL11ZL_Input_idPK10ZL_Input_s.exit unwind label %.loopexit ; 3 uses

_ZL11ZL_Input_idPK10ZL_Input_s.exit:              ; preds = %bb.t
  store i32 %i.ek, ptr %7, align 4
  %i.el = load i64, ptr %i.ag, align 8, !tbaa !207
  %i.em = load ptr, ptr %i.aj, align 8, !tbaa !136
  %i.en = getelementptr inbounds nuw [360 x i8], ptr %i.em, i64 %i.el ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 312 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 320 ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !140 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 328 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !88
  %.not.i = icmp eq ptr %i.eq, %i.es
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZL11ZL_Input_idPK10ZL_Input_s.exit
  store i32 %i.ek, ptr %i.eq, align 4, !tbaa !58
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store ptr %i.et, ptr %i.ep, align 8, !tbaa !140
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit

bb.v:                                             ; preds = %_ZL11ZL_Input_idPK10ZL_Input_s.exit
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !87 ; 4 uses
  %i.ev = ptrtoint ptr %i.eq to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 6 uses
  %i.ey = icmp eq i64 %i.ex, 9223372036854775804
  br i1 %i.ey, label %bb.w, label %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #29
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.ez = ashr exact i64 %i.ex, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ez, i64 1)
  %8 = add nsw i64 %.sroa.speculated.i.i.i, %i.ez ; 2 uses
  %i.fa = icmp ult i64 %8, %i.ez
  %i.fb = call i64 @llvm.umin.i64(i64 %8, i64 2305843009213693951)
  %i.fc = select i1 %i.fa, i64 2305843009213693951, i64 %i.fb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fc, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fd = shl nuw nsw i64 %i.fc, 2
  %i.fe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #28
          to label %.noexc37 unwind label %.loopexit ; 4 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 %i.ex ; 2 uses
  store i32 %i.ek, ptr %i.ff, align 4, !tbaa !58
  %i.fg = icmp sgt i64 %i.ex, 0
  br i1 %i.fg, label %bb.x, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.x:                                             ; preds = %.noexc37
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fe, ptr align 4 %i.eu, i64 %i.ex, i1 false)
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.x, %.noexc37
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %.not.i17.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ex) #26
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.fe, ptr %i.eo, align 8, !tbaa !87
  store ptr %i.fh, ptr %i.ep, align 8, !tbaa !140
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fc
  store ptr %i.fi, ptr %i.er, align 8, !tbaa !88
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.u
  %i.fj = load i64, ptr %i.ag, align 8, !tbaa !135
  %i.fk = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.dt, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.z unwind label %bb.aa      ; 2 uses

bb.z:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 88
  store i64 %i.fj, ptr %i.fl, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 96
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.fm = add nuw i64 %.046, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fm, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.t, !llvm.loop !281

.loopexit:                                        ; preds = %bb.t, %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aa
  %.pn26 = phi { ptr, i32 } [ %i.fn, %bb.aa ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ak

bb.ac:                                            ; preds = %._crit_edge
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !201 ; 3 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -24 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 -16 ; 3 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !227 ; 4 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fp, i64 -8 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !228
  %.not.i38 = icmp eq ptr %i.fs, %i.fu
  br i1 %.not.i38, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fv = load i64, ptr %i.ag, align 8, !tbaa !135
  store i64 %i.fv, ptr %i.fs, align 8, !tbaa !135
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr %i.fw, ptr %i.fr, align 8, !tbaa !227
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.ae:                                            ; preds = %bb.ac
  %i.fx = load ptr, ptr %i.fq, align 8, !tbaa !229 ; 4 uses
  %i.fy = ptrtoint ptr %i.fs to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 6 uses
  %i.gb = icmp eq i64 %i.ga, 9223372036854775800
  br i1 %i.gb, label %bb.af, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #29
          to label %.noexc42.a unwind label %bb.s

.noexc42.a:                                       ; preds = %bb.af
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ae
  %i.gc = ashr exact i64 %i.ga, 3                 ; 3 uses
  %.sroa.speculated.i.i.i39 = call i64 @llvm.umax.i64(i64 %i.gc, i64 1)
  %9 = add nsw i64 %.sroa.speculated.i.i.i39, %i.gc ; 2 uses
  %i.gd = icmp ult i64 %9, %i.gc
  %i.ge = call i64 @llvm.umin.i64(i64 %9, i64 1152921504606846975)
  %i.gf = select i1 %i.gd, i64 1152921504606846975, i64 %i.ge ; 3 uses
  %.not.i.i.i40 = icmp ne i64 %i.gf, 0
  call void @llvm.assume(i1 %.not.i.i.i40)
  %i.gg = shl nuw nsw i64 %i.gf, 3
  %i.gh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #28
          to label %.noexc43 unwind label %bb.s   ; 4 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 %i.ga ; 2 uses
  %i.gj = load i64, ptr %i.ag, align 8, !tbaa !135
  store i64 %i.gj, ptr %i.gi, align 8, !tbaa !135
  %i.gk = icmp sgt i64 %i.ga, 0
  br i1 %i.gk, label %bb.ag, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.ag:                                            ; preds = %.noexc43
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gh, ptr align 8 %i.fx, i64 %i.ga, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.ag, %.noexc43
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %.not.i17.i.i41 = icmp eq ptr %i.fx, null
  br i1 %.not.i17.i.i41, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.ga) #26
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.ah, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.gh, ptr %i.fq, align 8, !tbaa !229
  store ptr %i.gl, ptr %i.fr, align 8, !tbaa !227
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gf
  store ptr %i.gm, ptr %i.ft, align 8, !tbaa !228
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.ad, %._crit_edge
  %i.gn = load ptr, ptr %i.af, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.go = getelementptr inbounds nuw i8, ptr %6, i64 352
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !88
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.gn to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gs) #26
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i:       ; preds = %bb.ai, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.gt = load ptr, ptr %i.ae, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 328
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !88
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #26
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i:      ; preds = %bb.aj, %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i
  call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.aa) #25
  %i.gz = load ptr, ptr %i.w, align 8, !tbaa !98  ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.x
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i
  %i.hb = load i64, ptr %i.x, align 8, !tbaa !99
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.hd = load ptr, ptr %6, align 8, !tbaa !98    ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.c
  br i1 %i.he, label %_ZN6openzl10visualizer5CodecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.hf = load i64, ptr %i.c, align 8, !tbaa !99
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #26
  br label %_ZN6openzl10visualizer5CodecD2Ev.exit

_ZN6openzl10visualizer5CodecD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.ak:                                            ; preds = %bb.ab, %bb.s
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.ab ], [ %i.eh, %bb.s ]
  call void @_ZN6openzl10visualizer5CodecD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %6) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.ak
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.ak ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn26.pn.pn
}

declare ptr @ZL_Compressor_Node_getName(ptr noundef, i32) local_unnamed_addr #2

declare zeroext i1 @ZL_Compressor_Node_isStandard(ptr noundef, i32) local_unnamed_addr #2

declare i32 @ZL_Compressor_Node_getCodecID(ptr noundef, i32) local_unnamed_addr #2

declare ptr @ZL_Encoder_getLocalParams(ptr noundef) local_unnamed_addr #2

declare void @_ZN6openzl11LocalParamsC1ERK14ZL_LocalParams(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl10visualizer5CodecD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit:         ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2:        ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.o) #25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2
  %i.t = load i64, ptr %i.r, align 8, !tbaa !99
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.v = load ptr, ptr %0, align 8, !tbaa !98     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !99
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer18CompressChunkTrace18on_codecEncode_endEP12ZL_Encoder_sPPK11ZL_Output_sm18ZL_Result_size_t_u(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 %4, i64 %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.std::integral_constant.107", align 1 ; 3 uses
  %7 = alloca %"struct.std::integral_constant.100", align 1 ; 3 uses
  %8 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %9 = alloca %class.anon.111, align 8            ; 6 uses
  %10 = alloca %"class.openzl::ExceptionBuilder", align 8 ; 7 uses
  %11 = alloca %"class.openzl::ExceptionBuilder", align 8 ; 7 uses
  %12 = alloca %"class.openzl::ExceptionBuilder", align 8 ; 7 uses
  %13 = alloca %struct.ZL_DataID, align 4         ; 9 uses
  %14 = alloca %"class.std::variant", align 16    ; 13 uses
  %15 = alloca %"struct.openzl::visualizer::Stream", align 8 ; 22 uses
  %.not55 = icmp eq i32 %4, 0
  br i1 %.not55, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !207
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw [360 x i8], ptr %i.d, i64 %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 %4, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not121 = icmp eq i64 %3, 0
end_hunk_0
begin_hunk_1_@_ZN6openzl10visualizer18CompressChunkTrace18on_codecEncode_endEP12ZL_Encoder_sPPK11ZL_Output_sm18ZL_Result_size_t_u:bb.a
  store i32 %i.aq, ptr %i.h, align 4, !tbaa !77
  store i64 %.037115, ptr %i.i, align 8, !tbaa !78
  store i64 %i.at, ptr %i.j, align 8, !tbaa !79
  store i64 %i.ba, ptr %i.k, align 8, !tbaa !80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 %i.bh, ptr %i.m, align 8, !tbaa !81
  %i.br = load i64, ptr %0, align 8, !tbaa !82
  store i64 %i.br, ptr %i.n, align 8, !tbaa !83
  store i8 0, ptr %i.q, align 8, !tbaa !84
  store i8 0, ptr %i.r, align 8, !tbaa !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.bs = load <2 x ptr>, ptr %14, align 16, !tbaa !85
  store <2 x ptr> %i.bs, ptr %i.s, align 8, !tbaa !85
  %i.bt = load ptr, ptr %i.x, align 16, !tbaa !85
  store ptr %i.bt, ptr %i.w, align 8, !tbaa !85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %14, i8 0, i64 24, i1 false)
  %i.bu = load i8, ptr %i.y, align 8, !tbaa !86
  store i8 %i.bu, ptr %i.t, align 8, !tbaa !86
  %i.bv = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %bb.h unwind label %bb.ae      ; 5 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.bv, ptr noundef nonnull align 8 dereferenceable(152) %15, i64 64, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !87 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 80 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !88
  %i.ca = load <2 x ptr>, ptr %i.o, align 8, !tbaa !85
  store <2 x ptr> %i.ca, ptr %i.bw, align 8, !tbaa !85
  %i.cb = load ptr, ptr %i.aa, align 8, !tbaa !88
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !88
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EEaSEOS2_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = ptrtoint ptr %i.bx to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.ce) #26
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EEaSEOS2_.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EEaSEOS2_.exit.i:    ; preds = %bb.i, %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %i.cg, ptr %9, align 8, !tbaa !91
  %i.ch = load i8, ptr %i.t, align 8, !tbaa !86
  switch i8 %i.ch, label %bb.m [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
  ]

bb.j:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EEaSEOS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZSt13__invoke_implIvZNSt8__detail9__variant17_Move_assign_baseILb0EJSt6vectorIhSaIhEES3_IlSaIlEES3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEaSEOSG_EUlOT_T0_E_JRS5_St17integral_constantImLm0EEEESI_St14__invoke_otherOSK_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(25) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc.i.i.i.i unwind label %bb.n

.noexc.i.i.i.i:                                   ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZN6openzl10visualizer6StreamaSEOS1_.exit

bb.k:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EEaSEOS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZSt13__invoke_implIvZNSt8__detail9__variant17_Move_assign_baseILb0EJSt6vectorIhSaIhEES3_IlSaIlEES3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEaSEOSG_EUlOT_T0_E_JRS7_St17integral_constantImLm1EEEESI_St14__invoke_otherOSK_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(25) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc2.i.i.i.i unwind label %bb.n

.noexc2.i.i.i.i:                                  ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZN6openzl10visualizer6StreamaSEOS1_.exit

bb.l:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EEaSEOS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZSt13__invoke_implIvZNSt8__detail9__variant17_Move_assign_baseILb0EJSt6vectorIhSaIhEES3_IlSaIlEES3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEaSEOSG_EUlOT_T0_E_JRSF_St17integral_constantImLm2EEEESI_St14__invoke_otherOSK_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(25) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc3.i.i.i.i unwind label %bb.n

.noexc3.i.i.i.i:                                  ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZN6openzl10visualizer6StreamaSEOS1_.exit

bb.m:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EEaSEOS2_.exit.i
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #27
  unreachable

_ZN6openzl10visualizer6StreamaSEOS1_.exit:        ; preds = %.noexc.i.i.i.i, %.noexc2.i.i.i.i, %.noexc3.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.ck = load i8, ptr %i.t, align 8, !tbaa !86
  %i.cl = load ptr, ptr %i.s, align 8, !tbaa !85  ; 7 uses
  switch i8 %i.ck, label %bb.r [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
  ]

bb.o:                                             ; preds = %_ZN6openzl10visualizer6StreamaSEOS1_.exit
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i

bb.p:                                             ; preds = %_ZN6openzl10visualizer6StreamaSEOS1_.exit
  %.not.i.i.i.i.i.i.i.i8.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i.i.i.i8.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i

bb.q:                                             ; preds = %_ZN6openzl10visualizer6StreamaSEOS1_.exit
  %i.cm = load ptr, ptr %i.u, align 8, !tbaa !94  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cs, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cl, %bb.q ] ; 3 uses
  %i.cn = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !98 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !99
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9.i.i.i.i = icmp eq ptr %i.cs, %i.cm
  br i1 %.not.i.i.i.i.i.i.i.i9.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i, %bb.q
  %i.ct = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i ], [ %i.cl, %bb.q ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i

bb.r:                                             ; preds = %_ZN6openzl10visualizer6StreamaSEOS1_.exit
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i, %bb.p, %bb.o
  %.sink20.i.i.i.i = phi ptr [ %i.cl, %bb.p ], [ %i.cl, %bb.o ], [ %i.ct, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cu = load ptr, ptr %i.w, align 8, !tbaa !85
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %.sink20.i.i.i.i to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %.sink20.i.i.i.i, i64 noundef %i.cx) #26
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i, %bb.p, %bb.o
  %i.cy = load ptr, ptr %i.o, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i, label %_ZN6openzl10visualizer6StreamD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i
  %i.cz = load ptr, ptr %i.aa, align 8, !tbaa !88
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #26
  br label %_ZN6openzl10visualizer6StreamD2Ev.exit

_ZN6openzl10visualizer6StreamD2Ev.exit:           ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.dd = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.de = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %bb.t unwind label %bb.af      ; 2 uses

bb.t:                                             ; preds = %_ZN6openzl10visualizer6StreamD2Ev.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 104
  store i64 %i.dd, ptr %i.df, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 112
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.dg = load i64, ptr %i.ab, align 8, !tbaa !207
  %i.dh = load ptr, ptr %i.ac, align 8, !tbaa !136
  %i.di = getelementptr inbounds nuw [360 x i8], ptr %i.dh, i64 %i.dg ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 336 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 344 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !140 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 352 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !88
  %.not.i49 = icmp eq ptr %i.dl, %i.dn
  br i1 %.not.i49, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = load i32, ptr %13, align 4, !tbaa !58
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !58
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store ptr %i.dp, ptr %i.dk, align 8, !tbaa !140
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit

bb.v:                                             ; preds = %bb.t
  %i.dq = load ptr, ptr %i.dj, align 8, !tbaa !87 ; 4 uses
  %i.dr = ptrtoint ptr %i.dl to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds                    ; 6 uses
  %i.du = icmp eq i64 %i.dt, 9223372036854775804
  br i1 %i.du, label %bb.w, label %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.w
  unreachable

_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.dv = ashr exact i64 %i.dt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dv, i64 1)
  %16 = add nsw i64 %.sroa.speculated.i.i.i, %i.dv ; 2 uses
  %i.dw = icmp ult i64 %16, %i.dv
  %i.dx = call i64 @llvm.umin.i64(i64 %16, i64 2305843009213693951)
  %i.dy = select i1 %i.dw, i64 2305843009213693951, i64 %i.dx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dy, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dz = shl nuw nsw i64 %i.dy, 2
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #28
          to label %.noexc50 unwind label %.loopexit ; 4 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.dt ; 2 uses
  %i.ec = load i32, ptr %13, align 4, !tbaa !58
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !58
  %i.ed = icmp sgt i64 %i.dt, 0
  br i1 %i.ed, label %bb.x, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.x:                                             ; preds = %.noexc50
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ea, ptr align 4 %i.dq, i64 %i.dt, i1 false)
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.x, %.noexc50
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dt) #26
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.ea, ptr %i.dj, align 8, !tbaa !87
  store ptr %i.ee, ptr %i.dk, align 8, !tbaa !140
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dy
  store ptr %i.ef, ptr %i.dm, align 8, !tbaa !88
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.u
  %i.eg = load ptr, ptr %i.an, align 8, !tbaa !284
  invoke void @_ZN6openzl10visualizer18CompressChunkTrace10streamdumpEPK11ZL_Output_s(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %i.eg)
          to label %bb.z unwind label %.loopexit

bb.z:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit
  %i.eh = load i8, ptr %i.y, align 8, !tbaa !86
  %i.ei = load ptr, ptr %14, align 16, !tbaa !85  ; 7 uses
  switch i8 %i.eh, label %bb.ad [
    i8 0, label %bb.aa
    i8 1, label %bb.ab
    i8 2, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i

bb.ab:                                            ; preds = %bb.z
  %.not.i.i.i.i.i.i.i.i8.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i.i.i8.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i

bb.ac:                                            ; preds = %bb.z
  %i.ej = load ptr, ptr %i.v, align 8, !tbaa !94  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ei, %i.ej
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ac, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ep, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ei, %bb.ac ] ; 3 uses
  %i.ek = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !98 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.en = load i64, ptr %i.el, align 8, !tbaa !99
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9.i.i.i = icmp eq ptr %i.ep, %i.ej
  br i1 %.not.i.i.i.i.i.i.i.i9.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i = load ptr, ptr %14, align 16, !tbaa !100
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, %bb.ac
  %i.eq = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i ], [ %i.ei, %bb.ac ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i

bb.ad:                                            ; preds = %bb.z
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, %bb.ab, %bb.aa
  %.sink20.i.i.i = phi ptr [ %i.ei, %bb.ab ], [ %i.ei, %bb.aa ], [ %i.eq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.er = load ptr, ptr %i.x, align 16, !tbaa !85
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %.sink20.i.i.i to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %.sink20.i.i.i, i64 noundef %i.eu) #26
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit: ; preds = %bb.aa, %bb.ab, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.ev = add nuw i64 %.037115, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ev, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !282

bb.ae:                                            ; preds = %bb.g
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6openzl10visualizer6StreamD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.ag

bb.af:                                            ; preds = %_ZN6openzl10visualizer6StreamD2Ev.exit
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit:                                        ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit, %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.ew, %bb.ae ], [ %i.ex, %bb.af ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  resume { ptr, i32 } %.pn

._crit_edge120.loopexit:                          ; preds = %bb.ah
  %.pre = load i64, ptr %i.ae, align 8, !tbaa !207
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit, %._crit_edge
  %i.ey = phi i64 [ %.pre, %._crit_edge120.loopexit ], [ %i.af, %._crit_edge ]
  %i.ez = add i64 %i.ey, 1
  store i64 %i.ez, ptr %i.ae, align 8, !tbaa !207
  ret void

bb.ah:                                            ; preds = %.lr.ph119, %bb.ah
  %.sroa.051.0117 = phi ptr [ %i.aj, %.lr.ph119 ], [ %i.fh, %bb.ah ] ; 2 uses
  %i.fa = load i64, ptr %i.ae, align 8, !tbaa !207
  %i.fb = load ptr, ptr %i.ad, align 8, !tbaa !136
  %i.fc = getelementptr inbounds nuw [360 x i8], ptr %i.fb, i64 %i.fa
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 336
  %i.fe = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.051.0117)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  %i.fg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI9ZL_DataIDSaIS0_EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %i.fd) ; 0 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.051.0117, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.fh, %i.al
  br i1 %.not, label %._crit_edge120.loopexit, label %bb.ah
}

declare { i32, i64 } @ZL_Output_eltWidth(ptr noundef) local_unnamed_addr #2

declare { i32, i64 } @ZL_Output_numElts(ptr noundef) local_unnamed_addr #2

declare { i32, i64 } @ZL_Output_contentSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer18CompressChunkTrace10streamdumpEPK11ZL_Output_s(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.156", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.137", align 1    ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"struct.std::pair.85", align 8     ; 10 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.d = tail call noundef ptr @ZL_Data_rPtr(ptr noundef %1) ; 3 uses
  %i.e = tail call { i32, i64 } @ZL_Output_contentSize(ptr noundef %1)
  %i.f = extractvalue { i32, i64 } %i.e, 1        ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !147
  %i.h = icmp eq ptr %i.d, null
  %i.i = icmp ne i64 %i.f, 0
  %or.cond.i = and i1 %i.h, %i.i
  br i1 %or.cond.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #29
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.f, ptr %i.b, align 8, !tbaa !135
  %i.j = icmp ugt i64 %i.f, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !98
  %i.l = load i64, ptr %i.b, align 8, !tbaa !135
end_hunk_1
begin_hunk_2_@_ZNSt6vectorI9ZL_DataIDSaIS0_EEaSERKS2_:bb.a
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseI9ZL_DataIDSaIS0_EE11_M_allocateEm.exit.i, !prof !141

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt12_Vector_baseI9ZL_DataIDSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !205

bb.e:                                             ; preds = %_ZNSt12_Vector_baseI9ZL_DataIDSaIS0_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseI9ZL_DataIDSaIS0_EE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !58
  store i32 %i.r, ptr %i.o, align 4, !tbaa !58
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit

_ZNSt6vectorI9ZL_DataIDSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI9ZL_DataIDSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #26
  br label %_ZNSt12_Vector_baseI9ZL_DataIDSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI9ZL_DataIDSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !88
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !140  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 4
  br i1 %i.x, label %bb.k, label %bb.l, !prof !205

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 4
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i32, ptr %i.c, align 4, !tbaa !58
  store i32 %i.z, ptr %i.i, align 4, !tbaa !58
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 4
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !205

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !87
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !140 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !87
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !140
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIP9ZL_DataIDS1_ET0_T_S3_S2_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 4
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIP9ZL_DataIDS1_ET0_T_S3_S2_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !58
  store i32 %i.ac, ptr %i.i, align 4, !tbaa !58
  br label %_ZSt4copyIP9ZL_DataIDS1_ET0_T_S3_S2_.exit

_ZSt4copyIP9ZL_DataIDS1_ET0_T_S3_S2_.exit:        ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 4, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !205

bb.r:                                             ; preds = %_ZSt4copyIP9ZL_DataIDS1_ET0_T_S3_S2_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ad, ptr align 4 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.s:                                             ; preds = %_ZSt4copyIP9ZL_DataIDS1_ET0_T_S3_S2_.exit
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !58
  store i32 %i.ak, ptr %i.ad, align 4, !tbaa !58
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseI9ZL_DataIDSaIS0_EE13_M_deallocateEPS0_m.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !87
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !140
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6openzl10visualizer18CompressChunkTrace29on_ZL_Encoder_getScratchSpaceEP12ZL_Encoder_sm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6openzl10visualizer18CompressChunkTrace29on_ZL_Encoder_sendCodecHeaderEP12ZL_Encoder_sPKvm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, i64 noundef %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !207
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw [360 x i8], ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %3, ptr %i.f, align 8, !tbaa !200
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6openzl10visualizer18CompressChunkTrace31on_ZL_Encoder_createTypedStreamEP12ZL_Encoder_simmP11ZL_Output_s(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer18CompressChunkTrace22on_migraphEncode_startEP10ZL_Graph_sPK15ZL_Compressor_s10ZL_GraphIDPP9ZL_Edge_sm(ptr noundef nonnull align 8 dereferenceable(208) initializes((169, 170)) %0, ptr noundef %1, ptr noundef %2, i32 %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.openzl::visualizer::Graph", align 8 ; 36 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 1, ptr %i.a, align 1, !tbaa !226
  %i.b = icmp ugt i64 %5, 1152921504606846975
  br i1 %i.b, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #29
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.c = shl nuw nsw i64 %5, 3
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #28 ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %5
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE9push_backERKS1_.exit, %bb.b
  %.sroa.0.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.0.4, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.12.2, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE9push_backERKS1_.exit ]
  %.sroa.18.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.18.4, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.f = invoke i32 @ZL_Compressor_getGraphType(ptr noundef %2, i32 %3)
          to label %bb.h unwind label %bb.t

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE9push_backERKS1_.exit
  %.01655 = phi i64 [ %i.w, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE9push_backERKS1_.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.18.054 = phi ptr [ %.sroa.18.4, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE9push_backERKS1_.exit ], [ %i.e, %.lr.ph.preheader ] ; 5 uses
  %.sroa.12.053 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE9push_backERKS1_.exit ], [ %i.d, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.052 = phi ptr [ %.sroa.0.4, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE9push_backERKS1_.exit ], [ %i.d, %.lr.ph.preheader ] ; 7 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01655 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.12.053, %.sroa.18.054
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !231
  store ptr %i.h, ptr %.sroa.12.053, align 8, !tbaa !231
  br label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.i = ptrtoint ptr %.sroa.18.054 to i64
  %i.j = ptrtoint ptr %.sroa.0.052 to i64
  %i.k = sub i64 %i.i, %i.j                       ; 6 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.e, label %_ZNKSt6vectorIP9ZL_Edge_sSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #29
          to label %.noexc21 unwind label %.loopexit.split-lp

.noexc21:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIP9ZL_Edge_sSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %7 = add nsw i64 %.sroa.speculated.i.i.i, %i.m  ; 2 uses
  %i.n = icmp ult i64 %7, %i.m
  %i.o = tail call i64 @llvm.umin.i64(i64 %7, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28
          to label %.noexc22 unwind label %.loopexit ; 4 uses

.noexc22:                                         ; preds = %_ZNKSt6vectorIP9ZL_Edge_sSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.k ; 2 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !231
  store ptr %i.t, ptr %i.s, align 8, !tbaa !231
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %.noexc22
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %.sroa.0.052, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %.noexc22
  %.not.i17.i.i = icmp eq ptr %.sroa.0.052, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.052, i64 noundef %i.k) #26
  br label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  br label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.c
  %.sroa.0.4 = phi ptr [ %i.r, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0.052, %bb.c ] ; 2 uses
  %.pn43 = phi ptr [ %i.s, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.12.053, %bb.c ]
  %.sroa.18.4 = phi ptr [ %i.v, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.18.054, %bb.c ] ; 2 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn43, i64 8 ; 2 uses
  %i.w = add nuw i64 %.01655, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !291

.loopexit:                                        ; preds = %_ZNKSt6vectorIP9ZL_Edge_sSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.h:                                             ; preds = %._crit_edge
  store i32 %i.f, ptr %6, align 8, !tbaa !196
  %i.x = invoke ptr @ZL_Compressor_Graph_getName(ptr noundef %2, i32 %3)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !195
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 11 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !147
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !148
  store i8 0, ptr %i.ac, align 8, !tbaa !99
  %i.ae = invoke ptr @GCTX_getAllLocalParams(ptr noundef %1)
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  invoke void @_ZN6openzl11LocalParamsC1ERK14ZL_LocalParams(ptr noundef nonnull align 8 dereferenceable(200) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 264 ; 2 uses
  %i.ah = load i64, ptr %0, align 8, !tbaa !82
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !232
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 272 ; 4 uses
  store ptr %.sroa.0.0.lcssa, ptr %i.ai, align 8, !tbaa !233
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 280
  store ptr %.sroa.12.0.lcssa, ptr %i.aj, align 8, !tbaa !292
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 288 ; 3 uses
  store ptr %.sroa.18.0.lcssa, ptr %i.ak, align 8, !tbaa !234
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 296 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !150 ; 26 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !235
  %.not.i.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.an, ptr noundef nonnull align 8 dereferenceable(320) %6, i64 32, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 3 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !147
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !98 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ac
  br i1 %i.at, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

bb.m:                                             ; preds = %bb.l
  %i.au = load i64, ptr %i.ad, align 8, !tbaa !148 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.l
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !98
  %i.ax = load i64, ptr %i.ac, align 8, !tbaa !99
  store i64 %i.ax, ptr %i.ar, align 8, !tbaa !99
  %.pre = load i64, ptr %i.ad, align 8, !tbaa !148
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.m
  %i.ay = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.au, %bb.m ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !148
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !98
  store i64 0, ptr %i.ad, align 8, !tbaa !148
  store i8 0, ptr %i.ac, align 8, !tbaa !99
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ba, ptr noundef nonnull align 8 dereferenceable(200) %i.af, i64 48, i1 false), !tbaa.struct !210
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !85
  store <2 x ptr> %i.bd, ptr %i.bb, align 8, !tbaa !85
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !211
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !211
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.bj = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !85
  store <2 x ptr> %i.bj, ptr %i.bh, align 8, !tbaa !85
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 152
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !212
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %i.bp = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !85
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !85
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 176
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !213
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 184 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !214 ; 3 uses
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !214
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !215 ; 2 uses
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !215
  %i.bz = getelementptr inbounds nuw i8, ptr %i.an, i64 200 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !216 ; 3 uses
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !217
  %i.cc = getelementptr inbounds nuw i8, ptr %i.an, i64 208
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !218
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !218
  %i.cf = getelementptr inbounds nuw i8, ptr %i.an, i64 216
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false), !tbaa.struct !220
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 232 ; 4 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !221
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 232 ; 4 uses
  %i.cj = icmp eq ptr %i.bv, %i.ci
  br i1 %i.cj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ch, ptr %i.bt, align 8, !tbaa !214
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !221
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !221
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.cl = phi ptr [ %i.ch, %bb.n ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE9push_backEOS2_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !58
  %i.co = sext i32 %i.cn to i64
  %i.cp = urem i64 %i.co, %i.by
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cp
  store ptr %i.bz, ptr %i.cq, align 8, !tbaa !222
  br label %_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE9push_backEOS2_.exit.thread

_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE9push_backEOS2_.exit.thread: ; preds = %bb.p, %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 224
  store i64 0, ptr %i.cr, align 8, !tbaa !223
  store i64 1, ptr %i.bx, align 8, !tbaa !215
end_hunk_2
begin_hunk_3_@_ZN6openzl10visualizer18CompressChunkTrace20on_migraphEncode_endEP10ZL_Graph_sP10ZL_GraphIDm18ZL_Result_size_t_u:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 336 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i8 0, i64 48, i1 false)
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !207
  store i64 %i.as, ptr %i.an, align 8, !tbaa !208
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !149 ; 30 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !209
  %.not.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !147
  %i.az = load ptr, ptr %6, align 8, !tbaa !98    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.v
  br i1 %i.ba, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.c
  store ptr %i.az, ptr %i.av, align 8, !tbaa !98
  %i.bb = load i64, ptr %i.v, align 8, !tbaa !99
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 15, ptr %i.bc, align 8, !tbaa !148
  store ptr %i.v, ptr %6, align 8, !tbaa !98
  store i64 0, ptr %i.w, align 8, !tbaa !148
  store i8 0, ptr %i.v, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 64 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 80 ; 3 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !147
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !98 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ac
  br i1 %i.bh, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bi = load i64, ptr %i.ad, align 8, !tbaa !148 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.bk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !98
  %i.bl = load i64, ptr %i.ac, align 8, !tbaa !99
  store i64 %i.bl, ptr %i.bf, align 8, !tbaa !99
  %.pre = load i64, ptr %i.ad, align 8, !tbaa !148
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i, %bb.e
  %i.bm = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ], [ %i.bi, %bb.e ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !148
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !98
  store i64 0, ptr %i.ad, align 8, !tbaa !148
  store i8 0, ptr %i.ac, align 8, !tbaa !99
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bo, ptr noundef nonnull align 8 dereferenceable(200) %i.ae, i64 48, i1 false), !tbaa.struct !210
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.br = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !85
  store <2 x ptr> %i.br, ptr %i.bp, align 8, !tbaa !85
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !211
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !211
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 0, i64 24, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 168
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.bx = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !85
  store <2 x ptr> %i.bx, ptr %i.bv, align 8, !tbaa !85
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 184
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 184
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !212
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.av, i64 192
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  %i.cd = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !85
  store <2 x ptr> %i.cd, ptr %i.cb, align 8, !tbaa !85
  %i.ce = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !213
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.av, i64 216 ; 2 uses
  %i.ci = load ptr, ptr %i.af, align 8, !tbaa !214 ; 3 uses
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !214
  %i.cj = getelementptr inbounds nuw i8, ptr %i.av, i64 224
  %i.ck = load i64, ptr %i.ah, align 8, !tbaa !215 ; 2 uses
  store i64 %i.ck, ptr %i.cj, align 8, !tbaa !215
  %i.cl = getelementptr inbounds nuw i8, ptr %i.av, i64 232 ; 2 uses
  %i.cm = load ptr, ptr %i.ai, align 8, !tbaa !216 ; 3 uses
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !217
  %i.cn = getelementptr inbounds nuw i8, ptr %i.av, i64 240
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !218
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !218
  %i.cq = getelementptr inbounds nuw i8, ptr %i.av, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !220
  %i.cr = getelementptr inbounds nuw i8, ptr %i.av, i64 264 ; 4 uses
  store ptr null, ptr %i.cr, align 8, !tbaa !221
  %i.cs = icmp eq ptr %i.ci, %i.ag
  br i1 %i.cs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  store ptr %i.cr, ptr %i.ch, align 8, !tbaa !214
  %i.ct = load ptr, ptr %i.ag, align 8, !tbaa !221
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !221
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  %i.cu = phi ptr [ %i.cr, %bb.f ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6openzl10visualizer5CodecC2EOS1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !58
  %i.cx = sext i32 %i.cw to i64
  %i.cy = urem i64 %i.cx, %i.ck
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cy
  store ptr %i.cl, ptr %i.cz, align 8, !tbaa !222
  br label %_ZN6openzl10visualizer5CodecC2EOS1_.exit

_ZN6openzl10visualizer5CodecC2EOS1_.exit:         ; preds = %bb.g, %bb.h
  store i64 0, ptr %i.ak, align 8, !tbaa !223
  store i64 1, ptr %i.ah, align 8, !tbaa !215
  store ptr null, ptr %i.ag, align 8, !tbaa !221
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.av, i64 272
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 272 ; 2 uses
  %i.dc = load <2 x ptr>, ptr %i.db, align 8, !tbaa !224
  store <2 x ptr> %i.dc, ptr %i.da, align 8, !tbaa !224
  %i.dd = getelementptr inbounds nuw i8, ptr %i.av, i64 288
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 288
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !225
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.av, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.av, i64 312
  %i.di = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !85
  store <2 x ptr> %i.di, ptr %i.dh, align 8, !tbaa !85
  %i.dj = getelementptr inbounds nuw i8, ptr %i.av, i64 328
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 328
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !88
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.av, i64 336
  %i.dn = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !85
  store <2 x ptr> %i.dn, ptr %i.dm, align 8, !tbaa !85
  %i.do = getelementptr inbounds nuw i8, ptr %i.av, i64 352
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 352
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !88
  store ptr %i.dq, ptr %i.do, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.dr = load ptr, ptr %i.au, align 8, !tbaa !149
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 360
  store ptr %i.ds, ptr %i.au, align 8, !tbaa !149
  br label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.av, ptr noundef nonnull align 8 dereferenceable(360) %6)
          to label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit unwind label %bb.q

_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZN6openzl10visualizer5CodecC2EOS1_.exit, %bb.i
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !201 ; 5 uses
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -24 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 -16 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !227 ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dt, i64 -8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !228
  %.not.i25 = icmp eq ptr %i.dw, %i.dy
  br i1 %.not.i25, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit
  %i.dz = load i64, ptr %i.aq, align 8, !tbaa !135
  store i64 %i.dz, ptr %i.dw, align 8, !tbaa !135
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.ea, ptr %i.dv, align 8, !tbaa !227
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.k:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit
  %i.eb = load ptr, ptr %i.du, align 8, !tbaa !229 ; 4 uses
  %i.ec = ptrtoint ptr %i.dw to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed                    ; 6 uses
  %i.ef = icmp eq i64 %i.ee, 9223372036854775800
  br i1 %i.ef, label %bb.l, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #29
          to label %.noexc26 unwind label %bb.q

.noexc26:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.eg = ashr exact i64 %i.ee, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.eg, i64 1)
  %8 = add nsw i64 %.sroa.speculated.i.i.i, %i.eg ; 2 uses
  %i.eh = icmp ult i64 %8, %i.eg
  %i.ei = call i64 @llvm.umin.i64(i64 %8, i64 1152921504606846975)
  %i.ej = select i1 %i.eh, i64 1152921504606846975, i64 %i.ei ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ej, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ek = shl nuw nsw i64 %i.ej, 3
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #28
          to label %.noexc27 unwind label %bb.q   ; 4 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 %i.ee ; 2 uses
  %i.en = load i64, ptr %i.aq, align 8, !tbaa !135
  store i64 %i.en, ptr %i.em, align 8, !tbaa !135
  %i.eo = icmp sgt i64 %i.ee, 0
  br i1 %i.eo, label %bb.m, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %.noexc27
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.el, ptr align 8 %i.eb, i64 %i.ee, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %.noexc27
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.not.i17.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ee) #26
  %.pre45.pre = load ptr, ptr %i.a, align 8, !tbaa !201
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %.pre45 = phi ptr [ %.pre45.pre, %bb.n ], [ %i.dt, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i ]
  store ptr %i.el, ptr %i.du, align 8, !tbaa !229
  store ptr %i.ep, ptr %i.dv, align 8, !tbaa !227
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ej
  store ptr %i.eq, ptr %i.dx, align 8, !tbaa !228
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.j
  %i.er = phi ptr [ %.pre45, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.dt, %bb.j ] ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -48
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !236 ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.er, i64 -40
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !236 ; 2 uses
  %.not43 = icmp eq ptr %i.et, %i.ev
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.r

._crit_edge:                                      ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.ex = load i64, ptr %i.aq, align 8, !tbaa !207
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %i.aq, align 8, !tbaa !207
  %i.ez = load ptr, ptr %i.ap, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 352
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !88
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #26
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i:       ; preds = %bb.o, %._crit_edge
  %i.ff = load ptr, ptr %i.ao, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 328
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !88
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fk) #26
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i:      ; preds = %bb.p, %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i
  call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.ae) #25
  %i.fl = load ptr, ptr %i.ab, align 8, !tbaa !98 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.ac
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i
  %i.fn = load i64, ptr %i.ac, align 8, !tbaa !99
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.fp = load ptr, ptr %6, align 8, !tbaa !98    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.v
  br i1 %i.fq, label %_ZN6openzl10visualizer5CodecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.fr = load i64, ptr %i.v, align 8, !tbaa !99
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #26
  br label %_ZN6openzl10visualizer5CodecD2Ev.exit

_ZN6openzl10visualizer5CodecD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEbZN6openzl10visualizer18CompressChunkTrace20on_migraphEncode_endEP10ZL_Graph_sP10ZL_GraphIDm18ZL_Result_size_t_uE3$_0ET0_T_SH_SG_T1_.exit.thread83"

bb.q:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.l, %bb.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.r:                                             ; preds = %.lr.ph, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit
  %.sroa.037.044 = phi ptr [ %i.et, %.lr.ph ], [ %i.ha, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %i.fu = load ptr, ptr %.sroa.037.044, align 8, !tbaa !231
  %i.fv = invoke ptr @ZL_Edge_getData(ptr noundef %i.fu)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.fw = invoke i32 @ZL_Data_id(ptr noundef %i.fv)
          to label %_ZL11ZL_Input_idPK10ZL_Input_s.exit unwind label %.loopexit

_ZL11ZL_Input_idPK10ZL_Input_s.exit:              ; preds = %bb.s
  store i32 %i.fw, ptr %7, align 4
  %i.fx = load i64, ptr %i.aq, align 8, !tbaa !135
  %i.fy = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.ew, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.t unwind label %bb.aa      ; 2 uses

bb.t:                                             ; preds = %_ZL11ZL_Input_idPK10ZL_Input_s.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 88
  store i64 %i.fx, ptr %i.fz, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 96
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ga = load i64, ptr %i.aq, align 8, !tbaa !207
  %i.gb = load ptr, ptr %i.at, align 8, !tbaa !136
  %i.gc = getelementptr inbounds nuw [360 x i8], ptr %i.gb, i64 %i.ga ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 312 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 320 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !140 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 328 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !88
  %.not.i29 = icmp eq ptr %i.gf, %i.gh
  br i1 %.not.i29, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gi = load i32, ptr %7, align 4, !tbaa !58
  store i32 %i.gi, ptr %i.gf, align 4, !tbaa !58
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store ptr %i.gj, ptr %i.ge, align 8, !tbaa !140
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit

bb.v:                                             ; preds = %bb.t
  %i.gk = load ptr, ptr %i.gd, align 8, !tbaa !87 ; 4 uses
  %i.gl = ptrtoint ptr %i.gf to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 6 uses
  %i.go = icmp eq i64 %i.gn, 9223372036854775804
  br i1 %i.go, label %bb.w, label %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #29
          to label %.noexc33.a unwind label %.loopexit.split-lp

.noexc33.a:                                       ; preds = %bb.w
  unreachable

_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.gp = ashr exact i64 %i.gn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i30 = call i64 @llvm.umax.i64(i64 %i.gp, i64 1)
  %9 = add nsw i64 %.sroa.speculated.i.i.i30, %i.gp ; 2 uses
  %i.gq = icmp ult i64 %9, %i.gp
  %i.gr = call i64 @llvm.umin.i64(i64 %9, i64 2305843009213693951)
  %i.gs = select i1 %i.gq, i64 2305843009213693951, i64 %i.gr ; 3 uses
  %.not.i.i.i31 = icmp ne i64 %i.gs, 0
  call void @llvm.assume(i1 %.not.i.i.i31)
  %i.gt = shl nuw nsw i64 %i.gs, 2
  %i.gu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gt) #28
          to label %.noexc34 unwind label %.loopexit ; 4 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 %i.gn ; 2 uses
  %i.gw = load i32, ptr %7, align 4, !tbaa !58
  store i32 %i.gw, ptr %i.gv, align 4, !tbaa !58
  %i.gx = icmp sgt i64 %i.gn, 0
  br i1 %i.gx, label %bb.x, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.x:                                             ; preds = %.noexc34
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gu, ptr align 4 %i.gk, i64 %i.gn, i1 false)
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.x, %.noexc34
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %.not.i17.i.i32 = icmp eq ptr %i.gk, null
  br i1 %.not.i17.i.i32, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gn) #26
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.gu, ptr %i.gd, align 8, !tbaa !87
  store ptr %i.gy, ptr %i.ge, align 8, !tbaa !140
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gs
  store ptr %i.gz, ptr %i.gg, align 8, !tbaa !88
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.037.044, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ha, %i.ev
  br i1 %.not, label %._crit_edge, label %bb.r

bb.z:                                             ; preds = %bb.r
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit:                                        ; preds = %bb.s, %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %_ZL11ZL_Input_idPK10ZL_Input_s.exit
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aa
  %.pn19 = phi { ptr, i32 } [ %i.hc, %bb.aa ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab, %bb.q
  %.pn19.pn.pn = phi { ptr, i32 } [ %i.ft, %bb.q ], [ %.pn19, %bb.ab ], [ %i.hb, %bb.z ]
  call void @_ZN6openzl10visualizer5CodecD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn19.pn.pn

bb.ad:                                            ; preds = %bb.a
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !150 ; 10 uses
  %i.hg = load ptr, ptr %i.hd, align 8, !tbaa !151
  %.not17 = icmp eq ptr %i.hf, %i.hg
  br i1 %.not17, label %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEbZN6openzl10visualizer18CompressChunkTrace20on_migraphEncode_endEP10ZL_Graph_sP10ZL_GraphIDm18ZL_Result_size_t_uE3$_0ET0_T_SH_SG_T1_.exit.thread83", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hh = getelementptr inbounds i8, ptr %i.hf, i64 -24
  %i.hi = getelementptr inbounds i8, ptr %i.hf, i64 -16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !227 ; 3 uses
  %i.hk = load ptr, ptr %i.hh, align 8, !tbaa !229 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %bb.af, label %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEbZN6openzl10visualizer18CompressChunkTrace20on_migraphEncode_endEP10ZL_Graph_sP10ZL_GraphIDm18ZL_Result_size_t_uE3$_0ET0_T_SH_SG_T1_.exit.thread83"

bb.af:                                            ; preds = %bb.ae
  %i.hm = getelementptr inbounds i8, ptr %i.hf, i64 -320
  store ptr %i.hm, ptr %i.he, align 8, !tbaa !150
  %.not.i.i.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hn = getelementptr inbounds i8, ptr %i.hf, i64 -8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !228
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hj to i64
  %i.hr = sub i64 %i.hp, %i.hq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hr) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.ag, %bb.af
  %i.hs = getelementptr inbounds i8, ptr %i.hf, i64 -48
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !233 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %i.hu = getelementptr inbounds i8, ptr %i.hf, i64 -32
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !234
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.ht to i64
  %i.hy = sub i64 %i.hw, %i.hx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.hy) #26
  br label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit.i.i:    ; preds = %bb.ah, %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %i.hz = getelementptr inbounds i8, ptr %i.hf, i64 -256
  tail call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.hz) #25
  %i.ia = getelementptr inbounds i8, ptr %i.hf, i64 -288
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !98 ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %i.hf, i64 -272 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEbZN6openzl10visualizer18CompressChunkTrace20on_migraphEncode_endEP10ZL_Graph_sP10ZL_GraphIDm18ZL_Result_size_t_uE3$_0ET0_T_SH_SG_T1_.exit.thread83", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit.i.i
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !99
  %i.if = add i64 %i.ie, 1
  tail call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #26
  br label %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEbZN6openzl10visualizer18CompressChunkTrace20on_migraphEncode_endEP10ZL_Graph_sP10ZL_GraphIDm18ZL_Result_size_t_uE3$_0ET0_T_SH_SG_T1_.exit.thread83"

"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEbZN6openzl10visualizer18CompressChunkTrace20on_migraphEncode_endEP10ZL_Graph_sP10ZL_GraphIDm18ZL_Result_size_t_uE3$_0ET0_T_SH_SG_T1_.exit.thread83": ; preds = %"_ZZN6openzl10visualizer18CompressChunkTrace20on_migraphEncode_endEP10ZL_Graph_sP10ZL_GraphIDm18ZL_Result_size_t_uENK3$_0clEbm.exit.i.thread", %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit.i.i, %bb.ad, %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEbZN6openzl10visualizer18CompressChunkTrace20on_migraphEncode_endEP10ZL_Graph_sP10ZL_GraphIDm18ZL_Result_size_t_uE3$_0ET0_T_SH_SG_T1_.exit", %_ZN6openzl10visualizer5CodecD2Ev.exit, %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEbZN6openzl10visualizer18CompressChunkTrace20on_migraphEncode_endEP10ZL_Graph_sP10ZL_GraphIDm18ZL_Result_size_t_uE3$_0ET0_T_SH_SG_T1_.exit.thread"
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 0, ptr %i.ig, align 1, !tbaa !226
  ret void
}

declare ptr @ZL_Edge_getData(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer18CompressChunkTrace23on_cctx_convertOneInputEPK9ZL_CCtx_sPK8Stream_s7ZL_TypeS8_18ZL_Result_size_t_u(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly byval(%union.ZL_Result_size_t_u) align 8 captures(none) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4 = alloca [20 x i8], align 4            ; 4 uses
  %.sroa.0.0.copyload = load i32, ptr %5, align 8
  %.not4 = icmp eq i32 %.sroa.0.0.copyload, 0
  br i1 %.not4, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.a = tail call i32 @ZL_Data_id(ptr noundef %2)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !137
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !134, !range !56, !noundef !57
  %i.e = trunc nuw i8 %i.d to i1
  store i32 %i.a, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4, i64 20, i1 false)
  br i1 %i.e, label %_ZNSt8optionalIN6openzl10visualizer18CompressChunkTrace15ConversionErrorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.c, align 8, !tbaa !134
  br label %_ZNSt8optionalIN6openzl10visualizer18CompressChunkTrace15ConversionErrorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit

_ZNSt8optionalIN6openzl10visualizer18CompressChunkTrace15ConversionErrorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8optionalIN6openzl10visualizer18CompressChunkTrace15ConversionErrorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit, %bb.a
  ret void
}

declare i32 @ZL_Data_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer18CompressChunkTrace24on_segmenterEncode_startEP14ZL_Segmenter_s(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.openzl::visualizer::Codec", align 8 ; 44 uses
  %3 = alloca %struct.ZL_DataID, align 4          ; 5 uses
  %i.a = tail call i64 @ZL_Segmenter_numInputs(ptr noundef %1) ; 5 uses
  %i.b = tail call ptr @ZL_Segmenter_getInput(ptr noundef %1, i64 noundef 0)
  %i.c = tail call i32 @ZL_Data_id(ptr noundef %i.b)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.preheader, label %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EED2Ev.exit

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE9push_backEOS2_.exit, %.preheader
  %.sroa.12.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.12.1, %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %.sroa.052.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.052.1, %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  invoke void @_ZN6openzl10visualizer18CompressChunkTrace18recordStartStreamsEPPK10ZL_Input_sm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %.sroa.052.0.lcssa, i64 noundef %i.a)
          to label %bb.h unwind label %bb.j

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE9push_backEOS2_.exit
  %.02474 = phi i64 [ %i.s, %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE9push_backEOS2_.exit ], [ 0, %.preheader ] ; 2 uses
  %.sroa.052.073 = phi ptr [ %.sroa.052.1, %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE9push_backEOS2_.exit ], [ null, %.preheader ] ; 7 uses
  %.sroa.12.072 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE9push_backEOS2_.exit ], [ null, %.preheader ] ; 5 uses
  %.sroa.9.071 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE9push_backEOS2_.exit ], [ null, %.preheader ] ; 3 uses
  %i.e = invoke ptr @ZL_Segmenter_getInput(ptr noundef %1, i64 noundef %.02474)
          to label %bb.b unwind label %.loopexit58 ; 2 uses

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq ptr %.sroa.9.071, %.sroa.12.072
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %.sroa.9.071, align 8, !tbaa !18
  br label %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE9push_backEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %.sroa.12.072 to i64
  %i.g = ptrtoint ptr %.sroa.052.073 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.e, label %_ZNKSt6vectorIPK10ZL_Input_sSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #29
          to label %.noexc unwind label %.loopexit.split-lp59

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPK10ZL_Input_sSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.j = ashr exact i64 %i.h, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.j ; 2 uses
  %i.k = icmp ult i64 %4, %i.j
  %i.l = tail call i64 @llvm.umin.i64(i64 %4, i64 1152921504606846975)
  %i.m = select i1 %i.k, i64 1152921504606846975, i64 %i.l ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28
          to label %.noexc35 unwind label %.loopexit58 ; 4 uses

.noexc35:                                         ; preds = %_ZNKSt6vectorIPK10ZL_Input_sSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %i.h ; 2 uses
  store ptr %i.e, ptr %i.p, align 8, !tbaa !18
  %i.q = icmp sgt i64 %i.h, 0
  br i1 %i.q, label %bb.f, label %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %.sroa.052.073, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.f, %.noexc35
  %.not.i17.i.i.i = icmp eq ptr %.sroa.052.073, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.052.073, i64 noundef %i.h) #26
  br label %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.m
  br label %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.c
  %.pn = phi ptr [ %i.p, %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.9.071, %bb.c ]
  %.sroa.12.1 = phi ptr [ %i.r, %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.12.072, %bb.c ] ; 2 uses
  %.sroa.052.1 = phi ptr [ %i.o, %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.052.073, %bb.c ] ; 2 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.s = add nuw i64 %.02474, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !295

.loopexit58:                                      ; preds = %.lr.ph, %_ZNKSt6vectorIPK10ZL_Input_sSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit60 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp59:                             ; preds = %bb.e
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %._crit_edge
  %.not.i.i.i = icmp eq ptr %.sroa.052.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = ptrtoint ptr %.sroa.12.0.lcssa to i64
  %i.u = ptrtoint ptr %.sroa.052.0.lcssa to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.052.0.lcssa, i64 noundef %i.v) #26
  br label %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EED2Ev.exit

bb.j:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit58, %.loopexit.split-lp59, %bb.j
  %.sroa.12.069 = phi ptr [ %.sroa.12.0.lcssa, %bb.j ], [ %.sroa.12.072, %.loopexit58 ], [ %.sroa.12.072, %.loopexit.split-lp59 ]
  %.sroa.052.065 = phi ptr [ %.sroa.052.0.lcssa, %bb.j ], [ %.sroa.052.073, %.loopexit58 ], [ %.sroa.052.073, %.loopexit.split-lp59 ] ; 3 uses
  %.pn32 = phi { ptr, i32 } [ %i.w, %bb.j ], [ %lpad.loopexit60, %.loopexit58 ], [ %lpad.loopexit.split-lp61, %.loopexit.split-lp59 ] ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %.sroa.052.065, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EED2Ev.exit37, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = ptrtoint ptr %.sroa.12.069 to i64
  %i.y = ptrtoint ptr %.sroa.052.065 to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.052.065, i64 noundef %i.z) #26
  br label %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EED2Ev.exit37

_ZNSt6vectorIPK10ZL_Input_sSaIS2_EED2Ev.exit:     ; preds = %bb.i, %bb.h, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aa, ptr noundef nonnull align 1 dereferenceable(9) @.str.36, i64 9, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 9, ptr %i.ab, align 8, !tbaa !148
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 25
  store i8 0, ptr %i.ac, align 1, !tbaa !99
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i8 0, ptr %i.ad, align 8, !tbaa !198
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !147
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !148
  store i8 0, ptr %i.ah, align 8, !tbaa !99
  %i.aj = invoke ptr @ZL_Segmenter_getLocalParams(ptr noundef %1)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  invoke void @_ZN6openzl11LocalParamsC1ERK14ZL_LocalParams(ptr noundef nonnull align 8 dereferenceable(200) %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %bb.n unwind label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.am = load i64, ptr %0, align 8, !tbaa !82
  store i64 %i.am, ptr %i.al, align 8, !tbaa !206
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 312 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i8 0, i64 48, i1 false)
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !207
  store i64 %i.as, ptr %i.an, align 8, !tbaa !208
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !149 ; 30 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !209
  %.not.i.i39 = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i39, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !147
  %i.az = load ptr, ptr %2, align 8, !tbaa !98    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aa
  br i1 %i.ba, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

bb.p:                                             ; preds = %bb.o
  %i.bb = load i64, ptr %i.ab, align 8, !tbaa !148 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.bd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.o
  store ptr %i.az, ptr %i.av, align 8, !tbaa !98
  %i.be = load i64, ptr %i.aa, align 8, !tbaa !99
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !99
  %.pre = load i64, ptr %i.ab, align 8, !tbaa !148
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.p
  %i.bf = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %i.bb, %bb.p ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !148
  store ptr %i.aa, ptr %2, align 8, !tbaa !98
  store i64 0, ptr %i.ab, align 8, !tbaa !148
  store i8 0, ptr %i.aa, align 8, !tbaa !99
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 80 ; 3 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !147
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !98 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ah
  br i1 %i.bl, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bm = load i64, ptr %i.ai, align 8, !tbaa !148 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !98
  %i.bp = load i64, ptr %i.ah, align 8, !tbaa !99
  store i64 %i.bp, ptr %i.bj, align 8, !tbaa !99
  %.pre85 = load i64, ptr %i.ai, align 8, !tbaa !148
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i, %bb.q
  %i.bq = phi i64 [ %.pre85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ], [ %i.bm, %bb.q ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !148
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !98
  store i64 0, ptr %i.ai, align 8, !tbaa !148
  store i8 0, ptr %i.ah, align 8, !tbaa !99
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bs, ptr noundef nonnull align 8 dereferenceable(200) %i.ak, i64 48, i1 false), !tbaa.struct !210
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.bv = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !85
  store <2 x ptr> %i.bv, ptr %i.bt, align 8, !tbaa !85
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !211
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !211
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.av, i64 168
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.cb = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !85
  store <2 x ptr> %i.cb, ptr %i.bz, align 8, !tbaa !85
  %i.cc = getelementptr inbounds nuw i8, ptr %i.av, i64 184
end_hunk_3
begin_hunk_4_@_ZN6openzl10visualizer18CompressChunkTrace24on_segmenterEncode_startEP14ZL_Segmenter_s:bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !218
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !218
  %i.cx = getelementptr inbounds nuw i8, ptr %i.av, i64 248
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false), !tbaa.struct !220
  %i.cz = getelementptr inbounds nuw i8, ptr %i.av, i64 264 ; 4 uses
  store ptr null, ptr %i.cz, align 8, !tbaa !221
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 4 uses
  %i.db = icmp eq ptr %i.cn, %i.da
  br i1 %i.db, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  store ptr %i.cz, ptr %i.cl, align 8, !tbaa !214
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !221
  store ptr %i.dc, ptr %i.cz, align 8, !tbaa !221
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  %i.dd = phi ptr [ %i.cz, %bb.r ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6openzl10visualizer5CodecC2EOS1_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !58
  %i.dg = sext i32 %i.df to i64
  %i.dh = urem i64 %i.dg, %i.cq
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dh
  store ptr %i.cr, ptr %i.di, align 8, !tbaa !222
  br label %_ZN6openzl10visualizer5CodecC2EOS1_.exit

_ZN6openzl10visualizer5CodecC2EOS1_.exit:         ; preds = %bb.s, %bb.t
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 256
  store i64 0, ptr %i.dj, align 8, !tbaa !223
  store i64 1, ptr %i.cp, align 8, !tbaa !215
  store ptr null, ptr %i.da, align 8, !tbaa !221
  store ptr %i.da, ptr %i.cm, align 8, !tbaa !214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i8 0, i64 16, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.av, i64 272
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.dm = load <2 x ptr>, ptr %i.dl, align 8, !tbaa !224
  store <2 x ptr> %i.dm, ptr %i.dk, align 8, !tbaa !224
  %i.dn = getelementptr inbounds nuw i8, ptr %i.av, i64 288
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !225
  store ptr %i.dp, ptr %i.dn, align 8, !tbaa !225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i8 0, i64 24, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.av, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.av, i64 312
  %i.ds = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !85
  store <2 x ptr> %i.ds, ptr %i.dr, align 8, !tbaa !85
  %i.dt = getelementptr inbounds nuw i8, ptr %i.av, i64 328
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !88
  store ptr %i.dv, ptr %i.dt, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.av, i64 336
  %i.dx = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !85
  store <2 x ptr> %i.dx, ptr %i.dw, align 8, !tbaa !85
  %i.dy = getelementptr inbounds nuw i8, ptr %i.av, i64 352
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !88
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.eb = load ptr, ptr %i.au, align 8, !tbaa !149
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 360
  store ptr %i.ec, ptr %i.au, align 8, !tbaa !149
  br label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit

bb.u:                                             ; preds = %bb.n
  invoke void @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.av, ptr noundef nonnull align 8 dereferenceable(360) %2)
          to label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit unwind label %bb.y

_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.u, %_ZN6openzl10visualizer5CodecC2EOS1_.exit
  %.not79 = icmp eq i64 %i.a, 0
  br i1 %.not79, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.z

._crit_edge78:                                    ; preds = %bb.ag, %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit
  %i.ee = load ptr, ptr %i.ap, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i41, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge78
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !88
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ej) #26
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i:       ; preds = %bb.v, %._crit_edge78
  %i.ek = load ptr, ptr %i.ao, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !88
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.ep) #26
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i:      ; preds = %bb.w, %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i
  call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.ak) #25
  %i.eq = load ptr, ptr %i.ag, align 8, !tbaa !98 ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.ah
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i
  %i.es = load i64, ptr %i.ah, align 8, !tbaa !99
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.eu = load ptr, ptr %2, align 8, !tbaa !98    ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.aa
  br i1 %i.ev, label %_ZN6openzl10visualizer5CodecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ew = load i64, ptr %i.aa, align 8, !tbaa !99
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #26
  br label %_ZN6openzl10visualizer5CodecD2Ev.exit

_ZN6openzl10visualizer5CodecD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.x:                                             ; preds = %bb.m, %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EED2Ev.exit
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ez = load ptr, ptr %i.ag, align 8, !tbaa !98 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.ah
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.fb = load i64, ptr %i.ah, align 8, !tbaa !99
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.fd = load ptr, ptr %2, align 8, !tbaa !98    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.aa
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ff = load i64, ptr %i.aa, align 8, !tbaa !99
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.y:                                             ; preds = %bb.u
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.z:                                             ; preds = %.lr.ph77, %bb.ag
  %.076 = phi i64 [ 0, %.lr.ph77 ], [ %i.gl, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.fi = invoke ptr @ZL_Segmenter_getInput(ptr noundef %1, i64 noundef %.076)
          to label %bb.aa unwind label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.fj = invoke i32 @ZL_Data_id(ptr noundef %i.fi)
          to label %_ZL11ZL_Input_idPK10ZL_Input_s.exit unwind label %.loopexit ; 3 uses

_ZL11ZL_Input_idPK10ZL_Input_s.exit:              ; preds = %bb.aa
  store i32 %i.fj, ptr %3, align 4
  %i.fk = load i64, ptr %i.aq, align 8, !tbaa !207
  %i.fl = load ptr, ptr %i.at, align 8, !tbaa !136
  %i.fm = getelementptr inbounds nuw [360 x i8], ptr %i.fl, i64 %i.fk ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 312 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 320 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !140 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 328 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !88
  %.not.i = icmp eq ptr %i.fp, %i.fr
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZL11ZL_Input_idPK10ZL_Input_s.exit
  store i32 %i.fj, ptr %i.fp, align 4, !tbaa !58
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store ptr %i.fs, ptr %i.fo, align 8, !tbaa !140
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit

bb.ac:                                            ; preds = %_ZL11ZL_Input_idPK10ZL_Input_s.exit
  %i.ft = load ptr, ptr %i.fn, align 8, !tbaa !87 ; 4 uses
  %i.fu = ptrtoint ptr %i.fp to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv                    ; 6 uses
  %i.fx = icmp eq i64 %i.fw, 9223372036854775804
  br i1 %i.fx, label %bb.ad, label %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #29
          to label %.noexc47 unwind label %.loopexit.split-lp

.noexc47:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ac
  %i.fy = ashr exact i64 %i.fw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fy, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i.i, %i.fy ; 2 uses
  %i.fz = icmp ult i64 %5, %i.fy
  %i.ga = call i64 @llvm.umin.i64(i64 %5, i64 2305843009213693951)
  %i.gb = select i1 %i.fz, i64 2305843009213693951, i64 %i.ga ; 3 uses
  %.not.i.i.i46 = icmp ne i64 %i.gb, 0
  call void @llvm.assume(i1 %.not.i.i.i46)
  %i.gc = shl nuw nsw i64 %i.gb, 2
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #28
          to label %.noexc48 unwind label %.loopexit ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %i.fw ; 2 uses
  store i32 %i.fj, ptr %i.ge, align 4, !tbaa !58
  %i.gf = icmp sgt i64 %i.fw, 0
  br i1 %i.gf, label %bb.ae, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.ae:                                            ; preds = %.noexc48
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gd, ptr align 4 %i.ft, i64 %i.fw, i1 false)
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.ae, %.noexc48
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.fw) #26
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.gd, ptr %i.fn, align 8, !tbaa !87
  store ptr %i.gg, ptr %i.fo, align 8, !tbaa !140
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gb
  store ptr %i.gh, ptr %i.fq, align 8, !tbaa !88
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.ab
  %i.gi = load i64, ptr %i.aq, align 8, !tbaa !135
  %i.gj = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.ed, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.ag unwind label %bb.ah     ; 2 uses

bb.ag:                                            ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 88
  store i64 %i.gi, ptr %i.gk, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 96
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.gl = add nuw i64 %.076, 1                    ; 2 uses
  %exitcond84.not = icmp eq i64 %i.gl, %i.a
  br i1 %exitcond84.not, label %._crit_edge78, label %bb.z, !llvm.loop !296

.loopexit:                                        ; preds = %bb.z, %bb.aa, %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ah
  %.pn28 = phi { ptr, i32 } [ %i.gm, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.y
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %bb.ai ], [ %i.fh, %bb.y ]
  call void @_ZN6openzl10visualizer5CodecD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %2) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.aj
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %bb.aj ], [ %i.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNSt6vectorIPK10ZL_Input_sSaIS2_EED2Ev.exit37

_ZNSt6vectorIPK10ZL_Input_sSaIS2_EED2Ev.exit37:   ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn32.pn = phi { ptr, i32 } [ %.pn28.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %.pn32, %bb.k ], [ %.pn32, %bb.l ]
  resume { ptr, i32 } %.pn32.pn
}

declare i64 @ZL_Segmenter_numInputs(ptr noundef) local_unnamed_addr #2

declare ptr @ZL_Segmenter_getInput(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @ZL_Segmenter_getLocalParams(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6openzl10visualizer18CompressChunkTrace22on_segmenterEncode_endEP14ZL_Segmenter_s18ZL_Result_size_t_u(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef readnone captures(none) %1, i32 %2, i64 %3) local_unnamed_addr #9 align 2 {
bb.a:
  %.not3 = icmp eq i32 %2, 0
  br i1 %.not3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !207
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw [360 x i8], ptr %i.d, i64 %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 %2, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6openzl10visualizer18CompressChunkTrace34on_ZL_Segmenter_processChunk_startEP14ZL_Segmenter_sPKmm10ZL_GraphIDPK20ZL_GraphParameters_s(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, i64 noundef %3, i32 %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer18CompressChunkTrace32on_ZL_Segmenter_processChunk_endEP14ZL_Segmenter_s18ZL_Result_size_t_u(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef readnone captures(none) %1, i32 %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6openzl10visualizer18CompressChunkTrace13finalizeTraceE18ZL_Result_size_t_u(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 %2, i64 %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !147
  %i.d = load ptr, ptr %1, align 8, !tbaa !98     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !148  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.f, ptr %i.b, align 8, !tbaa !135
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !98
  %i.i = load i64, ptr %i.b, align 8, !tbaa !135
  store i64 %i.i, ptr %i.c, align 8, !tbaa !99
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !99
  store i8 %i.k, ptr %i.j, align 1, !tbaa !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !135  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !148
  %i.n = load ptr, ptr %0, align 8, !tbaa !98
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !147
  %i.r = load ptr, ptr %2, align 8, !tbaa !98     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !148  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.t, ptr %i.a, align 8, !tbaa !135
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i5, label %._crit_edge.i.i4

.noexc.i5:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i5
  store ptr %i.v, ptr %i.p, align 8, !tbaa !98
  %i.w = load i64, ptr %i.a, align 8, !tbaa !135
  store i64 %i.w, ptr %i.q, align 8, !tbaa !99
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.t, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i4
  %i.y = load i8, ptr %i.r, align 1, !tbaa !99
  store i8 %i.y, ptr %i.x, align 1, !tbaa !99
  br label %bb.f

end_hunk_4
begin_hunk_5_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_T0_T1_":bb.a
  %i.bn = icmp sgt i64 %i.bk, 2
  br i1 %i.bn, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.036.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bo = shl i64 %.036.i.i.i20.i, 1              ; 2 uses
  %i.bp = add i64 %i.bo, 2                        ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.bp
  %i.br = or disjoint i64 %i.bo, 1                ; 2 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.br
  %.val.i.i.i.i21.i = load i32, ptr %i.bq, align 4, !tbaa !26
  %.val1.i.i.i.i22.i = load i32, ptr %i.bs, align 4, !tbaa !26
  %i.bt = icmp ult i32 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.bt, i64 %i.br, i64 %i.bp ; 4 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %spec.select.i.i.i23.i
  %i.bv = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.036.i.i.i20.i
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !58
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !58
  %i.bx = icmp slt i64 %spec.select.i.i.i23.i, %i.bm
  br i1 %i.bx, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i, !llvm.loop !308

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.by = and i64 %i.bj, 4
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.ca = add nsw i64 %i.bk, -2
  %i.cb = ashr exact i64 %i.ca, 1
  %i.cc = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.cb
  br i1 %i.cc, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.cd = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.ce = or disjoint i64 %i.cd, 1                ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i12.i
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !58
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !58
  br label %.lr.ph.i.i.i.i14.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.i.i14.i.preheader

.lr.ph.i.i.i.i14.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.011.i.i.i.i15.i.ph = phi i64 [ %.0.lcssa.i.i.i12.i, %bb.h ], [ %i.ce, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %.lr.ph.i.i.i.i14.i.preheader, %bb.i
  %.011.i.i.i.i15.i = phi i64 [ %.0912.i.i56.i.i.i, %bb.i ], [ %.011.i.i.i.i15.i.ph, %.lr.ph.i.i.i.i14.i.preheader ] ; 3 uses
  %.0912.in.i.i.i.i16.i = add nsw i64 %.011.i.i.i.i15.i, -1
  %.0912.i.i56.i.i.i = lshr i64 %.0912.in.i.i.i.i16.i, 1 ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0912.i.i56.i.i.i
  %.val.i.i.i.i.i17.i = load i32, ptr %i.ci, align 4, !tbaa !26 ; 2 uses
  %i.cj = icmp ult i32 %.val.i.i.i.i.i17.i, %.sroa.03.0.copyload.i.i10.i
  br i1 %i.cj, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i14.i
  %i.ck = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.011.i.i.i.i15.i
  store i32 %.val.i.i.i.i.i17.i, ptr %i.ck, align 4, !tbaa !58
  %.not7.i.i.i = icmp eq i64 %.0912.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.i.i14.i, !llvm.loop !309

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i14.i, %bb.h
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.h ], [ %.011.i.i.i.i15.i, %.lr.ph.i.i.i.i14.i ], [ 0, %bb.i ]
  %i.cl = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i18.i
  store i32 %.sroa.03.0.copyload.i.i10.i, ptr %i.cl, align 4, !tbaa !58
  %i.cm = icmp sgt i64 %i.bj, 4
  br i1 %i.cm, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !311

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2445 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02544 = phi i64 [ %i.co, %bb.b ], [ %2, %.lr.ph ]
  %i.cn = phi i64 [ %i.dd, %bb.b ], [ %i.d, %.lr.ph ]
  %i.co = add nsw i64 %.02544, -1                 ; 3 uses
  %i.cp = lshr i64 %i.cn, 1
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.cp ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %storemerge2445, i64 -4 ; 3 uses
  %.val.i.i.i = load i32, ptr %i.f, align 4, !tbaa !26 ; 5 uses
  %.val1.i.i.i = load i32, ptr %i.cq, align 4, !tbaa !26 ; 5 uses
  %i.cs = icmp ult i32 %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load i32, ptr %i.cr, align 4, !tbaa !26 ; 6 uses
  br i1 %i.cs, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph46
  %i.ct = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.ct, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.fr27, align 4, !tbaa !58
  store i32 %.val1.i.i.i, ptr %.fr27, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %i.cq, align 4, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cu = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  %.sroa.0.0.copyload.i.i30.i.i = load i32, ptr %.fr27, align 4, !tbaa !58 ; 2 uses
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %.val1.i27.i.i, ptr %.fr27, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i.i30.i.i, ptr %i.cr, align 4, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i32 %.val.i.i.i, ptr %.fr27, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i.i30.i.i, ptr %i.f, align 4, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph46
  %i.cv = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i.i34.i.i = load i32, ptr %.fr27, align 4, !tbaa !58
  store i32 %.val.i.i.i, ptr %.fr27, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i.i34.i.i, ptr %i.f, align 4, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.cw = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  %.sroa.0.0.copyload.i.i37.i.i = load i32, ptr %.fr27, align 4, !tbaa !58 ; 2 uses
  br i1 %i.cw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %.val1.i27.i.i, ptr %.fr27, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i.i37.i.i, ptr %i.cr, align 4, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  store i32 %.val1.i.i.i, ptr %.fr27, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i.i37.i.i, ptr %i.cq, align 4, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.cy, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2445, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i32, ptr %.fr27, align 4, !tbaa !26 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ], [ %i.cy, %bb.t ] ; 8 uses
  %.val.i.i14.i = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !26 ; 2 uses
  %i.cx = icmp ult i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.cx, label %bb.t, label %.preheader.i.i, !llvm.loop !312

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 5 uses
  %.val1.i9.i.i = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !26 ; 2 uses
  %i.cz = icmp ult i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.cz, label %.preheader.i.i, label %bb.u, !llvm.loop !313

bb.u:                                             ; preds = %.preheader.i.i
  %i.da = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.da, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEET_SF_SF_T0_.exit"

bb.v:                                             ; preds = %bb.u
  store i32 %.val1.i9.i.i, ptr %.sroa.012.1.i.i, align 4, !tbaa !58
  store i32 %.val.i.i14.i, ptr %.sroa.0.1.i.i, align 4, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i", !llvm.loop !314

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEET_SF_SF_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2445, i64 noundef %i.co)
  %i.db = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.dc = sub i64 %i.db, %i.a                     ; 2 uses
  %i.dd = ashr exact i64 %i.dc, 2                 ; 2 uses
  %i.de = icmp sgt i64 %i.dd, 16
  br i1 %i.de, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !307

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEET_SF_SF_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(360) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !136    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6openzl10visualizer5CodecESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #29
  unreachable

_ZNKSt6vectorIN6openzl10visualizer5CodecESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 360                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 25620477880152155)
  %i.k = select i1 %i.i, i64 25620477880152155, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 360
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  tail call void @_ZN6openzl10visualizer5CodecC2EOS1_(ptr noundef nonnull align 8 dereferenceable(360) %i.p, ptr noundef nonnull align 8 dereferenceable(360) %2) #25
  %i.q = tail call noundef ptr @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.o, ptr noundef nonnull align 1 dereferenceable(1) %0) #25
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  %i.s = tail call noundef ptr @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.r, ptr noundef nonnull align 1 dereferenceable(1) %0) #25
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i16 = icmp eq ptr %i.c, null
  br i1 %.not.i16, label %_ZNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6openzl10visualizer5CodecESaIS2_EE12_M_check_lenEmPKc.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !209
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.w) #26
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNKSt6vectorIN6openzl10visualizer5CodecESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !136
  store ptr %i.s, ptr %i.a, align 8, !tbaa !149
  %i.x = getelementptr inbounds nuw [360 x i8], ptr %i.o, i64 %i.k
  store ptr %i.x, ptr %i.t, align 8, !tbaa !209
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl10visualizer5CodecC2EOS1_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !147
  %i.b = load ptr, ptr %1, align 8, !tbaa !98     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !148  ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !98
  %i.i = load i64, ptr %i.c, align 8, !tbaa !99
  store i64 %i.i, ptr %i.a, align 8, !tbaa !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !148
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !148
  store ptr %i.c, ptr %1, align 8, !tbaa !98
  store i64 0, ptr %i.j, align 8, !tbaa !148
  store i8 0, ptr %i.c, align 8, !tbaa !99
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !147
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !98   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !148  ; 2 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.r, ptr %i.o, align 8, !tbaa !98
  %i.y = load i64, ptr %i.s, align 8, !tbaa !99
  store i64 %i.y, ptr %i.q, align 8, !tbaa !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !148
  store ptr %i.s, ptr %i.p, align 8, !tbaa !98
  store i64 0, ptr %i.z, align 8, !tbaa !148
  store i8 0, ptr %i.s, align 8, !tbaa !99
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ac, ptr noundef nonnull align 8 dereferenceable(200) %i.ad, i64 48, i1 false), !tbaa.struct !210
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !85
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !211
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !211
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !85
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !85
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !212
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !85
  store <2 x ptr> %i.as, ptr %i.aq, align 8, !tbaa !85
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !213
  store ptr %i.av, ptr %i.at, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !214 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !214
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !215 ; 2 uses
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !215
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !216 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !217
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !218
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !218
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !220
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !221
  %i.bl = load ptr, ptr %i.ax, align 8, !tbaa !214
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9
  store ptr %i.bk, ptr %i.aw, align 8, !tbaa !214
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !221
  store ptr %i.bo, ptr %i.bk, align 8, !tbaa !221
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9
  %i.bp = phi ptr [ %i.bk, %bb.d ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9 ]
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i, label %_ZN6openzl11LocalParamsC2EOS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !58
  %i.bs = sext i32 %i.br to i64
  %i.bt = urem i64 %i.bs, %i.bb
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bt
  store ptr %i.bc, ptr %i.bu, align 8, !tbaa !222
  br label %_ZN6openzl11LocalParamsC2EOS0_.exit

_ZN6openzl11LocalParamsC2EOS0_.exit:              ; preds = %bb.e, %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i64 0, ptr %i.bv, align 8, !tbaa !223
  store i64 1, ptr %i.ba, align 8, !tbaa !215
  store ptr null, ptr %i.bm, align 8, !tbaa !221
  store ptr %i.bm, ptr %i.ax, align 8, !tbaa !214
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.by = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !224
  store <2 x ptr> %i.by, ptr %i.bw, align 8, !tbaa !224
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !225
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !225
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.cg = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !85
  store <2 x ptr> %i.cg, ptr %i.ce, align 8, !tbaa !85
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !88
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.cm = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !85
  store <2 x ptr> %i.cm, ptr %i.ck, align 8, !tbaa !85
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !88
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not10.i.i = icmp eq ptr %0, %1
  br i1 %.not10.i.i, label %_ZSt12__relocate_aIPN6openzl10visualizer5CodecES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt19__relocate_object_aIN6openzl10visualizer5CodecES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i
  %.012.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aIN6openzl10visualizer5CodecES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ], [ %2, %bb.a ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.aa, %_ZSt19__relocate_object_aIN6openzl10visualizer5CodecES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ], [ %0, %bb.a ] ; 11 uses
  tail call void @_ZN6openzl10visualizer5CodecC2EOS1_(ptr noundef nonnull align 8 dereferenceable(360) %.012.i.i, ptr noundef nonnull align 8 dereferenceable(360) %.0911.i.i) #25
  %i.a = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 336
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87, !alias.scope !319, !noalias !320 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 352
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88, !alias.scope !319, !noalias !320
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i.i.i.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 312
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87, !alias.scope !319, !noalias !320 ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 328
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88, !alias.scope !319, !noalias !320
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i.i.i.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i.i.i.i: ; preds = %bb.c, %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 96
  tail call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.o) #25
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98, !alias.scope !319, !noalias !320 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !99, !alias.scope !319, !noalias !320
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.v = load ptr, ptr %.0911.i.i, align 8, !tbaa !98, !alias.scope !319, !noalias !320 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZSt19__relocate_object_aIN6openzl10visualizer5CodecES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !99, !alias.scope !319, !noalias !320
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #26
  br label %_ZSt19__relocate_object_aIN6openzl10visualizer5CodecES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i

_ZSt19__relocate_object_aIN6openzl10visualizer5CodecES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 360 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 360 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN6openzl10visualizer5CodecES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !318

_ZSt12__relocate_aIPN6openzl10visualizer5CodecES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt19__relocate_object_aIN6openzl10visualizer5CodecES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.ab, %_ZSt19__relocate_object_aIN6openzl10visualizer5CodecES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNO6openzl16ExceptionBuilder5buildEv(ptr dead_on_unwind writable sret(%"class.openzl::Exception") align 8, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl9ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6openzl9ExceptionE, i64 16), ptr %0, align 8, !tbaa !103
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !99
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !99
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl9ExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(105) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6openzl9ExceptionE, i64 16), ptr %0, align 8, !tbaa !103
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !99
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26, !inline_history !321
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6openzl9ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !99
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26, !inline_history !321
  br label %_ZN6openzl9ExceptionD2Ev.exit

_ZN6openzl9ExceptionD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(105) %0) #25, !inline_history !321
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #26
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(320) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !151    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6openzl10visualizer5GraphESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #29
  unreachable

_ZNKSt6vectorIN6openzl10visualizer5GraphESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 320                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 28823037615171174)
  %i.k = select i1 %i.i, i64 28823037615171174, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 320
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  tail call void @_ZN6openzl10visualizer5GraphC2EOS1_(ptr noundef nonnull align 8 dereferenceable(320) %i.p, ptr noundef nonnull align 8 dereferenceable(320) %2) #25
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6openzl10visualizer5GraphESaIS2_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aIN6openzl10visualizer5GraphES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %_ZSt19__relocate_object_aIN6openzl10visualizer5GraphES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNKSt6vectorIN6openzl10visualizer5GraphESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.al, %_ZSt19__relocate_object_aIN6openzl10visualizer5GraphES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6openzl10visualizer5GraphESaIS2_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  tail call void @_ZN6openzl10visualizer5GraphC2EOS1_(ptr noundef nonnull align 8 dereferenceable(320) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(320) %.0911.i.i.i) #25
  %i.q = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 296
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !229, !alias.scope !329, !noalias !330 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 312
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !228, !alias.scope !329, !noalias !330
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.c, %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 272
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !233, !alias.scope !329, !noalias !330 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 288
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !234, !alias.scope !329, !noalias !330
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #26
  br label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  tail call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.ae) #25
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !98, !alias.scope !329, !noalias !330 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZSt19__relocate_object_aIN6openzl10visualizer5GraphES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit.i.i.i.i.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !99, !alias.scope !329, !noalias !330
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #26
  br label %_ZSt19__relocate_object_aIN6openzl10visualizer5GraphES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6openzl10visualizer5GraphES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 320 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 320 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !325

_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6openzl10visualizer5GraphES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorIN6openzl10visualizer5GraphESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt6vectorIN6openzl10visualizer5GraphESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.am, %_ZSt19__relocate_object_aIN6openzl10visualizer5GraphES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 320 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6openzl10visualizer5GraphES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i25
  %.012.i.i.i18 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN6openzl10visualizer5GraphES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i25 ], [ %i.an, %_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bj, %_ZSt19__relocate_object_aIN6openzl10visualizer5GraphES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i25 ], [ %1, %_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 9 uses
  tail call void @_ZN6openzl10visualizer5GraphC2EOS1_(ptr noundef nonnull align 8 dereferenceable(320) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(320) %.0911.i.i.i19) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 296
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !229, !alias.scope !331, !noalias !332 ; 3 uses
  %.not.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i20, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i21, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 312
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !228, !alias.scope !331, !noalias !332
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i21

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i21:        ; preds = %bb.e, %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 272
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !233, !alias.scope !331, !noalias !332 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i22 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i1.i.i.i.i.i22, label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit.i.i.i.i.i23, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i21
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 288
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !234, !alias.scope !331, !noalias !332
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #26
  br label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit.i.i.i.i.i23

_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit.i.i.i.i.i23: ; preds = %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i21
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  tail call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.bc) #25
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !98, !alias.scope !331, !noalias !332 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZSt19__relocate_object_aIN6openzl10visualizer5GraphES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i24: ; preds = %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit.i.i.i.i.i23
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !99, !alias.scope !331, !noalias !332
  %i.bi = add i64 %i.bh, 1
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #26
  br label %_ZSt19__relocate_object_aIN6openzl10visualizer5GraphES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i25

_ZSt19__relocate_object_aIN6openzl10visualizer5GraphES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i25: ; preds = %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit.i.i.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i24
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 320 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 320 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bj, %i.b
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29, label %.lr.ph.i.i.i17, !llvm.loop !325

_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29: ; preds = %_ZSt19__relocate_object_aIN6openzl10visualizer5GraphES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i25, %_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i27 = phi ptr [ %i.an, %_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bk, %_ZSt19__relocate_object_aIN6openzl10visualizer5GraphES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i25 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i30 = icmp eq ptr %i.c, null
  br i1 %.not.i30, label %_ZNSt12_Vector_baseIN6openzl10visualizer5GraphESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !235
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bo) #26
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer5GraphESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6openzl10visualizer5GraphESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !151
  store ptr %.0.lcssa.i.i.i27, ptr %i.a, align 8, !tbaa !150
  %i.bp = getelementptr inbounds nuw [320 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !235
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl10visualizer5GraphC2EOS1_(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !98   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !148  ; 2 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !98
  %i.k = load i64, ptr %i.e, align 8, !tbaa !99
  store i64 %i.k, ptr %i.c, align 8, !tbaa !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !148
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !148
  store ptr %i.e, ptr %i.b, align 8, !tbaa !98
  store i64 0, ptr %i.l, align 8, !tbaa !148
  store i8 0, ptr %i.e, align 8, !tbaa !99
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.o, ptr noundef nonnull align 8 dereferenceable(200) %i.p, i64 48, i1 false), !tbaa.struct !210
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.r, align 8, !tbaa !85
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !211
  store ptr %i.v, ptr %i.t, align 8, !tbaa !211
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !85
  store <2 x ptr> %i.y, ptr %i.w, align 8, !tbaa !85
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !212
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160
end_hunk_5
