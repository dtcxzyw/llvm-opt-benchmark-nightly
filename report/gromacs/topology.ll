Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/topology?download=true
inline.NumInlined: 818
inline.NumDeleted: 463
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z17compareAtomGroupsP8_IO_FILERK16SimulationGroupsS3_ii:bb.a
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 2
  %i.cj = icmp slt i64 %i.cc, %i.ci
  br i1 %i.cj, label %.lr.ph, label %.loopexit79, !llvm.loop !203

bb.n:                                             ; preds = %.lr.ph
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.v

.loopexit79:                                      ; preds = %bb.m, %bb.d
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv86 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !173
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !121
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv86 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !173
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !121
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = trunc i64 %i.cz to i32
  invoke void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.100, i32 noundef %i.l, i32 noundef %i.cs, i32 noundef %i.da)
          to label %bb.o unwind label %bb.e

bb.o:                                             ; preds = %.loopexit79
  %i.db = load ptr, ptr %i.cm, align 8, !tbaa !173 ; 2 uses
  %i.dc = load ptr, ptr %i.cl, align 8, !tbaa !121 ; 2 uses
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = trunc i64 %i.df to i32
  %i.dh = load ptr, ptr %i.cu, align 8, !tbaa !173 ; 2 uses
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !121 ; 2 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = icmp eq i32 %i.dg, %i.dm
  %or.cond = and i1 %i.j, %i.dn
  br i1 %or.cond, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.do = icmp eq ptr %i.dc, %i.db
  %i.dp = icmp eq ptr %i.di, %i.dh
  %or.cond77 = and i1 %i.do, %i.dp
  %brmerge = or i1 %or.cond77, %i.k
  br i1 %brmerge, label %.loopexit, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @__const._Z9shortName23SimulationAtomGroupType.sc_simulationAtomGroupTypeShortNames, i64 %indvars.iv86
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph82, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph82 ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %i.ds = load ptr, ptr %i.cl, align 8, !tbaa !9  ; 2 uses
  %i.dt = load ptr, ptr %i.cm, align 8, !tbaa !9
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_Z12getGroupTypeRK16SimulationGroups23SimulationAtomGroupTypei.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !174
  %i.dx = zext i8 %i.dw to i32
  br label %_Z12getGroupTypeRK16SimulationGroups23SimulationAtomGroupTypei.exit

_Z12getGroupTypeRK16SimulationGroups23SimulationAtomGroupTypei.exit: ; preds = %bb.q, %bb.r
  %i.dy = phi i32 [ %i.dx, %bb.r ], [ 0, %bb.q ]
  %i.dz = load ptr, ptr %i.ct, align 8, !tbaa !9  ; 2 uses
  %i.ea = load ptr, ptr %i.cu, align 8, !tbaa !9
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_Z12getGroupTypeRK16SimulationGroups23SimulationAtomGroupTypei.exit67, label %bb.s

bb.s:                                             ; preds = %_Z12getGroupTypeRK16SimulationGroups23SimulationAtomGroupTypei.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !174
  %i.ee = zext i8 %i.ed to i32
  br label %_Z12getGroupTypeRK16SimulationGroups23SimulationAtomGroupTypei.exit67

_Z12getGroupTypeRK16SimulationGroups23SimulationAtomGroupTypei.exit67: ; preds = %_Z12getGroupTypeRK16SimulationGroups23SimulationAtomGroupTypei.exit, %bb.s
  %i.ef = phi i32 [ %i.ee, %bb.s ], [ 0, %_Z12getGroupTypeRK16SimulationGroups23SimulationAtomGroupTypei.exit ]
  %i.eg = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef %i.dr, i32 noundef %i.eg, i32 noundef %i.dy, i32 noundef %i.ef)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %_Z12getGroupTypeRK16SimulationGroups23SimulationAtomGroupTypei.exit67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.q, !llvm.loop !204

bb.u:                                             ; preds = %_Z12getGroupTypeRK16SimulationGroups23SimulationAtomGroupTypei.exit67
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit:                                        ; preds = %bb.t, %bb.p, %bb.o
  %i.ei = load ptr, ptr %5, align 8, !tbaa !189   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.b
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %.loopexit
  %i.ek = load i64, ptr %i.b, align 8, !tbaa !174
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next87, 10
  br i1 %.not, label %bb.b, label %bb.c

bb.v:                                             ; preds = %bb.f, %bb.n, %bb.u, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %i.eh, %bb.u ], [ %i.as, %bb.f ], [ %i.ck, %bb.n ]
  %i.em = load ptr, ptr %5, align 8, !tbaa !189   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.b
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.v
  %i.eo = load i64, ptr %i.b, align 8, !tbaa !174
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn.pn
}

declare void @_Z10cmp_doubleP8_IO_FILEPKcidddd(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #3

declare noundef zeroext i1 @_Z10equal_realffff(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @_Z10pr_iparamsP8_IO_FILE19InteractionFunctionRK9t_iparams(ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(48)) local_unnamed_addr #3

declare void @_Z12compareAtomsP8_IO_FILEPK7t_atomsS3_ff(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z13compareMtopABP8_IO_FILERK10gmx_mtop_tff(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %1, float noundef %2, float noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = tail call i64 @fwrite(ptr nonnull @.str.93, i64 16, i64 1, ptr %0) ; 0 uses
  %i.b = tail call i64 @fwrite(ptr nonnull @.str.94, i64 33, i64 1, ptr %0) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !183
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !119
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 2
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %_ZL16compareFfparamABP8_IO_FILERK14gmx_ffparams_tff.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.59, i32 noundef %i.o)
  %i.p = load ptr, ptr %4, align 8, !tbaa !189
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !119
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !193  ; 3 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !117
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %indvars.iv.i ; 3 uses
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !205
  %i.z = icmp eq i32 %i.s, 19
  br i1 %i.z, label %.lr.ph.preheader.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !206
  %i.ac = and i32 %i.ab, 256
  %.not.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.not.i.i, label %bb.d, label %.lr.ph.preheader.i.i

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !207 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %_ZL12cmp_iparm_ABP8_IO_FILEPKc19InteractionFunctionRK9t_iparamsff.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d, %bb.c, %bb.b
  %.02233.i.i = phi i32 [ %i.ae, %bb.d ], [ 2, %bb.b ], [ 1, %bb.c ]
  %.02332.i.i = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 1, %bb.c ]
  %i.ag = sext i32 %i.y to i64
  %i.ah = zext nneg i32 %.02233.i.i to i64
  %invariant.gep.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.02332.i.i
  %invariant.gep34.i.i = getelementptr [4 x i8], ptr %i.u, i64 %i.ag
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i
  br i1 %i.ak, label %_ZL12cmp_iparm_ABP8_IO_FILEPKc19InteractionFunctionRK9t_iparamsff.exit.i, label %bb.e

.lr.ph.i.i:                                       ; preds = %.noexc.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.noexc.i ] ; 3 uses
  %gep.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.ai = load float, ptr %gep.i.i, align 4, !tbaa !174
  %gep35.i.i = getelementptr [4 x i8], ptr %invariant.gep34.i.i, i64 %indvars.iv.i.i
  %i.aj = load float, ptr %gep35.i.i, align 4, !tbaa !174
  %i.ak = invoke noundef zeroext i1 @_Z10equal_realffff(float noundef %i.ai, float noundef %i.aj, float noundef %2, float noundef %3)
          to label %.noexc.i unwind label %.loopexit.i ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.al = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ah
  %.not26.not.i.i = and i1 %i.al, %i.ak
  br i1 %.not26.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !208

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.am = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef %i.p) #21 ; 0 uses
  invoke void @_Z10pr_iparamsP8_IO_FILE19InteractionFunctionRK9t_iparams(ptr noundef %0, i32 noundef %i.s, ptr noundef nonnull align 4 dereferenceable(48) %i.u)
          to label %_ZL12cmp_iparm_ABP8_IO_FILEPKc19InteractionFunctionRK9t_iparamsff.exit.i unwind label %.loopexit.split-lp.i

_ZL12cmp_iparm_ABP8_IO_FILEPKc19InteractionFunctionRK9t_iparamsff.exit.i: ; preds = %bb.e, %._crit_edge.i.i, %bb.d
  %i.an = load ptr, ptr %4, align 8, !tbaa !189   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.n
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZL12cmp_iparm_ABP8_IO_FILEPKc19InteractionFunctionRK9t_iparamsff.exit.i
  %i.ap = load i64, ptr %i.n, align 8, !tbaa !174
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZL12cmp_iparm_ABP8_IO_FILEPKc19InteractionFunctionRK9t_iparamsff.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !183
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !119
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %sext.i = shl i64 %i.av, 30
  %i.aw = ashr i64 %sext.i, 32
  %i.ax = icmp slt i64 %indvars.iv.next.i, %i.aw
  br i1 %i.ax, label %bb.b, label %_ZL16compareFfparamABP8_IO_FILERK14gmx_ffparams_tff.exit, !llvm.loop !209

.loopexit.i:                                      ; preds = %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ay = load ptr, ptr %4, align 8, !tbaa !189   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.n
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i: ; preds = %bb.f
  %i.ba = load i64, ptr %i.n, align 8, !tbaa !174
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %lpad.phi.i

_ZL16compareFfparamABP8_IO_FILERK14gmx_ffparams_tff.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !105 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !106
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = call i64 @fwrite(ptr nonnull @.str.96, i64 37, i64 1, ptr %0) ; 0 uses
  %i.bk = icmp sgt i64 %i.bi, 0
  br i1 %i.bk, label %.lr.ph.preheader.i, label %_ZL17compareMoletypeABP8_IO_FILEN3gmx8ArrayRefIK13gmx_moltype_tEEff.exit

.lr.ph.preheader.i:                               ; preds = %_ZL16compareFfparamABP8_IO_FILERK14gmx_ffparams_tff.exit
  %i.bl = udiv exact i64 %i.bi, 2408
  br label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph.i9, %.lr.ph.preheader.i
  %.06.i = phi i64 [ %i.bo, %.lr.ph.i9 ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [2408 x i8], ptr %i.bd, i64 %.06.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @_Z12compareAtomsP8_IO_FILEPK7t_atomsS3_ff(ptr noundef %0, ptr noundef nonnull %i.bn, ptr noundef null, float noundef %2, float noundef %3)
  %i.bo = add nuw nsw i64 %.06.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bo, %i.bl
  br i1 %exitcond.not.i, label %_ZL17compareMoletypeABP8_IO_FILEN3gmx8ArrayRefIK13gmx_moltype_tEEff.exit, label %.lr.ph.i9, !llvm.loop !210

_ZL17compareMoletypeABP8_IO_FILEN3gmx8ArrayRefIK13gmx_moltype_tEEff.exit: ; preds = %.lr.ph.i9, %_ZL16compareFfparamABP8_IO_FILERK14gmx_ffparams_tff.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, 256) i32 @_Z12getGroupTypeRK16SimulationGroups23SimulationAtomGroupTypei(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !174
  %i.k = zext i8 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.l
}

; Function Attrs: mustprogress uwtable
define void @_Z12copy_moltypePK13gmx_moltype_tPS_(ptr noundef %0, ptr noundef initializes((0, 8)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.a, ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2360
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2384
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2384
  %i.g = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call noundef ptr @_Z12copy_t_atomsPK7t_atoms(ptr noundef nonnull %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !tbaa.struct !211
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, i32 noundef 735, ptr noundef nonnull %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, 95
  br i1 %.not, label %bb.b, label %bb.c
}

declare noundef ptr @_Z12copy_t_atomsPK7t_atoms(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = load ptr, ptr %1, align 8, !tbaa !30     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = load ptr, ptr %0, align 8, !tbaa !30     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, !prof !217

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
end_hunk_0
