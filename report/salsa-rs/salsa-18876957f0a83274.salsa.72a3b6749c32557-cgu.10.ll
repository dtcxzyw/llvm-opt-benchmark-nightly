Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.10?download=true
inline.NumInlined: 248
inline.NumDeleted: 157
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5zalsa5ZalsaEBF_:bb.a
bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown3map7HashMapNtNtB4_3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtB4_4hash18BuildHasherDefaultNtNtB1C_4hash12TypeIdHasherEEEB1C_.exit, %.body, %bb.q, %.body19, %.body17, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtB4_3any6TypeIdNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit, %bb.b
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa7runtime7RuntimeEBF_(ptr noalias noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1E_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph5EdgesEBH_.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtBK_6thread2id8ThreadIdj4_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit.i.i.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph5EdgesEBH_.exit.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtBK_6thread2id8ThreadIdj4_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit6.i.i.i unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtBK_6thread2id8ThreadIdj4_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pn.i.i.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1A_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtBK_6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB22_.exit.i.i.i unwind label %bb.f

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph5EdgesEBH_.exit.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtBK_6thread2id8ThreadIdj4_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtBK_6thread2id8ThreadIdj4_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit6.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph5EdgesEBH_.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1A_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtBK_6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB22_.exit7.i.i.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtBK_6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB22_.exit.i.i.i: ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtBK_6thread2id8ThreadIdj4_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit.i.i.i
  %.pn2.i.i.i = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtBK_6thread2id8ThreadIdj4_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit.i.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBP_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtBK_6thread2id8ThreadIdB1w_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit.i.i.i unwind label %bb.f

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtBK_6thread2id8ThreadIdj4_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit6.i.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtBK_6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB22_.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtBK_6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB22_.exit7.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtBK_6thread2id8ThreadIdj4_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit6.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBP_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB16_.exit.i unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtBK_6thread2id8ThreadIdB1w_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit.i.i.i: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtBK_6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB22_.exit.i.i.i
  %.pn4.i.i.i = phi { ptr, i32 } [ %i.l, %bb.e ], [ %.pn2.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtBK_6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB22_.exit.i.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBT_7runtime16dependency_graph8SmallSetBP_Kj4_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtBK_6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB22_.exit7.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtBK_6thread2id8ThreadIdB1w_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit.i.i.i

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtBK_6thread2id8ThreadIdB1w_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtBK_6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB22_.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtBK_6thread2id8ThreadIdj4_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit.i.i.i, %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB16_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtBK_6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB22_.exit7.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBT_7runtime16dependency_graph8SmallSetBP_Kj4_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB28_.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB16_.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtBK_6thread2id8ThreadIdB1w_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit.i.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.g ], [ %.pn4.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtBK_6thread2id8ThreadIdB1w_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEB1A_.exit.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5table5TableEBF_(ptr noalias noundef align 8 dereferenceable(520) %i.p) #24
          to label %common.resume unwind label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB28_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB16_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke void @_RNvXs3_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5table4PageEKj3a_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1g_(ptr noalias noundef nonnull align 8 dereferenceable(520) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5table5TableEBF_.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB28_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 680
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBT_5table9PageIndexEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.h ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5table5TableEBF_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB28_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBT_5table9PageIndexEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
  ret void

bb.j:                                             ; preds = %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCsC8CapfvpQ1_5salsa10durability10DurabilityBM_EBQ_(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %2, ptr noundef %3, ptr %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #26
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexBM_EBQ_(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %2, ptr noundef %3, ptr %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #26
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCsC8CapfvpQ1_5salsa5cycle14IterationStampBM_EBQ_(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %2, ptr noundef %3, ptr %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #26
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBM_ECsC8CapfvpQ1_5salsa(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef %3, ptr %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsE10initializeNCINvB1a_11get_or_initNCNvB1I_17empty_cycle_heads0E0zE0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !8, !noundef !4 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE13with_capacityBK_(i64 noundef 0)
  store i64 %i.c, ptr %i.b, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockjE10initializeNCINvB1a_11get_or_initNCNvNtCsC8CapfvpQ1_5salsa8interned10new_shards0E0zE0E0B2m_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !8, !noundef !4 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.l, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, ptr } @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions21available_parallelism() ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 5 uses
  %i.f = trunc nuw i64 %i.d to i1
  %2 = ptrtoint ptr %i.e to i64                   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  br i1 %i.f, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %2, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.thread.i.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.thread.i.i.i
    i64 1, label %bb.e
  ], !prof !32

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %i.e, inttoptr (i64 180388626432 to ptr)
  %i.i = and i64 %2, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.e, i64 -1       ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8 ; 5 uses
  %i.l = getelementptr i8, ptr %i.e, i64 7
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !nonnull !4, !align !8, !noundef !4 ; 5 uses
  %i.m = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  invoke void %i.m(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsC8CapfvpQ1_5salsa.exit.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !7, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #27
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsC8CapfvpQ1_5salsa.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 24, i64 noundef 8) #27
  resume { ptr, i32 } %i.s

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsC8CapfvpQ1_5salsa.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 24, i64 noundef 8) #27
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.thread.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.i.i.i: ; preds = %bb.b
  %3 = shl i64 %2, 2                              ; 2 uses
  %i.y = icmp eq i64 %3, 0
  br i1 %i.y, label %_RNCINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockjE10initializeNCINvB4_11get_or_initNCNvNtCsC8CapfvpQ1_5salsa8interned10new_shards0E0zE0B1A_.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.thread.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.thread.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsC8CapfvpQ1_5salsa.exit.i.i.i.i.i.i.i.i, %bb.d, %bb.c, %bb.c
  %.sroa.0.01114.i.i.i = phi i64 [ %3, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.i.i.i ], [ 4, %bb.c ], [ 4, %bb.c ], [ 4, %bb.d ], [ 4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsC8CapfvpQ1_5salsa.exit.i.i.i.i.i.i.i.i ]
  %i.z = add i64 %.sroa.0.01114.i.i.i, -1
  %i.aa = tail call range(i64 0, 63) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = lshr i64 -1, %i.aa
  %i.ac = add i64 %i.ab, 1
  br label %_RNCINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockjE10initializeNCINvB4_11get_or_initNCNvNtCsC8CapfvpQ1_5salsa8interned10new_shards0E0zE0B1A_.exit

_RNCINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockjE10initializeNCINvB4_11get_or_initNCNvNtCsC8CapfvpQ1_5salsa8interned10new_shards0E0zE0B1A_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.thread.i.i.i
  %.sroa.03.0.i.i.i = phi i64 [ %i.ac, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.thread.i.i.i ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.i.i.i ]
  store i64 %.sroa.03.0.i.i.i, ptr %i.b, align 8
  ret void

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsE10initializeNCINvB1f_11get_or_initNCNvB1N_17empty_cycle_heads0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1P_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !37, !noalias !38, !align !8, !noundef !4 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !37, !noalias !38
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsE10initializeNCINvB1d_11get_or_initNCNvB1L_17empty_cycle_heads0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1N_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26, !noalias !39
  unreachable

_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsE10initializeNCINvB1d_11get_or_initNCNvB1L_17empty_cycle_heads0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1N_.exit: ; preds = %bb.a
  %i.c = tail call noundef i64 @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE13with_capacityBK_(i64 noundef 0), !noalias !39
  store i64 %i.c, ptr %i.b, align 8, !noalias !39
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockjE10initializeNCINvB1f_11get_or_initNCNvNtCsC8CapfvpQ1_5salsa8interned10new_shards0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2r_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !42
  call void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockjE10initializeNCINvB1a_11get_or_initNCNvNtCsC8CapfvpQ1_5salsa8interned10new_shards0E0zE0E0B2m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_5Zalsa26next_memo_ingredient_index(ptr noalias noundef align 8 dereferenceable(1368) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = icmp ugt i64 %i.c, %i.a
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.a, 1
  tail call void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE11resize_withNvMB5_BE_3newEBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e)
  %i.f = load i64, ptr %i.b, align 8, !noundef !4
  %i.g = icmp ugt i64 %i.f, %i.a
  br i1 %i.g, label %bb.d, label %bb.c, !prof !3

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #26
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pn = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %.sroa.01.0 = getelementptr inbounds nuw [24 x i8], ptr %.pn, i64 %i.a ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 6 uses
  %i.k = icmp ult i64 %i.j, 2305843009213693952
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i64 %i.j, 4294967296
  br i1 %i.l, label %_RNvMs_NtCsC8CapfvpQ1_5salsa5zalsaNtB4_19MemoIngredientIndex10from_usize.exit, label %bb.e, !prof !3

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #26
  unreachable

_RNvMs_NtCsC8CapfvpQ1_5salsa5zalsaNtB4_19MemoIngredientIndex10from_usize.exit: ; preds = %bb.d
  %i.m = load i64, ptr %.sroa.01.0, align 8, !range !5, !alias.scope !45, !noundef !4
  %i.n = icmp eq i64 %i.j, %i.m
  br i1 %i.n, label %bb.f, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexE8push_mutBI_.exit

bb.f:                                             ; preds = %_RNvMs_NtCsC8CapfvpQ1_5salsa5zalsaNtB4_19MemoIngredientIndex10from_usize.exit
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.01.0)
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexE8push_mutBI_.exit: ; preds = %_RNvMs_NtCsC8CapfvpQ1_5salsa5zalsaNtB4_19MemoIngredientIndex10from_usize.exit, %bb.f
  %i.o = trunc nuw i64 %i.j to i32
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !45, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.j
  store i32 %2, ptr %i.r, align 4
  %i.s = add nuw nsw i64 %i.j, 1
  store i64 %i.s, ptr %i.i, align 8, !alias.scope !45
  ret i32 %i.o
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 ptr @_RNvMs2_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5table4PageEKj3a_E3getB1g_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true) ; 2 uses
  %i.b = lshr exact i64 -9223372036854775808, %i.a
  %i.c = sub i64 %1, %i.b
  %i.d = sub nsw i64 58, %i.a                     ; 2 uses
  %i.e = icmp ult i64 %i.d, 58
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.g = load atomic ptr, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.c
  %.sroa.0.0 = select i1 %i.h, ptr null, ptr %i.i
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef align 8 ptr @_RNvMs2_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5table4PageEKj3a_E7get_mutB1g_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(464) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true) ; 2 uses
  %i.b = lshr exact i64 -9223372036854775808, %i.a
  %i.c = sub i64 %1, %i.b
  %i.d = sub nsw i64 58, %i.a
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %i.c
  %.sroa.0.0 = select i1 %i.g, ptr null, ptr %i.h
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs2_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEKj3a_E12get_or_allocB1g_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true) ; 3 uses
  %i.b = lshr exact i64 -9223372036854775808, %i.a ; 3 uses
  %i.c = sub i64 %1, %i.b                         ; 2 uses
  %i.d = sub nsw i64 58, %i.a                     ; 2 uses
  %i.e = lshr i64 1152921504606846976, %i.a
  %i.f = sub i64 %i.b, %i.e
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs2_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEKj3a_E18alloc_bucket_afterB1g_(ptr noundef nonnull align 8 %0, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = icmp ult i64 %i.d, 58
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.j = load atomic ptr, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef ptr @_RINvNtCs36qfJazsBC0_6boxcar7buckets21allocate_race_and_getINtNtNtB4_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1m_(ptr noundef nonnull align 8 %i.i, i64 noundef %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0.0 = phi ptr [ %i.l, %bb.d ], [ %i.j, %bb.c ]
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0, i64 %i.c
  ret ptr %i.m
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs2_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEKj3a_E18alloc_bucket_afterB1g_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true) ; 2 uses
  %i.c = sub nsw i64 59, %i.b                     ; 4 uses
  %i.d = icmp ugt i64 %i.c, 57
  br i1 %i.d, label %_RINvNtCs36qfJazsBC0_6boxcar7buckets13allocate_raceINtNtNtB4_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1e_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.f = shl nuw nsw i64 32, %i.c                 ; 3 uses
  %i.g = icmp samesign ugt i64 %i.c, 52
  br i1 %i.g, label %.split5.i.i, label %.split.i.i

.split5.i.i:                                      ; preds = %bb.b
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #26
  unreachable

.split.i.i:                                       ; preds = %bb.b
  %i.h = sub nuw nsw i64 64, %i.b
  %i.i = shl nuw i64 48, %i.h                     ; 4 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.j = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef %i.i, i64 noundef 8) #27 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RINvNtCs36qfJazsBC0_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1f_.exit.i, !prof !6

bb.c:                                             ; preds = %.split.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.i) #26
  unreachable

_RINvNtCs36qfJazsBC0_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1f_.exit.i: ; preds = %.split.i.i
end_hunk_0
