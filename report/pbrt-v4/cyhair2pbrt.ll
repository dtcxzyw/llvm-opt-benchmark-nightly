Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/cyhair2pbrt?download=true
inline.NumInlined: 422
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6cyhair6CyHair19ToCubicBezierCurvesEPSt6vectorIfSaIfEES4_PKfS6_if:bb.a

bb.cr:                                            ; preds = %.noexc262
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.zo, ptr align 4 %i.zd, i64 %i.zg, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i258

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i258: ; preds = %bb.cr, %.noexc262
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zp, i64 4 ; 2 uses
  %.not.i17.i.i259 = icmp eq ptr %i.zd, null
  br i1 %.not.i17.i.i259, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i260, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i258
  %i.zt = load ptr, ptr %i.ba, align 8, !tbaa !67
  %i.zu = ptrtoint ptr %i.zt to i64
  %i.zv = sub i64 %i.zu, %i.zf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.zd, i64 noundef %i.zv) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i260

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i260: ; preds = %bb.cs, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i258
  store ptr %i.zo, ptr %2, align 8, !tbaa !58
  store ptr %i.zs, ptr %i.o, align 8, !tbaa !57
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %i.zm ; 2 uses
  store ptr %i.zw, ptr %i.ba, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit263

_ZNSt6vectorIfSaIfEE9push_backERKf.exit263:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i260, %bb.cp
  %i.zx = phi ptr [ %i.zw, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i260 ], [ %i.yz, %bb.cp ] ; 3 uses
  %i.zy = phi ptr [ %i.zs, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i260 ], [ %i.zc, %bb.cp ] ; 3 uses
  %.not.i264 = icmp eq ptr %i.zy, %i.zx
  br i1 %.not.i264, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit263
  %i.zz = load float, ptr %i.az, align 8, !tbaa !11
  store float %i.zz, ptr %i.zy, align 4, !tbaa !11
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 4 ; 2 uses
  store ptr %i.aaa, ptr %i.o, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit273

bb.cu:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit263
  %i.aab = load ptr, ptr %2, align 8, !tbaa !58   ; 4 uses
  %i.aac = ptrtoint ptr %i.zx to i64
  %i.aad = ptrtoint ptr %i.aab to i64             ; 2 uses
  %i.aae = sub i64 %i.aac, %i.aad                 ; 5 uses
  %i.aaf = icmp eq i64 %i.aae, 9223372036854775804
  br i1 %i.aaf, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i265

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i265: ; preds = %bb.cu
  %i.aag = ashr exact i64 %i.aae, 2               ; 3 uses
  %.sroa.speculated.i.i.i266 = tail call i64 @llvm.umax.i64(i64 %i.aag, i64 1)
  %i.aah = add nsw i64 %.sroa.speculated.i.i.i266, %i.aag ; 2 uses
  %i.aai = icmp ult i64 %i.aah, %i.aag
  %i.aaj = tail call i64 @llvm.umin.i64(i64 %i.aah, i64 2305843009213693951)
  %i.aak = select i1 %i.aai, i64 2305843009213693951, i64 %i.aaj ; 3 uses
  %.not.i.i.i267 = icmp ne i64 %i.aak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i267)
  %i.aal = shl nuw nsw i64 %i.aak, 2
  %i.aam = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aal) #21
          to label %.noexc272 unwind label %.thread.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc272:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i265
  %i.aan = getelementptr inbounds i8, ptr %i.aam, i64 %i.aae ; 2 uses
  %i.aao = load float, ptr %i.az, align 8, !tbaa !11
  store float %i.aao, ptr %i.aan, align 4, !tbaa !11
  %i.aap = icmp sgt i64 %i.aae, 0
  br i1 %i.aap, label %bb.cv, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i268

bb.cv:                                            ; preds = %.noexc272
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aam, ptr align 4 %i.aab, i64 %i.aae, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i268

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i268: ; preds = %bb.cv, %.noexc272
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aan, i64 4 ; 2 uses
  %.not.i17.i.i269 = icmp eq ptr %i.aab, null
  br i1 %.not.i17.i.i269, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i270, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i268
  %i.aar = load ptr, ptr %i.ba, align 8, !tbaa !67
  %i.aas = ptrtoint ptr %i.aar to i64
  %i.aat = sub i64 %i.aas, %i.aad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aab, i64 noundef %i.aat) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i270

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i270: ; preds = %bb.cw, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i268
  store ptr %i.aam, ptr %2, align 8, !tbaa !58
  store ptr %i.aaq, ptr %i.o, align 8, !tbaa !57
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.aam, i64 %i.aak ; 2 uses
  store ptr %i.aau, ptr %i.ba, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit273

_ZNSt6vectorIfSaIfEE9push_backERKf.exit273:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i270, %bb.ct
  %i.aav = phi ptr [ %i.aau, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i270 ], [ %i.zx, %bb.ct ] ; 2 uses
  %i.aaw = phi ptr [ %i.aaq, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i270 ], [ %i.aaa, %bb.ct ] ; 3 uses
  %.not.i274 = icmp eq ptr %i.aaw, %i.aav
  br i1 %.not.i274, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit273
  %i.aax = load float, ptr %i.az, align 8, !tbaa !11
  store float %i.aax, ptr %i.aaw, align 4, !tbaa !11
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaw, i64 4
  store ptr %i.aay, ptr %i.o, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit243

bb.cy:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit273
  %i.aaz = load ptr, ptr %2, align 8, !tbaa !58   ; 4 uses
  %i.aba = ptrtoint ptr %i.aav to i64
  %i.abb = ptrtoint ptr %i.aaz to i64             ; 2 uses
  %i.abc = sub i64 %i.aba, %i.abb                 ; 5 uses
  %i.abd = icmp eq i64 %i.abc, 9223372036854775804
  br i1 %i.abd, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i275

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i275: ; preds = %bb.cy
  %i.abe = ashr exact i64 %i.abc, 2               ; 3 uses
  %.sroa.speculated.i.i.i276 = tail call i64 @llvm.umax.i64(i64 %i.abe, i64 1)
  %i.abf = add nsw i64 %.sroa.speculated.i.i.i276, %i.abe ; 2 uses
  %i.abg = icmp ult i64 %i.abf, %i.abe
  %i.abh = tail call i64 @llvm.umin.i64(i64 %i.abf, i64 2305843009213693951)
  %i.abi = select i1 %i.abg, i64 2305843009213693951, i64 %i.abh ; 3 uses
  %.not.i.i.i277 = icmp ne i64 %i.abi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i277)
  %i.abj = shl nuw nsw i64 %i.abi, 2
  %i.abk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abj) #21
          to label %.noexc282 unwind label %.thread.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc282:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i275
  %i.abl = getelementptr inbounds i8, ptr %i.abk, i64 %i.abc ; 2 uses
  %i.abm = load float, ptr %i.az, align 8, !tbaa !11
  store float %i.abm, ptr %i.abl, align 4, !tbaa !11
  %i.abn = icmp sgt i64 %i.abc, 0
  br i1 %i.abn, label %bb.cz, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i278

bb.cz:                                            ; preds = %.noexc282
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.abk, ptr align 4 %i.aaz, i64 %i.abc, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i278

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i278: ; preds = %bb.cz, %.noexc282
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abl, i64 4
  %.not.i17.i.i279 = icmp eq ptr %i.aaz, null
  br i1 %.not.i17.i.i279, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i280, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i278
  %i.abp = load ptr, ptr %i.ba, align 8, !tbaa !67
  %i.abq = ptrtoint ptr %i.abp to i64
  %i.abr = sub i64 %i.abq, %i.abb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aaz, i64 noundef %i.abr) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i280

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i280: ; preds = %bb.da, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i278
  store ptr %i.abk, ptr %2, align 8, !tbaa !58
  store ptr %i.abo, ptr %i.o, align 8, !tbaa !57
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %i.abi
  store ptr %i.abs, ptr %i.ba, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit243

_ZNSt6vectorIfSaIfEE9push_backERKf.exit243:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i280, %bb.cx, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i240, %bb.cg
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond525.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond525.not, label %._crit_edge, label %bb.v, !llvm.loop !79

_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit:    ; preds = %bb.u, %._crit_edge, %bb.o
  %i.abt = add nuw i64 %.081471, 1                ; 2 uses
  %exitcond526.not = icmp eq i64 %i.abt, %i.ap
  br i1 %exitcond526.not, label %.loopexit413, label %bb.g, !llvm.loop !80

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIN6cyhair5real3ESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i284 = icmp eq ptr %.sroa.0321.0466, null
  br i1 %.not.i.i.i284, label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit285, label %bb.db

bb.db:                                            ; preds = %.thread.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.pre-phi530 = phi i64 [ %.pre529, %.thread.loopexit.split-lp.loopexit.split-lp ], [ %i.cx, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0321.0443 = phi ptr [ %.sroa.0321.1, %.thread.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0321.0466, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn89407 = phi { ptr, i32 } [ %lpad.loopexit.split-lp735, %.thread.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0321.0443, i64 noundef %.pre-phi530) #22
  br label %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit285

_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit285: ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.db
  %.pn89408 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp ], [ %.pn89407, %bb.db ]
  resume { ptr, i32 } %.pn89408

.loopexit413:                                     ; preds = %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.a, %bb.b
  %.083 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ true, %_ZNSt6vectorIN6cyhair5real3ESaIS1_EED2Ev.exit ]
  ret i1 %.083
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cyhair::CyHair", align 8    ; 12 uses
  %3 = alloca %"class.std::vector.0", align 8     ; 11 uses
  %4 = alloca %"class.std::vector.0", align 8     ; 11 uses
  %i.a = alloca [3 x float], align 4              ; 5 uses
  %i.b = icmp slt i32 %0, 3
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 4 uses
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(7) @.str.17) #23
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %sub_0

sub_0:                                            ; preds = %bb.b
  %i.g = load i8, ptr %i.d, align 1
  %.not93 = icmp eq i8 %i.g, 45
  br i1 %.not93, label %sub_1, label %sub_083

sub_1:                                            ; preds = %sub_0
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.i = load i8, ptr %i.h, align 1
  %.not94 = icmp eq i8 %i.i, 104
  br i1 %.not94, label %.tail, label %sub_083

.tail:                                            ; preds = %sub_1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %sub_083

bb.c:                                             ; preds = %.tail, %bb.b, %bb.a
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !93
  %fwrite67 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 86, i64 1, ptr %i.m) #24 ; 0 uses
  br label %bb.aa

sub_083:                                          ; preds = %sub_1, %sub_0, %.tail
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !91   ; 3 uses
  %i.p = load i8, ptr %i.o, align 1
  %.not95 = icmp eq i8 %i.p, 45
  br i1 %.not95, label %.tail82, label %.tail82.thread

.tail82:                                          ; preds = %sub_083
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.d, label %.tail82.thread

bb.d:                                             ; preds = %.tail82
  %i.t = load ptr, ptr @stdout, align 8, !tbaa !93
  br label %bb.e

.tail82.thread:                                   ; preds = %sub_083, %.tail82
  %i.u = tail call noalias ptr @fopen(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.21)
  br label %bb.e

bb.e:                                             ; preds = %.tail82.thread, %bb.d
  %i.v = phi ptr [ %i.t, %bb.d ], [ %i.u, %.tail82.thread ] ; 20 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !91
  tail call void @perror(ptr noundef %i.w) #24
  br label %bb.aa

bb.g:                                             ; preds = %bb.e
  %.not63 = icmp eq i32 %0, 3
  br i1 %.not63, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !91
  %i.z = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.y, ptr noundef null, i32 noundef 10) #19, !inline_history !85
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = icmp samesign ugt i32 %0, 4
  br i1 %i.ab, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !91
  %i.ae = tail call double @strtod(ptr noundef nonnull captures(none) %i.ad, ptr noundef null) #19, !inline_history !86
  %i.af = fptrunc double %i.ae to float
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i, %bb.h
  %.05980 = phi i32 [ %i.aa, %bb.i ], [ %i.aa, %bb.h ], [ -1, %bb.g ]
  %.058 = phi float [ %i.af, %bb.i ], [ 1.000000e+00, %bb.h ], [ 1.000000e+00, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %i.ag, i8 0, i64 132, i1 false)
  store i32 -1, ptr %i.ah, align 4, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  store <4 x float> <float f0x3C23D70A, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01>, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 280
  store float 5.000000e-01, ptr %i.ak, align 8, !tbaa !11
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.am = invoke noundef zeroext i1 @_ZN6cyhair6CyHair4LoadEPKc(ptr noundef nonnull align 8 dereferenceable(312) %2, ptr noundef %i.al)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %.thread
  br i1 %i.am, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !93
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.ap = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.22, ptr noundef %i.ao) #25 ; 0 uses
  br label %bb.y

bb.l:                                             ; preds = %.thread
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  %i.ar = invoke noundef zeroext i1 @_ZN6cyhair6CyHair19ToCubicBezierCurvesEPSt6vectorIfSaIfEES4_PKfS6_if(ptr noundef nonnull align 8 dereferenceable(312) %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @__const.main.vertex_scale, ptr noundef nonnull %i.a, i32 noundef %.05980, float noundef %.058)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %i.ar, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !93
  %fwrite = call i64 @fwrite(ptr nonnull @.str.23, i64 30, i64 1, ptr %i.as) #24 ; 0 uses
  %.pre106 = load ptr, ptr %4, align 8, !tbaa !58
  br label %bb.v

bb.p:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.au = load ptr, ptr %4, align 8, !tbaa !58    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !67
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ba = load ptr, ptr %3, align 8, !tbaa !58    ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIfSaIfEED2Ev.exit69, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !67
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit69

_ZNSt6vectorIfSaIfEED2Ev.exit69:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.z

bb.s:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !57
  %i.bi = load ptr, ptr %3, align 8, !tbaa !58    ; 5 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2                 ; 3 uses
  %i.bn = udiv i64 %i.bm, 3                       ; 3 uses
  %.not96 = icmp ult i64 %i.bm, 3
  %.pre = load ptr, ptr %4, align 8, !tbaa !58    ; 5 uses
  br i1 %.not96, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.bo = icmp ult i64 %i.bm, 24
  br i1 %i.bo, label %.lr.ph.preheader143, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bn, 9223372036854775800 ; 3 uses
  br label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph.epil.preheader, %.lr.ph.preheader.new
  %index = phi i64 [ 0, %.lr.ph.preheader.new ], [ %index.next, %.lr.ph.epil.preheader ] ; 5 uses
  %vec.phi = phi <4 x double> [ splat (double 1.000000e+30), %.lr.ph.preheader.new ], [ %19, %.lr.ph.epil.preheader ] ; 3 uses
  %vec.phi114 = phi <4 x double> [ splat (double 1.000000e+30), %.lr.ph.preheader.new ], [ %20, %.lr.ph.epil.preheader ] ; 3 uses
  %vec.phi115 = phi <4 x double> [ splat (double 1.000000e+30), %.lr.ph.preheader.new ], [ %36, %.lr.ph.epil.preheader ] ; 3 uses
  %vec.phi116 = phi <4 x double> [ splat (double 1.000000e+30), %.lr.ph.preheader.new ], [ %37, %.lr.ph.epil.preheader ] ; 3 uses
  %vec.phi117 = phi <4 x double> [ splat (double 1.000000e+30), %.lr.ph.preheader.new ], [ %53, %.lr.ph.epil.preheader ] ; 3 uses
  %vec.phi118 = phi <4 x double> [ splat (double 1.000000e+30), %.lr.ph.preheader.new ], [ %54, %.lr.ph.epil.preheader ] ; 3 uses
  %vec.phi119 = phi <4 x double> [ splat (double -1.000000e+30), %.lr.ph.preheader.new ], [ %27, %.lr.ph.epil.preheader ] ; 3 uses
  %vec.phi120 = phi <4 x double> [ splat (double -1.000000e+30), %.lr.ph.preheader.new ], [ %28, %.lr.ph.epil.preheader ] ; 3 uses
  %vec.phi121 = phi <4 x double> [ splat (double -1.000000e+30), %.lr.ph.preheader.new ], [ %44, %.lr.ph.epil.preheader ] ; 3 uses
  %.epil.init = phi <4 x double> [ splat (double -1.000000e+30), %.lr.ph.preheader.new ], [ %45, %.lr.ph.epil.preheader ] ; 3 uses
  %vec.phi123 = phi <4 x double> [ splat (double -1.000000e+30), %.lr.ph.preheader.new ], [ %59, %.lr.ph.epil.preheader ] ; 3 uses
  %vec.phi124 = phi <4 x double> [ splat (double -1.000000e+30), %.lr.ph.preheader.new ], [ %i.bv, %.lr.ph.epil.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load = load <4 x float>, ptr %i.bp, align 4, !tbaa !11
  %wide.load125 = load <4 x float>, ptr %5, align 4, !tbaa !11
  %6 = fpext <4 x float> %wide.load to <4 x double> ; 6 uses
  %7 = fpext <4 x float> %wide.load125 to <4 x double> ; 6 uses
  %8 = mul nuw i64 %index, 12
  %.idx81.epil = mul nuw i64 %index, 12
  %9 = getelementptr inbounds nuw i8, ptr %i.bi, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx81.epil
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 48
  %wide.vec = load <12 x float>, ptr %9, align 4, !tbaa !11 ; 3 uses
  %strided.vec = shufflevector <12 x float> %wide.vec, <12 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %strided.vec126 = shufflevector <12 x float> %wide.vec, <12 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %strided.vec127 = shufflevector <12 x float> %wide.vec, <12 x float> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %wide.vec128 = load <12 x float>, ptr %i.bq, align 4, !tbaa !11 ; 3 uses
  %strided.vec129 = shufflevector <12 x float> %wide.vec128, <12 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %strided.vec130 = shufflevector <12 x float> %wide.vec128, <12 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %strided.vec131 = shufflevector <12 x float> %wide.vec128, <12 x float> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %11 = fpext <4 x float> %strided.vec to <4 x double> ; 2 uses
  %12 = fpext <4 x float> %strided.vec129 to <4 x double> ; 2 uses
  %13 = fsub <4 x double> %11, %6
  %14 = fsub <4 x double> %12, %7
  %15 = freeze <4 x double> %13                   ; 3 uses
  %16 = freeze <4 x double> %14                   ; 3 uses
  %17 = fcmp olt <4 x double> %15, %vec.phi
  %18 = fcmp olt <4 x double> %16, %vec.phi114
  %19 = select <4 x i1> %17, <4 x double> %15, <4 x double> %vec.phi ; 2 uses
  %20 = select <4 x i1> %18, <4 x double> %16, <4 x double> %vec.phi114 ; 2 uses
  %21 = fadd <4 x double> %6, %11
  %22 = fadd <4 x double> %7, %12
  %23 = freeze <4 x double> %21                   ; 3 uses
  %24 = freeze <4 x double> %22                   ; 3 uses
  %25 = fcmp olt <4 x double> %vec.phi119, %23
  %26 = fcmp olt <4 x double> %vec.phi120, %24
  %27 = select <4 x i1> %25, <4 x double> %23, <4 x double> %vec.phi119 ; 2 uses
  %28 = select <4 x i1> %26, <4 x double> %24, <4 x double> %vec.phi120 ; 2 uses
  %29 = fpext <4 x float> %strided.vec126 to <4 x double> ; 2 uses
  %i.br = fpext <4 x float> %strided.vec130 to <4 x double> ; 2 uses
  %30 = fsub <4 x double> %29, %6
  %31 = fsub <4 x double> %i.br, %7
  %32 = freeze <4 x double> %30                   ; 3 uses
  %33 = freeze <4 x double> %31                   ; 3 uses
  %34 = fcmp olt <4 x double> %32, %vec.phi115
  %35 = fcmp olt <4 x double> %33, %vec.phi116
  %36 = select <4 x i1> %34, <4 x double> %32, <4 x double> %vec.phi115 ; 2 uses
  %37 = select <4 x i1> %35, <4 x double> %33, <4 x double> %vec.phi116 ; 2 uses
  %38 = fadd <4 x double> %6, %29
  %39 = fadd <4 x double> %7, %i.br
  %40 = freeze <4 x double> %38                   ; 3 uses
  %41 = freeze <4 x double> %39                   ; 3 uses
  %42 = fcmp olt <4 x double> %vec.phi121, %40
  %43 = fcmp olt <4 x double> %.epil.init, %41
  %44 = select <4 x i1> %42, <4 x double> %40, <4 x double> %vec.phi121 ; 2 uses
  %45 = select <4 x i1> %43, <4 x double> %41, <4 x double> %.epil.init ; 2 uses
  %46 = fpext <4 x float> %strided.vec127 to <4 x double> ; 2 uses
  %47 = fpext <4 x float> %strided.vec131 to <4 x double> ; 2 uses
  %48 = fsub <4 x double> %46, %6
  %i.bs = fsub <4 x double> %47, %7
  %49 = freeze <4 x double> %48                   ; 3 uses
  %50 = freeze <4 x double> %i.bs                 ; 3 uses
  %51 = fcmp olt <4 x double> %49, %vec.phi117
  %52 = fcmp olt <4 x double> %50, %vec.phi118
  %53 = select <4 x i1> %51, <4 x double> %49, <4 x double> %vec.phi117 ; 2 uses
  %54 = select <4 x i1> %52, <4 x double> %50, <4 x double> %vec.phi118 ; 2 uses
  %55 = fadd <4 x double> %6, %46
  %i.bt = fadd <4 x double> %7, %47
  %56 = freeze <4 x double> %55                   ; 3 uses
  %57 = freeze <4 x double> %i.bt                 ; 3 uses
  %58 = fcmp olt <4 x double> %vec.phi123, %56
  %i.bu = fcmp olt <4 x double> %vec.phi124, %57
  %59 = select <4 x i1> %58, <4 x double> %56, <4 x double> %vec.phi123 ; 2 uses
  %i.bv = select <4 x i1> %i.bu, <4 x double> %57, <4 x double> %vec.phi124 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %60 = call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %15, /* (nan nzero) */ i32 35)
  %61 = call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %16, /* (nan nzero) */ i32 35)
  %62 = call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %32, /* (nan nzero) */ i32 35)
  %63 = call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %33, /* (nan nzero) */ i32 35)
  %64 = or <4 x i1> %60, %62
  %65 = or <4 x i1> %61, %63
  %66 = call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %49, /* (nan nzero) */ i32 35)
  %67 = call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %50, /* (nan nzero) */ i32 35)
  %68 = or <4 x i1> %64, %66
  %69 = or <4 x i1> %65, %67
  %70 = call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %23, /* (nan nzero) */ i32 35)
  %71 = call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %24, /* (nan nzero) */ i32 35)
  %72 = or <4 x i1> %68, %70
  %73 = or <4 x i1> %69, %71
  %74 = call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %40, /* (nan nzero) */ i32 35)
  %75 = call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %41, /* (nan nzero) */ i32 35)
  %76 = or <4 x i1> %72, %74
  %77 = or <4 x i1> %73, %75
  %78 = call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %56, /* (nan nzero) */ i32 35)
  %79 = call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %57, /* (nan nzero) */ i32 35)
  %80 = or <4 x i1> %76, %78
  %81 = or <4 x i1> %77, %79
  %82 = or <4 x i1> %80, %81
  %83 = bitcast <4 x i1> %82 to i4
  %84 = icmp ne i4 %83, 0                         ; 15 uses
  %85 = icmp eq i64 %index.next, %unroll_iter
  %86 = or i1 %84, %85
  br i1 %86, label %middle.block, label %.lr.ph.epil.preheader, !llvm.loop !87

middle.block:                                     ; preds = %.lr.ph.epil.preheader
  %87 = select i1 %84, <4 x double> %vec.phi, <4 x double> %19
  %88 = select i1 %84, <4 x double> %vec.phi114, <4 x double> %20
  %89 = select i1 %84, <4 x double> %vec.phi115, <4 x double> %36
  %90 = select i1 %84, <4 x double> %vec.phi116, <4 x double> %37
  %91 = select i1 %84, <4 x double> %vec.phi117, <4 x double> %53
  %92 = select i1 %84, <4 x double> %vec.phi118, <4 x double> %54
  %93 = select i1 %84, <4 x double> %vec.phi119, <4 x double> %27
  %94 = select i1 %84, <4 x double> %vec.phi120, <4 x double> %28
  %95 = select i1 %84, <4 x double> %vec.phi121, <4 x double> %44
  %96 = select i1 %84, <4 x double> %.epil.init, <4 x double> %45
  %97 = select i1 %84, <4 x double> %vec.phi123, <4 x double> %59
  %98 = select i1 %84, <4 x double> %vec.phi124, <4 x double> %i.bv
  %99 = select i1 %84, i64 %index, i64 %unroll_iter
  %rdx.minmax = call nnan <4 x double> @llvm.minnum.v4f64(<4 x double> %87, <4 x double> %88)
  %100 = call nnan double @llvm.vector.reduce.fmin.v4f64(<4 x double> %rdx.minmax) ; 2 uses
  %rdx.minmax132 = call nnan <4 x double> @llvm.minnum.v4f64(<4 x double> %89, <4 x double> %90)
  %101 = call nnan double @llvm.vector.reduce.fmin.v4f64(<4 x double> %rdx.minmax132) ; 2 uses
  %rdx.minmax133 = call nnan <4 x double> @llvm.minnum.v4f64(<4 x double> %91, <4 x double> %92)
  %102 = call nnan double @llvm.vector.reduce.fmin.v4f64(<4 x double> %rdx.minmax133) ; 2 uses
  %rdx.minmax134 = call nnan <4 x double> @llvm.maxnum.v4f64(<4 x double> %93, <4 x double> %94)
  %103 = call nnan double @llvm.vector.reduce.fmax.v4f64(<4 x double> %rdx.minmax134) ; 2 uses
  %rdx.minmax135 = call nnan <4 x double> @llvm.maxnum.v4f64(<4 x double> %95, <4 x double> %96)
  %104 = call nnan double @llvm.vector.reduce.fmax.v4f64(<4 x double> %rdx.minmax135)
  %rdx.minmax136 = call nnan <4 x double> @llvm.maxnum.v4f64(<4 x double> %97, <4 x double> %98)
  %105 = call nnan double @llvm.vector.reduce.fmax.v4f64(<4 x double> %rdx.minmax136)
  %cmp.n = icmp ne i64 %i.bn, %unroll_iter
  %.not142 = or i1 %cmp.n, %84
  %106 = insertelement <2 x double> poison, double %104, i64 0
  %107 = insertelement <2 x double> %106, double %105, i64 1 ; 2 uses
  %108 = insertelement <2 x double> poison, double %101, i64 0
  %109 = insertelement <2 x double> %108, double %102, i64 1
  br i1 %.not142, label %.lr.ph.preheader143, label %._crit_edge

.lr.ph.preheader143:                              ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.1.ph = phi double [ 1.000000e+30, %.lr.ph.preheader ], [ %100, %middle.block ]
  %.sroa.15.1.ph = phi double [ -1.000000e+30, %.lr.ph.preheader ], [ %103, %middle.block ]
  %.05587.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %99, %middle.block ]
  %.ph = phi <2 x double> [ splat (double -1.000000e+30), %.lr.ph.preheader ], [ %107, %middle.block ]
  %.ph144 = phi <2 x double> [ splat (double 1.000000e+30), %.lr.ph.preheader ], [ %109, %middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %110 = extractelement <2 x double> %125, i64 1
  %111 = extractelement <2 x double> %125, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %middle.block, %bb.s
  %.sroa.0.0 = phi double [ 1.000000e+30, %bb.s ], [ %100, %middle.block ], [ %.sroa.speculated76, %._crit_edge.loopexit ]
  %.sroa.7.0 = phi double [ 1.000000e+30, %bb.s ], [ %101, %middle.block ], [ %111, %._crit_edge.loopexit ]
  %.sroa.0.0.a = phi double [ 1.000000e+30, %bb.s ], [ %102, %middle.block ], [ %110, %._crit_edge.loopexit ]
  %.sroa.23.0 = phi double [ -1.000000e+30, %bb.s ], [ %103, %middle.block ], [ %.sroa.speculated.2, %._crit_edge.loopexit ]
  %112 = phi <2 x double> [ splat (double -1.000000e+30), %bb.s ], [ %107, %middle.block ], [ %126, %._crit_edge.loopexit ] ; 2 uses
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.bx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.24, ptr noundef %i.bw) #19 ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !57
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %.pre to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 2
  %i.ce = lshr i64 %i.cd, 2                       ; 3 uses
  %i.cf = trunc i64 %i.ce to i32                  ; 2 uses
  %i.cg = fpext float %.058 to double
  %i.ch = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.25, i32 noundef %i.cf, double noundef %i.cg) #19 ; 0 uses
  %i.ci = extractelement <2 x double> %112, i64 0
  %i.cj = extractelement <2 x double> %112, i64 1
  %i.ck = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.26, double noundef %.sroa.0.0, double noundef %.sroa.7.0, double noundef %.sroa.0.0.a, double noundef %.sroa.23.0, double noundef %i.ci, double noundef %i.cj) #19 ; 0 uses
  %.not97 = icmp eq i64 %i.ce, 0
  br i1 %.not97, label %._crit_edge92, label %.lr.ph91

.lr.ph:                                           ; preds = %.lr.ph.preheader143, %.lr.ph
  %.sroa.0.1 = phi double [ %.sroa.speculated76, %.lr.ph ], [ %.sroa.0.1.ph, %.lr.ph.preheader143 ] ; 2 uses
  %.sroa.23.1 = phi double [ %.sroa.speculated.2, %.lr.ph ], [ %.sroa.15.1.ph, %.lr.ph.preheader143 ] ; 2 uses
  %.05587 = phi i64 [ %niter.next.1, %.lr.ph ], [ %.05587.ph, %.lr.ph.preheader143 ] ; 3 uses
  %113 = phi <2 x double> [ %126, %.lr.ph ], [ %.ph, %.lr.ph.preheader143 ] ; 2 uses
  %114 = phi <2 x double> [ %125, %.lr.ph ], [ %.ph144, %.lr.ph.preheader143 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.05587
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !11
  %i.cn = fpext float %i.cm to double             ; 3 uses
  %.idx81 = mul nuw i64 %.05587, 12
  %i.co = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx81 ; 2 uses
  %115 = load float, ptr %i.co, align 4, !tbaa !11
  %116 = fpext float %115 to double               ; 2 uses
  %i.cp = fsub double %116, %i.cn                 ; 2 uses
  %i.cq = fcmp olt double %i.cp, %.sroa.0.1
  %.sroa.speculated76 = select i1 %i.cq, double %i.cp, double %.sroa.0.1 ; 2 uses
  %i.cr = fadd double %i.cn, %116                 ; 2 uses
  %i.cs = fcmp olt double %.sroa.23.1, %i.cr
  %.sroa.speculated.2 = select i1 %i.cs, double %i.cr, double %.sroa.23.1 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %117 = load <2 x float>, ptr %i.ct, align 4, !tbaa !11
  %118 = fpext <2 x float> %117 to <2 x double>   ; 2 uses
  %119 = insertelement <2 x double> poison, double %i.cn, i64 0
  %120 = shufflevector <2 x double> %119, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %121 = fadd <2 x double> %120, %118             ; 2 uses
  %122 = fcmp olt <2 x double> %113, %121
  %123 = fsub <2 x double> %118, %120             ; 2 uses
  %124 = fcmp olt <2 x double> %123, %114
  %125 = select <2 x i1> %124, <2 x double> %123, <2 x double> %114 ; 3 uses
  %126 = select <2 x i1> %122, <2 x double> %121, <2 x double> %113 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %.05587, 1      ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.bn
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !88

._crit_edge92:                                    ; preds = %.lr.ph91, %._crit_edge
  %i.cu = load ptr, ptr @stdout, align 8, !tbaa !93
  %.not65 = icmp eq ptr %i.v, %i.cu
  br i1 %.not65, label %bb.u, label %bb.t

.lr.ph91:                                         ; preds = %._crit_edge, %.lr.ph91
  %.05389 = phi i64 [ %i.ey, %.lr.ph91 ], [ 0, %._crit_edge ] ; 3 uses
  %fwrite66 = call i64 @fwrite(ptr nonnull @.str.27, i64 56, i64 1, ptr nonnull %i.v) ; 0 uses
  %.idx = mul i64 %.05389, 48
  %i.cv = getelementptr i8, ptr %i.bi, i64 %.idx  ; 12 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !11
  %i.cx = fpext float %i.cw to double
  %i.cy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.cx) #19 ; 0 uses
  %i.cz = getelementptr i8, ptr %i.cv, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !11
  %i.db = fpext float %i.da to double
  %i.dc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.db) #19 ; 0 uses
  %i.dd = getelementptr i8, ptr %i.cv, i64 8
  %i.de = load float, ptr %i.dd, align 4, !tbaa !11
  %i.df = fpext float %i.de to double
  %i.dg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.df) #19 ; 0 uses
  %i.dh = getelementptr i8, ptr %i.cv, i64 12
  %i.di = load float, ptr %i.dh, align 4, !tbaa !11
  %i.dj = fpext float %i.di to double
  %i.dk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.dj) #19 ; 0 uses
  %i.dl = getelementptr i8, ptr %i.cv, i64 16
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !11
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.dn) #19 ; 0 uses
  %i.dp = getelementptr i8, ptr %i.cv, i64 20
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !11
  %i.dr = fpext float %i.dq to double
  %i.ds = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.dr) #19 ; 0 uses
  %i.dt = getelementptr i8, ptr %i.cv, i64 24
  %i.du = load float, ptr %i.dt, align 4, !tbaa !11
  %i.dv = fpext float %i.du to double
  %i.dw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.dv) #19 ; 0 uses
  %i.dx = getelementptr i8, ptr %i.cv, i64 28
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !11
  %i.dz = fpext float %i.dy to double
  %i.ea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.dz) #19 ; 0 uses
  %i.eb = getelementptr i8, ptr %i.cv, i64 32
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !11
  %i.ed = fpext float %i.ec to double
  %i.ee = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.ed) #19 ; 0 uses
  %i.ef = getelementptr i8, ptr %i.cv, i64 36
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !11
  %i.eh = fpext float %i.eg to double
  %i.ei = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.eh) #19 ; 0 uses
  %i.ej = getelementptr i8, ptr %i.cv, i64 40
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !11
  %i.el = fpext float %i.ek to double
  %i.em = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.el) #19 ; 0 uses
  %i.en = getelementptr i8, ptr %i.cv, i64 44
  %i.eo = load float, ptr %i.en, align 4, !tbaa !11
  %i.ep = fpext float %i.eo to double
  %i.eq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.28, double noundef %i.ep) #19 ; 0 uses
  %.idx113 = shl nuw i64 %.05389, 4
  %i.er = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx113 ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !11
  %i.et = fpext float %i.es to double
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !11
  %i.ew = fpext float %i.ev to double
  %i.ex = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.29, double noundef %i.et, double noundef %i.ew) #19 ; 0 uses
  %i.ey = add nuw nsw i64 %.05389, 1              ; 2 uses
  %exitcond99.not = icmp eq i64 %i.ey, %i.ce
  br i1 %exitcond99.not, label %._crit_edge92, label %.lr.ph91, !llvm.loop !89

bb.t:                                             ; preds = %._crit_edge92
  %i.ez = call i32 @fclose(ptr noundef nonnull %i.v) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge92
  %i.fa = load ptr, ptr @stderr, align 8, !tbaa !93
  %i.fb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fa, ptr noundef nonnull @.str.30, i32 noundef %i.cf) #25 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.o
  %i.fc = phi ptr [ %.pre, %bb.u ], [ %.pre106, %bb.o ] ; 3 uses
  %.060 = phi i32 [ 0, %bb.u ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i.i.i71 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIfSaIfEED2Ev.exit72, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !67
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fc to i64
  %i.fh = sub i64 %i.ff, %i.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fh) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit72

_ZNSt6vectorIfSaIfEED2Ev.exit72:                  ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.fi = load ptr, ptr %3, align 8, !tbaa !58    ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIfSaIfEED2Ev.exit74, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit72
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !67
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fn) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit74

_ZNSt6vectorIfSaIfEED2Ev.exit74:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit72, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit74, %bb.k
  %.1 = phi i32 [ %.060, %_ZNSt6vectorIfSaIfEED2Ev.exit74 ], [ 1, %bb.k ]
  call void @_ZN6cyhair6CyHairD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.aa

bb.z:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit69, %bb.l
  %.pn = phi { ptr, i32 } [ %i.at, %_ZNSt6vectorIfSaIfEED2Ev.exit69 ], [ %i.aq, %bb.l ]
  call void @_ZN6cyhair6CyHairD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn

bb.aa:                                            ; preds = %bb.f, %bb.y, %bb.c
  %.3 = phi i32 [ 1, %bb.c ], [ %.1, %bb.y ], [ 1, %bb.f ]
  ret i32 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6cyhair6CyHairD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIfSaIfEED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit3

_ZNSt6vectorIfSaIfEED2Ev.exit3:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIfSaIfEED2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit5

_ZNSt6vectorIfSaIfEED2Ev.exit5:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit3, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIfSaIfEED2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit5
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !67
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit7

_ZNSt6vectorIfSaIfEED2Ev.exit7:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit5, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !69
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #22
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit7, %bb.g
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #14

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !42     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 1                   ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIfSaIfEE17_M_default_appendEm:bb.a
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !11
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !57
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #20
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #21 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !11
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !11
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #22
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !67
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !59     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !12
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !66
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #21 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !12
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !12
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #22
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !59
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !66
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !68
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.minnum.v4f64(<4 x double>, <4 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmin.v4f64(<4 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.maxnum.v4f64(<4 x double>, <4 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmax.v4f64(<4 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i1> @llvm.is.fpclass.v4f64(<4 x double>, i32 immarg) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { cold }
attributes #25 = { cold nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"float", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!"_ZTSN6cyhair12CyHairHeaderE", !6, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !10, i64 20, !10, i64 24, !6, i64 28, !6, i64 40}
!14 = !{!"vtable pointer", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!18 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!21 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !16, i64 8}
!22 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!23 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
!24 = !{!"_ZTSSt6locale", !23, i64 0}
!25 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !17, i64 24, !18, i64 28, !18, i64 32, !20, i64 40, !21, i64 48, !6, i64 64, !7, i64 192, !22, i64 200, !24, i64 208}
!26 = !{!"p1 _ZTSSo", !19, i64 0}
!27 = !{!"bool", !6, i64 0}
!28 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 0}
!29 = !{!"p1 _ZTSSt5ctypeIcE", !19, i64 0}
!30 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!31 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!32 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !25, i64 0, !26, i64 216, !6, i64 224, !27, i64 225, !28, i64 232, !29, i64 240, !30, i64 248, !31, i64 256}
!33 = !{!32, !29, i64 240}
!34 = !{!"_ZTSNSt6locale5facetE", !7, i64 8}
!35 = !{!"p1 _ZTS15__locale_struct", !19, i64 0}
!36 = !{!"p1 int", !19, i64 0}
!37 = !{!"p1 short", !19, i64 0}
!38 = !{!"_ZTSSt5ctypeIcE", !34, i64 0, !35, i64 16, !27, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!39 = !{!38, !6, i64 56}
!40 = !{!6, !6, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!42 = !{!41, !37, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !41, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseItSaItEE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorItSaItEE", !44, i64 0}
!46 = !{!"p1 float", !19, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !47, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIfSaIfEE", !49, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!52 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !51, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorIjSaIjEE", !53, i64 0}
!55 = !{!"_ZTSN6cyhair6CyHairE", !13, i64 0, !45, i64 128, !50, i64 152, !50, i64 176, !50, i64 200, !50, i64 224, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !10, i64 264, !10, i64 268, !6, i64 272, !7, i64 284, !54, i64 288}
!56 = !{!55, !7, i64 252}
!57 = !{!47, !46, i64 8}
!58 = !{!47, !46, i64 0}
!59 = !{!51, !36, i64 0}
!60 = !{!37, !37, i64 0}
!61 = !{!55, !7, i64 260}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"short", !6, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!41, !37, i64 8}
!66 = !{!51, !36, i64 8}
!67 = !{!47, !46, i64 16}
!68 = !{!51, !36, i64 16}
!69 = !{!41, !37, i64 16}
!70 = distinct !{null}
!71 = distinct !{!71, !62}
!72 = !{!13, !7, i64 4}
!73 = !{!55, !7, i64 256}
!74 = distinct !{!74, i1 true, !"_ZSt19__relocate_object_aIN6cyhair5real3ES1_SaIS1_EEvPT_PT0_RT1_"}
!75 = distinct !{!75, !74, !"_ZSt19__relocate_object_aIN6cyhair5real3ES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!76 = distinct !{!76, !74, !"_ZSt19__relocate_object_aIN6cyhair5real3ES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!77 = distinct !{!77, !62}
!78 = distinct !{!78, !62}
!79 = distinct !{!79, !62}
!80 = distinct !{!80, !62}
!81 = !{!46, !46, i64 0}
!82 = !{!36, !36, i64 0}
!83 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11}
!84 = !{!76, !75}
!85 = distinct !{null}
!86 = distinct !{null}
!87 = distinct !{!87, !62, !94, !95}
!88 = distinct !{!88, !62, !95, !94}
!89 = distinct !{!89, !62}
!90 = !{!"p1 omnipotent char", !19, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"llvm.loop.isvectorized", i32 1}
!95 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_1
