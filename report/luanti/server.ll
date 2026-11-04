Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/server?download=true
inline.NumInlined: 8811
inline.NumDeleted: 3490
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6Server12findSpawnPosEv:.noexc.i
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !140
  %i.i = load i64, ptr %i.a, align 8, !tbaa !145  ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.h, ptr noundef nonnull align 1 dereferenceable(17) @.str.284, i64 17, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !146
  %i.k = load ptr, ptr %2, align 8, !tbaa !140
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.m = invoke noundef zeroext i1 @_ZNK8Settings10getV3FNoExERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIN4core8vector3dIfEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(16) %1)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc.i
  br i1 %i.m, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.n = load i8, ptr %i.e, align 4, !tbaa !1704, !range !141, !noundef !93
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load ptr, ptr %2, align 8, !tbaa !140    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.g
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.r = load i64, ptr %i.g, align 8, !tbaa !120
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load <2 x float>, ptr %1, align 8, !tbaa !427
  %i.u = fmul nsz <2 x float> %i.t, splat (float 1.000000e+01)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load float, ptr %i.v, align 8, !tbaa !782
  %i.x = fmul nsz float %i.w, 1.000000e+01
  br label %bb.p

bb.d:                                             ; preds = %.noexc.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !140    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.g
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.d
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !120
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %i.y

.critedge:                                        ; preds = %bb.a
  %i.ad = load ptr, ptr %2, align 8, !tbaa !140   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.g
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %.critedge
  %i.af = load i64, ptr %i.g, align 8, !tbaa !120
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = call noundef ptr @_ZN9ServerMap15getMapgenParamsEv(ptr noundef nonnull align 8 dereferenceable(608) %i.d)
  %i.ai = call noundef i32 @_ZN12MapgenParams16getSpawnRangeMaxEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 768
  br label %bb.g

bb.f:                                             ; preds = %.loopexit
  br i1 %.4, label %bb.p, label %bb.o

bb.g:                                             ; preds = %bb.e, %.loopexit
  %.056125 = phi i32 [ 0, %bb.e ], [ %i.al, %.loopexit ] ; 2 uses
  %.sroa.096.0124 = phi <2 x float> [ zeroinitializer, %bb.e ], [ %.sroa.096.4, %.loopexit ] ; 2 uses
  %.sroa.697.0123 = phi float [ 0.000000e+00, %bb.e ], [ %.sroa.697.4, %.loopexit ] ; 2 uses
  %i.al = add nuw nsw i32 %.056125, 1             ; 2 uses
  %i.am = call i32 @llvm.smin.i32(i32 %i.al, i32 %i.ai) ; 3 uses
  %i.an = shl nsw i32 %i.am, 1                    ; 2 uses
  %i.ao = call noundef i32 @_Z12myrand_rangeii(i32 noundef 0, i32 noundef %i.an)
  %i.ap = sub nsw i32 %i.ao, %i.am                ; 4 uses
  %i.aq = call noundef i32 @_Z12myrand_rangeii(i32 noundef 0, i32 noundef %i.an)
  %i.ar = sub nsw i32 %i.aq, %i.am                ; 3 uses
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !430
  %.sroa.5.0.insert.ext = shl i32 %i.ar, 16
  %.sroa.095.0.insert.ext = and i32 %i.ap, 65535  ; 2 uses
  %.sroa.095.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.ext, %.sroa.095.0.insert.ext
  %i.at = call noundef i32 @_ZN13EmergeManager20getSpawnLevelAtPointEN4core8vector2dIsEE(ptr noundef nonnull align 8 dereferenceable(480) %i.as, i32 %.sroa.095.0.insert.insert) ; 2 uses
  %sext = shl i32 %i.at, 16
  %i.au = ashr exact i32 %sext, 16
  %i.av = add nsw i32 %i.au, -31007
  %or.cond = icmp ult i32 %i.av, -62013
  br i1 %or.cond, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = trunc i32 %i.at to i16
  %.mask = and i32 %i.ar, 65535
  %.sroa.11.0.insert.ext91 = zext nneg i32 %.mask to i48
  %.sroa.11.0.insert.shift92 = shl nuw i48 %.sroa.11.0.insert.ext91, 32 ; 3 uses
  %.sroa.071.0.insert.ext75 = zext nneg i32 %.sroa.095.0.insert.ext to i48
  %sext117 = shl i32 %i.ap, 16
  %i.ax = ashr exact i32 %sext117, 16             ; 2 uses
  %i.ay = add nsw i32 %i.ax, -15
  %i.az = and i32 %i.ap, 32768
  %.not = icmp eq i32 %i.az, 0
  %i.ba = select i1 %.not, i32 %i.ax, i32 %i.ay
  %i.bb = sdiv i32 %i.ba, 16
  %i.bc = ashr exact i48 %.sroa.11.0.insert.shift92, 32
  %i.bd = trunc nsw i48 %i.bc to i32              ; 2 uses
  %i.be = add nsw i32 %i.bd, -15
  %i.bf = icmp slt i48 %.sroa.11.0.insert.shift92, 0
  %i.bg = select i1 %i.bf, i32 %i.be, i32 %i.bd
  %i.bh = sdiv i32 %i.bg, 16
  %.mask.i.i = and i32 %i.bh, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %.mask5.i.i = and i32 %i.bb, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %invariant.op119 = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %invariant.op = or disjoint i48 %.sroa.071.0.insert.ext75, %.sroa.11.0.insert.shift92
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.n
  %.057122 = phi i32 [ 0, %bb.h ], [ %.158, %bb.n ] ; 2 uses
  %.060121 = phi i32 [ 0, %bb.h ], [ %i.da, %bb.n ]
  %.sroa.6.0120 = phi i16 [ %i.aw, %bb.h ], [ %i.cz, %bb.n ] ; 5 uses
  %.sroa.6.0.insert.ext82 = zext i16 %.sroa.6.0120 to i48
  %.sroa.6.0.insert.shift83 = shl nuw nsw i48 %.sroa.6.0.insert.ext82, 16
  %.sroa.071.0.insert.insert77.reass.reass.reass = or disjoint i48 %.sroa.6.0.insert.shift83, %invariant.op
  %i.bi = sext i16 %.sroa.6.0120 to i32           ; 2 uses
  %i.bj = add nsw i32 %i.bi, -15
  %i.bk = icmp slt i16 %.sroa.6.0120, 0
  %i.bl = select i1 %i.bk, i32 %i.bj, i32 %i.bi
  %i.bm = sdiv i32 %i.bl, 16
  %i.bn = shl nsw i32 %i.bm, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.bn to i48
  %.sroa.0.0.insert.insert.i.i.reass = or disjoint i48 %invariant.op119, %.sroa.2.0.insert.shift.i.i
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(608) %i.d, i48 %.sroa.0.0.insert.insert.i.i.reass, i1 noundef zeroext true) ; 0 uses
  %i.bs = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.d, i48 %.sroa.071.0.insert.insert77.reass.reass.reass, ptr noundef null)
  %i.bt = load ptr, ptr %i.ak, align 8, !tbaa !572 ; 2 uses
  %.sroa.0.0.extract.trunc.mask = and i32 %i.bs, 65535 ; 2 uses
  %i.bu = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !644
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !643 ; 3 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 2072
  %i.cc = icmp ugt i64 %i.cb, %i.bu
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw [2072 x i8], ptr %i.bx, i64 %i.bu ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !146
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.k, label %_ZNK14NodeDefManager3getEt.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 259000
  br label %_ZNK14NodeDefManager3getEt.exit

_ZNK14NodeDefManager3getEt.exit:                  ; preds = %bb.j, %bb.k
  %i.ci = phi ptr [ %i.ch, %bb.k ], [ %i.cd, %bb.j ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 98
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !1721
  %i.cl = icmp eq i8 %i.ck, 1
  %i.cm = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 127
  %or.cond5 = or i1 %i.cm, %i.cl
  br i1 %or.cond5, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZNK14NodeDefManager3getEt.exit
  %i.cn = add nsw i32 %.057122, 1
  %i.co = icmp sgt i32 %.057122, 0
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cp = add i16 %.sroa.6.0120, -1
  %.sroa.013.0.extract.trunc.i = trunc i32 %i.ap to i16
  %.sroa.3.0.extract.trunc.i = trunc i32 %i.ar to i16
  %i.cq = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.cr = insertelement <2 x i16> poison, i16 %.sroa.013.0.extract.trunc.i, i64 0
  %i.cs = insertelement <2 x i16> %i.cr, i16 %i.cp, i64 1
  %i.ct = sitofp nsz <2 x i16> %i.cs to <2 x float>
  %i.cu = fmul nnan nsz <2 x float> %i.ct, splat (float 1.000000e+01) ; 2 uses
  %i.cv = fmul nnan nsz float %i.cq, 1.000000e+01 ; 2 uses
  %i.cw = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cu)
  %3 = fcmp nsz ule <2 x float> %i.cw, splat (float 3.100750e+05) ; 2 uses
  %4 = extractelement <2 x i1> %3, i64 0
  %5 = extractelement <2 x i1> %3, i64 1
  %or.cond8.i.not115 = select i1 %4, i1 %5, i1 false
  %i.cx = call nsz float @llvm.fabs.f32(float %i.cv)
  %i.cy = fcmp nsz ule float %i.cx, 3.100750e+05
  %.not113 = select i1 %or.cond8.i.not115, i1 %i.cy, i1 false
  br label %.loopexit

bb.n:                                             ; preds = %bb.l, %_ZNK14NodeDefManager3getEt.exit
  %.158 = phi i32 [ %i.cn, %bb.l ], [ 0, %_ZNK14NodeDefManager3getEt.exit ]
  %i.cz = add i16 %.sroa.6.0120, 1
  %i.da = add nuw nsw i32 %.060121, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.da, 8
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1701

.loopexit:                                        ; preds = %bb.n, %bb.m, %bb.g
  %.sroa.697.4 = phi nsz float [ %.sroa.697.0123, %bb.g ], [ %i.cv, %bb.m ], [ %.sroa.697.0123, %bb.n ] ; 2 uses
  %.sroa.096.4 = phi nsz <2 x float> [ %.sroa.096.0124, %bb.g ], [ %i.cu, %bb.m ], [ %.sroa.096.0124, %bb.n ] ; 2 uses
  %.4 = phi i1 [ false, %bb.g ], [ %.not113, %bb.m ], [ false, %bb.n ] ; 2 uses
  %i.db = icmp samesign ugt i32 %.056125, 3998
  %.not64 = select i1 %i.db, i1 true, i1 %.4
  br i1 %.not64, label %bb.f, label %bb.g, !llvm.loop !1702

bb.o:                                             ; preds = %bb.f
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f, %bb.c
  %.sroa.099.1 = phi nsz <2 x float> [ %i.u, %bb.c ], [ zeroinitializer, %bb.o ], [ %.sroa.096.4, %bb.f ]
  %.sroa.5101.1 = phi nsz float [ %i.x, %bb.c ], [ 0.000000e+00, %bb.o ], [ %.sroa.697.4, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.099.1, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.5101.1, 1
  ret { <2 x float>, float } %.fca.1.insert
}

declare noundef zeroext i1 @_ZNK8Settings10getV3FNoExERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIN4core8vector3dIfEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #8

declare noundef i32 @_ZN12MapgenParams16getSpawnRangeMaxEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #8

declare noundef i32 @_Z12myrand_rangeii(i32 noundef, i32 noundef) local_unnamed_addr #8

declare noundef i32 @_ZN13EmergeManager20getSpawnLevelAtPointEN4core8vector2dIsEE(ptr noundef nonnull align 8 dereferenceable(480), i32) local_unnamed_addr #8

declare i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144), i48, ptr noundef) local_unnamed_addr #8

; Function Attrs: uwtable
define dso_local void @_ZN6Server15requestShutdownERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbf(ptr noundef nonnull align 8 dereferenceable(1880) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, float noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.ChatMessage, align 8        ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string.390", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %struct.ChatMessage, align 8        ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string.390", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = fcmp nsz oeq float %3, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store i8 1, ptr %i.f, align 8, !tbaa !627
  %.not.i = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i, label %_ZTW10infostream.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.b, %bb.c
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92, !nonnull !93, !align !94 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !inline_history !34
  %.v.i = select i1 %i.k, i64 976, i64 984
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %.v.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.285, ptr %i.d, align 8, !tbaa !97
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !98   ; 5 uses
  %.not.i29 = icmp eq ptr %i.n, null
  br i1 %.not.i29, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.d

bb.d:                                             ; preds = %_ZTW10infostream.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !96
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !106
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !98 ; 2 uses
  %.pre120 = load ptr, ptr %.pre.i, align 8, !tbaa !96
  %.phi.trans.insert121 = getelementptr i8, ptr %.pre120, i64 -24
  %.pre122 = load i64, ptr %.phi.trans.insert121, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = phi i64 [ %.pre122, %bb.e ], [ %i.q, %bb.d ]
  %i.w = phi ptr [ %.pre.i, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 240
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !113  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt16__throw_bad_castv() #35
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !119
  %.not.i1.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !120
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.z)
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !96
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef signext i8 %i.ag(ptr noundef nonnull align 8 dereferenceable(570) %i.z, i8 noundef signext 10), !inline_history !14
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi i8 [ %i.ad, %bb.h ], [ %i.ah, %bb.i ]
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext %.0.i.i.i)
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.j:                                             ; preds = %bb.a
  %i.ak = fcmp nsz olt float %3, 0.000000e+00     ; 2 uses
  br i1 %i.ak, label %bb.k, label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.am = load float, ptr %i.al, align 8, !tbaa !545
  %i.an = fcmp nsz ogt float %i.am, 0.000000e+00
  br i1 %i.an, label %bb.l, label %bb.aa

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store float 0.000000e+00, ptr %i.al, align 8, !tbaa !545
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store i64 0, ptr %i.aq, align 8, !tbaa !146
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !140
  store i8 0, ptr %i.ar, align 1, !tbaa !120
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1241
  store i8 0, ptr %i.as, align 1, !tbaa !546
  store i8 0, ptr %i.ao, align 8, !tbaa !547
  %.not.i30 = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i30, label %_ZTW10infostream.exit31, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit31

_ZTW10infostream.exit31:                          ; preds = %bb.l, %bb.m
  %i.at = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !92, !nonnull !93, !align !94 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !96
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.au), !inline_history !1722
  %.v.i32 = select i1 %i.ax, i64 976, i64 984
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %.v.i32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.286, ptr %i.c, align 8, !tbaa !97
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !98 ; 5 uses
  %.not.i33 = icmp eq ptr %i.ba, null
  br i1 %.not.i33, label %_ZN11StreamProxylsEPFRSoS0_E.exit35, label %bb.n

bb.n:                                             ; preds = %_ZTW10infostream.exit31
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !96
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !106
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  %.pre.i34 = load ptr, ptr %i.ay, align 8, !tbaa !98 ; 2 uses
  %.pre117 = load ptr, ptr %.pre.i34, align 8, !tbaa !96
end_hunk_0
